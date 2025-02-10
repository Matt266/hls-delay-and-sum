#include "TestData.hpp"
#include "DelayAndSum.hpp"
#include "CalculateWeights.hpp"
#include <cstdint>

constexpr double pi = 3.14159265359;

hls::stream<fxd_16_1_t> in1_real;
hls::stream<fxd_16_1_t> in1_imag;
hls::stream<fxd_16_1_t> in2_real;
hls::stream<fxd_16_1_t> in2_imag;
hls::stream<fxd_16_1_t> in3_real;
hls::stream<fxd_16_1_t> in3_imag;
hls::stream<fxd_16_1_t> in4_real;
hls::stream<fxd_16_1_t> in4_imag;
hls::stream<fxd_16_1_pkt_t> out_real;
hls::stream<fxd_16_1_pkt_t> out_imag;
fxd_16_1_pkt_t out_real_pkt;
fxd_16_1_pkt_t out_imag_pkt;

uint_26_t axis_packet_size = 5;
fxd_8_3_t phi = 70 * 2*pi/360; // in rad
fxd_32_16_t fc = 3750; // in MHz
fxd_32_16_t xpos1 = -60; // mm
fxd_32_16_t xpos2 = -20; // mm
fxd_32_16_t xpos3 = 20; // mm
fxd_32_16_t xpos4 = 60; // mm

fxd_16_1_t outputs_real[NUM_ANGLES];
fxd_16_1_t outputs_imag[NUM_ANGLES];

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

        if(i >= NUM_ANGLES/2){
            axis_packet_size = 0;
        }

        DelayAndSum(
            &axis_packet_size,
            &phi,
            &fc,
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

        out_real >> out_real_pkt;
        out_imag >> out_imag_pkt;
        outputs_real[i] = out_real_pkt.data;
        outputs_imag[i] = out_imag_pkt.data;
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