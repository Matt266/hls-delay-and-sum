#ifndef __CALCULATE_WEIGHTS_HPP
#define __CALCULATE_WEIGHTS_HPP

#include "DelayAndSum.hpp"
void CalculateElement(fxd_8_3_t phi, fxd_32_16_t fc, fxd_32_16_t xpos, fxd_16_1_t &w_real, fxd_16_1_t &w_imag);
void CalculateWeights(
    // in rad -- -pi to pi
    fxd_8_3_t phi,

    // in Mhz
    fxd_32_16_t fc,
    
    // in mm
    fxd_32_16_t xpos1,
    fxd_32_16_t xpos2,
    fxd_32_16_t xpos3,
    fxd_32_16_t xpos4,

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