// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decision_function_22 (
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

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

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

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln1497_fu_107_p2;
reg   [0:0] icmp_ln1497_reg_319;
wire   [0:0] icmp_ln1497_1_fu_113_p2;
reg   [0:0] icmp_ln1497_1_reg_329;
wire   [0:0] icmp_ln1497_9_fu_119_p2;
reg   [0:0] icmp_ln1497_9_reg_345;
wire   [0:0] icmp_ln1497_2_fu_125_p2;
reg   [0:0] icmp_ln1497_2_reg_350;
wire   [0:0] icmp_ln1497_5_fu_131_p2;
reg   [0:0] icmp_ln1497_5_reg_355;
wire   [0:0] icmp_ln1497_8_fu_137_p2;
reg   [0:0] icmp_ln1497_8_reg_360;
wire   [0:0] icmp_ln1497_12_fu_143_p2;
reg   [0:0] icmp_ln1497_12_reg_366;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [0:0] and_ln73_fu_149_p2;
wire   [0:0] xor_ln75_fu_158_p2;
wire   [0:0] and_ln73_101_fu_163_p2;
wire   [0:0] xor_ln75_37_fu_173_p2;
wire   [0:0] and_ln73_98_fu_178_p2;
wire   [0:0] and_ln73_102_fu_193_p2;
wire   [0:0] xor_ln75_38_fu_188_p2;
wire   [0:0] and_ln73_97_fu_168_p2;
wire   [0:0] and_ln73_99_fu_183_p2;
wire   [0:0] or_ln88_57_fu_215_p2;
wire   [0:0] and_ln73_100_fu_198_p2;
wire   [0:0] and_ln73_96_fu_153_p2;
wire   [0:0] xor_ln89_fu_226_p2;
wire   [1:0] zext_ln89_fu_232_p1;
wire   [0:0] or_ln88_fu_204_p2;
wire   [1:0] select_ln89_fu_236_p3;
wire   [1:0] select_ln89_97_fu_244_p3;
wire   [2:0] zext_ln89_20_fu_252_p1;
wire   [0:0] or_ln88_56_fu_210_p2;
wire   [2:0] select_ln89_98_fu_256_p3;
wire   [2:0] select_ln89_99_fu_263_p3;
wire   [0:0] or_ln88_58_fu_220_p2;
wire   [2:0] select_ln89_100_fu_271_p3;
wire   [2:0] tmp_fu_287_p9;
wire   [11:0] tmp_fu_287_p10;
reg   [1:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
end

my_prj_acceleratobkb #(
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
my_prj_acceleratobkb_U20(
    .din0(12'd4054),
    .din1(12'd28),
    .din2(12'd4055),
    .din3(12'd16),
    .din4(12'd4080),
    .din5(12'd4055),
    .din6(12'd25),
    .din7(12'd4051),
    .din8(tmp_fu_287_p9),
    .dout(tmp_fu_287_p10)
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1497_12_reg_366 <= icmp_ln1497_12_fu_143_p2;
        icmp_ln1497_8_reg_360 <= icmp_ln1497_8_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln1497_1_reg_329 <= icmp_ln1497_1_fu_113_p2;
        icmp_ln1497_9_reg_345 <= icmp_ln1497_9_fu_119_p2;
        icmp_ln1497_reg_319 <= icmp_ln1497_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1497_reg_319 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1497_2_reg_350 <= icmp_ln1497_2_fu_125_p2;
        icmp_ln1497_5_reg_355 <= icmp_ln1497_5_fu_131_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            x_V_address0 = 64'd1;
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
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
            if ((~((ap_start == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b0)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_reset_idle_pp0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln73_100_fu_198_p2 = (xor_ln75_38_fu_188_p2 & and_ln73_102_fu_193_p2);

assign and_ln73_101_fu_163_p2 = (xor_ln75_fu_158_p2 & icmp_ln1497_5_reg_355);

assign and_ln73_102_fu_193_p2 = (xor_ln75_37_fu_173_p2 & icmp_ln1497_12_reg_366);

assign and_ln73_96_fu_153_p2 = (icmp_ln1497_2_reg_350 & and_ln73_fu_149_p2);

assign and_ln73_97_fu_168_p2 = (icmp_ln1497_reg_319 & and_ln73_101_fu_163_p2);

assign and_ln73_98_fu_178_p2 = (xor_ln75_37_fu_173_p2 & icmp_ln1497_8_reg_360);

assign and_ln73_99_fu_183_p2 = (icmp_ln1497_9_reg_345 & and_ln73_98_fu_178_p2);

assign and_ln73_fu_149_p2 = (icmp_ln1497_reg_319 & icmp_ln1497_1_reg_329);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

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

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = tmp_fu_287_p10;

assign icmp_ln1497_12_fu_143_p2 = (($signed(x_V_q1) < $signed(12'd3585)) ? 1'b1 : 1'b0);

assign icmp_ln1497_1_fu_113_p2 = (($signed(x_V_q1) < $signed(12'd1)) ? 1'b1 : 1'b0);

assign icmp_ln1497_2_fu_125_p2 = (($signed(x_V_q0) < $signed(12'd1281)) ? 1'b1 : 1'b0);

assign icmp_ln1497_5_fu_131_p2 = (($signed(x_V_q1) < $signed(12'd3201)) ? 1'b1 : 1'b0);

assign icmp_ln1497_8_fu_137_p2 = (($signed(x_V_q1) < $signed(12'd3457)) ? 1'b1 : 1'b0);

assign icmp_ln1497_9_fu_119_p2 = (($signed(x_V_q0) < $signed(12'd513)) ? 1'b1 : 1'b0);

assign icmp_ln1497_fu_107_p2 = (($signed(x_V_q0) < $signed(12'd3073)) ? 1'b1 : 1'b0);

assign or_ln88_56_fu_210_p2 = (icmp_ln1497_reg_319 | and_ln73_99_fu_183_p2);

assign or_ln88_57_fu_215_p2 = (icmp_ln1497_reg_319 | and_ln73_98_fu_178_p2);

assign or_ln88_58_fu_220_p2 = (or_ln88_57_fu_215_p2 | and_ln73_100_fu_198_p2);

assign or_ln88_fu_204_p2 = (and_ln73_fu_149_p2 | and_ln73_97_fu_168_p2);

assign select_ln89_100_fu_271_p3 = ((or_ln88_57_fu_215_p2[0:0] === 1'b1) ? select_ln89_99_fu_263_p3 : 3'd6);

assign select_ln89_97_fu_244_p3 = ((or_ln88_fu_204_p2[0:0] === 1'b1) ? select_ln89_fu_236_p3 : 2'd3);

assign select_ln89_98_fu_256_p3 = ((icmp_ln1497_reg_319[0:0] === 1'b1) ? zext_ln89_20_fu_252_p1 : 3'd4);

assign select_ln89_99_fu_263_p3 = ((or_ln88_56_fu_210_p2[0:0] === 1'b1) ? select_ln89_98_fu_256_p3 : 3'd5);

assign select_ln89_fu_236_p3 = ((and_ln73_fu_149_p2[0:0] === 1'b1) ? zext_ln89_fu_232_p1 : 2'd2);

assign tmp_fu_287_p9 = ((or_ln88_58_fu_220_p2[0:0] === 1'b1) ? select_ln89_100_fu_271_p3 : 3'd7);

assign xor_ln75_37_fu_173_p2 = (icmp_ln1497_reg_319 ^ 1'd1);

assign xor_ln75_38_fu_188_p2 = (icmp_ln1497_8_reg_360 ^ 1'd1);

assign xor_ln75_fu_158_p2 = (icmp_ln1497_1_reg_329 ^ 1'd1);

assign xor_ln89_fu_226_p2 = (1'd1 ^ and_ln73_96_fu_153_p2);

assign zext_ln89_20_fu_252_p1 = select_ln89_97_fu_244_p3;

assign zext_ln89_fu_232_p1 = xor_ln89_fu_226_p2;

endmodule //decision_function_22
