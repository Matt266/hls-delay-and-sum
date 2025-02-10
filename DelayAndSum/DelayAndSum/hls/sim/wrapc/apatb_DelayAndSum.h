// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_DelayAndSum (
volatile void* phi,
volatile void* fc,
volatile void* xpos1,
volatile void* xpos2,
volatile void* xpos3,
volatile void* xpos4,
hls::stream<int > in1_real,
hls::stream<int > in1_imag,
hls::stream<int > in2_real,
hls::stream<int > in2_imag,
hls::stream<int > in3_real,
hls::stream<int > in3_imag,
hls::stream<int > in4_real,
hls::stream<int > in4_imag,
hls::stream<int > out_real,
hls::stream<int > out_imag);
