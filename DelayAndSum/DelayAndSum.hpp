#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
#include <ap_fixed.h>
#include <hls_stream.h>

typedef ap_fixed<16,1> in_t;
typedef ap_fixed<16,1> out_t;

void DelayAndSum(
    in_t *w1_real,
    in_t *w1_imag,
    in_t *w2_real,
    in_t *w2_imag,
    in_t *w3_real,
    in_t *w3_imag,
    in_t *w4_real,
    in_t *w4_imag,
    hls::stream<in_t> &in1_real,
    hls::stream<in_t> &in1_imag,
    hls::stream<in_t> &in2_real,
    hls::stream<in_t> &in2_imag,
    hls::stream<in_t> &in3_real,
    hls::stream<in_t> &in3_imag,
    hls::stream<in_t> &in4_real,
    hls::stream<in_t> &in4_imag,
    hls::stream<out_t> &out_real,
    hls::stream<out_t> &out_imag
);
		
#endif //DELAY_AND_SUM_HPP