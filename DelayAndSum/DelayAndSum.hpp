#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
#include <ap_fixed.h>
#include <hls_stream.h>

typedef ap_fixed<16,1> in1_t;
typedef ap_fixed<32, 8> in2_t;
typedef ap_fixed<16,1> out_t;

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
);
		
#endif //DELAY_AND_SUM_HPP