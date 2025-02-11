#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_in1_real_cap_bc;
static AESL_RUNTIME_BC __xlx_in1_real_V_size_Reader("../tv/stream_size/stream_size_in_in1_real.dat");
unsigned int ap_apatb_in1_imag_cap_bc;
static AESL_RUNTIME_BC __xlx_in1_imag_V_size_Reader("../tv/stream_size/stream_size_in_in1_imag.dat");
unsigned int ap_apatb_in2_real_cap_bc;
static AESL_RUNTIME_BC __xlx_in2_real_V_size_Reader("../tv/stream_size/stream_size_in_in2_real.dat");
unsigned int ap_apatb_in2_imag_cap_bc;
static AESL_RUNTIME_BC __xlx_in2_imag_V_size_Reader("../tv/stream_size/stream_size_in_in2_imag.dat");
unsigned int ap_apatb_in3_real_cap_bc;
static AESL_RUNTIME_BC __xlx_in3_real_V_size_Reader("../tv/stream_size/stream_size_in_in3_real.dat");
unsigned int ap_apatb_in3_imag_cap_bc;
static AESL_RUNTIME_BC __xlx_in3_imag_V_size_Reader("../tv/stream_size/stream_size_in_in3_imag.dat");
unsigned int ap_apatb_in4_real_cap_bc;
static AESL_RUNTIME_BC __xlx_in4_real_V_size_Reader("../tv/stream_size/stream_size_in_in4_real.dat");
unsigned int ap_apatb_in4_imag_cap_bc;
static AESL_RUNTIME_BC __xlx_in4_imag_V_size_Reader("../tv/stream_size/stream_size_in_in4_imag.dat");
unsigned int ap_apatb_out_real_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_real_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_out_real_V_data_V.dat");
unsigned int ap_apatb_out_real_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_real_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_out_real_V_last_V.dat");
unsigned int ap_apatb_out_imag_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_imag_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_out_imag_V_data_V.dat");
unsigned int ap_apatb_out_imag_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_out_imag_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_out_imag_V_last_V.dat");
using hls::sim::Byte;
extern "C" void DelayAndSum(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, short*, short*, short*, short*, short*, short*, short*, short*, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_DelayAndSum_hw(volatile void * __xlx_apatb_param_phi, volatile void * __xlx_apatb_param_fc, volatile void * __xlx_apatb_param_xpos1, volatile void * __xlx_apatb_param_xpos2, volatile void * __xlx_apatb_param_xpos3, volatile void * __xlx_apatb_param_xpos4, volatile void * __xlx_apatb_param_axis_packet_size, volatile void * __xlx_apatb_param_in1_real, volatile void * __xlx_apatb_param_in1_imag, volatile void * __xlx_apatb_param_in2_real, volatile void * __xlx_apatb_param_in2_imag, volatile void * __xlx_apatb_param_in3_real, volatile void * __xlx_apatb_param_in3_imag, volatile void * __xlx_apatb_param_in4_real, volatile void * __xlx_apatb_param_in4_imag, volatile void * __xlx_apatb_param_out_real_V_data_V, volatile void * __xlx_apatb_param_out_real_V_last_V, volatile void * __xlx_apatb_param_out_imag_V_data_V, volatile void * __xlx_apatb_param_out_imag_V_last_V) {
using hls::sim::createStream;
auto* sin1_real = createStream((hls::stream<short>*)__xlx_apatb_param_in1_real);
auto* sin1_imag = createStream((hls::stream<short>*)__xlx_apatb_param_in1_imag);
auto* sin2_real = createStream((hls::stream<short>*)__xlx_apatb_param_in2_real);
auto* sin2_imag = createStream((hls::stream<short>*)__xlx_apatb_param_in2_imag);
auto* sin3_real = createStream((hls::stream<short>*)__xlx_apatb_param_in3_real);
auto* sin3_imag = createStream((hls::stream<short>*)__xlx_apatb_param_in3_imag);
auto* sin4_real = createStream((hls::stream<short>*)__xlx_apatb_param_in4_real);
auto* sin4_imag = createStream((hls::stream<short>*)__xlx_apatb_param_in4_imag);
  //Create input buffer for out_real_V_data_V
  ap_apatb_out_real_V_data_V_cap_bc = __xlx_out_real_V_data_V_V_size_Reader.read_size();
  short* __xlx_out_real_V_data_V_input_buffer= new short[ap_apatb_out_real_V_data_V_cap_bc];
auto* sout_real_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_out_real_V_data_V);
  //Create input buffer for out_real_V_last_V
  ap_apatb_out_real_V_last_V_cap_bc = __xlx_out_real_V_last_V_V_size_Reader.read_size();
  char* __xlx_out_real_V_last_V_input_buffer= new char[ap_apatb_out_real_V_last_V_cap_bc];
auto* sout_real_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_real_V_last_V);
  //Create input buffer for out_imag_V_data_V
  ap_apatb_out_imag_V_data_V_cap_bc = __xlx_out_imag_V_data_V_V_size_Reader.read_size();
  short* __xlx_out_imag_V_data_V_input_buffer= new short[ap_apatb_out_imag_V_data_V_cap_bc];
auto* sout_imag_V_data_V = createStream((hls::stream<short>*)__xlx_apatb_param_out_imag_V_data_V);
  //Create input buffer for out_imag_V_last_V
  ap_apatb_out_imag_V_last_V_cap_bc = __xlx_out_imag_V_last_V_V_size_Reader.read_size();
  char* __xlx_out_imag_V_last_V_input_buffer= new char[ap_apatb_out_imag_V_last_V_cap_bc];
auto* sout_imag_V_last_V = createStream((hls::stream<char>*)__xlx_apatb_param_out_imag_V_last_V);
  // DUT call
  DelayAndSum(__xlx_apatb_param_phi, __xlx_apatb_param_fc, __xlx_apatb_param_xpos1, __xlx_apatb_param_xpos2, __xlx_apatb_param_xpos3, __xlx_apatb_param_xpos4, __xlx_apatb_param_axis_packet_size, sin1_real->data<short>(), sin1_imag->data<short>(), sin2_real->data<short>(), sin2_imag->data<short>(), sin3_real->data<short>(), sin3_imag->data<short>(), sin4_real->data<short>(), sin4_imag->data<short>(), sout_real_V_data_V->data<short>(), sout_real_V_last_V->data<char>(), sout_imag_V_data_V->data<short>(), sout_imag_V_last_V->data<char>());
sin1_real->transfer((hls::stream<short>*)__xlx_apatb_param_in1_real);
sin1_imag->transfer((hls::stream<short>*)__xlx_apatb_param_in1_imag);
sin2_real->transfer((hls::stream<short>*)__xlx_apatb_param_in2_real);
sin2_imag->transfer((hls::stream<short>*)__xlx_apatb_param_in2_imag);
sin3_real->transfer((hls::stream<short>*)__xlx_apatb_param_in3_real);
sin3_imag->transfer((hls::stream<short>*)__xlx_apatb_param_in3_imag);
sin4_real->transfer((hls::stream<short>*)__xlx_apatb_param_in4_real);
sin4_imag->transfer((hls::stream<short>*)__xlx_apatb_param_in4_imag);
sout_real_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_out_real_V_data_V);
sout_real_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_real_V_last_V);
sout_imag_V_data_V->transfer((hls::stream<short>*)__xlx_apatb_param_out_imag_V_data_V);
sout_imag_V_last_V->transfer((hls::stream<char>*)__xlx_apatb_param_out_imag_V_last_V);
}
