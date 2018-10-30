// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xencoder_decoder.h"

extern XEncoder_decoder_Config XEncoder_decoder_ConfigTable[];

XEncoder_decoder_Config *XEncoder_decoder_LookupConfig(u16 DeviceId) {
	XEncoder_decoder_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XENCODER_DECODER_NUM_INSTANCES; Index++) {
		if (XEncoder_decoder_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEncoder_decoder_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEncoder_decoder_Initialize(XEncoder_decoder *InstancePtr, u16 DeviceId) {
	XEncoder_decoder_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEncoder_decoder_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEncoder_decoder_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

