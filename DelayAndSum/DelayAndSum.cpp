#include "DelayAndSum.hpp"
#include "CalculateWeights.hpp"
#include <atomic>

void DelayAndSum(
    // in rad -- -pi to pi
    fxd_20_3_t *phi,

    // in MHz
    fxd_32_16_t *fc,
    
    // in mm
    fxd_32_16_t *xpos1,
    fxd_32_16_t *xpos2,
    fxd_32_16_t *xpos3,
    fxd_32_16_t *xpos4,

    // axi stream packet size (in 16 bit words!!) for tlast generation
    // set to 0 to disable tlast generation
    uint_26_t *axis_packet_size,

    // invert input or output axis channels as required
    // e.g., RFSoC4x2 ADCD is connected inverted, which must be corrected
    uint_10_t *invert_channel,

    //
    hls::stream<fxd_16_1_t> &in1_real,
    hls::stream<fxd_16_1_t> &in1_imag,
    hls::stream<fxd_16_1_t> &in2_real,
    hls::stream<fxd_16_1_t> &in2_imag,
    hls::stream<fxd_16_1_t> &in3_real,
    hls::stream<fxd_16_1_t> &in3_imag,
    hls::stream<fxd_16_1_t> &in4_real,
    hls::stream<fxd_16_1_t> &in4_imag,
    hls::stream<fxd_16_1_pkt_t> &out_real,
    hls::stream<fxd_16_1_pkt_t> &out_imag
){
	#pragma HLS top name=DelayAndSum
    #pragma HLS INTERFACE mode=s_axilite port=return

    // default value of ap_ctrl_hs can be changed to ap_ctrl_chain
    // AND be controlled over axi lite if necessary
    //#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
	
	//AXI Stream Inputs
	#pragma HLS INTERFACE mode=axis port=in1_real
    #pragma HLS INTERFACE mode=axis port=in1_imag
	#pragma HLS INTERFACE mode=axis port=in2_real
    #pragma HLS INTERFACE mode=axis port=in2_imag
	#pragma HLS INTERFACE mode=axis port=in3_real
    #pragma HLS INTERFACE mode=axis port=in3_imag
	#pragma HLS INTERFACE mode=axis port=in4_real
    #pragma HLS INTERFACE mode=axis port=in4_imag

    //AXI Stream Outputs
    #pragma HLS INTERFACE mode=axis port=out_real
    #pragma HLS INTERFACE mode=axis port=out_imag
	
	//AXI Lite Interface
	#pragma HLS INTERFACE mode=s_axilite port=phi
    #pragma HLS INTERFACE mode=s_axilite port=fc
    #pragma HLS INTERFACE mode=s_axilite port=xpos1
    #pragma HLS INTERFACE mode=s_axilite port=xpos2
    #pragma HLS INTERFACE mode=s_axilite port=xpos3
    #pragma HLS INTERFACE mode=s_axilite port=xpos4
    #pragma HLS INTERFACE mode=s_axilite port=axis_packet_size
    #pragma HLS INTERFACE mode=s_axilite port=invert_channel

    #pragma HLS pipeline II=1

    uint_10_t invert_channel_buffer = *invert_channel;

    fxd_16_1_t in1_real_buffer = in1_real.read();
    fxd_16_1_t in1_imag_buffer = in1_imag.read();
    fxd_16_1_t in2_real_buffer = in2_real.read();
    fxd_16_1_t in2_imag_buffer = in2_imag.read();
    fxd_16_1_t in3_real_buffer = in3_real.read();
    fxd_16_1_t in3_imag_buffer = in3_imag.read();
    fxd_16_1_t in4_real_buffer = in4_real.read();
    fxd_16_1_t in4_imag_buffer = in4_imag.read();

    // invert input data if specified
    if(invert_channel_buffer & INVERT_IN1_REAL){in1_real_buffer = -in1_real_buffer;}
    if(invert_channel_buffer & INVERT_IN1_IMAG){in1_imag_buffer = -in1_imag_buffer;}
    if(invert_channel_buffer & INVERT_IN2_REAL){in2_real_buffer = -in2_real_buffer;}
    if(invert_channel_buffer & INVERT_IN2_IMAG){in2_imag_buffer = -in2_imag_buffer;}
    if(invert_channel_buffer & INVERT_IN3_REAL){in3_real_buffer = -in3_real_buffer;}
    if(invert_channel_buffer & INVERT_IN3_IMAG){in3_imag_buffer = -in3_imag_buffer;}
    if(invert_channel_buffer & INVERT_IN4_REAL){in4_real_buffer = -in4_real_buffer;}
    if(invert_channel_buffer & INVERT_IN4_IMAG){in4_imag_buffer = -in4_imag_buffer;}

    uint_26_t axis_packet_size_buffer = *axis_packet_size;
    fxd_20_3_t phi_buffer = *phi;
    fxd_32_16_t fc_buffer = *fc;
    fxd_32_16_t xpos1_buffer = *xpos1;
    fxd_32_16_t xpos2_buffer = *xpos2;
    fxd_32_16_t xpos3_buffer = *xpos3;
    fxd_32_16_t xpos4_buffer = *xpos4;

    fxd_16_1_t w1_real;
    fxd_16_1_t w1_imag;
    fxd_16_1_t w2_real;
    fxd_16_1_t w2_imag;
    fxd_16_1_t w3_real;
    fxd_16_1_t w3_imag;
    fxd_16_1_t w4_real;
    fxd_16_1_t w4_imag;

    CalculateWeights(phi_buffer, fc_buffer, xpos1_buffer, xpos2_buffer, xpos3_buffer, xpos4_buffer,
                w1_real, w1_imag, w2_real, w2_imag, w3_real, w3_imag, w4_real, w4_imag);

    // generate tlast with the current packet size
    static uint_26_t count = 0;
    fxd_16_1_pkt_t out_real_pkt;
    fxd_16_1_pkt_t out_imag_pkt;
    if(axis_packet_size_buffer == 0){
        // don't generate tlast 
        count = 0;
        out_real_pkt.last = false;
        out_imag_pkt.last = false;
    } else{
        // generate tlast at the and of the packet size
        if(count < (axis_packet_size_buffer-1)){
            count = count + 1;
            out_real_pkt.last[0] = false;
            out_imag_pkt.last[0] = false;
        } else{
            count = 0;
            out_real_pkt.last[0] = true;
            out_imag_pkt.last[0] = true;
        }
    }
    

    /*Complex Conjugate Multiplication:
     a*conj(b) = (a_real + j*a_imag)*(b_real - j*b_imag) 
     = (a_real*b_real + a_imag*b_imag) + j*(a_imag*b_real - a_real*b_imag)
    */

    out_real_pkt.data = (in1_real_buffer * w1_real + in1_imag_buffer * w1_imag
                +in2_real_buffer * w2_real + in2_imag_buffer * w2_imag
                +in3_real_buffer * w3_real + in3_imag_buffer * w3_imag
                +in4_real_buffer * w4_real + in4_imag_buffer * w4_imag)/4;
    out_imag_pkt.data = (in1_imag_buffer * w1_real - in1_real_buffer * w1_imag
                +in2_imag_buffer * w2_real - in2_real_buffer * w2_imag
                +in3_imag_buffer * w3_real - in3_real_buffer * w3_imag
                +in4_imag_buffer * w4_real - in4_real_buffer * w4_imag)/4;

    if(invert_channel_buffer & INVERT_OUT_REAL){
        out_real_pkt.data = -out_real_pkt.data;
    }
    if(invert_channel_buffer & INVERT_OUT_IMAG){
        out_imag_pkt.data = -out_imag_pkt.data;
    }

    out_real.write(out_real_pkt);
    out_imag.write(out_imag_pkt);
}