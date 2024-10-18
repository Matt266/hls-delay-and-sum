// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdelayandsum.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDelayandsum_CfgInitialize(XDelayandsum *InstancePtr, XDelayandsum_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDelayandsum_Set_w1_real(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W1_REAL_DATA, Data);
}

u32 XDelayandsum_Get_w1_real(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W1_REAL_DATA);
    return Data;
}

void XDelayandsum_Set_w1_imag(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W1_IMAG_DATA, Data);
}

u32 XDelayandsum_Get_w1_imag(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W1_IMAG_DATA);
    return Data;
}

void XDelayandsum_Set_w2_real(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W2_REAL_DATA, Data);
}

u32 XDelayandsum_Get_w2_real(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W2_REAL_DATA);
    return Data;
}

void XDelayandsum_Set_w2_imag(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W2_IMAG_DATA, Data);
}

u32 XDelayandsum_Get_w2_imag(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W2_IMAG_DATA);
    return Data;
}

void XDelayandsum_Set_w3_real(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W3_REAL_DATA, Data);
}

u32 XDelayandsum_Get_w3_real(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W3_REAL_DATA);
    return Data;
}

void XDelayandsum_Set_w3_imag(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W3_IMAG_DATA, Data);
}

u32 XDelayandsum_Get_w3_imag(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W3_IMAG_DATA);
    return Data;
}

void XDelayandsum_Set_w4_real(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W4_REAL_DATA, Data);
}

u32 XDelayandsum_Get_w4_real(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W4_REAL_DATA);
    return Data;
}

void XDelayandsum_Set_w4_imag(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W4_IMAG_DATA, Data);
}

u32 XDelayandsum_Get_w4_imag(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_W4_IMAG_DATA);
    return Data;
}

