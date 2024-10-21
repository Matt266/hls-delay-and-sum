#ifndef __CALCULATE_WEIGHTS_HPP
#define __CALCULATE_WEIGHTS_HPP

#include "DelayAndSum.hpp"

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
);

#endif //__CALCULATE_WEIGHTS_HPP