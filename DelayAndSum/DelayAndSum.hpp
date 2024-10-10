#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
//#include <complex>

#include "ap_int.h"
#include "hls_stream.h"

constexpr unsigned int inBitwidth = 16;

//Complex  Multiplication for each channel (2*inBitwidth+1) and n-1 additions for n channels (4-1=3)
constexpr unsigned int numChannels = 4;
constexpr unsigned int outBitwidth = 2*inBitwidth+numChannels; 

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
				 ap_int<inBitwidth> &weightReal0,
				 ap_int<inBitwidth> &weightReal1,
				 ap_int<inBitwidth> &weightReal2,
				 ap_int<inBitwidth> &weightReal3,
				 ap_int<inBitwidth> &weightImag0,
				 ap_int<inBitwidth> &weightImag1,
				 ap_int<inBitwidth> &weightImag2,
				 ap_int<inBitwidth> &weightImag3
);
		
#endif //DELAY_AND_SUM_HPP