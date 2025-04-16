#include "TestData.hpp"
#include "DelayAndSum.hpp"
#include "CalculateWeights.hpp"
#include <cstdint>
#include <cstdio>

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

uint_26_t axis_packet_size = 3;

uint_10_t invert_channel = INVERT_IN2_REAL | INVERT_IN2_IMAG | INVERT_IN4_REAL | INVERT_OUT_REAL;

fxd_20_3_t phi = 70 * 2*pi/360; // in rad
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
        // large angle (i>=60) overflow, when the double input is inverted 
        // this doesn't happen with the ADC outputs
        // therfore, overflow is circumvented by casting before inverting
        in1_real << fxd_16_1_t(inputs_real[i][0]);
        in1_imag << fxd_16_1_t(inputs_imag[i][0]);
        in2_real << -fxd_16_1_t(inputs_real[i][1]);
        in2_imag << -fxd_16_1_t(inputs_imag[i][1]);
        in3_real << fxd_16_1_t(inputs_real[i][2]);
        in3_imag << fxd_16_1_t(inputs_imag[i][2]);
        in4_real << -fxd_16_1_t(inputs_real[i][3]);
        in4_imag << fxd_16_1_t(inputs_imag[i][3]);

        if(i >= NUM_ANGLES/2){
            axis_packet_size = 0;
        }

        DelayAndSum(
            &phi,
            &fc,
            &xpos1,
            &xpos2,
            &xpos3,
            &xpos4,
            &axis_packet_size,
            &invert_channel,
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

    // margin larger than but near to machine epsilon (precision of used datatype)
    double margin = 3*pow(2,-15);
    for(unsigned int i = 0; i < NUM_ANGLES; i++){
        if(abs(-results_real[i]-outputs_real[i].to_double()) <= margin){
            //printf("\r\n========== REAL - SUCCESS ==========\r\n");
            //printf("Expected: %.32lf\r\nReturned: %.32lf\r\nAngle index: %d\r\n", results_real[i], outputs_real[i].to_double(), i);
            ret += 0;
        } else {
            //printf("\r\n========== REAL - FAIL =============\r\n");
            //printf("Expected: %.32lf\r\nReturned: %.32lf\r\nAngle index: %d\r\n", results_real[i], outputs_real[i].to_double(), i);
            ret += 1;
        }
        if(abs(results_imag[i]-outputs_imag[i].to_double()) <= margin){
            //printf("\r\n========== IMAG - SUCCESS ==========\r\n");
            //printf("Expected: %.32lf\r\nReturned: %.32lf\r\nAngle index: %d\r\n", results_imag[i], outputs_imag[i].to_double(), i);
            ret += 0;
        } else {
            //printf("\r\n========== IMAG - FAIL =============\r\n");
            //printf("Expected: %.32lf\r\nReturned: %.32lf\r\nAngle index: %d\r\n", results_imag[i], outputs_imag[i].to_double(), i);
            ret += 1;
        }
    }
    return ret;
}