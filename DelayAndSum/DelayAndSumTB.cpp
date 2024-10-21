#include "TestData.hpp"
#include "DelayAndSum.hpp"
#include "CalculateWeights.hpp"

constexpr double pi = 3.14159265359;

hls::stream<in1_t> in1_real;
hls::stream<in1_t> in1_imag;
hls::stream<in1_t> in2_real;
hls::stream<in1_t> in2_imag;
hls::stream<in1_t> in3_real;
hls::stream<in1_t> in3_imag;
hls::stream<in1_t> in4_real;
hls::stream<in1_t> in4_imag;
hls::stream<out_t> out_real;
hls::stream<out_t> out_imag;

in2_t phi = 70 * 2*pi/360;
in2_t xpos1 = -60; // mm
in2_t xpos2 = -20; // mm
in2_t xpos3 = 20; // mm
in2_t xpos4 = 60; // mm

out_t outputs_real[NUM_ANGLES];
out_t outputs_imag[NUM_ANGLES];

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

        DelayAndSum(
            &phi, 
            &xpos1,
            &xpos2,
            &xpos3,
            &xpos4,
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

    // margin slightly (10%) larger than machine epsilon (precision of used datatype)
    double margin = 1.1*pow(2,-15);
    for(unsigned int i = 0; i < NUM_ANGLES; i++){
        if(abs(results_real[i]-outputs_real[i].to_double()) <= margin){
            ret = 0;
        } else {
            ret = 1;
        }
        if(abs(results_imag[i]-outputs_imag[i].to_double()) <= margin){
            ret = 0;
        } else {
            ret = 1;
        }
    }
    return ret;
}