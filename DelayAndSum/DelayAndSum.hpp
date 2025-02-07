#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
#include <ap_fixed.h>
#include <hls_stream.h>

// Used for calculation of weight vector
// sin and cos from hls_math (CORDIC) are used
// increasing the bitwidth drastically increases LUT usage
// 16% with ap_fixed<16,8> and 64% for ap_fixed<32,8> for in2_t and in3_t
typedef ap_fixed<8,4> fxd_8_4_t;
typedef ap_fixed<16,1> fxd_16_1_t;
typedef ap_fixed<32,16> fxd_32_16_t;

void DelayAndSum(
    // in rad -- -2pi to 2pi
    fxd_8_4_t *phi,

    // in MHz
    fxd_32_16_t *fc,
    
    // in mm
    fxd_32_16_t *xpos1,
    fxd_32_16_t *xpos2,
    fxd_32_16_t *xpos3,
    fxd_32_16_t *xpos4,

    //
    hls::stream<fxd_16_1_t> &in1_real,
    hls::stream<fxd_16_1_t> &in1_imag,
    hls::stream<fxd_16_1_t> &in2_real,
    hls::stream<fxd_16_1_t> &in2_imag,
    hls::stream<fxd_16_1_t> &in3_real,
    hls::stream<fxd_16_1_t> &in3_imag,
    hls::stream<fxd_16_1_t> &in4_real,
    hls::stream<fxd_16_1_t> &in4_imag,
    hls::stream<fxd_16_1_t> &out_real,
    hls::stream<fxd_16_1_t> &out_imag
);
		
#endif //DELAY_AND_SUM_HPP