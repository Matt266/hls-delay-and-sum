#include <hls_math.h>
#include "CalculateWeights.hpp"

void CalculateElement(in2_t phi, in2_t xpos, in1_t &w_real, in1_t &w_imag){
    constexpr double pi = 3.14159265359;
    constexpr double c_0 = 299792458; // in m/s
    constexpr double f_c = 3750000000; //in Hz
    const in2_t k = 2*pi*f_c/c_0;

    // -1 in complex exponent and -1 from propagation direction (incoming wave) 
    // cancel each other out
    w_real = hls::cos(k*hls::cos(phi)*xpos)/4;
    w_imag = hls::sin(k*hls::cos(phi)*xpos)/4;
}

void CalculateWeights(
    // in rad
    in2_t phi,
    
    // in m
    in2_t xpos1,
    in2_t xpos2,
    in2_t xpos3,
    in2_t xpos4,

    // 
    in1_t &w1_real,
    in1_t &w1_imag,
    in1_t &w2_real,
    in1_t &w2_imag,
    in1_t &w3_real,
    in1_t &w3_imag,
    in1_t &w4_real,
    in1_t &w4_imag
){
    CalculateElement(phi, xpos1, w1_real, w1_imag);
    CalculateElement(phi, xpos2, w2_real, w2_imag);
    CalculateElement(phi, xpos3, w3_real, w3_imag);
    CalculateElement(phi, xpos4, w4_real, w4_imag);
}