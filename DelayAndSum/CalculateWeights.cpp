#include <ap_fixed.h>
#include <hls_math.h>
#include "CalculateWeights.hpp"

void CalculateElement(ap_fixed<32, 8> phi, ap_fixed<32, 8> xpos, in_t &w_real, in_t &w_imag){
    constexpr double pi = 3.14159265359;
    constexpr double c_0 = 299792458; // in m/s
    constexpr double f_c = 3750000000; //in Hz
    const ap_ufixed<32,8> k = 2*pi*f_c/c_0;

    // -1 in complex exponent and -1 from propagation direction (incoming wave) 
    // cancel each other out
    w_real = hls::cos(k*hls::cos(phi)*xpos)/4;
    w_imag = hls::sin(k*hls::cos(phi)*xpos)/4;
}

void CalculateWeights(
    //in_t angle,
    in_t &w1_real,
    in_t &w1_imag,
    in_t &w2_real,
    in_t &w2_imag,
    in_t &w3_real,
    in_t &w3_imag,
    in_t &w4_real,
    in_t &w4_imag
){
    constexpr double pi = 3.14159265359;
    ap_fixed<32, 8> xpos_1 = -6e-2; // in m
    ap_fixed<32, 8> xpos_2 = -2e-2; // in m
    ap_fixed<32, 8> xpos_3 = 2e-2;  // in m
    ap_fixed<32, 8> xpos_4 = 6e-2;  // in m
    CalculateElement(70*2*pi/360, xpos_1, w1_real, w1_imag);
    CalculateElement(70*2*pi/360, xpos_2, w2_real, w2_imag);
    CalculateElement(70*2*pi/360, xpos_3, w3_real, w3_imag);
    CalculateElement(70*2*pi/360, xpos_4, w4_real, w4_imag);
}