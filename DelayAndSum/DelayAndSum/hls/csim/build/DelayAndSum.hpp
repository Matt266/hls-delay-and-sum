#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
#include "hls_stream.h"


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
);
		
#endif //DELAY_AND_SUM_HPP