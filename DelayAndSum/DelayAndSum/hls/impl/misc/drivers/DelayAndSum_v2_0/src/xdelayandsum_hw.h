// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Auto Restart Counter 0
//        bit 31~0 - auto_restart_counter_0 (Read/Write)
// 0x14 : Data signal of phi
//        bit 7~0 - phi[7:0] (Read/Write)
//        others  - reserved
// 0x18 : reserved
// 0x1c : Data signal of fc
//        bit 31~0 - fc[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of xpos1
//        bit 31~0 - xpos1[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of xpos2
//        bit 31~0 - xpos2[31:0] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of xpos3
//        bit 31~0 - xpos3[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of xpos4
//        bit 31~0 - xpos4[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of axis_packet_size
//        bit 25~0 - axis_packet_size[25:0] (Read/Write)
//        others   - reserved
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDELAYANDSUM_CONTROL_ADDR_AP_CTRL               0x00
#define XDELAYANDSUM_CONTROL_ADDR_GIE                   0x04
#define XDELAYANDSUM_CONTROL_ADDR_IER                   0x08
#define XDELAYANDSUM_CONTROL_ADDR_ISR                   0x0c
#define XDELAYANDSUM_CONTROL_ADDR_PHI_DATA              0x14
#define XDELAYANDSUM_CONTROL_BITS_PHI_DATA              8
#define XDELAYANDSUM_CONTROL_ADDR_FC_DATA               0x1c
#define XDELAYANDSUM_CONTROL_BITS_FC_DATA               32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS1_DATA            0x24
#define XDELAYANDSUM_CONTROL_BITS_XPOS1_DATA            32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS2_DATA            0x2c
#define XDELAYANDSUM_CONTROL_BITS_XPOS2_DATA            32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS3_DATA            0x34
#define XDELAYANDSUM_CONTROL_BITS_XPOS3_DATA            32
#define XDELAYANDSUM_CONTROL_ADDR_XPOS4_DATA            0x3c
#define XDELAYANDSUM_CONTROL_BITS_XPOS4_DATA            32
#define XDELAYANDSUM_CONTROL_ADDR_AXIS_PACKET_SIZE_DATA 0x44
#define XDELAYANDSUM_CONTROL_BITS_AXIS_PACKET_SIZE_DATA 26

