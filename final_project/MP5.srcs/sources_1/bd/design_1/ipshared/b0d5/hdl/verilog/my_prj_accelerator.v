// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="my_prj_accelerator,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=474,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=5150,HLS_SYN_LUT=49182,HLS_VERSION=2019_1}" *)

module my_prj_accelerator (
        ap_clk,
        ap_rst_n,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 32;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 64;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (64 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] x;
wire   [31:0] score;
reg    gmem_AWVALID;
wire    gmem_AWREADY;
reg    gmem_WVALID;
wire    gmem_WREADY;
reg    gmem_ARVALID;
wire    gmem_ARREADY;
wire    gmem_RVALID;
reg    gmem_RREADY;
wire   [63:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
reg    gmem_BREADY;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
reg   [28:0] score3_reg_116;
reg   [28:0] x1_reg_121;
wire   [11:0] grp_decision_function_75_fu_74_ap_return;
reg   [11:0] score_int_0_V_reg_126;
wire    ap_CS_fsm_state5;
wire    grp_decision_function_75_fu_74_ap_ready;
wire    grp_decision_function_75_fu_74_ap_done;
reg   [3:0] x_int_V_address0;
reg    x_int_V_ce0;
reg    x_int_V_we0;
wire   [11:0] x_int_V_q0;
reg    x_int_V_ce1;
wire   [11:0] x_int_V_q1;
wire    grp_decision_function_75_fu_74_ap_start;
wire    grp_decision_function_75_fu_74_ap_idle;
wire   [3:0] grp_decision_function_75_fu_74_x_V_address0;
wire    grp_decision_function_75_fu_74_x_V_ce0;
wire   [3:0] grp_decision_function_75_fu_74_x_V_address1;
wire    grp_decision_function_75_fu_74_x_V_ce1;
wire    grp_copy_output_fu_79_ap_start;
wire    grp_copy_output_fu_79_ap_done;
wire    grp_copy_output_fu_79_ap_idle;
wire    grp_copy_output_fu_79_ap_ready;
wire    grp_copy_output_fu_79_m_axi_score_out_AWVALID;
wire   [31:0] grp_copy_output_fu_79_m_axi_score_out_AWADDR;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_AWID;
wire   [31:0] grp_copy_output_fu_79_m_axi_score_out_AWLEN;
wire   [2:0] grp_copy_output_fu_79_m_axi_score_out_AWSIZE;
wire   [1:0] grp_copy_output_fu_79_m_axi_score_out_AWBURST;
wire   [1:0] grp_copy_output_fu_79_m_axi_score_out_AWLOCK;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_AWCACHE;
wire   [2:0] grp_copy_output_fu_79_m_axi_score_out_AWPROT;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_AWQOS;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_AWREGION;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_AWUSER;
wire    grp_copy_output_fu_79_m_axi_score_out_WVALID;
wire   [63:0] grp_copy_output_fu_79_m_axi_score_out_WDATA;
wire   [7:0] grp_copy_output_fu_79_m_axi_score_out_WSTRB;
wire    grp_copy_output_fu_79_m_axi_score_out_WLAST;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_WID;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_WUSER;
wire    grp_copy_output_fu_79_m_axi_score_out_ARVALID;
wire   [31:0] grp_copy_output_fu_79_m_axi_score_out_ARADDR;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_ARID;
wire   [31:0] grp_copy_output_fu_79_m_axi_score_out_ARLEN;
wire   [2:0] grp_copy_output_fu_79_m_axi_score_out_ARSIZE;
wire   [1:0] grp_copy_output_fu_79_m_axi_score_out_ARBURST;
wire   [1:0] grp_copy_output_fu_79_m_axi_score_out_ARLOCK;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_ARCACHE;
wire   [2:0] grp_copy_output_fu_79_m_axi_score_out_ARPROT;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_ARQOS;
wire   [3:0] grp_copy_output_fu_79_m_axi_score_out_ARREGION;
wire   [0:0] grp_copy_output_fu_79_m_axi_score_out_ARUSER;
wire    grp_copy_output_fu_79_m_axi_score_out_RREADY;
wire    grp_copy_output_fu_79_m_axi_score_out_BREADY;
wire    grp_copy_input_fu_88_ap_start;
wire    grp_copy_input_fu_88_ap_done;
wire    grp_copy_input_fu_88_ap_idle;
wire    grp_copy_input_fu_88_ap_ready;
wire    grp_copy_input_fu_88_m_axi_x_in_AWVALID;
wire   [31:0] grp_copy_input_fu_88_m_axi_x_in_AWADDR;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_AWID;
wire   [31:0] grp_copy_input_fu_88_m_axi_x_in_AWLEN;
wire   [2:0] grp_copy_input_fu_88_m_axi_x_in_AWSIZE;
wire   [1:0] grp_copy_input_fu_88_m_axi_x_in_AWBURST;
wire   [1:0] grp_copy_input_fu_88_m_axi_x_in_AWLOCK;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_AWCACHE;
wire   [2:0] grp_copy_input_fu_88_m_axi_x_in_AWPROT;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_AWQOS;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_AWREGION;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_AWUSER;
wire    grp_copy_input_fu_88_m_axi_x_in_WVALID;
wire   [63:0] grp_copy_input_fu_88_m_axi_x_in_WDATA;
wire   [7:0] grp_copy_input_fu_88_m_axi_x_in_WSTRB;
wire    grp_copy_input_fu_88_m_axi_x_in_WLAST;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_WID;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_WUSER;
wire    grp_copy_input_fu_88_m_axi_x_in_ARVALID;
wire   [31:0] grp_copy_input_fu_88_m_axi_x_in_ARADDR;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_ARID;
wire   [31:0] grp_copy_input_fu_88_m_axi_x_in_ARLEN;
wire   [2:0] grp_copy_input_fu_88_m_axi_x_in_ARSIZE;
wire   [1:0] grp_copy_input_fu_88_m_axi_x_in_ARBURST;
wire   [1:0] grp_copy_input_fu_88_m_axi_x_in_ARLOCK;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_ARCACHE;
wire   [2:0] grp_copy_input_fu_88_m_axi_x_in_ARPROT;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_ARQOS;
wire   [3:0] grp_copy_input_fu_88_m_axi_x_in_ARREGION;
wire   [0:0] grp_copy_input_fu_88_m_axi_x_in_ARUSER;
wire    grp_copy_input_fu_88_m_axi_x_in_RREADY;
wire    grp_copy_input_fu_88_m_axi_x_in_BREADY;
wire   [3:0] grp_copy_input_fu_88_x_int_V_address0;
wire    grp_copy_input_fu_88_x_int_V_ce0;
wire    grp_copy_input_fu_88_x_int_V_we0;
wire   [11:0] grp_copy_input_fu_88_x_int_V_d0;
reg    grp_decision_function_75_fu_74_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_copy_output_fu_79_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_copy_input_fu_88_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_decision_function_75_fu_74_ap_start_reg = 1'b0;
#0 grp_copy_output_fu_79_ap_start_reg = 1'b0;
#0 grp_copy_input_fu_88_ap_start_reg = 1'b0;
end

my_prj_accelerator_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
my_prj_accelerator_control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .x(x),
    .score(score)
);

my_prj_accelerator_gmem_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 64 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ))
my_prj_accelerator_gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(grp_copy_input_fu_88_m_axi_x_in_ARADDR),
    .I_ARID(grp_copy_input_fu_88_m_axi_x_in_ARID),
    .I_ARLEN(grp_copy_input_fu_88_m_axi_x_in_ARLEN),
    .I_ARSIZE(grp_copy_input_fu_88_m_axi_x_in_ARSIZE),
    .I_ARLOCK(grp_copy_input_fu_88_m_axi_x_in_ARLOCK),
    .I_ARCACHE(grp_copy_input_fu_88_m_axi_x_in_ARCACHE),
    .I_ARQOS(grp_copy_input_fu_88_m_axi_x_in_ARQOS),
    .I_ARPROT(grp_copy_input_fu_88_m_axi_x_in_ARPROT),
    .I_ARUSER(grp_copy_input_fu_88_m_axi_x_in_ARUSER),
    .I_ARBURST(grp_copy_input_fu_88_m_axi_x_in_ARBURST),
    .I_ARREGION(grp_copy_input_fu_88_m_axi_x_in_ARREGION),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RID(gmem_RID),
    .I_RUSER(gmem_RUSER),
    .I_RRESP(gmem_RRESP),
    .I_RLAST(gmem_RLAST),
    .I_AWVALID(gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(grp_copy_output_fu_79_m_axi_score_out_AWADDR),
    .I_AWID(grp_copy_output_fu_79_m_axi_score_out_AWID),
    .I_AWLEN(grp_copy_output_fu_79_m_axi_score_out_AWLEN),
    .I_AWSIZE(grp_copy_output_fu_79_m_axi_score_out_AWSIZE),
    .I_AWLOCK(grp_copy_output_fu_79_m_axi_score_out_AWLOCK),
    .I_AWCACHE(grp_copy_output_fu_79_m_axi_score_out_AWCACHE),
    .I_AWQOS(grp_copy_output_fu_79_m_axi_score_out_AWQOS),
    .I_AWPROT(grp_copy_output_fu_79_m_axi_score_out_AWPROT),
    .I_AWUSER(grp_copy_output_fu_79_m_axi_score_out_AWUSER),
    .I_AWBURST(grp_copy_output_fu_79_m_axi_score_out_AWBURST),
    .I_AWREGION(grp_copy_output_fu_79_m_axi_score_out_AWREGION),
    .I_WVALID(gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(grp_copy_output_fu_79_m_axi_score_out_WDATA),
    .I_WID(grp_copy_output_fu_79_m_axi_score_out_WID),
    .I_WUSER(grp_copy_output_fu_79_m_axi_score_out_WUSER),
    .I_WLAST(grp_copy_output_fu_79_m_axi_score_out_WLAST),
    .I_WSTRB(grp_copy_output_fu_79_m_axi_score_out_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(gmem_BREADY),
    .I_BRESP(gmem_BRESP),
    .I_BID(gmem_BID),
    .I_BUSER(gmem_BUSER)
);

my_prj_acceleratodEe #(
    .DataWidth( 12 ),
    .AddressRange( 12 ),
    .AddressWidth( 4 ))
x_int_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(x_int_V_address0),
    .ce0(x_int_V_ce0),
    .we0(x_int_V_we0),
    .d0(grp_copy_input_fu_88_x_int_V_d0),
    .q0(x_int_V_q0),
    .address1(grp_decision_function_75_fu_74_x_V_address1),
    .ce1(x_int_V_ce1),
    .q1(x_int_V_q1)
);

decision_function_75 grp_decision_function_75_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_decision_function_75_fu_74_ap_start),
    .ap_done(grp_decision_function_75_fu_74_ap_done),
    .ap_idle(grp_decision_function_75_fu_74_ap_idle),
    .ap_ready(grp_decision_function_75_fu_74_ap_ready),
    .x_V_address0(grp_decision_function_75_fu_74_x_V_address0),
    .x_V_ce0(grp_decision_function_75_fu_74_x_V_ce0),
    .x_V_q0(x_int_V_q0),
    .x_V_address1(grp_decision_function_75_fu_74_x_V_address1),
    .x_V_ce1(grp_decision_function_75_fu_74_x_V_ce1),
    .x_V_q1(x_int_V_q1),
    .ap_return(grp_decision_function_75_fu_74_ap_return)
);

copy_output grp_copy_output_fu_79(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_copy_output_fu_79_ap_start),
    .ap_done(grp_copy_output_fu_79_ap_done),
    .ap_idle(grp_copy_output_fu_79_ap_idle),
    .ap_ready(grp_copy_output_fu_79_ap_ready),
    .score_int_0_V_read(score_int_0_V_reg_126),
    .m_axi_score_out_AWVALID(grp_copy_output_fu_79_m_axi_score_out_AWVALID),
    .m_axi_score_out_AWREADY(gmem_AWREADY),
    .m_axi_score_out_AWADDR(grp_copy_output_fu_79_m_axi_score_out_AWADDR),
    .m_axi_score_out_AWID(grp_copy_output_fu_79_m_axi_score_out_AWID),
    .m_axi_score_out_AWLEN(grp_copy_output_fu_79_m_axi_score_out_AWLEN),
    .m_axi_score_out_AWSIZE(grp_copy_output_fu_79_m_axi_score_out_AWSIZE),
    .m_axi_score_out_AWBURST(grp_copy_output_fu_79_m_axi_score_out_AWBURST),
    .m_axi_score_out_AWLOCK(grp_copy_output_fu_79_m_axi_score_out_AWLOCK),
    .m_axi_score_out_AWCACHE(grp_copy_output_fu_79_m_axi_score_out_AWCACHE),
    .m_axi_score_out_AWPROT(grp_copy_output_fu_79_m_axi_score_out_AWPROT),
    .m_axi_score_out_AWQOS(grp_copy_output_fu_79_m_axi_score_out_AWQOS),
    .m_axi_score_out_AWREGION(grp_copy_output_fu_79_m_axi_score_out_AWREGION),
    .m_axi_score_out_AWUSER(grp_copy_output_fu_79_m_axi_score_out_AWUSER),
    .m_axi_score_out_WVALID(grp_copy_output_fu_79_m_axi_score_out_WVALID),
    .m_axi_score_out_WREADY(gmem_WREADY),
    .m_axi_score_out_WDATA(grp_copy_output_fu_79_m_axi_score_out_WDATA),
    .m_axi_score_out_WSTRB(grp_copy_output_fu_79_m_axi_score_out_WSTRB),
    .m_axi_score_out_WLAST(grp_copy_output_fu_79_m_axi_score_out_WLAST),
    .m_axi_score_out_WID(grp_copy_output_fu_79_m_axi_score_out_WID),
    .m_axi_score_out_WUSER(grp_copy_output_fu_79_m_axi_score_out_WUSER),
    .m_axi_score_out_ARVALID(grp_copy_output_fu_79_m_axi_score_out_ARVALID),
    .m_axi_score_out_ARREADY(1'b0),
    .m_axi_score_out_ARADDR(grp_copy_output_fu_79_m_axi_score_out_ARADDR),
    .m_axi_score_out_ARID(grp_copy_output_fu_79_m_axi_score_out_ARID),
    .m_axi_score_out_ARLEN(grp_copy_output_fu_79_m_axi_score_out_ARLEN),
    .m_axi_score_out_ARSIZE(grp_copy_output_fu_79_m_axi_score_out_ARSIZE),
    .m_axi_score_out_ARBURST(grp_copy_output_fu_79_m_axi_score_out_ARBURST),
    .m_axi_score_out_ARLOCK(grp_copy_output_fu_79_m_axi_score_out_ARLOCK),
    .m_axi_score_out_ARCACHE(grp_copy_output_fu_79_m_axi_score_out_ARCACHE),
    .m_axi_score_out_ARPROT(grp_copy_output_fu_79_m_axi_score_out_ARPROT),
    .m_axi_score_out_ARQOS(grp_copy_output_fu_79_m_axi_score_out_ARQOS),
    .m_axi_score_out_ARREGION(grp_copy_output_fu_79_m_axi_score_out_ARREGION),
    .m_axi_score_out_ARUSER(grp_copy_output_fu_79_m_axi_score_out_ARUSER),
    .m_axi_score_out_RVALID(1'b0),
    .m_axi_score_out_RREADY(grp_copy_output_fu_79_m_axi_score_out_RREADY),
    .m_axi_score_out_RDATA(64'd0),
    .m_axi_score_out_RLAST(1'b0),
    .m_axi_score_out_RID(1'd0),
    .m_axi_score_out_RUSER(1'd0),
    .m_axi_score_out_RRESP(2'd0),
    .m_axi_score_out_BVALID(gmem_BVALID),
    .m_axi_score_out_BREADY(grp_copy_output_fu_79_m_axi_score_out_BREADY),
    .m_axi_score_out_BRESP(gmem_BRESP),
    .m_axi_score_out_BID(gmem_BID),
    .m_axi_score_out_BUSER(gmem_BUSER),
    .score_out_offset(score3_reg_116)
);

copy_input grp_copy_input_fu_88(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_copy_input_fu_88_ap_start),
    .ap_done(grp_copy_input_fu_88_ap_done),
    .ap_idle(grp_copy_input_fu_88_ap_idle),
    .ap_ready(grp_copy_input_fu_88_ap_ready),
    .m_axi_x_in_AWVALID(grp_copy_input_fu_88_m_axi_x_in_AWVALID),
    .m_axi_x_in_AWREADY(1'b0),
    .m_axi_x_in_AWADDR(grp_copy_input_fu_88_m_axi_x_in_AWADDR),
    .m_axi_x_in_AWID(grp_copy_input_fu_88_m_axi_x_in_AWID),
    .m_axi_x_in_AWLEN(grp_copy_input_fu_88_m_axi_x_in_AWLEN),
    .m_axi_x_in_AWSIZE(grp_copy_input_fu_88_m_axi_x_in_AWSIZE),
    .m_axi_x_in_AWBURST(grp_copy_input_fu_88_m_axi_x_in_AWBURST),
    .m_axi_x_in_AWLOCK(grp_copy_input_fu_88_m_axi_x_in_AWLOCK),
    .m_axi_x_in_AWCACHE(grp_copy_input_fu_88_m_axi_x_in_AWCACHE),
    .m_axi_x_in_AWPROT(grp_copy_input_fu_88_m_axi_x_in_AWPROT),
    .m_axi_x_in_AWQOS(grp_copy_input_fu_88_m_axi_x_in_AWQOS),
    .m_axi_x_in_AWREGION(grp_copy_input_fu_88_m_axi_x_in_AWREGION),
    .m_axi_x_in_AWUSER(grp_copy_input_fu_88_m_axi_x_in_AWUSER),
    .m_axi_x_in_WVALID(grp_copy_input_fu_88_m_axi_x_in_WVALID),
    .m_axi_x_in_WREADY(1'b0),
    .m_axi_x_in_WDATA(grp_copy_input_fu_88_m_axi_x_in_WDATA),
    .m_axi_x_in_WSTRB(grp_copy_input_fu_88_m_axi_x_in_WSTRB),
    .m_axi_x_in_WLAST(grp_copy_input_fu_88_m_axi_x_in_WLAST),
    .m_axi_x_in_WID(grp_copy_input_fu_88_m_axi_x_in_WID),
    .m_axi_x_in_WUSER(grp_copy_input_fu_88_m_axi_x_in_WUSER),
    .m_axi_x_in_ARVALID(grp_copy_input_fu_88_m_axi_x_in_ARVALID),
    .m_axi_x_in_ARREADY(gmem_ARREADY),
    .m_axi_x_in_ARADDR(grp_copy_input_fu_88_m_axi_x_in_ARADDR),
    .m_axi_x_in_ARID(grp_copy_input_fu_88_m_axi_x_in_ARID),
    .m_axi_x_in_ARLEN(grp_copy_input_fu_88_m_axi_x_in_ARLEN),
    .m_axi_x_in_ARSIZE(grp_copy_input_fu_88_m_axi_x_in_ARSIZE),
    .m_axi_x_in_ARBURST(grp_copy_input_fu_88_m_axi_x_in_ARBURST),
    .m_axi_x_in_ARLOCK(grp_copy_input_fu_88_m_axi_x_in_ARLOCK),
    .m_axi_x_in_ARCACHE(grp_copy_input_fu_88_m_axi_x_in_ARCACHE),
    .m_axi_x_in_ARPROT(grp_copy_input_fu_88_m_axi_x_in_ARPROT),
    .m_axi_x_in_ARQOS(grp_copy_input_fu_88_m_axi_x_in_ARQOS),
    .m_axi_x_in_ARREGION(grp_copy_input_fu_88_m_axi_x_in_ARREGION),
    .m_axi_x_in_ARUSER(grp_copy_input_fu_88_m_axi_x_in_ARUSER),
    .m_axi_x_in_RVALID(gmem_RVALID),
    .m_axi_x_in_RREADY(grp_copy_input_fu_88_m_axi_x_in_RREADY),
    .m_axi_x_in_RDATA(gmem_RDATA),
    .m_axi_x_in_RLAST(gmem_RLAST),
    .m_axi_x_in_RID(gmem_RID),
    .m_axi_x_in_RUSER(gmem_RUSER),
    .m_axi_x_in_RRESP(gmem_RRESP),
    .m_axi_x_in_BVALID(1'b0),
    .m_axi_x_in_BREADY(grp_copy_input_fu_88_m_axi_x_in_BREADY),
    .m_axi_x_in_BRESP(2'd0),
    .m_axi_x_in_BID(1'd0),
    .m_axi_x_in_BUSER(1'd0),
    .x_in_offset(x1_reg_121),
    .x_int_V_address0(grp_copy_input_fu_88_x_int_V_address0),
    .x_int_V_ce0(grp_copy_input_fu_88_x_int_V_ce0),
    .x_int_V_we0(grp_copy_input_fu_88_x_int_V_we0),
    .x_int_V_d0(grp_copy_input_fu_88_x_int_V_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_copy_input_fu_88_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_copy_input_fu_88_ap_start_reg <= 1'b1;
        end else if ((grp_copy_input_fu_88_ap_ready == 1'b1)) begin
            grp_copy_input_fu_88_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_copy_output_fu_79_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_decision_function_75_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_copy_output_fu_79_ap_start_reg <= 1'b1;
        end else if ((grp_copy_output_fu_79_ap_ready == 1'b1)) begin
            grp_copy_output_fu_79_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_decision_function_75_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_decision_function_75_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_decision_function_75_fu_74_ap_ready == 1'b1)) begin
            grp_decision_function_75_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        score3_reg_116 <= {{score[31:3]}};
        x1_reg_121 <= {{x[31:3]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_decision_function_75_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        score_int_0_V_reg_126 <= grp_decision_function_75_fu_74_ap_return;
    end
end

always @ (*) begin
    if (((grp_copy_output_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_copy_output_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        gmem_ARVALID = grp_copy_input_fu_88_m_axi_x_in_ARVALID;
    end else begin
        gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        gmem_AWVALID = grp_copy_output_fu_79_m_axi_score_out_AWVALID;
    end else begin
        gmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        gmem_BREADY = grp_copy_output_fu_79_m_axi_score_out_BREADY;
    end else begin
        gmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        gmem_RREADY = grp_copy_input_fu_88_m_axi_x_in_RREADY;
    end else begin
        gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        gmem_WVALID = grp_copy_output_fu_79_m_axi_score_out_WVALID;
    end else begin
        gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_int_V_address0 = grp_copy_input_fu_88_x_int_V_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_int_V_address0 = grp_decision_function_75_fu_74_x_V_address0;
    end else begin
        x_int_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_int_V_ce0 = grp_copy_input_fu_88_x_int_V_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_int_V_ce0 = grp_decision_function_75_fu_74_x_V_ce0;
    end else begin
        x_int_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        x_int_V_ce1 = grp_decision_function_75_fu_74_x_V_ce1;
    end else begin
        x_int_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_int_V_we0 = grp_copy_input_fu_88_x_int_V_we0;
    end else begin
        x_int_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_copy_input_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_decision_function_75_fu_74_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((grp_copy_output_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_copy_input_fu_88_ap_start = grp_copy_input_fu_88_ap_start_reg;

assign grp_copy_output_fu_79_ap_start = grp_copy_output_fu_79_ap_start_reg;

assign grp_decision_function_75_fu_74_ap_start = grp_decision_function_75_fu_74_ap_start_reg;

endmodule //my_prj_accelerator
