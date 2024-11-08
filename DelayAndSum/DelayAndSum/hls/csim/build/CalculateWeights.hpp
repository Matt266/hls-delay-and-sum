#ifndef __CALCULATE_WEIGHTS_HPP
#define __CALCULATE_WEIGHTS_HPP

#include "DelayAndSum.hpp"

void CalculateWeights(
    // in rad
    fxd_12_4_t &phi,

    // in Mhz
    fxd_32_27_t &fc,
    
    // in m
    fxd_16_8_t &xpos1,
    fxd_16_8_t &xpos2,
    fxd_16_8_t &xpos3,
    fxd_16_8_t &xpos4,

    // 
    fxd_16_1_t &w1_real,
    fxd_16_1_t &w1_imag,
    fxd_16_1_t &w2_real,
    fxd_16_1_t &w2_imag,
    fxd_16_1_t &w3_real,
    fxd_16_1_t &w3_imag,
    fxd_16_1_t &w4_real,
    fxd_16_1_t &w4_imag
);

#endif //__CALCULATE_WEIGHTS_HPP