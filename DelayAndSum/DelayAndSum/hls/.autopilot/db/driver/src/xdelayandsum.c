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

void XDelayandsum_Set_phi(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_PHI_DATA, Data);
}

u32 XDelayandsum_Get_phi(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_PHI_DATA);
    return Data;
}

void XDelayandsum_Set_fc(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_FC_DATA, Data);
}

u32 XDelayandsum_Get_fc(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_FC_DATA);
    return Data;
}

void XDelayandsum_Set_xpos1(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS1_DATA, Data);
}

u32 XDelayandsum_Get_xpos1(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS1_DATA);
    return Data;
}

void XDelayandsum_Set_xpos2(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS2_DATA, Data);
}

u32 XDelayandsum_Get_xpos2(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS2_DATA);
    return Data;
}

void XDelayandsum_Set_xpos3(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS3_DATA, Data);
}

u32 XDelayandsum_Get_xpos3(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS3_DATA);
    return Data;
}

void XDelayandsum_Set_xpos4(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS4_DATA, Data);
}

u32 XDelayandsum_Get_xpos4(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_XPOS4_DATA);
    return Data;
}

void XDelayandsum_Set_axis_packet_size(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AXIS_PACKET_SIZE_DATA, Data);
}

u32 XDelayandsum_Get_axis_packet_size(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AXIS_PACKET_SIZE_DATA);
    return Data;
}

