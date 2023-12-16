// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmy_prj_accelerator.h"

extern XMy_prj_accelerator_Config XMy_prj_accelerator_ConfigTable[];

XMy_prj_accelerator_Config *XMy_prj_accelerator_LookupConfig(u16 DeviceId) {
	XMy_prj_accelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMY_PRJ_ACCELERATOR_NUM_INSTANCES; Index++) {
		if (XMy_prj_accelerator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMy_prj_accelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_prj_accelerator_Initialize(XMy_prj_accelerator *InstancePtr, u16 DeviceId) {
	XMy_prj_accelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_prj_accelerator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_prj_accelerator_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

