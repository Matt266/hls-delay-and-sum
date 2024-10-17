#include <array>
#include <iostream> 
#include <fstream>

#include "TestData.hpp"
#include "DelayAndSum.hpp"

hls::stream<float> in1_real;
hls::stream<float> in1_imag;
hls::stream<float> in2_real;
hls::stream<float> in2_imag;
hls::stream<float> in3_real;
hls::stream<float> in3_imag;
hls::stream<float> in4_real;
hls::stream<float> in4_imag;
hls::stream<float> out_real;
hls::stream<float> out_imag;
float w1_real;
float w1_imag;
float w2_real;
float w2_imag;
float w3_real;
float w3_imag;
float w4_real;
float w4_imag;

float outputs_real[NUM_ANGLES];
float outputs_imag[NUM_ANGLES];

int main(){
    int ret = 0;

    for(unsigned int i = 0; i < NUM_ANGLES; i++){

        in1_real << inputs_real[i][0];
        in1_imag << inputs_imag[i][0];
        in2_real << inputs_real[i][1];
        in2_imag << inputs_imag[i][1];
        in3_real << inputs_real[i][2];
        in3_imag << inputs_imag[i][2];
        in4_real << inputs_real[i][3];
        in4_imag << inputs_imag[i][3];
        w1_real = weights_real[0];
        w1_imag = weights_imag[0];
        w2_real = weights_real[1];
        w2_imag = weights_imag[1];
        w3_real = weights_real[2];
        w3_imag = weights_imag[2];
        w4_real = weights_real[3];
        w4_imag = weights_imag[3];

        DelayAndSum(
            &w1_real,
            &w1_imag,
            &w2_real,
            &w2_imag,
            &w3_real,
            &w3_imag,
            &w4_real,
            &w4_imag,
            in1_real,
            in1_imag,
            in2_real,
            in2_imag,
            in3_real,
            in3_imag,
            in4_real,
            in4_imag,
            out_real,
            out_imag
        );

        out_real >> outputs_real[i];
        out_imag >> outputs_imag[i];
    }

    float margin = 1e-8;
    for(unsigned int i = 0; i < NUM_ANGLES; i++){
        if(abs(results_real[i]-outputs_real[i]) <= margin){
            ret = 0;
        } else {
            ret = 1;
        }
        if(abs(results_imag[i]-outputs_imag[i]) <= margin){
            ret = 0;
        } else {
            ret = 1;
        }
    }
    return ret;
}