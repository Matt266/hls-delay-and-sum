// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of w1_real
//        bit 15~0 - w1_real[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of w1_imag
//        bit 15~0 - w1_imag[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of w2_real
//        bit 15~0 - w2_real[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of w2_imag
//        bit 15~0 - w2_imag[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of w3_real
//        bit 15~0 - w3_real[15:0] (Read/Write)
//        others   - reserved
// 0x34 : reserved
// 0x38 : Data signal of w3_imag
//        bit 15~0 - w3_imag[15:0] (Read/Write)
//        others   - reserved
// 0x3c : reserved
// 0x40 : Data signal of w4_real
//        bit 15~0 - w4_real[15:0] (Read/Write)
//        others   - reserved
// 0x44 : reserved
// 0x48 : Data signal of w4_imag
//        bit 15~0 - w4_imag[15:0] (Read/Write)
//        others   - reserved
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDELAYANDSUM_CONTROL_ADDR_W1_REAL_DATA 0x10
#define XDELAYANDSUM_CONTROL_BITS_W1_REAL_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W1_IMAG_DATA 0x18
#define XDELAYANDSUM_CONTROL_BITS_W1_IMAG_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W2_REAL_DATA 0x20
#define XDELAYANDSUM_CONTROL_BITS_W2_REAL_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W2_IMAG_DATA 0x28
#define XDELAYANDSUM_CONTROL_BITS_W2_IMAG_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W3_REAL_DATA 0x30
#define XDELAYANDSUM_CONTROL_BITS_W3_REAL_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W3_IMAG_DATA 0x38
#define XDELAYANDSUM_CONTROL_BITS_W3_IMAG_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W4_REAL_DATA 0x40
#define XDELAYANDSUM_CONTROL_BITS_W4_REAL_DATA 16
#define XDELAYANDSUM_CONTROL_ADDR_W4_IMAG_DATA 0x48
#define XDELAYANDSUM_CONTROL_BITS_W4_IMAG_DATA 16

