#include <iostream>
#include "hls_stream.h"
#include "hls_directio.h"

using namespace std;

struct __cosim_T_1__ {char data[1];};
extern "C" void fpga_fifo_push_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_1(hls::stream<__cosim_T_1__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_1(hls::stream<__cosim_T_1__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_1(hls::directio<__cosim_T_1__>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_1(__cosim_T_1__* val, hls::directio<__cosim_T_1__>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_1(__cosim_T_1__* val, hls::directio<__cosim_T_1__>* direct) {
  direct->write(*val);
}
struct __cosim_T_2__ {char data[2];};
extern "C" void fpga_fifo_push_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_2(hls::stream<__cosim_T_2__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_2(hls::stream<__cosim_T_2__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_2(hls::directio<__cosim_T_2__>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_2(__cosim_T_2__* val, hls::directio<__cosim_T_2__>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_2(__cosim_T_2__* val, hls::directio<__cosim_T_2__>* direct) {
  direct->write(*val);
}
struct __cosim_T_8__ {char data[8];};
extern "C" void fpga_fifo_push_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_8(hls::stream<__cosim_T_8__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_8(hls::stream<__cosim_T_8__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_8(hls::directio<__cosim_T_8__>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_8(__cosim_T_8__* val, hls::directio<__cosim_T_8__>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_8(__cosim_T_8__* val, hls::directio<__cosim_T_8__>* direct) {
  direct->write(*val);
}
