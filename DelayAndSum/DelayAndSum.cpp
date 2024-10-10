#include "DelayAndSum.hpp"

void DSB_Core(ap_int<inBitwidth> (&dataInReal)[numChannels], ap_int<inBitwidth> (&dataInImag)[numChannels],
			  ap_int<inBitwidth> (&weightsReal)[numChannels], ap_int<inBitwidth> (&weightsImag)[numChannels],
			  ap_int<outBitwidth> &dataOutReal, ap_int<outBitwidth> &dataOutImag){
	
	//Pipeline Function
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

void DelayAndSum(hls::stream<ap_int<inBitwidth>> &inReal0,
				 hls::stream<ap_int<inBitwidth>> &inReal1,
				 hls::stream<ap_int<inBitwidth>> &inReal2,
				 hls::stream<ap_int<inBitwidth>> &inReal3,
				 hls::stream<ap_int<inBitwidth>> &inImag0,
				 hls::stream<ap_int<inBitwidth>> &inImag1,
				 hls::stream<ap_int<inBitwidth>> &inImag2,
				 hls::stream<ap_int<inBitwidth>> &inImag3,
				 hls::stream<ap_int<outBitwidth>> &outReal,
				 hls::stream<ap_int<outBitwidth>> &outImag,
				 ap_int<inBitwidth> *weightReal0,
				 ap_int<inBitwidth> *weightReal1,
				 ap_int<inBitwidth> *weightReal2,
				 ap_int<inBitwidth> *weightReal3,
				 ap_int<inBitwidth> *weightImag0,
				 ap_int<inBitwidth> *weightImag1,
				 ap_int<inBitwidth> *weightImag2,
				 ap_int<inBitwidth> *weightImag3
){
	#pragma HLS top name=DelayAndSum
	
	//AXI Stream Interfaces
	#pragma HLS INTERFACE mode=axis port=inReal0
	#pragma HLS INTERFACE mode=axis port=inReal1
	#pragma HLS INTERFACE mode=axis port=inReal2
	#pragma HLS INTERFACE mode=axis port=inReal3
	#pragma HLS INTERFACE mode=axis port=inImag0
	#pragma HLS INTERFACE mode=axis port=inImag1
	#pragma HLS INTERFACE mode=axis port=inImag2
	#pragma HLS INTERFACE mode=axis port=inImag3
	
	//AXI Lite Interface
	#pragma HLS INTERFACE mode=s_axilite port=weightReal0 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightReal1 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightReal2 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightReal3 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightImag0 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightImag1 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightImag2 bundle=BUS_A
	#pragma HLS INTERFACE mode=s_axilite port=weightImag3 bundle=BUS_A
	
	//Buffer Input Data
	ap_int<inBitwidth> weightsReal[4]; 
	weightsReal[0] = *weightReal0;
	weightsReal[1] = *weightReal1;
	weightsReal[2] = *weightReal2;
	weightsReal[3] = *weightReal3;
	
	ap_int<inBitwidth> weightsImag[4]; 
	weightsImag[0] = *weightImag0;
	weightsImag[1] = *weightImag1;
	weightsImag[2] = *weightImag2;
	weightsImag[3] = *weightImag3;

	ap_int<inBitwidth> dataInReal[4];
	inReal0.read(dataInReal[0]);
	inReal1.read(dataInReal[1]);
	inReal2.read(dataInReal[2]);
	inReal3.read(dataInReal[3]);
	
	ap_int<inBitwidth> dataInImag[4];
	inImag0.read(dataInImag[0]);
	inImag1.read(dataInImag[1]);
	inImag2.read(dataInImag[2]);
	inImag3.read(dataInImag[3]);
	
	//Calculate Outputs
	ap_int<outBitwidth> dataOutReal;
	ap_int<outBitwidth> dataOutImag;
	DSB_Core(dataInReal, dataInImag, weightsReal, weightsImag, dataOutReal, dataOutImag);
	
	
	//Write Output
	outReal.write(dataOutReal);
	outImag.write(dataOutImag);
}
