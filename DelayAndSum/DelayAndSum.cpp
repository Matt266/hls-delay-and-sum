#include "DelayAndSum.hpp"

void DelayAndSum(StreamInputVector &input,
				 StreamOutputVector &output,
                 WeightVector *w
){
	#pragma HLS top name=DelayAndSum
	
	//AXI Stream Inputs
    #pragma HLS disaggregate variable = input.data_real
    #pragma HLS disaggregate variable = input.data_imag
	#pragma HLS INTERFACE mode=axis port=input.data_real[0]
	#pragma HLS INTERFACE mode=axis port=input.data_real[1]
	#pragma HLS INTERFACE mode=axis port=input.data_real[2]
	#pragma HLS INTERFACE mode=axis port=input.data_real[3]
	#pragma HLS INTERFACE mode=axis port=input.data_imag[0]
	#pragma HLS INTERFACE mode=axis port=input.data_imag[1]
	#pragma HLS INTERFACE mode=axis port=input.data_imag[2]
	#pragma HLS INTERFACE mode=axis port=input.data_imag[3]

    //AXI Stream Outputs
    #pragma HLS INTERFACE mode=axis port=output.data_real
    #pragma HLS INTERFACE mode=axis port=output.data_imag
	
	//AXI Lite Interface
	#pragma HLS INTERFACE mode=s_axilite port=w

    #pragma HLS DATAFLOW
    #pragma HLS pipeline II=1
    	
	//Pipeline Function
    #pragma HLS DATAFLOW
	#pragma HLS pipeline II=1
	
	/*Complex Conjugate Multiplication:
	 a*conj(b) = (a_real + j*a_imag)*(b_real - j*b_imag) 
	 = (a_real*b_real + a_imag*b_imag) + j*(a_imag*b_real - a_real*b_imag)
	
	 Bitwidth adjustments:
	 Multiplication: double the bitwidth, Addition: bitwidth increases by one (carry bit)
	*/
	ap_int<2*inBitwidth+1> weightedInReal[numChannels];
	ap_int<2*inBitwidth+1> weightedInImag[numChannels]; 
	for(int i = 0; i < numChannels; ++i){
		#pragma HLS unroll
		weightedInReal[i] = dataInReal[i]*weightsReal[i] + dataInImag[i]*weightsImag[i];
		weightedInImag[i] = dataInImag[i]*weightsReal[i] - dataInReal[i]*weightsImag[i];
	}
	
	ap_int<outBitwidth> channelSumReal;
	ap_int<outBitwidth> channelSumImag;
	
	channelSumReal = 0;
	channelSumImag = 0;
	for(int i = 0; i < numChannels; ++i){
		channelSumReal += weightedInReal[i];
		channelSumImag += weightedInImag[i];
	}
	
	dataOutReal = channelSumReal;
	dataOutImag = channelSumImag;
	
}
