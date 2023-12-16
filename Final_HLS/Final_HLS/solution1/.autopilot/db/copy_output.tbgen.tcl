set moduleName copy_output
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {copy_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ score_int_0_V_read int 12 regular  }
	{ score_out double 64 regular {axi_master 1}  }
	{ score_out_offset int 29 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "score_int_0_V_read", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "score_out", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "score_out_offset", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ score_int_0_V_read sc_in sc_lv 12 signal 0 } 
	{ m_axi_score_out_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_score_out_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_score_out_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_score_out_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_score_out_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_score_out_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_score_out_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_score_out_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_score_out_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_score_out_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_score_out_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_score_out_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_score_out_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_score_out_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_score_out_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_score_out_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_score_out_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_score_out_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_score_out_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_score_out_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_score_out_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_score_out_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_score_out_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_score_out_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_score_out_BUSER sc_in sc_lv 1 signal 1 } 
	{ score_out_offset sc_in sc_lv 29 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "score_int_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "score_int_0_V_read", "role": "default" }} , 
 	{ "name": "m_axi_score_out_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "AWVALID" }} , 
 	{ "name": "m_axi_score_out_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "AWREADY" }} , 
 	{ "name": "m_axi_score_out_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "score_out", "role": "AWADDR" }} , 
 	{ "name": "m_axi_score_out_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "AWID" }} , 
 	{ "name": "m_axi_score_out_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "score_out", "role": "AWLEN" }} , 
 	{ "name": "m_axi_score_out_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "score_out", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_score_out_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "AWBURST" }} , 
 	{ "name": "m_axi_score_out_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_score_out_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_score_out_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "score_out", "role": "AWPROT" }} , 
 	{ "name": "m_axi_score_out_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "AWQOS" }} , 
 	{ "name": "m_axi_score_out_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "AWREGION" }} , 
 	{ "name": "m_axi_score_out_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "AWUSER" }} , 
 	{ "name": "m_axi_score_out_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "WVALID" }} , 
 	{ "name": "m_axi_score_out_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "WREADY" }} , 
 	{ "name": "m_axi_score_out_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "score_out", "role": "WDATA" }} , 
 	{ "name": "m_axi_score_out_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "score_out", "role": "WSTRB" }} , 
 	{ "name": "m_axi_score_out_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "WLAST" }} , 
 	{ "name": "m_axi_score_out_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "WID" }} , 
 	{ "name": "m_axi_score_out_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "WUSER" }} , 
 	{ "name": "m_axi_score_out_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "ARVALID" }} , 
 	{ "name": "m_axi_score_out_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "ARREADY" }} , 
 	{ "name": "m_axi_score_out_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "score_out", "role": "ARADDR" }} , 
 	{ "name": "m_axi_score_out_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "ARID" }} , 
 	{ "name": "m_axi_score_out_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "score_out", "role": "ARLEN" }} , 
 	{ "name": "m_axi_score_out_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "score_out", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_score_out_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "ARBURST" }} , 
 	{ "name": "m_axi_score_out_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_score_out_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_score_out_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "score_out", "role": "ARPROT" }} , 
 	{ "name": "m_axi_score_out_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "ARQOS" }} , 
 	{ "name": "m_axi_score_out_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "score_out", "role": "ARREGION" }} , 
 	{ "name": "m_axi_score_out_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "ARUSER" }} , 
 	{ "name": "m_axi_score_out_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "RVALID" }} , 
 	{ "name": "m_axi_score_out_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "RREADY" }} , 
 	{ "name": "m_axi_score_out_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "score_out", "role": "RDATA" }} , 
 	{ "name": "m_axi_score_out_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "RLAST" }} , 
 	{ "name": "m_axi_score_out_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "RID" }} , 
 	{ "name": "m_axi_score_out_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "RUSER" }} , 
 	{ "name": "m_axi_score_out_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "RRESP" }} , 
 	{ "name": "m_axi_score_out_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "BVALID" }} , 
 	{ "name": "m_axi_score_out_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "BREADY" }} , 
 	{ "name": "m_axi_score_out_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "score_out", "role": "BRESP" }} , 
 	{ "name": "m_axi_score_out_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "BID" }} , 
 	{ "name": "m_axi_score_out_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "score_out", "role": "BUSER" }} , 
 	{ "name": "score_out_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "score_out_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "copy_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "score_int_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "score_out", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "score_out_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "score_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "score_out_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "score_out_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	copy_output {
		score_int_0_V_read {Type I LastRead 0 FirstWrite -1}
		score_out {Type O LastRead 5 FirstWrite 4}
		score_out_offset {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	score_int_0_V_read { ap_none {  { score_int_0_V_read in_data 0 12 } } }
	score_out { m_axi {  { m_axi_score_out_AWVALID VALID 1 1 }  { m_axi_score_out_AWREADY READY 0 1 }  { m_axi_score_out_AWADDR ADDR 1 32 }  { m_axi_score_out_AWID ID 1 1 }  { m_axi_score_out_AWLEN LEN 1 32 }  { m_axi_score_out_AWSIZE SIZE 1 3 }  { m_axi_score_out_AWBURST BURST 1 2 }  { m_axi_score_out_AWLOCK LOCK 1 2 }  { m_axi_score_out_AWCACHE CACHE 1 4 }  { m_axi_score_out_AWPROT PROT 1 3 }  { m_axi_score_out_AWQOS QOS 1 4 }  { m_axi_score_out_AWREGION REGION 1 4 }  { m_axi_score_out_AWUSER USER 1 1 }  { m_axi_score_out_WVALID VALID 1 1 }  { m_axi_score_out_WREADY READY 0 1 }  { m_axi_score_out_WDATA DATA 1 64 }  { m_axi_score_out_WSTRB STRB 1 8 }  { m_axi_score_out_WLAST LAST 1 1 }  { m_axi_score_out_WID ID 1 1 }  { m_axi_score_out_WUSER USER 1 1 }  { m_axi_score_out_ARVALID VALID 1 1 }  { m_axi_score_out_ARREADY READY 0 1 }  { m_axi_score_out_ARADDR ADDR 1 32 }  { m_axi_score_out_ARID ID 1 1 }  { m_axi_score_out_ARLEN LEN 1 32 }  { m_axi_score_out_ARSIZE SIZE 1 3 }  { m_axi_score_out_ARBURST BURST 1 2 }  { m_axi_score_out_ARLOCK LOCK 1 2 }  { m_axi_score_out_ARCACHE CACHE 1 4 }  { m_axi_score_out_ARPROT PROT 1 3 }  { m_axi_score_out_ARQOS QOS 1 4 }  { m_axi_score_out_ARREGION REGION 1 4 }  { m_axi_score_out_ARUSER USER 1 1 }  { m_axi_score_out_RVALID VALID 0 1 }  { m_axi_score_out_RREADY READY 1 1 }  { m_axi_score_out_RDATA DATA 0 64 }  { m_axi_score_out_RLAST LAST 0 1 }  { m_axi_score_out_RID ID 0 1 }  { m_axi_score_out_RUSER USER 0 1 }  { m_axi_score_out_RRESP RESP 0 2 }  { m_axi_score_out_BVALID VALID 0 1 }  { m_axi_score_out_BREADY READY 1 1 }  { m_axi_score_out_BRESP RESP 0 2 }  { m_axi_score_out_BID ID 0 1 }  { m_axi_score_out_BUSER USER 0 1 } } }
	score_out_offset { ap_none {  { score_out_offset in_data 0 29 } } }
}
