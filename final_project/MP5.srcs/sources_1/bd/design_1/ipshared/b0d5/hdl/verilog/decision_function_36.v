// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decision_function_36 (
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
reg   [0:0] icmp_ln1497_reg_298;
wire   [0:0] icmp_ln1497_1_fu_113_p2;
reg   [0:0] icmp_ln1497_1_reg_308;
wire   [0:0] icmp_ln1497_5_fu_119_p2;
reg   [0:0] icmp_ln1497_5_reg_314;
wire   [0:0] icmp_ln1497_9_fu_125_p2;
reg   [0:0] icmp_ln1497_9_reg_324;
wire   [0:0] icmp_ln1497_8_fu_131_p2;
reg   [0:0] icmp_ln1497_8_reg_334;
wire   [0:0] icmp_ln1497_12_fu_137_p2;
reg   [0:0] icmp_ln1497_12_reg_340;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage1;
wire   [0:0] xor_ln75_fu_147_p2;
wire   [0:0] and_ln73_169_fu_152_p2;
wire   [0:0] xor_ln75_64_fu_162_p2;
wire   [0:0] and_ln73_166_fu_167_p2;
wire   [0:0] and_ln73_170_fu_182_p2;
wire   [0:0] xor_ln75_65_fu_177_p2;
wire   [0:0] and_ln73_fu_143_p2;
wire   [0:0] and_ln73_165_fu_157_p2;
wire   [0:0] and_ln73_167_fu_172_p2;
wire   [0:0] or_ln88_99_fu_204_p2;
wire   [0:0] and_ln73_168_fu_187_p2;
wire   [0:0] or_ln88_fu_193_p2;
wire   [1:0] select_ln89_fu_215_p3;
wire   [1:0] select_ln89_169_fu_223_p3;
wire   [2:0] zext_ln89_fu_231_p1;
wire   [0:0] or_ln88_98_fu_199_p2;
wire   [2:0] select_ln89_170_fu_235_p3;
wire   [2:0] select_ln89_171_fu_242_p3;
wire   [0:0] or_ln88_100_fu_209_p2;
wire   [2:0] select_ln89_172_fu_250_p3;
wire   [2:0] tmp_fu_266_p9;
wire   [11:0] tmp_fu_266_p10;
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

my_prj_acceleratobkb_x3 #(
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
my_prj_acceleratobkb_x3_U106(
    .din0(12'd4053),
    .din1(12'd22),
    .din2(12'd4071),
    .din3(12'd4081),
    .din4(12'd4069),
    .din5(12'd4070),
    .din6(12'd4061),
    .din7(12'd17),
    .din8(tmp_fu_266_p9),
    .dout(tmp_fu_266_p10)
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
        icmp_ln1497_12_reg_340 <= icmp_ln1497_12_fu_137_p2;
        icmp_ln1497_8_reg_334 <= icmp_ln1497_8_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln1497_1_reg_308 <= icmp_ln1497_1_fu_113_p2;
        icmp_ln1497_5_reg_314 <= icmp_ln1497_5_fu_119_p2;
        icmp_ln1497_9_reg_324 <= icmp_ln1497_9_fu_125_p2;
        icmp_ln1497_reg_298 <= icmp_ln1497_fu_107_p2;
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
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_V_address0 = 64'd8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_V_address0 = 64'd0;
        end else begin
            x_V_address0 = 'bx;
        end
    end else begin
        x_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            x_V_address1 = 64'd2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            x_V_address1 = 64'd3;
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

assign and_ln73_165_fu_157_p2 = (icmp_ln1497_reg_298 & and_ln73_169_fu_152_p2);

assign and_ln73_166_fu_167_p2 = (xor_ln75_64_fu_162_p2 & icmp_ln1497_8_reg_334);

assign and_ln73_167_fu_172_p2 = (icmp_ln1497_9_reg_324 & and_ln73_166_fu_167_p2);

assign and_ln73_168_fu_187_p2 = (xor_ln75_65_fu_177_p2 & and_ln73_170_fu_182_p2);

assign and_ln73_169_fu_152_p2 = (xor_ln75_fu_147_p2 & icmp_ln1497_5_reg_314);

assign and_ln73_170_fu_182_p2 = (xor_ln75_64_fu_162_p2 & icmp_ln1497_12_reg_340);

assign and_ln73_fu_143_p2 = (icmp_ln1497_reg_298 & icmp_ln1497_1_reg_308);

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

assign ap_return = tmp_fu_266_p10;

assign icmp_ln1497_12_fu_137_p2 = (($signed(x_V_q1) < $signed(12'd1)) ? 1'b1 : 1'b0);

assign icmp_ln1497_1_fu_113_p2 = (($signed(x_V_q1) < $signed(12'd3073)) ? 1'b1 : 1'b0);

assign icmp_ln1497_5_fu_119_p2 = (($signed(x_V_q1) < $signed(12'd897)) ? 1'b1 : 1'b0);

assign icmp_ln1497_8_fu_131_p2 = (($signed(x_V_q0) < $signed(12'd2945)) ? 1'b1 : 1'b0);

assign icmp_ln1497_9_fu_125_p2 = (($signed(x_V_q1) < $signed(12'd513)) ? 1'b1 : 1'b0);

assign icmp_ln1497_fu_107_p2 = (($signed(x_V_q0) < $signed(12'd1)) ? 1'b1 : 1'b0);

assign or_ln88_100_fu_209_p2 = (or_ln88_99_fu_204_p2 | and_ln73_168_fu_187_p2);

assign or_ln88_98_fu_199_p2 = (icmp_ln1497_reg_298 | and_ln73_167_fu_172_p2);

assign or_ln88_99_fu_204_p2 = (icmp_ln1497_reg_298 | and_ln73_166_fu_167_p2);

assign or_ln88_fu_193_p2 = (and_ln73_fu_143_p2 | and_ln73_165_fu_157_p2);

assign select_ln89_169_fu_223_p3 = ((or_ln88_fu_193_p2[0:0] === 1'b1) ? select_ln89_fu_215_p3 : 2'd3);

assign select_ln89_170_fu_235_p3 = ((icmp_ln1497_reg_298[0:0] === 1'b1) ? zext_ln89_fu_231_p1 : 3'd4);

assign select_ln89_171_fu_242_p3 = ((or_ln88_98_fu_199_p2[0:0] === 1'b1) ? select_ln89_170_fu_235_p3 : 3'd5);

assign select_ln89_172_fu_250_p3 = ((or_ln88_99_fu_204_p2[0:0] === 1'b1) ? select_ln89_171_fu_242_p3 : 3'd6);

assign select_ln89_fu_215_p3 = ((and_ln73_fu_143_p2[0:0] === 1'b1) ? 2'd0 : 2'd2);

assign tmp_fu_266_p9 = ((or_ln88_100_fu_209_p2[0:0] === 1'b1) ? select_ln89_172_fu_250_p3 : 3'd7);

assign xor_ln75_64_fu_162_p2 = (icmp_ln1497_reg_298 ^ 1'd1);

assign xor_ln75_65_fu_177_p2 = (icmp_ln1497_8_reg_334 ^ 1'd1);

assign xor_ln75_fu_147_p2 = (icmp_ln1497_1_reg_308 ^ 1'd1);

assign zext_ln89_fu_231_p1 = select_ln89_169_fu_223_p3;

endmodule //decision_function_36
