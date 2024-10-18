set moduleName DelayAndSum
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
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
	{ w1_real int 16 regular {axi_slave 0}  }
	{ w1_imag int 16 regular {axi_slave 0}  }
	{ w2_real int 16 regular {axi_slave 0}  }
	{ w2_imag int 16 regular {axi_slave 0}  }
	{ w3_real int 16 regular {axi_slave 0}  }
	{ w3_imag int 16 regular {axi_slave 0}  }
	{ w4_real int 16 regular {axi_slave 0}  }
	{ w4_imag int 16 regular {axi_slave 0}  }
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
	{ "Name" : "w1_real", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "w1_imag", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "w2_real", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "w2_imag", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "w3_real", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "w3_imag", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "w4_real", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "w4_imag", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
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
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_real_TVALID sc_in sc_logic 1 invld 8 } 
	{ in1_imag_TVALID sc_in sc_logic 1 invld 9 } 
	{ in2_real_TVALID sc_in sc_logic 1 invld 10 } 
	{ in2_imag_TVALID sc_in sc_logic 1 invld 11 } 
	{ in3_real_TVALID sc_in sc_logic 1 invld 12 } 
	{ in3_imag_TVALID sc_in sc_logic 1 invld 13 } 
	{ in4_real_TVALID sc_in sc_logic 1 invld 14 } 
	{ in4_imag_TVALID sc_in sc_logic 1 invld 15 } 
	{ out_real_TREADY sc_in sc_logic 1 outacc 16 } 
	{ out_imag_TREADY sc_in sc_logic 1 outacc 17 } 
	{ in1_real_TDATA sc_in sc_lv 16 signal 8 } 
	{ in1_real_TREADY sc_out sc_logic 1 inacc 8 } 
	{ in1_imag_TDATA sc_in sc_lv 16 signal 9 } 
	{ in1_imag_TREADY sc_out sc_logic 1 inacc 9 } 
	{ in2_real_TDATA sc_in sc_lv 16 signal 10 } 
	{ in2_real_TREADY sc_out sc_logic 1 inacc 10 } 
	{ in2_imag_TDATA sc_in sc_lv 16 signal 11 } 
	{ in2_imag_TREADY sc_out sc_logic 1 inacc 11 } 
	{ in3_real_TDATA sc_in sc_lv 16 signal 12 } 
	{ in3_real_TREADY sc_out sc_logic 1 inacc 12 } 
	{ in3_imag_TDATA sc_in sc_lv 16 signal 13 } 
	{ in3_imag_TREADY sc_out sc_logic 1 inacc 13 } 
	{ in4_real_TDATA sc_in sc_lv 16 signal 14 } 
	{ in4_real_TREADY sc_out sc_logic 1 inacc 14 } 
	{ in4_imag_TDATA sc_in sc_lv 16 signal 15 } 
	{ in4_imag_TREADY sc_out sc_logic 1 inacc 15 } 
	{ out_real_TDATA sc_out sc_lv 16 signal 16 } 
	{ out_real_TVALID sc_out sc_logic 1 outvld 16 } 
	{ out_imag_TDATA sc_out sc_lv 16 signal 17 } 
	{ out_imag_TVALID sc_out sc_logic 1 outvld 17 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"w1_real","role":"data","value":"16"},{"name":"w1_imag","role":"data","value":"24"},{"name":"w2_real","role":"data","value":"32"},{"name":"w2_imag","role":"data","value":"40"},{"name":"w3_real","role":"data","value":"48"},{"name":"w3_imag","role":"data","value":"56"},{"name":"w4_real","role":"data","value":"64"},{"name":"w4_imag","role":"data","value":"72"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
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
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1_real", "role": "TVALID" }} , 
 	{ "name": "in1_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1_imag", "role": "TVALID" }} , 
 	{ "name": "in2_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2_real", "role": "TVALID" }} , 
 	{ "name": "in2_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2_imag", "role": "TVALID" }} , 
 	{ "name": "in3_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in3_real", "role": "TVALID" }} , 
 	{ "name": "in3_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in3_imag", "role": "TVALID" }} , 
 	{ "name": "in4_real_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in4_real", "role": "TVALID" }} , 
 	{ "name": "in4_imag_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in4_imag", "role": "TVALID" }} , 
 	{ "name": "out_real_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_real", "role": "TREADY" }} , 
 	{ "name": "out_imag_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_imag", "role": "TREADY" }} , 
 	{ "name": "in1_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_real", "role": "TDATA" }} , 
 	{ "name": "in1_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1_real", "role": "TREADY" }} , 
 	{ "name": "in1_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_imag", "role": "TDATA" }} , 
 	{ "name": "in1_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1_imag", "role": "TREADY" }} , 
 	{ "name": "in2_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_real", "role": "TDATA" }} , 
 	{ "name": "in2_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2_real", "role": "TREADY" }} , 
 	{ "name": "in2_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_imag", "role": "TDATA" }} , 
 	{ "name": "in2_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2_imag", "role": "TREADY" }} , 
 	{ "name": "in3_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in3_real", "role": "TDATA" }} , 
 	{ "name": "in3_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in3_real", "role": "TREADY" }} , 
 	{ "name": "in3_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in3_imag", "role": "TDATA" }} , 
 	{ "name": "in3_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in3_imag", "role": "TREADY" }} , 
 	{ "name": "in4_real_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in4_real", "role": "TDATA" }} , 
 	{ "name": "in4_real_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in4_real", "role": "TREADY" }} , 
 	{ "name": "in4_imag_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in4_imag", "role": "TDATA" }} , 
 	{ "name": "in4_imag_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in4_imag", "role": "TREADY" }} , 
 	{ "name": "out_real_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_real", "role": "TDATA" }} , 
 	{ "name": "out_real_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_real", "role": "TVALID" }} , 
 	{ "name": "out_imag_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_imag", "role": "TDATA" }} , 
 	{ "name": "out_imag_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_imag", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "DelayAndSum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w1_real", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_imag", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_real", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_imag", "Type" : "None", "Direction" : "I"},
			{"Name" : "w3_real", "Type" : "None", "Direction" : "I"},
			{"Name" : "w3_imag", "Type" : "None", "Direction" : "I"},
			{"Name" : "w4_real", "Type" : "None", "Direction" : "I"},
			{"Name" : "w4_imag", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_31_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31s_31_4_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31s_31_4_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_31ns_31_4_1_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_16s_31ns_31_4_1_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in1_real_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in1_imag_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in2_real_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in2_imag_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in3_real_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in3_imag_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in4_real_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in4_imag_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_real_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_imag_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DelayAndSum {
		w1_real {Type I LastRead 0 FirstWrite -1}
		w1_imag {Type I LastRead 0 FirstWrite -1}
		w2_real {Type I LastRead 0 FirstWrite -1}
		w2_imag {Type I LastRead 0 FirstWrite -1}
		w3_real {Type I LastRead 0 FirstWrite -1}
		w3_imag {Type I LastRead 0 FirstWrite -1}
		w4_real {Type I LastRead 0 FirstWrite -1}
		w4_imag {Type I LastRead 0 FirstWrite -1}
		in1_real {Type I LastRead 0 FirstWrite -1}
		in1_imag {Type I LastRead 0 FirstWrite -1}
		in2_real {Type I LastRead 0 FirstWrite -1}
		in2_imag {Type I LastRead 0 FirstWrite -1}
		in3_real {Type I LastRead 0 FirstWrite -1}
		in3_imag {Type I LastRead 0 FirstWrite -1}
		in4_real {Type I LastRead 0 FirstWrite -1}
		in4_imag {Type I LastRead 0 FirstWrite -1}
		out_real {Type O LastRead -1 FirstWrite 9}
		out_imag {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1_real { axis {  { in1_real_TVALID in_vld 0 1 }  { in1_real_TDATA in_data 0 16 }  { in1_real_TREADY in_acc 1 1 } } }
	in1_imag { axis {  { in1_imag_TVALID in_vld 0 1 }  { in1_imag_TDATA in_data 0 16 }  { in1_imag_TREADY in_acc 1 1 } } }
	in2_real { axis {  { in2_real_TVALID in_vld 0 1 }  { in2_real_TDATA in_data 0 16 }  { in2_real_TREADY in_acc 1 1 } } }
	in2_imag { axis {  { in2_imag_TVALID in_vld 0 1 }  { in2_imag_TDATA in_data 0 16 }  { in2_imag_TREADY in_acc 1 1 } } }
	in3_real { axis {  { in3_real_TVALID in_vld 0 1 }  { in3_real_TDATA in_data 0 16 }  { in3_real_TREADY in_acc 1 1 } } }
	in3_imag { axis {  { in3_imag_TVALID in_vld 0 1 }  { in3_imag_TDATA in_data 0 16 }  { in3_imag_TREADY in_acc 1 1 } } }
	in4_real { axis {  { in4_real_TVALID in_vld 0 1 }  { in4_real_TDATA in_data 0 16 }  { in4_real_TREADY in_acc 1 1 } } }
	in4_imag { axis {  { in4_imag_TVALID in_vld 0 1 }  { in4_imag_TDATA in_data 0 16 }  { in4_imag_TREADY in_acc 1 1 } } }
	out_real { axis {  { out_real_TREADY out_acc 0 1 }  { out_real_TDATA out_data 1 16 }  { out_real_TVALID out_vld 1 1 } } }
	out_imag { axis {  { out_imag_TREADY out_acc 0 1 }  { out_imag_TDATA out_data 1 16 }  { out_imag_TVALID out_vld 1 1 } } }
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
