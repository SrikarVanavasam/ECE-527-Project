set moduleName copy_input
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
set C_modelName {copy_input}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_in double 64 regular {axi_master 0}  }
	{ x_in_offset int 29 regular  }
	{ x_int_V int 12 regular {array 12 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_in", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "x_in_offset", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} , 
 	{ "Name" : "x_int_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_x_in_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_in_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_in_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_in_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_in_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_in_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_in_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_x_in_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_x_in_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_in_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_x_in_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_in_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_in_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_x_in_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_x_in_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_x_in_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_x_in_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_x_in_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_in_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_in_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_in_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_x_in_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_x_in_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_x_in_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_x_in_BUSER sc_in sc_lv 1 signal 0 } 
	{ x_in_offset sc_in sc_lv 29 signal 1 } 
	{ x_int_V_address0 sc_out sc_lv 4 signal 2 } 
	{ x_int_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_int_V_we0 sc_out sc_logic 1 signal 2 } 
	{ x_int_V_d0 sc_out sc_lv 12 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_x_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_x_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_x_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_x_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "AWID" }} , 
 	{ "name": "m_axi_x_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "AWLEN" }} , 
 	{ "name": "m_axi_x_in_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_in", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_x_in_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "AWBURST" }} , 
 	{ "name": "m_axi_x_in_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_x_in_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_x_in_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_in", "role": "AWPROT" }} , 
 	{ "name": "m_axi_x_in_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "AWQOS" }} , 
 	{ "name": "m_axi_x_in_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "AWREGION" }} , 
 	{ "name": "m_axi_x_in_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "AWUSER" }} , 
 	{ "name": "m_axi_x_in_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WVALID" }} , 
 	{ "name": "m_axi_x_in_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WREADY" }} , 
 	{ "name": "m_axi_x_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_x_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_x_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_x_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WID" }} , 
 	{ "name": "m_axi_x_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_x_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_x_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_x_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_x_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "ARID" }} , 
 	{ "name": "m_axi_x_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "ARLEN" }} , 
 	{ "name": "m_axi_x_in_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_in", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_x_in_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "ARBURST" }} , 
 	{ "name": "m_axi_x_in_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_x_in_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_x_in_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_in", "role": "ARPROT" }} , 
 	{ "name": "m_axi_x_in_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "ARQOS" }} , 
 	{ "name": "m_axi_x_in_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_in", "role": "ARREGION" }} , 
 	{ "name": "m_axi_x_in_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "ARUSER" }} , 
 	{ "name": "m_axi_x_in_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "RVALID" }} , 
 	{ "name": "m_axi_x_in_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "RREADY" }} , 
 	{ "name": "m_axi_x_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_x_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_x_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "RID" }} , 
 	{ "name": "m_axi_x_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_x_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_x_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_x_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_x_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_x_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "BID" }} , 
 	{ "name": "m_axi_x_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "BUSER" }} , 
 	{ "name": "x_in_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "x_in_offset", "role": "default" }} , 
 	{ "name": "x_int_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_int_V", "role": "address0" }} , 
 	{ "name": "x_int_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_int_V", "role": "ce0" }} , 
 	{ "name": "x_int_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_int_V", "role": "we0" }} , 
 	{ "name": "x_int_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x_int_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "copy_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "x_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_int_V", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	copy_input {
		x_in {Type I LastRead 7 FirstWrite -1}
		x_in_offset {Type I LastRead 0 FirstWrite -1}
		x_int_V {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "43", "Max" : "43"}
	, {"Name" : "Interval", "Min" : "43", "Max" : "43"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_in { m_axi {  { m_axi_x_in_AWVALID VALID 1 1 }  { m_axi_x_in_AWREADY READY 0 1 }  { m_axi_x_in_AWADDR ADDR 1 32 }  { m_axi_x_in_AWID ID 1 1 }  { m_axi_x_in_AWLEN LEN 1 32 }  { m_axi_x_in_AWSIZE SIZE 1 3 }  { m_axi_x_in_AWBURST BURST 1 2 }  { m_axi_x_in_AWLOCK LOCK 1 2 }  { m_axi_x_in_AWCACHE CACHE 1 4 }  { m_axi_x_in_AWPROT PROT 1 3 }  { m_axi_x_in_AWQOS QOS 1 4 }  { m_axi_x_in_AWREGION REGION 1 4 }  { m_axi_x_in_AWUSER USER 1 1 }  { m_axi_x_in_WVALID VALID 1 1 }  { m_axi_x_in_WREADY READY 0 1 }  { m_axi_x_in_WDATA DATA 1 64 }  { m_axi_x_in_WSTRB STRB 1 8 }  { m_axi_x_in_WLAST LAST 1 1 }  { m_axi_x_in_WID ID 1 1 }  { m_axi_x_in_WUSER USER 1 1 }  { m_axi_x_in_ARVALID VALID 1 1 }  { m_axi_x_in_ARREADY READY 0 1 }  { m_axi_x_in_ARADDR ADDR 1 32 }  { m_axi_x_in_ARID ID 1 1 }  { m_axi_x_in_ARLEN LEN 1 32 }  { m_axi_x_in_ARSIZE SIZE 1 3 }  { m_axi_x_in_ARBURST BURST 1 2 }  { m_axi_x_in_ARLOCK LOCK 1 2 }  { m_axi_x_in_ARCACHE CACHE 1 4 }  { m_axi_x_in_ARPROT PROT 1 3 }  { m_axi_x_in_ARQOS QOS 1 4 }  { m_axi_x_in_ARREGION REGION 1 4 }  { m_axi_x_in_ARUSER USER 1 1 }  { m_axi_x_in_RVALID VALID 0 1 }  { m_axi_x_in_RREADY READY 1 1 }  { m_axi_x_in_RDATA DATA 0 64 }  { m_axi_x_in_RLAST LAST 0 1 }  { m_axi_x_in_RID ID 0 1 }  { m_axi_x_in_RUSER USER 0 1 }  { m_axi_x_in_RRESP RESP 0 2 }  { m_axi_x_in_BVALID VALID 0 1 }  { m_axi_x_in_BREADY READY 1 1 }  { m_axi_x_in_BRESP RESP 0 2 }  { m_axi_x_in_BID ID 0 1 }  { m_axi_x_in_BUSER USER 0 1 } } }
	x_in_offset { ap_none {  { x_in_offset in_data 0 29 } } }
	x_int_V { ap_memory {  { x_int_V_address0 mem_address 1 4 }  { x_int_V_ce0 mem_ce 1 1 }  { x_int_V_we0 mem_we 1 1 }  { x_int_V_d0 mem_din 1 12 } } }
}
