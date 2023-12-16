// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Nov  6 13:24:35 2023
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
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_input_r_AWADDR, 
  m_axi_input_r_AWLEN, m_axi_input_r_AWSIZE, m_axi_input_r_AWBURST, m_axi_input_r_AWLOCK, 
  m_axi_input_r_AWREGION, m_axi_input_r_AWCACHE, m_axi_input_r_AWPROT, 
  m_axi_input_r_AWQOS, m_axi_input_r_AWVALID, m_axi_input_r_AWREADY, m_axi_input_r_WDATA, 
  m_axi_input_r_WSTRB, m_axi_input_r_WLAST, m_axi_input_r_WVALID, m_axi_input_r_WREADY, 
  m_axi_input_r_BRESP, m_axi_input_r_BVALID, m_axi_input_r_BREADY, m_axi_input_r_ARADDR, 
  m_axi_input_r_ARLEN, m_axi_input_r_ARSIZE, m_axi_input_r_ARBURST, m_axi_input_r_ARLOCK, 
  m_axi_input_r_ARREGION, m_axi_input_r_ARCACHE, m_axi_input_r_ARPROT, 
  m_axi_input_r_ARQOS, m_axi_input_r_ARVALID, m_axi_input_r_ARREADY, m_axi_input_r_RDATA, 
  m_axi_input_r_RRESP, m_axi_input_r_RLAST, m_axi_input_r_RVALID, m_axi_input_r_RREADY, 
  m_axi_weights_AWADDR, m_axi_weights_AWLEN, m_axi_weights_AWSIZE, m_axi_weights_AWBURST, 
  m_axi_weights_AWLOCK, m_axi_weights_AWREGION, m_axi_weights_AWCACHE, 
  m_axi_weights_AWPROT, m_axi_weights_AWQOS, m_axi_weights_AWVALID, 
  m_axi_weights_AWREADY, m_axi_weights_WDATA, m_axi_weights_WSTRB, m_axi_weights_WLAST, 
  m_axi_weights_WVALID, m_axi_weights_WREADY, m_axi_weights_BRESP, m_axi_weights_BVALID, 
  m_axi_weights_BREADY, m_axi_weights_ARADDR, m_axi_weights_ARLEN, m_axi_weights_ARSIZE, 
  m_axi_weights_ARBURST, m_axi_weights_ARLOCK, m_axi_weights_ARREGION, 
  m_axi_weights_ARCACHE, m_axi_weights_ARPROT, m_axi_weights_ARQOS, 
  m_axi_weights_ARVALID, m_axi_weights_ARREADY, m_axi_weights_RDATA, m_axi_weights_RRESP, 
  m_axi_weights_RLAST, m_axi_weights_RVALID, m_axi_weights_RREADY, m_axi_bias_AWADDR, 
  m_axi_bias_AWLEN, m_axi_bias_AWSIZE, m_axi_bias_AWBURST, m_axi_bias_AWLOCK, 
  m_axi_bias_AWREGION, m_axi_bias_AWCACHE, m_axi_bias_AWPROT, m_axi_bias_AWQOS, 
  m_axi_bias_AWVALID, m_axi_bias_AWREADY, m_axi_bias_WDATA, m_axi_bias_WSTRB, 
  m_axi_bias_WLAST, m_axi_bias_WVALID, m_axi_bias_WREADY, m_axi_bias_BRESP, 
  m_axi_bias_BVALID, m_axi_bias_BREADY, m_axi_bias_ARADDR, m_axi_bias_ARLEN, 
  m_axi_bias_ARSIZE, m_axi_bias_ARBURST, m_axi_bias_ARLOCK, m_axi_bias_ARREGION, 
  m_axi_bias_ARCACHE, m_axi_bias_ARPROT, m_axi_bias_ARQOS, m_axi_bias_ARVALID, 
  m_axi_bias_ARREADY, m_axi_bias_RDATA, m_axi_bias_RRESP, m_axi_bias_RLAST, 
  m_axi_bias_RVALID, m_axi_bias_RREADY, m_axi_output_r_AWADDR, m_axi_output_r_AWLEN, 
  m_axi_output_r_AWSIZE, m_axi_output_r_AWBURST, m_axi_output_r_AWLOCK, 
  m_axi_output_r_AWREGION, m_axi_output_r_AWCACHE, m_axi_output_r_AWPROT, 
  m_axi_output_r_AWQOS, m_axi_output_r_AWVALID, m_axi_output_r_AWREADY, 
  m_axi_output_r_WDATA, m_axi_output_r_WSTRB, m_axi_output_r_WLAST, 
  m_axi_output_r_WVALID, m_axi_output_r_WREADY, m_axi_output_r_BRESP, 
  m_axi_output_r_BVALID, m_axi_output_r_BREADY, m_axi_output_r_ARADDR, 
  m_axi_output_r_ARLEN, m_axi_output_r_ARSIZE, m_axi_output_r_ARBURST, 
  m_axi_output_r_ARLOCK, m_axi_output_r_ARREGION, m_axi_output_r_ARCACHE, 
  m_axi_output_r_ARPROT, m_axi_output_r_ARQOS, m_axi_output_r_ARVALID, 
  m_axi_output_r_ARREADY, m_axi_output_r_RDATA, m_axi_output_r_RRESP, 
  m_axi_output_r_RLAST, m_axi_output_r_RVALID, m_axi_output_r_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[3:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[3:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_input_r_AWADDR[31:0],m_axi_input_r_AWLEN[7:0],m_axi_input_r_AWSIZE[2:0],m_axi_input_r_AWBURST[1:0],m_axi_input_r_AWLOCK[1:0],m_axi_input_r_AWREGION[3:0],m_axi_input_r_AWCACHE[3:0],m_axi_input_r_AWPROT[2:0],m_axi_input_r_AWQOS[3:0],m_axi_input_r_AWVALID,m_axi_input_r_AWREADY,m_axi_input_r_WDATA[31:0],m_axi_input_r_WSTRB[3:0],m_axi_input_r_WLAST,m_axi_input_r_WVALID,m_axi_input_r_WREADY,m_axi_input_r_BRESP[1:0],m_axi_input_r_BVALID,m_axi_input_r_BREADY,m_axi_input_r_ARADDR[31:0],m_axi_input_r_ARLEN[7:0],m_axi_input_r_ARSIZE[2:0],m_axi_input_r_ARBURST[1:0],m_axi_input_r_ARLOCK[1:0],m_axi_input_r_ARREGION[3:0],m_axi_input_r_ARCACHE[3:0],m_axi_input_r_ARPROT[2:0],m_axi_input_r_ARQOS[3:0],m_axi_input_r_ARVALID,m_axi_input_r_ARREADY,m_axi_input_r_RDATA[31:0],m_axi_input_r_RRESP[1:0],m_axi_input_r_RLAST,m_axi_input_r_RVALID,m_axi_input_r_RREADY,m_axi_weights_AWADDR[31:0],m_axi_weights_AWLEN[7:0],m_axi_weights_AWSIZE[2:0],m_axi_weights_AWBURST[1:0],m_axi_weights_AWLOCK[1:0],m_axi_weights_AWREGION[3:0],m_axi_weights_AWCACHE[3:0],m_axi_weights_AWPROT[2:0],m_axi_weights_AWQOS[3:0],m_axi_weights_AWVALID,m_axi_weights_AWREADY,m_axi_weights_WDATA[31:0],m_axi_weights_WSTRB[3:0],m_axi_weights_WLAST,m_axi_weights_WVALID,m_axi_weights_WREADY,m_axi_weights_BRESP[1:0],m_axi_weights_BVALID,m_axi_weights_BREADY,m_axi_weights_ARADDR[31:0],m_axi_weights_ARLEN[7:0],m_axi_weights_ARSIZE[2:0],m_axi_weights_ARBURST[1:0],m_axi_weights_ARLOCK[1:0],m_axi_weights_ARREGION[3:0],m_axi_weights_ARCACHE[3:0],m_axi_weights_ARPROT[2:0],m_axi_weights_ARQOS[3:0],m_axi_weights_ARVALID,m_axi_weights_ARREADY,m_axi_weights_RDATA[31:0],m_axi_weights_RRESP[1:0],m_axi_weights_RLAST,m_axi_weights_RVALID,m_axi_weights_RREADY,m_axi_bias_AWADDR[31:0],m_axi_bias_AWLEN[7:0],m_axi_bias_AWSIZE[2:0],m_axi_bias_AWBURST[1:0],m_axi_bias_AWLOCK[1:0],m_axi_bias_AWREGION[3:0],m_axi_bias_AWCACHE[3:0],m_axi_bias_AWPROT[2:0],m_axi_bias_AWQOS[3:0],m_axi_bias_AWVALID,m_axi_bias_AWREADY,m_axi_bias_WDATA[31:0],m_axi_bias_WSTRB[3:0],m_axi_bias_WLAST,m_axi_bias_WVALID,m_axi_bias_WREADY,m_axi_bias_BRESP[1:0],m_axi_bias_BVALID,m_axi_bias_BREADY,m_axi_bias_ARADDR[31:0],m_axi_bias_ARLEN[7:0],m_axi_bias_ARSIZE[2:0],m_axi_bias_ARBURST[1:0],m_axi_bias_ARLOCK[1:0],m_axi_bias_ARREGION[3:0],m_axi_bias_ARCACHE[3:0],m_axi_bias_ARPROT[2:0],m_axi_bias_ARQOS[3:0],m_axi_bias_ARVALID,m_axi_bias_ARREADY,m_axi_bias_RDATA[31:0],m_axi_bias_RRESP[1:0],m_axi_bias_RLAST,m_axi_bias_RVALID,m_axi_bias_RREADY,m_axi_output_r_AWADDR[31:0],m_axi_output_r_AWLEN[7:0],m_axi_output_r_AWSIZE[2:0],m_axi_output_r_AWBURST[1:0],m_axi_output_r_AWLOCK[1:0],m_axi_output_r_AWREGION[3:0],m_axi_output_r_AWCACHE[3:0],m_axi_output_r_AWPROT[2:0],m_axi_output_r_AWQOS[3:0],m_axi_output_r_AWVALID,m_axi_output_r_AWREADY,m_axi_output_r_WDATA[31:0],m_axi_output_r_WSTRB[3:0],m_axi_output_r_WLAST,m_axi_output_r_WVALID,m_axi_output_r_WREADY,m_axi_output_r_BRESP[1:0],m_axi_output_r_BVALID,m_axi_output_r_BREADY,m_axi_output_r_ARADDR[31:0],m_axi_output_r_ARLEN[7:0],m_axi_output_r_ARSIZE[2:0],m_axi_output_r_ARBURST[1:0],m_axi_output_r_ARLOCK[1:0],m_axi_output_r_ARREGION[3:0],m_axi_output_r_ARCACHE[3:0],m_axi_output_r_ARPROT[2:0],m_axi_output_r_ARQOS[3:0],m_axi_output_r_ARVALID,m_axi_output_r_ARREADY,m_axi_output_r_RDATA[31:0],m_axi_output_r_RRESP[1:0],m_axi_output_r_RLAST,m_axi_output_r_RVALID,m_axi_output_r_RREADY" */;
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
  output [31:0]m_axi_input_r_AWADDR;
  output [7:0]m_axi_input_r_AWLEN;
  output [2:0]m_axi_input_r_AWSIZE;
  output [1:0]m_axi_input_r_AWBURST;
  output [1:0]m_axi_input_r_AWLOCK;
  output [3:0]m_axi_input_r_AWREGION;
  output [3:0]m_axi_input_r_AWCACHE;
  output [2:0]m_axi_input_r_AWPROT;
  output [3:0]m_axi_input_r_AWQOS;
  output m_axi_input_r_AWVALID;
  input m_axi_input_r_AWREADY;
  output [31:0]m_axi_input_r_WDATA;
  output [3:0]m_axi_input_r_WSTRB;
  output m_axi_input_r_WLAST;
  output m_axi_input_r_WVALID;
  input m_axi_input_r_WREADY;
  input [1:0]m_axi_input_r_BRESP;
  input m_axi_input_r_BVALID;
  output m_axi_input_r_BREADY;
  output [31:0]m_axi_input_r_ARADDR;
  output [7:0]m_axi_input_r_ARLEN;
  output [2:0]m_axi_input_r_ARSIZE;
  output [1:0]m_axi_input_r_ARBURST;
  output [1:0]m_axi_input_r_ARLOCK;
  output [3:0]m_axi_input_r_ARREGION;
  output [3:0]m_axi_input_r_ARCACHE;
  output [2:0]m_axi_input_r_ARPROT;
  output [3:0]m_axi_input_r_ARQOS;
  output m_axi_input_r_ARVALID;
  input m_axi_input_r_ARREADY;
  input [31:0]m_axi_input_r_RDATA;
  input [1:0]m_axi_input_r_RRESP;
  input m_axi_input_r_RLAST;
  input m_axi_input_r_RVALID;
  output m_axi_input_r_RREADY;
  output [31:0]m_axi_weights_AWADDR;
  output [7:0]m_axi_weights_AWLEN;
  output [2:0]m_axi_weights_AWSIZE;
  output [1:0]m_axi_weights_AWBURST;
  output [1:0]m_axi_weights_AWLOCK;
  output [3:0]m_axi_weights_AWREGION;
  output [3:0]m_axi_weights_AWCACHE;
  output [2:0]m_axi_weights_AWPROT;
  output [3:0]m_axi_weights_AWQOS;
  output m_axi_weights_AWVALID;
  input m_axi_weights_AWREADY;
  output [31:0]m_axi_weights_WDATA;
  output [3:0]m_axi_weights_WSTRB;
  output m_axi_weights_WLAST;
  output m_axi_weights_WVALID;
  input m_axi_weights_WREADY;
  input [1:0]m_axi_weights_BRESP;
  input m_axi_weights_BVALID;
  output m_axi_weights_BREADY;
  output [31:0]m_axi_weights_ARADDR;
  output [7:0]m_axi_weights_ARLEN;
  output [2:0]m_axi_weights_ARSIZE;
  output [1:0]m_axi_weights_ARBURST;
  output [1:0]m_axi_weights_ARLOCK;
  output [3:0]m_axi_weights_ARREGION;
  output [3:0]m_axi_weights_ARCACHE;
  output [2:0]m_axi_weights_ARPROT;
  output [3:0]m_axi_weights_ARQOS;
  output m_axi_weights_ARVALID;
  input m_axi_weights_ARREADY;
  input [31:0]m_axi_weights_RDATA;
  input [1:0]m_axi_weights_RRESP;
  input m_axi_weights_RLAST;
  input m_axi_weights_RVALID;
  output m_axi_weights_RREADY;
  output [31:0]m_axi_bias_AWADDR;
  output [7:0]m_axi_bias_AWLEN;
  output [2:0]m_axi_bias_AWSIZE;
  output [1:0]m_axi_bias_AWBURST;
  output [1:0]m_axi_bias_AWLOCK;
  output [3:0]m_axi_bias_AWREGION;
  output [3:0]m_axi_bias_AWCACHE;
  output [2:0]m_axi_bias_AWPROT;
  output [3:0]m_axi_bias_AWQOS;
  output m_axi_bias_AWVALID;
  input m_axi_bias_AWREADY;
  output [31:0]m_axi_bias_WDATA;
  output [3:0]m_axi_bias_WSTRB;
  output m_axi_bias_WLAST;
  output m_axi_bias_WVALID;
  input m_axi_bias_WREADY;
  input [1:0]m_axi_bias_BRESP;
  input m_axi_bias_BVALID;
  output m_axi_bias_BREADY;
  output [31:0]m_axi_bias_ARADDR;
  output [7:0]m_axi_bias_ARLEN;
  output [2:0]m_axi_bias_ARSIZE;
  output [1:0]m_axi_bias_ARBURST;
  output [1:0]m_axi_bias_ARLOCK;
  output [3:0]m_axi_bias_ARREGION;
  output [3:0]m_axi_bias_ARCACHE;
  output [2:0]m_axi_bias_ARPROT;
  output [3:0]m_axi_bias_ARQOS;
  output m_axi_bias_ARVALID;
  input m_axi_bias_ARREADY;
  input [31:0]m_axi_bias_RDATA;
  input [1:0]m_axi_bias_RRESP;
  input m_axi_bias_RLAST;
  input m_axi_bias_RVALID;
  output m_axi_bias_RREADY;
  output [31:0]m_axi_output_r_AWADDR;
  output [7:0]m_axi_output_r_AWLEN;
  output [2:0]m_axi_output_r_AWSIZE;
  output [1:0]m_axi_output_r_AWBURST;
  output [1:0]m_axi_output_r_AWLOCK;
  output [3:0]m_axi_output_r_AWREGION;
  output [3:0]m_axi_output_r_AWCACHE;
  output [2:0]m_axi_output_r_AWPROT;
  output [3:0]m_axi_output_r_AWQOS;
  output m_axi_output_r_AWVALID;
  input m_axi_output_r_AWREADY;
  output [31:0]m_axi_output_r_WDATA;
  output [3:0]m_axi_output_r_WSTRB;
  output m_axi_output_r_WLAST;
  output m_axi_output_r_WVALID;
  input m_axi_output_r_WREADY;
  input [1:0]m_axi_output_r_BRESP;
  input m_axi_output_r_BVALID;
  output m_axi_output_r_BREADY;
  output [31:0]m_axi_output_r_ARADDR;
  output [7:0]m_axi_output_r_ARLEN;
  output [2:0]m_axi_output_r_ARSIZE;
  output [1:0]m_axi_output_r_ARBURST;
  output [1:0]m_axi_output_r_ARLOCK;
  output [3:0]m_axi_output_r_ARREGION;
  output [3:0]m_axi_output_r_ARCACHE;
  output [2:0]m_axi_output_r_ARPROT;
  output [3:0]m_axi_output_r_ARQOS;
  output m_axi_output_r_ARVALID;
  input m_axi_output_r_ARREADY;
  input [31:0]m_axi_output_r_RDATA;
  input [1:0]m_axi_output_r_RRESP;
  input m_axi_output_r_RLAST;
  input m_axi_output_r_RVALID;
  output m_axi_output_r_RREADY;
endmodule
