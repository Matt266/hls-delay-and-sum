#include <hls_math.h>
#include "CalculateWeights.hpp"

void CalculateElement(fxd_20_3_t phi, fxd_32_16_t fc, fxd_32_16_t xpos, fxd_16_1_t &w_real, fxd_16_1_t &w_imag){
    // 2pi/c_0 and conversions:  10^-8 from 1/c_0, 10^-3 from mm->m conversion, 10^6 from MHz to Hz conversion ==> 10^-5 overall
    ap_fixed<18, -14> factor = (2*3.14159265359)/(2.99792458*1e5);

    // -1 in complex exponent and -1 from propagation direction (incoming wave) 
    // cancel each other out
    //
    // cast before hls::sin or hls::cos drastically reduces resource consumption and improves timing.
    // --> bitwidth seems to be adjusted automatically and therefore needs to be manually truncated 
    w_real = hls::cos(ap_fixed<18,4>((factor*fc*hls::cos(phi)*xpos)));
    w_imag = hls::sin(ap_fixed<18,4>((factor*fc*hls::cos(phi)*xpos)));
}

void CalculateWeights(
    // in rad -- -pi to pi
    fxd_20_3_t phi,

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
){
    CalculateElement(phi, fc, xpos1, w1_real, w1_imag);
    CalculateElement(phi, fc, xpos2, w2_real, w2_imag);
    CalculateElement(phi, fc, xpos3, w3_real, w3_imag);
    CalculateElement(phi, fc, xpos4, w4_real, w4_imag);
}