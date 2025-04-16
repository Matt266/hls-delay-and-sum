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

void XDelayandsum_Start(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDelayandsum_IsDone(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDelayandsum_IsIdle(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDelayandsum_IsReady(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDelayandsum_EnableAutoRestart(XDelayandsum *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDelayandsum_DisableAutoRestart(XDelayandsum *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_AP_CTRL, 0);
}

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

void XDelayandsum_Set_invert_channel(XDelayandsum *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_INVERT_CHANNEL_DATA, Data);
}

u32 XDelayandsum_Get_invert_channel(XDelayandsum *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_INVERT_CHANNEL_DATA);
    return Data;
}

void XDelayandsum_InterruptGlobalEnable(XDelayandsum *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_GIE, 1);
}

void XDelayandsum_InterruptGlobalDisable(XDelayandsum *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_GIE, 0);
}

void XDelayandsum_InterruptEnable(XDelayandsum *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_IER);
    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_IER, Register | Mask);
}

void XDelayandsum_InterruptDisable(XDelayandsum *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_IER);
    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDelayandsum_InterruptClear(XDelayandsum *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDelayandsum_WriteReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_ISR, Mask);
}

u32 XDelayandsum_InterruptGetEnabled(XDelayandsum *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_IER);
}

u32 XDelayandsum_InterruptGetStatus(XDelayandsum *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDelayandsum_ReadReg(InstancePtr->Control_BaseAddress, XDELAYANDSUM_CONTROL_ADDR_ISR);
}

