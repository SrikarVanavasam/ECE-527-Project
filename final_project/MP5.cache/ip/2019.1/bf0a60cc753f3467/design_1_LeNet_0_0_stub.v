// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Nov  5 15:58:58 2023
// Host        : yh_dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_LeNet_0_0_stub.v
// Design      : design_1_LeNet_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LeNet,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_DATA_INPUT_AWADDR, 
  m_axi_DATA_INPUT_AWLEN, m_axi_DATA_INPUT_AWSIZE, m_axi_DATA_INPUT_AWBURST, 
  m_axi_DATA_INPUT_AWLOCK, m_axi_DATA_INPUT_AWREGION, m_axi_DATA_INPUT_AWCACHE, 
  m_axi_DATA_INPUT_AWPROT, m_axi_DATA_INPUT_AWQOS, m_axi_DATA_INPUT_AWVALID, 
  m_axi_DATA_INPUT_AWREADY, m_axi_DATA_INPUT_WDATA, m_axi_DATA_INPUT_WSTRB, 
  m_axi_DATA_INPUT_WLAST, m_axi_DATA_INPUT_WVALID, m_axi_DATA_INPUT_WREADY, 
  m_axi_DATA_INPUT_BRESP, m_axi_DATA_INPUT_BVALID, m_axi_DATA_INPUT_BREADY, 
  m_axi_DATA_INPUT_ARADDR, m_axi_DATA_INPUT_ARLEN, m_axi_DATA_INPUT_ARSIZE, 
  m_axi_DATA_INPUT_ARBURST, m_axi_DATA_INPUT_ARLOCK, m_axi_DATA_INPUT_ARREGION, 
  m_axi_DATA_INPUT_ARCACHE, m_axi_DATA_INPUT_ARPROT, m_axi_DATA_INPUT_ARQOS, 
  m_axi_DATA_INPUT_ARVALID, m_axi_DATA_INPUT_ARREADY, m_axi_DATA_INPUT_RDATA, 
  m_axi_DATA_INPUT_RRESP, m_axi_DATA_INPUT_RLAST, m_axi_DATA_INPUT_RVALID, 
  m_axi_DATA_INPUT_RREADY, m_axi_DATA_WEIGHTS_AWADDR, m_axi_DATA_WEIGHTS_AWLEN, 
  m_axi_DATA_WEIGHTS_AWSIZE, m_axi_DATA_WEIGHTS_AWBURST, m_axi_DATA_WEIGHTS_AWLOCK, 
  m_axi_DATA_WEIGHTS_AWREGION, m_axi_DATA_WEIGHTS_AWCACHE, m_axi_DATA_WEIGHTS_AWPROT, 
  m_axi_DATA_WEIGHTS_AWQOS, m_axi_DATA_WEIGHTS_AWVALID, m_axi_DATA_WEIGHTS_AWREADY, 
  m_axi_DATA_WEIGHTS_WDATA, m_axi_DATA_WEIGHTS_WSTRB, m_axi_DATA_WEIGHTS_WLAST, 
  m_axi_DATA_WEIGHTS_WVALID, m_axi_DATA_WEIGHTS_WREADY, m_axi_DATA_WEIGHTS_BRESP, 
  m_axi_DATA_WEIGHTS_BVALID, m_axi_DATA_WEIGHTS_BREADY, m_axi_DATA_WEIGHTS_ARADDR, 
  m_axi_DATA_WEIGHTS_ARLEN, m_axi_DATA_WEIGHTS_ARSIZE, m_axi_DATA_WEIGHTS_ARBURST, 
  m_axi_DATA_WEIGHTS_ARLOCK, m_axi_DATA_WEIGHTS_ARREGION, m_axi_DATA_WEIGHTS_ARCACHE, 
  m_axi_DATA_WEIGHTS_ARPROT, m_axi_DATA_WEIGHTS_ARQOS, m_axi_DATA_WEIGHTS_ARVALID, 
  m_axi_DATA_WEIGHTS_ARREADY, m_axi_DATA_WEIGHTS_RDATA, m_axi_DATA_WEIGHTS_RRESP, 
  m_axi_DATA_WEIGHTS_RLAST, m_axi_DATA_WEIGHTS_RVALID, m_axi_DATA_WEIGHTS_RREADY, 
  m_axi_DATA_BIAS_AWADDR, m_axi_DATA_BIAS_AWLEN, m_axi_DATA_BIAS_AWSIZE, 
  m_axi_DATA_BIAS_AWBURST, m_axi_DATA_BIAS_AWLOCK, m_axi_DATA_BIAS_AWREGION, 
  m_axi_DATA_BIAS_AWCACHE, m_axi_DATA_BIAS_AWPROT, m_axi_DATA_BIAS_AWQOS, 
  m_axi_DATA_BIAS_AWVALID, m_axi_DATA_BIAS_AWREADY, m_axi_DATA_BIAS_WDATA, 
  m_axi_DATA_BIAS_WSTRB, m_axi_DATA_BIAS_WLAST, m_axi_DATA_BIAS_WVALID, 
  m_axi_DATA_BIAS_WREADY, m_axi_DATA_BIAS_BRESP, m_axi_DATA_BIAS_BVALID, 
  m_axi_DATA_BIAS_BREADY, m_axi_DATA_BIAS_ARADDR, m_axi_DATA_BIAS_ARLEN, 
  m_axi_DATA_BIAS_ARSIZE, m_axi_DATA_BIAS_ARBURST, m_axi_DATA_BIAS_ARLOCK, 
  m_axi_DATA_BIAS_ARREGION, m_axi_DATA_BIAS_ARCACHE, m_axi_DATA_BIAS_ARPROT, 
  m_axi_DATA_BIAS_ARQOS, m_axi_DATA_BIAS_ARVALID, m_axi_DATA_BIAS_ARREADY, 
  m_axi_DATA_BIAS_RDATA, m_axi_DATA_BIAS_RRESP, m_axi_DATA_BIAS_RLAST, 
  m_axi_DATA_BIAS_RVALID, m_axi_DATA_BIAS_RREADY, m_axi_DATA_OUTPUT_AWADDR, 
  m_axi_DATA_OUTPUT_AWLEN, m_axi_DATA_OUTPUT_AWSIZE, m_axi_DATA_OUTPUT_AWBURST, 
  m_axi_DATA_OUTPUT_AWLOCK, m_axi_DATA_OUTPUT_AWREGION, m_axi_DATA_OUTPUT_AWCACHE, 
  m_axi_DATA_OUTPUT_AWPROT, m_axi_DATA_OUTPUT_AWQOS, m_axi_DATA_OUTPUT_AWVALID, 
  m_axi_DATA_OUTPUT_AWREADY, m_axi_DATA_OUTPUT_WDATA, m_axi_DATA_OUTPUT_WSTRB, 
  m_axi_DATA_OUTPUT_WLAST, m_axi_DATA_OUTPUT_WVALID, m_axi_DATA_OUTPUT_WREADY, 
  m_axi_DATA_OUTPUT_BRESP, m_axi_DATA_OUTPUT_BVALID, m_axi_DATA_OUTPUT_BREADY, 
  m_axi_DATA_OUTPUT_ARADDR, m_axi_DATA_OUTPUT_ARLEN, m_axi_DATA_OUTPUT_ARSIZE, 
  m_axi_DATA_OUTPUT_ARBURST, m_axi_DATA_OUTPUT_ARLOCK, m_axi_DATA_OUTPUT_ARREGION, 
  m_axi_DATA_OUTPUT_ARCACHE, m_axi_DATA_OUTPUT_ARPROT, m_axi_DATA_OUTPUT_ARQOS, 
  m_axi_DATA_OUTPUT_ARVALID, m_axi_DATA_OUTPUT_ARREADY, m_axi_DATA_OUTPUT_RDATA, 
  m_axi_DATA_OUTPUT_RRESP, m_axi_DATA_OUTPUT_RLAST, m_axi_DATA_OUTPUT_RVALID, 
  m_axi_DATA_OUTPUT_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_DATA_INPUT_AWADDR[31:0],m_axi_DATA_INPUT_AWLEN[7:0],m_axi_DATA_INPUT_AWSIZE[2:0],m_axi_DATA_INPUT_AWBURST[1:0],m_axi_DATA_INPUT_AWLOCK[1:0],m_axi_DATA_INPUT_AWREGION[3:0],m_axi_DATA_INPUT_AWCACHE[3:0],m_axi_DATA_INPUT_AWPROT[2:0],m_axi_DATA_INPUT_AWQOS[3:0],m_axi_DATA_INPUT_AWVALID,m_axi_DATA_INPUT_AWREADY,m_axi_DATA_INPUT_WDATA[31:0],m_axi_DATA_INPUT_WSTRB[3:0],m_axi_DATA_INPUT_WLAST,m_axi_DATA_INPUT_WVALID,m_axi_DATA_INPUT_WREADY,m_axi_DATA_INPUT_BRESP[1:0],m_axi_DATA_INPUT_BVALID,m_axi_DATA_INPUT_BREADY,m_axi_DATA_INPUT_ARADDR[31:0],m_axi_DATA_INPUT_ARLEN[7:0],m_axi_DATA_INPUT_ARSIZE[2:0],m_axi_DATA_INPUT_ARBURST[1:0],m_axi_DATA_INPUT_ARLOCK[1:0],m_axi_DATA_INPUT_ARREGION[3:0],m_axi_DATA_INPUT_ARCACHE[3:0],m_axi_DATA_INPUT_ARPROT[2:0],m_axi_DATA_INPUT_ARQOS[3:0],m_axi_DATA_INPUT_ARVALID,m_axi_DATA_INPUT_ARREADY,m_axi_DATA_INPUT_RDATA[31:0],m_axi_DATA_INPUT_RRESP[1:0],m_axi_DATA_INPUT_RLAST,m_axi_DATA_INPUT_RVALID,m_axi_DATA_INPUT_RREADY,m_axi_DATA_WEIGHTS_AWADDR[31:0],m_axi_DATA_WEIGHTS_AWLEN[7:0],m_axi_DATA_WEIGHTS_AWSIZE[2:0],m_axi_DATA_WEIGHTS_AWBURST[1:0],m_axi_DATA_WEIGHTS_AWLOCK[1:0],m_axi_DATA_WEIGHTS_AWREGION[3:0],m_axi_DATA_WEIGHTS_AWCACHE[3:0],m_axi_DATA_WEIGHTS_AWPROT[2:0],m_axi_DATA_WEIGHTS_AWQOS[3:0],m_axi_DATA_WEIGHTS_AWVALID,m_axi_DATA_WEIGHTS_AWREADY,m_axi_DATA_WEIGHTS_WDATA[31:0],m_axi_DATA_WEIGHTS_WSTRB[3:0],m_axi_DATA_WEIGHTS_WLAST,m_axi_DATA_WEIGHTS_WVALID,m_axi_DATA_WEIGHTS_WREADY,m_axi_DATA_WEIGHTS_BRESP[1:0],m_axi_DATA_WEIGHTS_BVALID,m_axi_DATA_WEIGHTS_BREADY,m_axi_DATA_WEIGHTS_ARADDR[31:0],m_axi_DATA_WEIGHTS_ARLEN[7:0],m_axi_DATA_WEIGHTS_ARSIZE[2:0],m_axi_DATA_WEIGHTS_ARBURST[1:0],m_axi_DATA_WEIGHTS_ARLOCK[1:0],m_axi_DATA_WEIGHTS_ARREGION[3:0],m_axi_DATA_WEIGHTS_ARCACHE[3:0],m_axi_DATA_WEIGHTS_ARPROT[2:0],m_axi_DATA_WEIGHTS_ARQOS[3:0],m_axi_DATA_WEIGHTS_ARVALID,m_axi_DATA_WEIGHTS_ARREADY,m_axi_DATA_WEIGHTS_RDATA[31:0],m_axi_DATA_WEIGHTS_RRESP[1:0],m_axi_DATA_WEIGHTS_RLAST,m_axi_DATA_WEIGHTS_RVALID,m_axi_DATA_WEIGHTS_RREADY,m_axi_DATA_BIAS_AWADDR[31:0],m_axi_DATA_BIAS_AWLEN[7:0],m_axi_DATA_BIAS_AWSIZE[2:0],m_axi_DATA_BIAS_AWBURST[1:0],m_axi_DATA_BIAS_AWLOCK[1:0],m_axi_DATA_BIAS_AWREGION[3:0],m_axi_DATA_BIAS_AWCACHE[3:0],m_axi_DATA_BIAS_AWPROT[2:0],m_axi_DATA_BIAS_AWQOS[3:0],m_axi_DATA_BIAS_AWVALID,m_axi_DATA_BIAS_AWREADY,m_axi_DATA_BIAS_WDATA[31:0],m_axi_DATA_BIAS_WSTRB[3:0],m_axi_DATA_BIAS_WLAST,m_axi_DATA_BIAS_WVALID,m_axi_DATA_BIAS_WREADY,m_axi_DATA_BIAS_BRESP[1:0],m_axi_DATA_BIAS_BVALID,m_axi_DATA_BIAS_BREADY,m_axi_DATA_BIAS_ARADDR[31:0],m_axi_DATA_BIAS_ARLEN[7:0],m_axi_DATA_BIAS_ARSIZE[2:0],m_axi_DATA_BIAS_ARBURST[1:0],m_axi_DATA_BIAS_ARLOCK[1:0],m_axi_DATA_BIAS_ARREGION[3:0],m_axi_DATA_BIAS_ARCACHE[3:0],m_axi_DATA_BIAS_ARPROT[2:0],m_axi_DATA_BIAS_ARQOS[3:0],m_axi_DATA_BIAS_ARVALID,m_axi_DATA_BIAS_ARREADY,m_axi_DATA_BIAS_RDATA[31:0],m_axi_DATA_BIAS_RRESP[1:0],m_axi_DATA_BIAS_RLAST,m_axi_DATA_BIAS_RVALID,m_axi_DATA_BIAS_RREADY,m_axi_DATA_OUTPUT_AWADDR[31:0],m_axi_DATA_OUTPUT_AWLEN[7:0],m_axi_DATA_OUTPUT_AWSIZE[2:0],m_axi_DATA_OUTPUT_AWBURST[1:0],m_axi_DATA_OUTPUT_AWLOCK[1:0],m_axi_DATA_OUTPUT_AWREGION[3:0],m_axi_DATA_OUTPUT_AWCACHE[3:0],m_axi_DATA_OUTPUT_AWPROT[2:0],m_axi_DATA_OUTPUT_AWQOS[3:0],m_axi_DATA_OUTPUT_AWVALID,m_axi_DATA_OUTPUT_AWREADY,m_axi_DATA_OUTPUT_WDATA[31:0],m_axi_DATA_OUTPUT_WSTRB[3:0],m_axi_DATA_OUTPUT_WLAST,m_axi_DATA_OUTPUT_WVALID,m_axi_DATA_OUTPUT_WREADY,m_axi_DATA_OUTPUT_BRESP[1:0],m_axi_DATA_OUTPUT_BVALID,m_axi_DATA_OUTPUT_BREADY,m_axi_DATA_OUTPUT_ARADDR[31:0],m_axi_DATA_OUTPUT_ARLEN[7:0],m_axi_DATA_OUTPUT_ARSIZE[2:0],m_axi_DATA_OUTPUT_ARBURST[1:0],m_axi_DATA_OUTPUT_ARLOCK[1:0],m_axi_DATA_OUTPUT_ARREGION[3:0],m_axi_DATA_OUTPUT_ARCACHE[3:0],m_axi_DATA_OUTPUT_ARPROT[2:0],m_axi_DATA_OUTPUT_ARQOS[3:0],m_axi_DATA_OUTPUT_ARVALID,m_axi_DATA_OUTPUT_ARREADY,m_axi_DATA_OUTPUT_RDATA[31:0],m_axi_DATA_OUTPUT_RRESP[1:0],m_axi_DATA_OUTPUT_RLAST,m_axi_DATA_OUTPUT_RVALID,m_axi_DATA_OUTPUT_RREADY" */;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_DATA_INPUT_AWADDR;
  output [7:0]m_axi_DATA_INPUT_AWLEN;
  output [2:0]m_axi_DATA_INPUT_AWSIZE;
  output [1:0]m_axi_DATA_INPUT_AWBURST;
  output [1:0]m_axi_DATA_INPUT_AWLOCK;
  output [3:0]m_axi_DATA_INPUT_AWREGION;
  output [3:0]m_axi_DATA_INPUT_AWCACHE;
  output [2:0]m_axi_DATA_INPUT_AWPROT;
  output [3:0]m_axi_DATA_INPUT_AWQOS;
  output m_axi_DATA_INPUT_AWVALID;
  input m_axi_DATA_INPUT_AWREADY;
  output [31:0]m_axi_DATA_INPUT_WDATA;
  output [3:0]m_axi_DATA_INPUT_WSTRB;
  output m_axi_DATA_INPUT_WLAST;
  output m_axi_DATA_INPUT_WVALID;
  input m_axi_DATA_INPUT_WREADY;
  input [1:0]m_axi_DATA_INPUT_BRESP;
  input m_axi_DATA_INPUT_BVALID;
  output m_axi_DATA_INPUT_BREADY;
  output [31:0]m_axi_DATA_INPUT_ARADDR;
  output [7:0]m_axi_DATA_INPUT_ARLEN;
  output [2:0]m_axi_DATA_INPUT_ARSIZE;
  output [1:0]m_axi_DATA_INPUT_ARBURST;
  output [1:0]m_axi_DATA_INPUT_ARLOCK;
  output [3:0]m_axi_DATA_INPUT_ARREGION;
  output [3:0]m_axi_DATA_INPUT_ARCACHE;
  output [2:0]m_axi_DATA_INPUT_ARPROT;
  output [3:0]m_axi_DATA_INPUT_ARQOS;
  output m_axi_DATA_INPUT_ARVALID;
  input m_axi_DATA_INPUT_ARREADY;
  input [31:0]m_axi_DATA_INPUT_RDATA;
  input [1:0]m_axi_DATA_INPUT_RRESP;
  input m_axi_DATA_INPUT_RLAST;
  input m_axi_DATA_INPUT_RVALID;
  output m_axi_DATA_INPUT_RREADY;
  output [31:0]m_axi_DATA_WEIGHTS_AWADDR;
  output [7:0]m_axi_DATA_WEIGHTS_AWLEN;
  output [2:0]m_axi_DATA_WEIGHTS_AWSIZE;
  output [1:0]m_axi_DATA_WEIGHTS_AWBURST;
  output [1:0]m_axi_DATA_WEIGHTS_AWLOCK;
  output [3:0]m_axi_DATA_WEIGHTS_AWREGION;
  output [3:0]m_axi_DATA_WEIGHTS_AWCACHE;
  output [2:0]m_axi_DATA_WEIGHTS_AWPROT;
  output [3:0]m_axi_DATA_WEIGHTS_AWQOS;
  output m_axi_DATA_WEIGHTS_AWVALID;
  input m_axi_DATA_WEIGHTS_AWREADY;
  output [31:0]m_axi_DATA_WEIGHTS_WDATA;
  output [3:0]m_axi_DATA_WEIGHTS_WSTRB;
  output m_axi_DATA_WEIGHTS_WLAST;
  output m_axi_DATA_WEIGHTS_WVALID;
  input m_axi_DATA_WEIGHTS_WREADY;
  input [1:0]m_axi_DATA_WEIGHTS_BRESP;
  input m_axi_DATA_WEIGHTS_BVALID;
  output m_axi_DATA_WEIGHTS_BREADY;
  output [31:0]m_axi_DATA_WEIGHTS_ARADDR;
  output [7:0]m_axi_DATA_WEIGHTS_ARLEN;
  output [2:0]m_axi_DATA_WEIGHTS_ARSIZE;
  output [1:0]m_axi_DATA_WEIGHTS_ARBURST;
  output [1:0]m_axi_DATA_WEIGHTS_ARLOCK;
  output [3:0]m_axi_DATA_WEIGHTS_ARREGION;
  output [3:0]m_axi_DATA_WEIGHTS_ARCACHE;
  output [2:0]m_axi_DATA_WEIGHTS_ARPROT;
  output [3:0]m_axi_DATA_WEIGHTS_ARQOS;
  output m_axi_DATA_WEIGHTS_ARVALID;
  input m_axi_DATA_WEIGHTS_ARREADY;
  input [31:0]m_axi_DATA_WEIGHTS_RDATA;
  input [1:0]m_axi_DATA_WEIGHTS_RRESP;
  input m_axi_DATA_WEIGHTS_RLAST;
  input m_axi_DATA_WEIGHTS_RVALID;
  output m_axi_DATA_WEIGHTS_RREADY;
  output [31:0]m_axi_DATA_BIAS_AWADDR;
  output [7:0]m_axi_DATA_BIAS_AWLEN;
  output [2:0]m_axi_DATA_BIAS_AWSIZE;
  output [1:0]m_axi_DATA_BIAS_AWBURST;
  output [1:0]m_axi_DATA_BIAS_AWLOCK;
  output [3:0]m_axi_DATA_BIAS_AWREGION;
  output [3:0]m_axi_DATA_BIAS_AWCACHE;
  output [2:0]m_axi_DATA_BIAS_AWPROT;
  output [3:0]m_axi_DATA_BIAS_AWQOS;
  output m_axi_DATA_BIAS_AWVALID;
  input m_axi_DATA_BIAS_AWREADY;
  output [31:0]m_axi_DATA_BIAS_WDATA;
  output [3:0]m_axi_DATA_BIAS_WSTRB;
  output m_axi_DATA_BIAS_WLAST;
  output m_axi_DATA_BIAS_WVALID;
  input m_axi_DATA_BIAS_WREADY;
  input [1:0]m_axi_DATA_BIAS_BRESP;
  input m_axi_DATA_BIAS_BVALID;
  output m_axi_DATA_BIAS_BREADY;
  output [31:0]m_axi_DATA_BIAS_ARADDR;
  output [7:0]m_axi_DATA_BIAS_ARLEN;
  output [2:0]m_axi_DATA_BIAS_ARSIZE;
  output [1:0]m_axi_DATA_BIAS_ARBURST;
  output [1:0]m_axi_DATA_BIAS_ARLOCK;
  output [3:0]m_axi_DATA_BIAS_ARREGION;
  output [3:0]m_axi_DATA_BIAS_ARCACHE;
  output [2:0]m_axi_DATA_BIAS_ARPROT;
  output [3:0]m_axi_DATA_BIAS_ARQOS;
  output m_axi_DATA_BIAS_ARVALID;
  input m_axi_DATA_BIAS_ARREADY;
  input [31:0]m_axi_DATA_BIAS_RDATA;
  input [1:0]m_axi_DATA_BIAS_RRESP;
  input m_axi_DATA_BIAS_RLAST;
  input m_axi_DATA_BIAS_RVALID;
  output m_axi_DATA_BIAS_RREADY;
  output [31:0]m_axi_DATA_OUTPUT_AWADDR;
  output [7:0]m_axi_DATA_OUTPUT_AWLEN;
  output [2:0]m_axi_DATA_OUTPUT_AWSIZE;
  output [1:0]m_axi_DATA_OUTPUT_AWBURST;
  output [1:0]m_axi_DATA_OUTPUT_AWLOCK;
  output [3:0]m_axi_DATA_OUTPUT_AWREGION;
  output [3:0]m_axi_DATA_OUTPUT_AWCACHE;
  output [2:0]m_axi_DATA_OUTPUT_AWPROT;
  output [3:0]m_axi_DATA_OUTPUT_AWQOS;
  output m_axi_DATA_OUTPUT_AWVALID;
  input m_axi_DATA_OUTPUT_AWREADY;
  output [31:0]m_axi_DATA_OUTPUT_WDATA;
  output [3:0]m_axi_DATA_OUTPUT_WSTRB;
  output m_axi_DATA_OUTPUT_WLAST;
  output m_axi_DATA_OUTPUT_WVALID;
  input m_axi_DATA_OUTPUT_WREADY;
  input [1:0]m_axi_DATA_OUTPUT_BRESP;
  input m_axi_DATA_OUTPUT_BVALID;
  output m_axi_DATA_OUTPUT_BREADY;
  output [31:0]m_axi_DATA_OUTPUT_ARADDR;
  output [7:0]m_axi_DATA_OUTPUT_ARLEN;
  output [2:0]m_axi_DATA_OUTPUT_ARSIZE;
  output [1:0]m_axi_DATA_OUTPUT_ARBURST;
  output [1:0]m_axi_DATA_OUTPUT_ARLOCK;
  output [3:0]m_axi_DATA_OUTPUT_ARREGION;
  output [3:0]m_axi_DATA_OUTPUT_ARCACHE;
  output [2:0]m_axi_DATA_OUTPUT_ARPROT;
  output [3:0]m_axi_DATA_OUTPUT_ARQOS;
  output m_axi_DATA_OUTPUT_ARVALID;
  input m_axi_DATA_OUTPUT_ARREADY;
  input [31:0]m_axi_DATA_OUTPUT_RDATA;
  input [1:0]m_axi_DATA_OUTPUT_RRESP;
  input m_axi_DATA_OUTPUT_RLAST;
  input m_axi_DATA_OUTPUT_RVALID;
  output m_axi_DATA_OUTPUT_RREADY;
endmodule
