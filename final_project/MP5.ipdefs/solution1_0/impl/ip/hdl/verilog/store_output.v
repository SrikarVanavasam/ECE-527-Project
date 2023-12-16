// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module store_output (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_output_r_AWVALID,
        m_axi_output_r_AWREADY,
        m_axi_output_r_AWADDR,
        m_axi_output_r_AWID,
        m_axi_output_r_AWLEN,
        m_axi_output_r_AWSIZE,
        m_axi_output_r_AWBURST,
        m_axi_output_r_AWLOCK,
        m_axi_output_r_AWCACHE,
        m_axi_output_r_AWPROT,
        m_axi_output_r_AWQOS,
        m_axi_output_r_AWREGION,
        m_axi_output_r_AWUSER,
        m_axi_output_r_WVALID,
        m_axi_output_r_WREADY,
        m_axi_output_r_WDATA,
        m_axi_output_r_WSTRB,
        m_axi_output_r_WLAST,
        m_axi_output_r_WID,
        m_axi_output_r_WUSER,
        m_axi_output_r_ARVALID,
        m_axi_output_r_ARREADY,
        m_axi_output_r_ARADDR,
        m_axi_output_r_ARID,
        m_axi_output_r_ARLEN,
        m_axi_output_r_ARSIZE,
        m_axi_output_r_ARBURST,
        m_axi_output_r_ARLOCK,
        m_axi_output_r_ARCACHE,
        m_axi_output_r_ARPROT,
        m_axi_output_r_ARQOS,
        m_axi_output_r_ARREGION,
        m_axi_output_r_ARUSER,
        m_axi_output_r_RVALID,
        m_axi_output_r_RREADY,
        m_axi_output_r_RDATA,
        m_axi_output_r_RLAST,
        m_axi_output_r_RID,
        m_axi_output_r_RUSER,
        m_axi_output_r_RRESP,
        m_axi_output_r_BVALID,
        m_axi_output_r_BREADY,
        m_axi_output_r_BRESP,
        m_axi_output_r_BID,
        m_axi_output_r_BUSER,
        output_offset_dout,
        output_offset_empty_n,
        output_offset_read,
        output_fc6_buffer_0_address0,
        output_fc6_buffer_0_ce0,
        output_fc6_buffer_0_q0,
        output_fc6_buffer_1_address0,
        output_fc6_buffer_1_ce0,
        output_fc6_buffer_1_q0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_pp0_stage0 = 8'd4;
parameter    ap_ST_fsm_state6 = 8'd8;
parameter    ap_ST_fsm_state7 = 8'd16;
parameter    ap_ST_fsm_state8 = 8'd32;
parameter    ap_ST_fsm_state9 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_output_r_AWVALID;
input   m_axi_output_r_AWREADY;
output  [31:0] m_axi_output_r_AWADDR;
output  [0:0] m_axi_output_r_AWID;
output  [31:0] m_axi_output_r_AWLEN;
output  [2:0] m_axi_output_r_AWSIZE;
output  [1:0] m_axi_output_r_AWBURST;
output  [1:0] m_axi_output_r_AWLOCK;
output  [3:0] m_axi_output_r_AWCACHE;
output  [2:0] m_axi_output_r_AWPROT;
output  [3:0] m_axi_output_r_AWQOS;
output  [3:0] m_axi_output_r_AWREGION;
output  [0:0] m_axi_output_r_AWUSER;
output   m_axi_output_r_WVALID;
input   m_axi_output_r_WREADY;
output  [31:0] m_axi_output_r_WDATA;
output  [3:0] m_axi_output_r_WSTRB;
output   m_axi_output_r_WLAST;
output  [0:0] m_axi_output_r_WID;
output  [0:0] m_axi_output_r_WUSER;
output   m_axi_output_r_ARVALID;
input   m_axi_output_r_ARREADY;
output  [31:0] m_axi_output_r_ARADDR;
output  [0:0] m_axi_output_r_ARID;
output  [31:0] m_axi_output_r_ARLEN;
output  [2:0] m_axi_output_r_ARSIZE;
output  [1:0] m_axi_output_r_ARBURST;
output  [1:0] m_axi_output_r_ARLOCK;
output  [3:0] m_axi_output_r_ARCACHE;
output  [2:0] m_axi_output_r_ARPROT;
output  [3:0] m_axi_output_r_ARQOS;
output  [3:0] m_axi_output_r_ARREGION;
output  [0:0] m_axi_output_r_ARUSER;
input   m_axi_output_r_RVALID;
output   m_axi_output_r_RREADY;
input  [31:0] m_axi_output_r_RDATA;
input   m_axi_output_r_RLAST;
input  [0:0] m_axi_output_r_RID;
input  [0:0] m_axi_output_r_RUSER;
input  [1:0] m_axi_output_r_RRESP;
input   m_axi_output_r_BVALID;
output   m_axi_output_r_BREADY;
input  [1:0] m_axi_output_r_BRESP;
input  [0:0] m_axi_output_r_BID;
input  [0:0] m_axi_output_r_BUSER;
input  [31:0] output_offset_dout;
input   output_offset_empty_n;
output   output_offset_read;
output  [2:0] output_fc6_buffer_0_address0;
output   output_fc6_buffer_0_ce0;
input  [31:0] output_fc6_buffer_0_q0;
output  [2:0] output_fc6_buffer_1_address0;
output   output_fc6_buffer_1_ce0;
input  [31:0] output_fc6_buffer_1_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_output_r_AWVALID;
reg m_axi_output_r_WVALID;
reg m_axi_output_r_BREADY;
reg output_offset_read;
reg output_fc6_buffer_0_ce0;
reg output_fc6_buffer_1_ce0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    output_r_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    output_r_blk_n_W;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln236_reg_215;
reg   [0:0] icmp_ln236_reg_215_pp0_iter1_reg;
reg    output_r_blk_n_B;
wire    ap_CS_fsm_state10;
reg    output_offset_blk_n;
reg   [3:0] phi_ln236_i_reg_134;
reg   [29:0] output_offset1_i_reg_204;
reg    ap_block_state1;
wire   [0:0] icmp_ln236_fu_165_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [3:0] add_ln236_fu_171_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] trunc_ln236_fu_177_p1;
reg   [0:0] trunc_ln236_reg_224;
wire   [31:0] select_ln236_fu_197_p3;
reg   [31:0] select_ln236_reg_239;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
wire   [63:0] zext_ln236_fu_191_p1;
wire   [63:0] zext_ln235_fu_155_p1;
wire    ap_block_pp0_stage0_01001;
wire   [2:0] lshr_ln_i_fu_181_p4;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((m_axi_output_r_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((m_axi_output_r_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((m_axi_output_r_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln236_fu_165_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        phi_ln236_i_reg_134 <= add_ln236_fu_171_p2;
    end else if (((m_axi_output_r_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln236_i_reg_134 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln236_reg_215 <= icmp_ln236_fu_165_p2;
        icmp_ln236_reg_215_pp0_iter1_reg <= icmp_ln236_reg_215;
    end
end

always @ (posedge ap_clk) begin
    if ((~((output_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        output_offset1_i_reg_204 <= {{output_offset_dout[31:2]}};
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln236_reg_215 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        select_ln236_reg_239 <= select_ln236_fu_197_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln236_fu_165_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln236_reg_224 <= trunc_ln236_fu_177_p1;
    end
end

always @ (*) begin
    if ((icmp_ln236_fu_165_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_output_r_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_output_r_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_output_r_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_output_r_AWVALID = 1'b1;
    end else begin
        m_axi_output_r_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_output_r_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        m_axi_output_r_BREADY = 1'b1;
    end else begin
        m_axi_output_r_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln236_reg_215_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_output_r_WVALID = 1'b1;
    end else begin
        m_axi_output_r_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_fc6_buffer_0_ce0 = 1'b1;
    end else begin
        output_fc6_buffer_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_fc6_buffer_1_ce0 = 1'b1;
    end else begin
        output_fc6_buffer_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        output_offset_blk_n = output_offset_empty_n;
    end else begin
        output_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((output_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        output_offset_read = 1'b1;
    end else begin
        output_offset_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        output_r_blk_n_AW = m_axi_output_r_AWREADY;
    end else begin
        output_r_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_r_blk_n_B = m_axi_output_r_BVALID;
    end else begin
        output_r_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln236_reg_215_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        output_r_blk_n_W = m_axi_output_r_WREADY;
    end else begin
        output_r_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((output_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_output_r_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln236_fu_165_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln236_fu_165_p2 == 1'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((m_axi_output_r_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln236_fu_171_p2 = (phi_ln236_i_reg_134 + 4'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((output_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_io = ((icmp_ln236_reg_215_pp0_iter1_reg == 1'd0) & (m_axi_output_r_WREADY == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign icmp_ln236_fu_165_p2 = ((phi_ln236_i_reg_134 == 4'd10) ? 1'b1 : 1'b0);

assign lshr_ln_i_fu_181_p4 = {{phi_ln236_i_reg_134[3:1]}};

assign m_axi_output_r_ARADDR = 32'd0;

assign m_axi_output_r_ARBURST = 2'd0;

assign m_axi_output_r_ARCACHE = 4'd0;

assign m_axi_output_r_ARID = 1'd0;

assign m_axi_output_r_ARLEN = 32'd0;

assign m_axi_output_r_ARLOCK = 2'd0;

assign m_axi_output_r_ARPROT = 3'd0;

assign m_axi_output_r_ARQOS = 4'd0;

assign m_axi_output_r_ARREGION = 4'd0;

assign m_axi_output_r_ARSIZE = 3'd0;

assign m_axi_output_r_ARUSER = 1'd0;

assign m_axi_output_r_ARVALID = 1'b0;

assign m_axi_output_r_AWADDR = zext_ln235_fu_155_p1;

assign m_axi_output_r_AWBURST = 2'd0;

assign m_axi_output_r_AWCACHE = 4'd0;

assign m_axi_output_r_AWID = 1'd0;

assign m_axi_output_r_AWLEN = 32'd10;

assign m_axi_output_r_AWLOCK = 2'd0;

assign m_axi_output_r_AWPROT = 3'd0;

assign m_axi_output_r_AWQOS = 4'd0;

assign m_axi_output_r_AWREGION = 4'd0;

assign m_axi_output_r_AWSIZE = 3'd0;

assign m_axi_output_r_AWUSER = 1'd0;

assign m_axi_output_r_RREADY = 1'b0;

assign m_axi_output_r_WDATA = select_ln236_reg_239;

assign m_axi_output_r_WID = 1'd0;

assign m_axi_output_r_WLAST = 1'b0;

assign m_axi_output_r_WSTRB = 4'd15;

assign m_axi_output_r_WUSER = 1'd0;

assign output_fc6_buffer_0_address0 = zext_ln236_fu_191_p1;

assign output_fc6_buffer_1_address0 = zext_ln236_fu_191_p1;

assign select_ln236_fu_197_p3 = ((trunc_ln236_reg_224[0:0] === 1'b1) ? output_fc6_buffer_1_q0 : output_fc6_buffer_0_q0);

assign trunc_ln236_fu_177_p1 = phi_ln236_i_reg_134[0:0];

assign zext_ln235_fu_155_p1 = output_offset1_i_reg_204;

assign zext_ln236_fu_191_p1 = lshr_ln_i_fu_181_p4;

endmodule //store_output