// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XDELAYANDSUM_H
#define XDELAYANDSUM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdelayandsum_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XDelayandsum_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDelayandsum;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDelayandsum_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDelayandsum_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDelayandsum_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDelayandsum_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XDelayandsum_Initialize(XDelayandsum *InstancePtr, UINTPTR BaseAddress);
XDelayandsum_Config* XDelayandsum_LookupConfig(UINTPTR BaseAddress);
#else
int XDelayandsum_Initialize(XDelayandsum *InstancePtr, u16 DeviceId);
XDelayandsum_Config* XDelayandsum_LookupConfig(u16 DeviceId);
#endif
int XDelayandsum_CfgInitialize(XDelayandsum *InstancePtr, XDelayandsum_Config *ConfigPtr);
#else
int XDelayandsum_Initialize(XDelayandsum *InstancePtr, const char* InstanceName);
int XDelayandsum_Release(XDelayandsum *InstancePtr);
#endif

void XDelayandsum_Start(XDelayandsum *InstancePtr);
u32 XDelayandsum_IsDone(XDelayandsum *InstancePtr);
u32 XDelayandsum_IsIdle(XDelayandsum *InstancePtr);
u32 XDelayandsum_IsReady(XDelayandsum *InstancePtr);
void XDelayandsum_EnableAutoRestart(XDelayandsum *InstancePtr);
void XDelayandsum_DisableAutoRestart(XDelayandsum *InstancePtr);

void XDelayandsum_Set_phi(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_phi(XDelayandsum *InstancePtr);
void XDelayandsum_Set_fc(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_fc(XDelayandsum *InstancePtr);
void XDelayandsum_Set_xpos1(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_xpos1(XDelayandsum *InstancePtr);
void XDelayandsum_Set_xpos2(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_xpos2(XDelayandsum *InstancePtr);
void XDelayandsum_Set_xpos3(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_xpos3(XDelayandsum *InstancePtr);
void XDelayandsum_Set_xpos4(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_xpos4(XDelayandsum *InstancePtr);
void XDelayandsum_Set_axis_packet_size(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_axis_packet_size(XDelayandsum *InstancePtr);
void XDelayandsum_Set_invert_channel(XDelayandsum *InstancePtr, u32 Data);
u32 XDelayandsum_Get_invert_channel(XDelayandsum *InstancePtr);

void XDelayandsum_InterruptGlobalEnable(XDelayandsum *InstancePtr);
void XDelayandsum_InterruptGlobalDisable(XDelayandsum *InstancePtr);
void XDelayandsum_InterruptEnable(XDelayandsum *InstancePtr, u32 Mask);
void XDelayandsum_InterruptDisable(XDelayandsum *InstancePtr, u32 Mask);
void XDelayandsum_InterruptClear(XDelayandsum *InstancePtr, u32 Mask);
u32 XDelayandsum_InterruptGetEnabled(XDelayandsum *InstancePtr);
u32 XDelayandsum_InterruptGetStatus(XDelayandsum *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
