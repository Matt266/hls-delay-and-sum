#include "DelayAndSum.hpp"
#include "CalculateWeights.hpp"

void DelayAndSum(
    // in rad
    in2_t *phi,
    
    // in m
    in2_t *xpos1,
    in2_t *xpos2,
    in2_t *xpos3,
    in2_t *xpos4,

    //
    hls::stream<in1_t> &in1_real,
    hls::stream<in1_t> &in1_imag,
    hls::stream<in1_t> &in2_real,
    hls::stream<in1_t> &in2_imag,
    hls::stream<in1_t> &in3_real,
    hls::stream<in1_t> &in3_imag,
    hls::stream<in1_t> &in4_real,
    hls::stream<in1_t> &in4_imag,
    hls::stream<out_t> &out_real,
    hls::stream<out_t> &out_imag
){
	#pragma HLS top name=DelayAndSum
	
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
    #pragma HLS INTERFACE mode=s_axilite port=xpos1
    #pragma HLS INTERFACE mode=s_axilite port=xpos2
    #pragma HLS INTERFACE mode=s_axilite port=xpos3
    #pragma HLS INTERFACE mode=s_axilite port=xpos4

    #pragma HLS pipeline II=1

    in1_t in1_real_buffer = in1_real.read();
    in1_t in1_imag_buffer = in1_imag.read();
    in1_t in2_real_buffer = in2_real.read();
    in1_t in2_imag_buffer = in2_imag.read();
    in1_t in3_real_buffer = in3_real.read();
    in1_t in3_imag_buffer = in3_imag.read();
    in1_t in4_real_buffer = in4_real.read();
    in1_t in4_imag_buffer = in4_imag.read();

    in2_t phi_buffer = *phi;
    in2_t xpos1_buffer = *xpos1;
    in2_t xpos2_buffer = *xpos2;
    in2_t xpos3_buffer = *xpos3;
    in2_t xpos4_buffer = *xpos4;

    in1_t w1_real;
    in1_t w1_imag;
    in1_t w2_real;
    in1_t w2_imag;
    in1_t w3_real;
    in1_t w3_imag;
    in1_t w4_real;
    in1_t w4_imag;

    CalculateWeights(phi_buffer, xpos1_buffer, xpos2_buffer, xpos3_buffer, xpos4_buffer,
                w1_real, w1_imag, w2_real, w2_imag, w3_real, w3_imag, w4_real, w4_imag);

	/*Complex Conjugate Multiplication:
	 a*conj(b) = (a_real + j*a_imag)*(b_real - j*b_imag) 
	 = (a_real*b_real + a_imag*b_imag) + j*(a_imag*b_real - a_real*b_imag)
	*/

    out_real << (in1_real_buffer * w1_real + in1_imag_buffer * w1_imag
                +in2_real_buffer * w2_real + in2_imag_buffer * w2_imag
                +in3_real_buffer * w3_real + in3_imag_buffer * w3_imag
                +in4_real_buffer * w4_real + in4_imag_buffer * w4_imag);

    out_imag << (in1_imag_buffer * w1_real - in1_real_buffer * w1_imag
                +in2_imag_buffer * w2_real - in2_real_buffer * w2_imag
                +in3_imag_buffer * w3_real - in3_real_buffer * w3_imag
                +in4_imag_buffer * w4_real - in4_real_buffer * w4_imag);
}
