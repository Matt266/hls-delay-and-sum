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

struct WeightVector{
    ap_int<inBitwidth> weights_real[numChannels];
    ap_int<inBitwidth> weights_imag[numChannels];
};

struct StreamInputVector{
    hls::stream<ap_int<inBitwidth>> data_real[numChannels];
    hls::stream<ap_int<inBitwidth>> data_imag[numChannels];
};

struct StreamOutputVector{
    hls::stream<ap_int<outBitwidth>> data_real;
    hls::stream<ap_int<outBitwidth>> data_imag;
};

void DelayAndSum(StreamInputVector &input,
				 StreamOutputVector &output,
                 WeightVector *w
);
		
#endif //DELAY_AND_SUM_HPP