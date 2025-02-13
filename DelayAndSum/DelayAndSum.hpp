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
typedef ap_fixed<8,3> fxd_8_3_t;
typedef ap_fixed<16,1> fxd_16_1_t;
typedef ap_fixed<32,16> fxd_32_16_t;

// Vivado AXI DMA IP allows a width from 8 to 26
// So this is set to 26 to allow any packet size
typedef ap_uint<26> uint_26_t;
typedef hls::axis<fxd_16_1_t, 0, 0, 0, (AXIS_ENABLE_DATA | AXIS_ENABLE_LAST), true> fxd_16_1_pkt_t;

void DelayAndSum(
    // in rad -- -pi to pi
    fxd_8_3_t *phi,

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