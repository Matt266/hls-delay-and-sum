set moduleName DelayAndSum
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {DelayAndSum}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ phi int 8 regular {axi_slave 0}  }
	{ fc int 32 regular {axi_slave 0}  }
	{ xpos1 int 32 regular {axi_slave 0}  }
	{ xpos2 int 32 regular {axi_slave 0}  }
	{ xpos3 int 32 regular {axi_slave 0}  }
	{ xpos4 int 32 regular {axi_slave 0}  }
	{ in1_real int 16 regular {axi_s 0 volatile  { in1_real Data } }  }
	{ in1_imag int 16 regular {axi_s 0 volatile  { in1_imag Data } }  }
	{ in2_real int 16 regular {axi_s 0 volatile  { in2_real Data } }  }
	{ in2_imag int 16 regular {axi_s 0 volatile  { in2_imag Data } }  }
	{ in3_real int 16 regular {axi_s 0 volatile  { in3_real Data } }  }
	{ in3_imag int 16 regular {axi_s 0 volatile  { in3_imag Data } }  }
	{ in4_real int 16 regular {axi_s 0 volatile  { in4_real Data } }  }
	{ in4_imag int 16 regular {axi_s 0 volatile  { in4_imag Data } }  }
	{ out_real int 16 regular {axi_s 1 volatile  { out_real Data } }  }
	{ out_imag int 16 regular {axi_s 1 volatile  { out_imag Data } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "phi", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "fc", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "xpos1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "xpos2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "xpos3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "xpos4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "in1_real", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in1_imag", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in2_real", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in2_imag", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in3_real", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in3_imag", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in4_real", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in4_imag", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_real", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_imag", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in1_real_TDATA sc_in sc_lv 16 signal 6 } 
	{ in1_real_TVALID sc_in sc_logic 1 invld 6 } 
	{ in1_real_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in1_imag_TDATA sc_in sc_lv 16 signal 7 } 
	{ in1_imag_TVALID sc_in sc_logic 1 invld 7 } 
	{ in1_imag_TREADY sc_out sc_logic 1 inacc 7 } 
	{ in2_real_TDATA sc_in sc_lv 16 signal 8 } 
	{ in2_real_TVALID sc_in sc_logic 1 invld 8 } 
	{ in2_real_TREADY sc_out sc_logic 1 inacc 8 } 
	{ in2_imag_TDATA sc_in sc_lv 16 signal 9 } 
	{ in2_imag_TVALID sc_in sc_logic 1 invld 9 } 
	{ in2_imag_TREADY sc_out sc_logic 1 inacc 9 } 
	{ in3_real_TDATA sc_in sc_lv 16 signal 10 } 
	{ in3_real_TVALID sc_in sc_logic 1 invld 10 } 
	{ in3_real_TREADY sc_out sc_logic 1 inacc 10 } 
	{ in3_imag_TDATA sc_in sc_lv 16 signal 11 } 
	{ in3_imag_TVALID sc_in sc_logic 1 invld 11 } 
	{ in3_imag_TREADY sc_out sc_logic 1 inacc 11 } 
	{ in4_real_TDATA sc_in sc_lv 16 signal 12 } 
	{ in4_real_TVALID sc_in sc_logic 1 invld 12 } 
	{ in4_real_TREADY sc_out sc_logic 1 inacc 12 } 
	{ in4_imag_TDATA sc_in sc_lv 16 signal 13 } 
	{ in4_imag_TVALID sc_in sc_logic 1 invld 13 } 
	{ in4_imag_TREADY sc_out sc_logic 1 inacc 13 } 
	{ out_real_TDATA sc_out sc_lv 16 signal 14 } 
	{ out_real_TVALID sc_out sc_logic 1 outvld 14 } 
	{ out_real_TREADY sc_in sc_logic 1 outacc 14 } 
	{ out_imag_TDATA sc_out sc_lv 16 signal 15 } 
	{ out_imag_TVALID sc_out sc_logic 1 outvld 15 } 
	{ out_imag_TREADY sc_in sc_logic 1 outacc 15 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"phi","role":"data","value":"16"},{"name":"fc","role":"data","value":"24"},{"name":"xpos1","role":"data","value":"32"},{"name":"xpos2","role":"data","value":"40"},{"name":"xpos3","role":"data","value":"48"},{"name":"xpos4","role":"data","value":"56"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in1_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_real", "role": "TDATA" }} , 
 	{ "name": "in1_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1_real", "role": "TVALID" }} , 
 	{ "name": "in1_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1_real", "role": "TREADY" }} , 
 	{ "name": "in1_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_imag", "role": "TDATA" }} , 
 	{ "name": "in1_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1_imag", "role": "TVALID" }} , 
 	{ "name": "in1_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1_imag", "role": "TREADY" }} , 
 	{ "name": "in2_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_real", "role": "TDATA" }} , 
 	{ "name": "in2_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2_real", "role": "TVALID" }} , 
 	{ "name": "in2_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2_real", "role": "TREADY" }} , 
 	{ "name": "in2_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_imag", "role": "TDATA" }} , 
 	{ "name": "in2_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2_imag", "role": "TVALID" }} , 
 	{ "name": "in2_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2_imag", "role": "TREADY" }} , 
 	{ "name": "in3_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in3_real", "role": "TDATA" }} , 
 	{ "name": "in3_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in3_real", "role": "TVALID" }} , 
 	{ "name": "in3_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in3_real", "role": "TREADY" }} , 
 	{ "name": "in3_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in3_imag", "role": "TDATA" }} , 
 	{ "name": "in3_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in3_imag", "role": "TVALID" }} , 
 	{ "name": "in3_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in3_imag", "role": "TREADY" }} , 
 	{ "name": "in4_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in4_real", "role": "TDATA" }} , 
 	{ "name": "in4_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in4_real", "role": "TVALID" }} , 
 	{ "name": "in4_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in4_real", "role": "TREADY" }} , 
 	{ "name": "in4_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in4_imag", "role": "TDATA" }} , 
 	{ "name": "in4_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in4_imag", "role": "TVALID" }} , 
 	{ "name": "in4_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in4_imag", "role": "TREADY" }} , 
 	{ "name": "out_real_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_real", "role": "TDATA" }} , 
 	{ "name": "out_real_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_real", "role": "TVALID" }} , 
 	{ "name": "out_real_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_real", "role": "TREADY" }} , 
 	{ "name": "out_imag_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_imag", "role": "TDATA" }} , 
 	{ "name": "out_imag_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_imag", "role": "TVALID" }} , 
 	{ "name": "out_imag_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_imag", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "DelayAndSum",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "34", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phi", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc", "Type" : "None", "Direction" : "I"},
			{"Name" : "xpos1", "Type" : "None", "Direction" : "I"},
			{"Name" : "xpos2", "Type" : "None", "Direction" : "I"},
			{"Name" : "xpos3", "Type" : "None", "Direction" : "I"},
			{"Name" : "xpos4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_real", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in1_imag", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_real", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in2_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_imag", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in2_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in3_real", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in3_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in3_imag", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in3_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in4_real", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in4_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in4_imag", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in4_imag_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_real", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_real_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_imag", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_imag_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_63_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_63s_7s_69_3_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_69s_32s_85_3_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_69s_32s_85_3_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_69s_32s_85_3_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_69s_32s_85_3_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_13ns_20_1_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_3_7_1_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_19ns_34_1_1_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_19ns_34_1_1_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_19ns_34_1_1_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16ns_19ns_34_1_1_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_17_1_1_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_3ns_10ns_10_4_1_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31s_31_4_1_U21", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U22", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U23", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U24", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U25", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U26", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U27", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U28", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U29", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U30", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U31", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U32", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U33", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frp_pipeline_valid_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_out_imag_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pf_out_real_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in1_real_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in1_imag_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in2_real_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in2_imag_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in3_real_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in3_imag_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in4_real_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in4_imag_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DelayAndSum {
		phi {Type I LastRead 0 FirstWrite -1}
		fc {Type I LastRead 0 FirstWrite -1}
		xpos1 {Type I LastRead 0 FirstWrite -1}
		xpos2 {Type I LastRead 0 FirstWrite -1}
		xpos3 {Type I LastRead 0 FirstWrite -1}
		xpos4 {Type I LastRead 0 FirstWrite -1}
		in1_real {Type I LastRead 0 FirstWrite -1}
		in1_imag {Type I LastRead 0 FirstWrite -1}
		in2_real {Type I LastRead 0 FirstWrite -1}
		in2_imag {Type I LastRead 0 FirstWrite -1}
		in3_real {Type I LastRead 0 FirstWrite -1}
		in3_imag {Type I LastRead 0 FirstWrite -1}
		in4_real {Type I LastRead 0 FirstWrite -1}
		in4_imag {Type I LastRead 0 FirstWrite -1}
		out_real {Type O LastRead -1 FirstWrite 33}
		out_imag {Type O LastRead -1 FirstWrite 33}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1_real { axis {  { in1_real_TDATA in_data 0 16 }  { in1_real_TVALID in_vld 0 1 }  { in1_real_TREADY in_acc 1 1 } } }
	in1_imag { axis {  { in1_imag_TDATA in_data 0 16 }  { in1_imag_TVALID in_vld 0 1 }  { in1_imag_TREADY in_acc 1 1 } } }
	in2_real { axis {  { in2_real_TDATA in_data 0 16 }  { in2_real_TVALID in_vld 0 1 }  { in2_real_TREADY in_acc 1 1 } } }
	in2_imag { axis {  { in2_imag_TDATA in_data 0 16 }  { in2_imag_TVALID in_vld 0 1 }  { in2_imag_TREADY in_acc 1 1 } } }
	in3_real { axis {  { in3_real_TDATA in_data 0 16 }  { in3_real_TVALID in_vld 0 1 }  { in3_real_TREADY in_acc 1 1 } } }
	in3_imag { axis {  { in3_imag_TDATA in_data 0 16 }  { in3_imag_TVALID in_vld 0 1 }  { in3_imag_TREADY in_acc 1 1 } } }
	in4_real { axis {  { in4_real_TDATA in_data 0 16 }  { in4_real_TVALID in_vld 0 1 }  { in4_real_TREADY in_acc 1 1 } } }
	in4_imag { axis {  { in4_imag_TDATA in_data 0 16 }  { in4_imag_TVALID in_vld 0 1 }  { in4_imag_TREADY in_acc 1 1 } } }
	out_real { axis {  { out_real_TDATA out_data 1 16 }  { out_real_TVALID out_vld 1 1 }  { out_real_TREADY out_acc 0 1 } } }
	out_imag { axis {  { out_imag_TDATA out_data 1 16 }  { out_imag_TVALID out_vld 1 1 }  { out_imag_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
