#ifndef DELAY_AND_SUM_HPP
#define DELAY_AND_SUM_HPP

#include <stdio.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

// Used for calculation of weight vector
// sin and cos from hls_math (CORDIC) are used
// increasing the bitwidth drastically increases LUT usage
// 16% with ap_fixed<16,8> and 64% for ap_fixed<32,8> for in2_t and in3_t
typedef ap_fixed<20,3> fxd_20_3_t;
typedef ap_fixed<16,1> fxd_16_1_t;
typedef ap_fixed<32,16> fxd_32_16_t;

typedef ap_uint<10> uint_10_t;
const uint_10_t INVERT_IN1_REAL = (1<<0);
const uint_10_t INVERT_IN1_IMAG = (1<<1);
const uint_10_t INVERT_IN2_REAL = (1<<2);
const uint_10_t INVERT_IN2_IMAG = (1<<3);
const uint_10_t INVERT_IN3_REAL = (1<<4);
const uint_10_t INVERT_IN3_IMAG = (1<<5);
const uint_10_t INVERT_IN4_REAL = (1<<6);
const uint_10_t INVERT_IN4_IMAG = (1<<7);
const uint_10_t INVERT_OUT_REAL = (1<<8);
const uint_10_t INVERT_OUT_IMAG = (1<<9);

// Vivado AXI DMA IP allows a width from 8 to 26
// So this is set to 26 to allow any packet size
typedef ap_uint<26> uint_26_t;
typedef hls::axis<fxd_16_1_t, 0, 0, 0, (AXIS_ENABLE_DATA | AXIS_ENABLE_LAST), true> fxd_16_1_pkt_t;

void DelayAndSum(
    // in rad -- -pi to pi
    fxd_20_3_t *phi,

    // in MHz
    fxd_32_16_t *fc,
    
    // in mm
    fxd_32_16_t *xpos1,
    fxd_32_16_t *xpos2,
    fxd_32_16_t *xpos3,
    fxd_32_16_t *xpos4,

    // axi stream packet size (in 16 bit words!!) for tlast generation
    // set to 0 to disable tlast generation
    uint_26_t *axis_packet_size,

    // invert input or output axis channels as required
    // e.g., RFSoC4x2 ADCD is connected inverted, which must be corrected
    uint_10_t *invert_channel,

    //
    hls::stream<fxd_16_1_t> &in1_real,
    hls::stream<fxd_16_1_t> &in1_imag,
    hls::stream<fxd_16_1_t> &in2_real,
    hls::stream<fxd_16_1_t> &in2_imag,
    hls::stream<fxd_16_1_t> &in3_real,
    hls::stream<fxd_16_1_t> &in3_imag,
    hls::stream<fxd_16_1_t> &in4_real,
    hls::stream<fxd_16_1_t> &in4_imag,
    hls::stream<fxd_16_1_pkt_t> &out_real,
    hls::stream<fxd_16_1_pkt_t> &out_imag
);
		
#endif //DELAY_AND_SUM_HPP