// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decision_function_60 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_V_address0,
        x_V_ce0,
        x_V_q0,
        x_V_address1,
        x_V_ce1,
        x_V_q1,
        ap_return
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] x_V_address0;
output   x_V_ce0;
input  [11:0] x_V_q0;
output  [3:0] x_V_address1;
output   x_V_ce1;
input  [11:0] x_V_q1;
output  [11:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] x_V_address0;
reg x_V_ce0;
reg[3:0] x_V_address1;
reg x_V_ce1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1497_fu_118_p2;
reg   [0:0] icmp_ln1497_reg_331;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln1497_1_fu_124_p2;
reg   [0:0] icmp_ln1497_1_reg_341;
wire   [0:0] icmp_ln1497_2_fu_130_p2;
reg   [0:0] icmp_ln1497_2_reg_347;
wire   [0:0] icmp_ln1497_12_fu_136_p2;
reg   [0:0] icmp_ln1497_12_reg_362;
wire   [0:0] icmp_ln1497_5_fu_142_p2;
reg   [0:0] icmp_ln1497_5_reg_367;
wire   [0:0] icmp_ln1497_8_fu_148_p2;
reg   [0:0] icmp_ln1497_8_reg_372;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [0:0] and_ln73_fu_160_p2;
wire   [0:0] xor_ln75_fu_169_p2;
wire   [0:0] and_ln73_107_fu_174_p2;
wire   [0:0] xor_ln75_33_fu_184_p2;
wire   [0:0] icmp_ln1497_9_fu_154_p2;
wire   [0:0] and_ln73_109_fu_189_p2;
wire   [0:0] and_ln73_111_fu_205_p2;
wire   [0:0] xor_ln75_34_fu_200_p2;
wire   [0:0] and_ln73_108_fu_179_p2;
wire   [0:0] and_ln73_110_fu_194_p2;
wire   [0:0] or_ln88_50_fu_227_p2;
wire   [0:0] and_ln73_112_fu_210_p2;
wire   [0:0] and_ln73_106_fu_164_p2;
wire   [0:0] xor_ln89_fu_238_p2;
wire   [1:0] zext_ln89_fu_244_p1;
wire   [0:0] or_ln88_fu_216_p2;
wire   [1:0] select_ln89_fu_248_p3;
wire   [1:0] select_ln89_80_fu_256_p3;
wire   [2:0] zext_ln89_13_fu_264_p1;
wire   [0:0] or_ln88_49_fu_222_p2;
wire   [2:0] select_ln89_81_fu_268_p3;
wire   [2:0] select_ln89_82_fu_275_p3;
wire   [0:0] or_ln88_51_fu_232_p2;
wire   [2:0] select_ln89_83_fu_283_p3;
wire   [2:0] tmp_fu_299_p9;
wire   [11:0] tmp_fu_299_p10;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

my_prj_acceleratobkb_x2 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 12 ))
my_prj_acceleratobkb_x2_U50(
    .din0(12'd24),
    .din1(12'd50),
    .din2(12'd4067),
    .din3(12'd12),
    .din4(12'd4067),
    .din5(12'd93),
    .din6(12'd26),
    .din7(12'd4064),
    .din8(tmp_fu_299_p9),
    .dout(tmp_fu_299_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln1497_12_reg_362 <= icmp_ln1497_12_fu_136_p2;
        icmp_ln1497_1_reg_341 <= icmp_ln1497_1_fu_124_p2;
        icmp_ln1497_2_reg_347 <= icmp_ln1497_2_fu_130_p2;
        icmp_ln1497_reg_331 <= icmp_ln1497_fu_118_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1497_reg_331 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln1497_5_reg_367 <= icmp_ln1497_5_fu_142_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln1497_8_reg_372 <= icmp_ln1497_8_fu_148_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            x_V_address0 = 64'd5;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            x_V_address0 = 64'd8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_V_address0 = 64'd3;
        end else begin
            x_V_address0 = 'bx;
        end
    end else begin
        x_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            x_V_address1 = 64'd9;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_V_address1 = 64'd0;
        end else begin
            x_V_address1 = 'bx;
        end
    end else begin
        x_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_V_ce0 = 1'b1;
    end else begin
        x_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        x_V_ce1 = 1'b1;
    end else begin
        x_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (ap_reset_idle_pp0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_reset_idle_pp0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln73_106_fu_164_p2 = (icmp_ln1497_2_reg_347 & and_ln73_fu_160_p2);

assign and_ln73_107_fu_174_p2 = (xor_ln75_fu_169_p2 & icmp_ln1497_5_reg_367);

assign and_ln73_108_fu_179_p2 = (icmp_ln1497_reg_331 & and_ln73_107_fu_174_p2);

assign and_ln73_109_fu_189_p2 = (xor_ln75_33_fu_184_p2 & icmp_ln1497_8_reg_372);

assign and_ln73_110_fu_194_p2 = (icmp_ln1497_9_fu_154_p2 & and_ln73_109_fu_189_p2);

assign and_ln73_111_fu_205_p2 = (xor_ln75_33_fu_184_p2 & icmp_ln1497_12_reg_362);

assign and_ln73_112_fu_210_p2 = (xor_ln75_34_fu_200_p2 & and_ln73_111_fu_205_p2);

assign and_ln73_fu_160_p2 = (icmp_ln1497_reg_331 & icmp_ln1497_1_reg_341);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = tmp_fu_299_p10;

assign icmp_ln1497_12_fu_136_p2 = (($signed(x_V_q0) < $signed(12'd3713)) ? 1'b1 : 1'b0);

assign icmp_ln1497_1_fu_124_p2 = (($signed(x_V_q1) < $signed(12'd1)) ? 1'b1 : 1'b0);

assign icmp_ln1497_2_fu_130_p2 = (($signed(x_V_q0) < $signed(12'd897)) ? 1'b1 : 1'b0);

assign icmp_ln1497_5_fu_142_p2 = (($signed(x_V_q0) < $signed(12'd3457)) ? 1'b1 : 1'b0);

assign icmp_ln1497_8_fu_148_p2 = (($signed(x_V_q1) < $signed(12'd2945)) ? 1'b1 : 1'b0);

assign icmp_ln1497_9_fu_154_p2 = (($signed(x_V_q0) < $signed(12'd257)) ? 1'b1 : 1'b0);

assign icmp_ln1497_fu_118_p2 = (($signed(x_V_q0) < $signed(12'd513)) ? 1'b1 : 1'b0);

assign or_ln88_49_fu_222_p2 = (icmp_ln1497_reg_331 | and_ln73_110_fu_194_p2);

assign or_ln88_50_fu_227_p2 = (icmp_ln1497_reg_331 | and_ln73_109_fu_189_p2);

assign or_ln88_51_fu_232_p2 = (or_ln88_50_fu_227_p2 | and_ln73_112_fu_210_p2);

assign or_ln88_fu_216_p2 = (and_ln73_fu_160_p2 | and_ln73_108_fu_179_p2);

assign select_ln89_80_fu_256_p3 = ((or_ln88_fu_216_p2[0:0] === 1'b1) ? select_ln89_fu_248_p3 : 2'd3);

assign select_ln89_81_fu_268_p3 = ((icmp_ln1497_reg_331[0:0] === 1'b1) ? zext_ln89_13_fu_264_p1 : 3'd4);

assign select_ln89_82_fu_275_p3 = ((or_ln88_49_fu_222_p2[0:0] === 1'b1) ? select_ln89_81_fu_268_p3 : 3'd5);

assign select_ln89_83_fu_283_p3 = ((or_ln88_50_fu_227_p2[0:0] === 1'b1) ? select_ln89_82_fu_275_p3 : 3'd6);

assign select_ln89_fu_248_p3 = ((and_ln73_fu_160_p2[0:0] === 1'b1) ? zext_ln89_fu_244_p1 : 2'd2);

assign tmp_fu_299_p9 = ((or_ln88_51_fu_232_p2[0:0] === 1'b1) ? select_ln89_83_fu_283_p3 : 3'd7);

assign xor_ln75_33_fu_184_p2 = (icmp_ln1497_reg_331 ^ 1'd1);

assign xor_ln75_34_fu_200_p2 = (icmp_ln1497_8_reg_372 ^ 1'd1);

assign xor_ln75_fu_169_p2 = (icmp_ln1497_1_reg_341 ^ 1'd1);

assign xor_ln89_fu_238_p2 = (1'd1 ^ and_ln73_106_fu_164_p2);

assign zext_ln89_13_fu_264_p1 = select_ln89_80_fu_256_p3;

assign zext_ln89_fu_244_p1 = xor_ln89_fu_238_p2;

endmodule //decision_function_60
