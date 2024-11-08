#include <hls_math.h>
#include "CalculateWeights.hpp"

void CalculateElement(fxd_12_4_t &phi, fxd_32_27_t &fc, fxd_16_8_t &xpos, fxd_16_1_t &w_real, fxd_16_1_t &w_imag){
    // 2pi/c_0 and unit conversions from mm to m, MHz to Hz and 10^8 from c_0
    fxd_32_27_t temp = (2*3.14159265359)/(2.99792458*1e5);
    fxd_16_8_t k = temp*fc;
    // -1 in complex exponent and -1 from propagation direction (incoming wave) 
    // cancel each other out
    w_real = hls::cos(k*hls::cos(phi)*xpos)/4;
    w_imag = hls::sin(k*hls::cos(phi)*xpos)/4;
    return;
}

void CalculateWeights(
    // in rad
    fxd_12_4_t &phi,
    
    // in MHz
    fxd_32_27_t &fc,

    // in mm
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
){
    CalculateElement(phi, fc, xpos1, w1_real, w1_imag);
    CalculateElement(phi, fc, xpos2, w2_real, w2_imag);
    CalculateElement(phi, fc, xpos3, w3_real, w3_imag);
    CalculateElement(phi, fc, xpos4, w4_real, w4_imag);
    return;
}