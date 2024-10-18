#include <hls_math.h>
#include "DelayAndSum.hpp"

void CalculateElement(/*double phi,*/double xpos, double &w_real, double &w_imag){
    constexpr double pi = 3.14159265359;
    constexpr double c_0 = 299792458; // in m/s
    constexpr double f_c = 3750000000; //in Hz
    constexpr double phi_0 = 70*2*pi/360; // in rad

    // -1 in complex exponent and -1 from propagation direction (incoming wave) 
    // cancel each other out
    w_real = cos(2*pi*f_c*cos(phi_0)*xpos/c_0)/4;
    w_imag = sin(2*pi*f_c*cos(phi_0)*xpos/c_0)/4;
}

void CalculateWeights(
    //in_t angle,
    double &w1_real,
    double &w1_imag,
    double &w2_real,
    double &w2_imag,
    double &w3_real,
    double &w3_imag,
    double &w4_real,
    double &w4_imag
){
    constexpr double xpos_1 = -6e-2; // in m
    constexpr double xpos_2 = -2e-2; // in m
    constexpr double xpos_3 = 2e-2;  // in m
    constexpr double xpos_4 = 6e-2;  // in m
    CalculateElement(xpos_1, w1_real, w1_imag);
    CalculateElement(xpos_2, w2_real, w2_imag);
    CalculateElement(xpos_3, w3_real, w3_imag);
    CalculateElement(xpos_4, w4_real, w4_imag);
}