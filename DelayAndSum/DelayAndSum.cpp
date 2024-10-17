#include "DelayAndSum.hpp"

void DelayAndSum(
    float *w1_real,
    float *w1_imag,
    float *w2_real,
    float *w2_imag,
    float *w3_real,
    float *w3_imag,
    float *w4_real,
    float *w4_imag,
    hls::stream<float> &in1_real,
    hls::stream<float> &in1_imag,
    hls::stream<float> &in2_real,
    hls::stream<float> &in2_imag,
    hls::stream<float> &in3_real,
    hls::stream<float> &in3_imag,
    hls::stream<float> &in4_real,
    hls::stream<float> &in4_imag,
    hls::stream<float> &out_real,
    hls::stream<float> &out_imag
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
	#pragma HLS INTERFACE mode=s_axilite port=w1_real
    #pragma HLS INTERFACE mode=s_axilite port=w1_imag
    #pragma HLS INTERFACE mode=s_axilite port=w2_real
    #pragma HLS INTERFACE mode=s_axilite port=w2_imag
    #pragma HLS INTERFACE mode=s_axilite port=w3_real
    #pragma HLS INTERFACE mode=s_axilite port=w3_imag
    #pragma HLS INTERFACE mode=s_axilite port=w4_real
    #pragma HLS INTERFACE mode=s_axilite port=w4_imag


    #pragma HLS DATAFLOW
    #pragma HLS pipeline II=1

    float in1_real_buffer = in1_real.read();
    float in1_imag_buffer = in1_imag.read();
    float in2_real_buffer = in2_real.read();
    float in2_imag_buffer = in2_imag.read();
    float in3_real_buffer = in3_real.read();
    float in3_imag_buffer = in3_imag.read();
    float in4_real_buffer = in4_real.read();
    float in4_imag_buffer = in4_imag.read();

    float w1_real_buffer = *w1_real;
    float w1_imag_buffer = *w1_imag;
    float w2_real_buffer = *w2_real;
    float w2_imag_buffer = *w2_imag;
    float w3_real_buffer = *w3_real;
    float w3_imag_buffer = *w3_imag;
    float w4_real_buffer = *w4_real;
    float w4_imag_buffer = *w4_imag;

	/*Complex Conjugate Multiplication:
	 a*conj(b) = (a_real + j*a_imag)*(b_real - j*b_imag) 
	 = (a_real*b_real + a_imag*b_imag) + j*(a_imag*b_real - a_real*b_imag)
	
	 Bitwidth adjustments:
	 Multiplication: double the bitwidth, Addition: bitwidth increases by one (carry bit)
	*/

    out_real << (in1_real_buffer * w1_real_buffer + in1_imag_buffer * w1_imag_buffer
                +in2_real_buffer * w2_real_buffer + in2_imag_buffer * w2_imag_buffer
                +in3_real_buffer * w3_real_buffer + in3_imag_buffer * w3_imag_buffer
                +in4_real_buffer * w4_real_buffer + in4_imag_buffer * w4_imag_buffer);


    out_imag << (in1_imag_buffer * w1_real_buffer - in1_real_buffer * w1_imag_buffer
                +in2_imag_buffer * w2_real_buffer - in2_real_buffer * w2_imag_buffer
                +in3_imag_buffer * w3_real_buffer - in3_real_buffer * w3_imag_buffer
                +in4_imag_buffer * w4_real_buffer - in4_real_buffer * w4_imag_buffer);
}
