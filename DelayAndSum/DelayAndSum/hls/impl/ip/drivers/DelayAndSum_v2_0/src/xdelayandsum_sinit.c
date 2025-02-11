// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xdelayandsum.h"

extern XDelayandsum_Config XDelayandsum_ConfigTable[];

#ifdef SDT
XDelayandsum_Config *XDelayandsum_LookupConfig(UINTPTR BaseAddress) {
	XDelayandsum_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XDelayandsum_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XDelayandsum_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XDelayandsum_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDelayandsum_Initialize(XDelayandsum *InstancePtr, UINTPTR BaseAddress) {
	XDelayandsum_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDelayandsum_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDelayandsum_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XDelayandsum_Config *XDelayandsum_LookupConfig(u16 DeviceId) {
	XDelayandsum_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDELAYANDSUM_NUM_INSTANCES; Index++) {
		if (XDelayandsum_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDelayandsum_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDelayandsum_Initialize(XDelayandsum *InstancePtr, u16 DeviceId) {
	XDelayandsum_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDelayandsum_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDelayandsum_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

