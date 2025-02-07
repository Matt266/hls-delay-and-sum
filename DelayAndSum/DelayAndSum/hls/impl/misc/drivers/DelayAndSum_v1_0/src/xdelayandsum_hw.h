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
// 0x10 : Data signal of phi
//        bit 7~0 - phi[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of fc
//        bit 31~0 - fc[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of xpos1
//        bit 31~0 - xpos1[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of xpos2
//        bit 31~0 - xpos2[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of xpos3
//        bit 31~0 - xpos3[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of xpos4
//        bit 31~0 - xpos4[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDELAYANDSUM_CONTROL_ADDR_PHI_DATA   0x10
#define XDELAYANDSUM_CONTROL_BITS_PHI_DATA   8
#define XDELAYANDSUM_CONTROL_ADDR_FC_DATA    0x18
#define XDELAYANDSUM_CONTROL_BITS_FC_DATA    32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS1_DATA 0x20
#define XDELAYANDSUM_CONTROL_BITS_XPOS1_DATA 32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS2_DATA 0x28
#define XDELAYANDSUM_CONTROL_BITS_XPOS2_DATA 32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS3_DATA 0x30
#define XDELAYANDSUM_CONTROL_BITS_XPOS3_DATA 32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS4_DATA 0x38
#define XDELAYANDSUM_CONTROL_BITS_XPOS4_DATA 32

