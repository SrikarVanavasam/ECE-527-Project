// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "decision_function_31.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic decision_function_31::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic decision_function_31::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> decision_function_31::ap_ST_fsm_pp0_stage0 = "1";
const sc_lv<3> decision_function_31::ap_ST_fsm_pp0_stage1 = "10";
const sc_lv<3> decision_function_31::ap_ST_fsm_pp0_stage2 = "100";
const bool decision_function_31::ap_const_boolean_1 = true;
const sc_lv<32> decision_function_31::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool decision_function_31::ap_const_boolean_0 = false;
const sc_lv<32> decision_function_31::ap_const_lv32_2 = "10";
const sc_lv<32> decision_function_31::ap_const_lv32_1 = "1";
const sc_lv<1> decision_function_31::ap_const_lv1_1 = "1";
const sc_lv<64> decision_function_31::ap_const_lv64_A = "1010";
const sc_lv<64> decision_function_31::ap_const_lv64_2 = "10";
const sc_lv<64> decision_function_31::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<64> decision_function_31::ap_const_lv64_6 = "110";
const sc_lv<64> decision_function_31::ap_const_lv64_3 = "11";
const sc_lv<64> decision_function_31::ap_const_lv64_8 = "1000";
const sc_lv<12> decision_function_31::ap_const_lv12_101 = "100000001";
const sc_lv<12> decision_function_31::ap_const_lv12_1 = "1";
const sc_lv<12> decision_function_31::ap_const_lv12_B01 = "101100000001";
const sc_lv<12> decision_function_31::ap_const_lv12_E81 = "111010000001";
const sc_lv<12> decision_function_31::ap_const_lv12_781 = "11110000001";
const sc_lv<2> decision_function_31::ap_const_lv2_2 = "10";
const sc_lv<2> decision_function_31::ap_const_lv2_3 = "11";
const sc_lv<3> decision_function_31::ap_const_lv3_4 = "100";
const sc_lv<3> decision_function_31::ap_const_lv3_5 = "101";
const sc_lv<3> decision_function_31::ap_const_lv3_6 = "110";
const sc_lv<3> decision_function_31::ap_const_lv3_7 = "111";
const sc_lv<12> decision_function_31::ap_const_lv12_FFD = "111111111101";
const sc_lv<12> decision_function_31::ap_const_lv12_A0 = "10100000";
const sc_lv<12> decision_function_31::ap_const_lv12_FE2 = "111111100010";
const sc_lv<12> decision_function_31::ap_const_lv12_FE4 = "111111100100";
const sc_lv<12> decision_function_31::ap_const_lv12_12 = "10010";
const sc_lv<12> decision_function_31::ap_const_lv12_FE6 = "111111100110";
const sc_lv<12> decision_function_31::ap_const_lv12_FE9 = "111111101001";
const sc_lv<12> decision_function_31::ap_const_lv12_0 = "000000000000";

decision_function_31::decision_function_31(sc_module_name name) : sc_module(name), mVcdFile(0) {
    my_prj_acceleratobkb_x6_U151 = new my_prj_acceleratobkb_x6<1,1,12,12,12,12,12,12,12,12,3,12>("my_prj_acceleratobkb_x6_U151");
    my_prj_acceleratobkb_x6_U151->din0(ap_var_for_const0);
    my_prj_acceleratobkb_x6_U151->din1(ap_var_for_const1);
    my_prj_acceleratobkb_x6_U151->din2(ap_var_for_const2);
    my_prj_acceleratobkb_x6_U151->din3(ap_var_for_const3);
    my_prj_acceleratobkb_x6_U151->din4(ap_var_for_const4);
    my_prj_acceleratobkb_x6_U151->din5(ap_var_for_const5);
    my_prj_acceleratobkb_x6_U151->din6(ap_var_for_const6);
    my_prj_acceleratobkb_x6_U151->din7(ap_var_for_const7);
    my_prj_acceleratobkb_x6_U151->din8(tmp_fu_303_p9);
    my_prj_acceleratobkb_x6_U151->dout(tmp_fu_303_p10);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_and_ln73_139_fu_167_p2);
    sensitive << ( icmp_ln1497_2_reg_361 );
    sensitive << ( and_ln73_fu_163_p2 );

    SC_METHOD(thread_and_ln73_140_fu_182_p2);
    sensitive << ( icmp_ln1497_reg_335 );
    sensitive << ( and_ln73_144_fu_177_p2 );

    SC_METHOD(thread_and_ln73_141_fu_192_p2);
    sensitive << ( icmp_ln1497_8_reg_367 );
    sensitive << ( xor_ln75_54_fu_187_p2 );

    SC_METHOD(thread_and_ln73_142_fu_197_p2);
    sensitive << ( icmp_ln1497_9_fu_151_p2 );
    sensitive << ( and_ln73_141_fu_192_p2 );

    SC_METHOD(thread_and_ln73_143_fu_214_p2);
    sensitive << ( and_ln73_145_fu_208_p2 );
    sensitive << ( xor_ln75_55_fu_203_p2 );

    SC_METHOD(thread_and_ln73_144_fu_177_p2);
    sensitive << ( icmp_ln1497_2_reg_361 );
    sensitive << ( xor_ln75_fu_172_p2 );

    SC_METHOD(thread_and_ln73_145_fu_208_p2);
    sensitive << ( xor_ln75_54_fu_187_p2 );
    sensitive << ( icmp_ln1497_12_fu_157_p2 );

    SC_METHOD(thread_and_ln73_fu_163_p2);
    sensitive << ( icmp_ln1497_reg_335 );
    sensitive << ( icmp_ln1497_1_reg_345 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_start );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_start );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_block_pp0_stage1);

    SC_METHOD(thread_ap_block_pp0_stage1_11001);

    SC_METHOD(thread_ap_block_pp0_stage1_subdone);

    SC_METHOD(thread_ap_block_pp0_stage2);

    SC_METHOD(thread_ap_block_pp0_stage2_11001);

    SC_METHOD(thread_ap_block_pp0_stage2_subdone);

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_block_state2_pp0_stage1_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage2_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_enable_reg_pp0_iter0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0_reg );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_idle_pp0_0to0);
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_idle_pp0_1to1);
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_block_pp0_stage2_11001 );

    SC_METHOD(thread_ap_reset_idle_pp0);
    sensitive << ( ap_start );
    sensitive << ( ap_idle_pp0_0to0 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( tmp_fu_303_p10 );

    SC_METHOD(thread_icmp_ln1497_12_fu_157_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( x_V_q1 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_icmp_ln1497_1_fu_133_p2);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( x_V_q1 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_11001 );

    SC_METHOD(thread_icmp_ln1497_2_fu_139_p2);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_block_pp0_stage2_11001 );
    sensitive << ( x_V_q0 );
    sensitive << ( icmp_ln1497_reg_335 );

    SC_METHOD(thread_icmp_ln1497_8_fu_145_p2);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_block_pp0_stage2_11001 );
    sensitive << ( x_V_q1 );

    SC_METHOD(thread_icmp_ln1497_9_fu_151_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( x_V_q0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_icmp_ln1497_fu_127_p2);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( x_V_q0 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_11001 );

    SC_METHOD(thread_or_ln88_82_fu_226_p2);
    sensitive << ( icmp_ln1497_reg_335 );
    sensitive << ( and_ln73_142_fu_197_p2 );

    SC_METHOD(thread_or_ln88_83_fu_231_p2);
    sensitive << ( icmp_ln1497_reg_335 );
    sensitive << ( and_ln73_141_fu_192_p2 );

    SC_METHOD(thread_or_ln88_84_fu_236_p2);
    sensitive << ( or_ln88_83_fu_231_p2 );
    sensitive << ( and_ln73_143_fu_214_p2 );

    SC_METHOD(thread_or_ln88_fu_220_p2);
    sensitive << ( and_ln73_fu_163_p2 );
    sensitive << ( and_ln73_140_fu_182_p2 );

    SC_METHOD(thread_select_ln89_140_fu_260_p3);
    sensitive << ( or_ln88_fu_220_p2 );
    sensitive << ( select_ln89_fu_252_p3 );

    SC_METHOD(thread_select_ln89_141_fu_272_p3);
    sensitive << ( icmp_ln1497_reg_335 );
    sensitive << ( zext_ln89_29_fu_268_p1 );

    SC_METHOD(thread_select_ln89_142_fu_279_p3);
    sensitive << ( or_ln88_82_fu_226_p2 );
    sensitive << ( select_ln89_141_fu_272_p3 );

    SC_METHOD(thread_select_ln89_143_fu_287_p3);
    sensitive << ( or_ln88_83_fu_231_p2 );
    sensitive << ( select_ln89_142_fu_279_p3 );

    SC_METHOD(thread_select_ln89_fu_252_p3);
    sensitive << ( and_ln73_fu_163_p2 );
    sensitive << ( zext_ln89_fu_248_p1 );

    SC_METHOD(thread_tmp_fu_303_p9);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( or_ln88_84_fu_236_p2 );
    sensitive << ( select_ln89_143_fu_287_p3 );

    SC_METHOD(thread_x_V_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage2 );

    SC_METHOD(thread_x_V_address1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage2 );

    SC_METHOD(thread_x_V_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_block_pp0_stage2_11001 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_11001 );

    SC_METHOD(thread_x_V_ce1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_CS_fsm_pp0_stage2 );
    sensitive << ( ap_block_pp0_stage2_11001 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_CS_fsm_pp0_stage1 );
    sensitive << ( ap_block_pp0_stage1_11001 );

    SC_METHOD(thread_xor_ln75_54_fu_187_p2);
    sensitive << ( icmp_ln1497_reg_335 );

    SC_METHOD(thread_xor_ln75_55_fu_203_p2);
    sensitive << ( icmp_ln1497_8_reg_367 );

    SC_METHOD(thread_xor_ln75_fu_172_p2);
    sensitive << ( icmp_ln1497_1_reg_345 );

    SC_METHOD(thread_xor_ln89_fu_242_p2);
    sensitive << ( and_ln73_139_fu_167_p2 );

    SC_METHOD(thread_zext_ln89_29_fu_268_p1);
    sensitive << ( select_ln89_140_fu_260_p3 );

    SC_METHOD(thread_zext_ln89_fu_248_p1);
    sensitive << ( xor_ln89_fu_242_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_block_pp0_stage2_subdone );
    sensitive << ( ap_reset_idle_pp0 );
    sensitive << ( ap_idle_pp0_1to1 );
    sensitive << ( ap_block_pp0_stage1_subdone );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    SC_THREAD(thread_ap_var_for_const3);

    SC_THREAD(thread_ap_var_for_const4);

    SC_THREAD(thread_ap_var_for_const5);

    SC_THREAD(thread_ap_var_for_const6);

    SC_THREAD(thread_ap_var_for_const7);

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "decision_function_31_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x_V_address0, "(port)x_V_address0");
    sc_trace(mVcdFile, x_V_ce0, "(port)x_V_ce0");
    sc_trace(mVcdFile, x_V_q0, "(port)x_V_q0");
    sc_trace(mVcdFile, x_V_address1, "(port)x_V_address1");
    sc_trace(mVcdFile, x_V_ce1, "(port)x_V_ce1");
    sc_trace(mVcdFile, x_V_q1, "(port)x_V_q1");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage2, "ap_CS_fsm_pp0_stage2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage2_iter0, "ap_block_state3_pp0_stage2_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage2_11001, "ap_block_pp0_stage2_11001");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln1497_fu_127_p2, "icmp_ln1497_fu_127_p2");
    sc_trace(mVcdFile, icmp_ln1497_reg_335, "icmp_ln1497_reg_335");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage1, "ap_CS_fsm_pp0_stage1");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage1_iter0, "ap_block_state2_pp0_stage1_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage1_11001, "ap_block_pp0_stage1_11001");
    sc_trace(mVcdFile, icmp_ln1497_1_fu_133_p2, "icmp_ln1497_1_fu_133_p2");
    sc_trace(mVcdFile, icmp_ln1497_1_reg_345, "icmp_ln1497_1_reg_345");
    sc_trace(mVcdFile, icmp_ln1497_2_fu_139_p2, "icmp_ln1497_2_fu_139_p2");
    sc_trace(mVcdFile, icmp_ln1497_2_reg_361, "icmp_ln1497_2_reg_361");
    sc_trace(mVcdFile, icmp_ln1497_8_fu_145_p2, "icmp_ln1497_8_fu_145_p2");
    sc_trace(mVcdFile, icmp_ln1497_8_reg_367, "icmp_ln1497_8_reg_367");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0_reg, "ap_enable_reg_pp0_iter0_reg");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_block_pp0_stage2_subdone, "ap_block_pp0_stage2_subdone");
    sc_trace(mVcdFile, ap_block_pp0_stage1, "ap_block_pp0_stage1");
    sc_trace(mVcdFile, ap_block_pp0_stage2, "ap_block_pp0_stage2");
    sc_trace(mVcdFile, and_ln73_fu_163_p2, "and_ln73_fu_163_p2");
    sc_trace(mVcdFile, xor_ln75_fu_172_p2, "xor_ln75_fu_172_p2");
    sc_trace(mVcdFile, and_ln73_144_fu_177_p2, "and_ln73_144_fu_177_p2");
    sc_trace(mVcdFile, xor_ln75_54_fu_187_p2, "xor_ln75_54_fu_187_p2");
    sc_trace(mVcdFile, icmp_ln1497_9_fu_151_p2, "icmp_ln1497_9_fu_151_p2");
    sc_trace(mVcdFile, and_ln73_141_fu_192_p2, "and_ln73_141_fu_192_p2");
    sc_trace(mVcdFile, icmp_ln1497_12_fu_157_p2, "icmp_ln1497_12_fu_157_p2");
    sc_trace(mVcdFile, and_ln73_145_fu_208_p2, "and_ln73_145_fu_208_p2");
    sc_trace(mVcdFile, xor_ln75_55_fu_203_p2, "xor_ln75_55_fu_203_p2");
    sc_trace(mVcdFile, and_ln73_140_fu_182_p2, "and_ln73_140_fu_182_p2");
    sc_trace(mVcdFile, and_ln73_142_fu_197_p2, "and_ln73_142_fu_197_p2");
    sc_trace(mVcdFile, or_ln88_83_fu_231_p2, "or_ln88_83_fu_231_p2");
    sc_trace(mVcdFile, and_ln73_143_fu_214_p2, "and_ln73_143_fu_214_p2");
    sc_trace(mVcdFile, and_ln73_139_fu_167_p2, "and_ln73_139_fu_167_p2");
    sc_trace(mVcdFile, xor_ln89_fu_242_p2, "xor_ln89_fu_242_p2");
    sc_trace(mVcdFile, zext_ln89_fu_248_p1, "zext_ln89_fu_248_p1");
    sc_trace(mVcdFile, or_ln88_fu_220_p2, "or_ln88_fu_220_p2");
    sc_trace(mVcdFile, select_ln89_fu_252_p3, "select_ln89_fu_252_p3");
    sc_trace(mVcdFile, select_ln89_140_fu_260_p3, "select_ln89_140_fu_260_p3");
    sc_trace(mVcdFile, zext_ln89_29_fu_268_p1, "zext_ln89_29_fu_268_p1");
    sc_trace(mVcdFile, or_ln88_82_fu_226_p2, "or_ln88_82_fu_226_p2");
    sc_trace(mVcdFile, select_ln89_141_fu_272_p3, "select_ln89_141_fu_272_p3");
    sc_trace(mVcdFile, select_ln89_142_fu_279_p3, "select_ln89_142_fu_279_p3");
    sc_trace(mVcdFile, or_ln88_84_fu_236_p2, "or_ln88_84_fu_236_p2");
    sc_trace(mVcdFile, select_ln89_143_fu_287_p3, "select_ln89_143_fu_287_p3");
    sc_trace(mVcdFile, tmp_fu_303_p9, "tmp_fu_303_p9");
    sc_trace(mVcdFile, tmp_fu_303_p10, "tmp_fu_303_p10");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0_0to0, "ap_idle_pp0_0to0");
    sc_trace(mVcdFile, ap_reset_idle_pp0, "ap_reset_idle_pp0");
    sc_trace(mVcdFile, ap_idle_pp0_1to1, "ap_idle_pp0_1to1");
    sc_trace(mVcdFile, ap_block_pp0_stage1_subdone, "ap_block_pp0_stage1_subdone");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

decision_function_31::~decision_function_31() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete my_prj_acceleratobkb_x6_U151;
}

void decision_function_31::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv12_FFD;
}

void decision_function_31::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv12_A0;
}

void decision_function_31::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv12_FE2;
}

void decision_function_31::thread_ap_var_for_const3() {
    ap_var_for_const3 = ap_const_lv12_FE4;
}

void decision_function_31::thread_ap_var_for_const4() {
    ap_var_for_const4 = ap_const_lv12_12;
}

void decision_function_31::thread_ap_var_for_const5() {
    ap_var_for_const5 = ap_const_lv12_FE6;
}

void decision_function_31::thread_ap_var_for_const6() {
    ap_var_for_const6 = ap_const_lv12_FE9;
}

void decision_function_31::thread_ap_var_for_const7() {
    ap_var_for_const7 = ap_const_lv12_0;
}

void decision_function_31::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read())) {
            ap_enable_reg_pp0_iter0_reg = ap_start.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage2_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
                    esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_0))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage1_11001.read(), ap_const_boolean_0))) {
        icmp_ln1497_1_reg_345 = icmp_ln1497_1_fu_133_p2.read();
        icmp_ln1497_reg_335 = icmp_ln1497_fu_127_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln1497_reg_335.read(), ap_const_lv1_1))) {
        icmp_ln1497_2_reg_361 = icmp_ln1497_2_fu_139_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0))) {
        icmp_ln1497_8_reg_367 = icmp_ln1497_8_fu_145_p2.read();
    }
}

void decision_function_31::thread_and_ln73_139_fu_167_p2() {
    and_ln73_139_fu_167_p2 = (icmp_ln1497_2_reg_361.read() & and_ln73_fu_163_p2.read());
}

void decision_function_31::thread_and_ln73_140_fu_182_p2() {
    and_ln73_140_fu_182_p2 = (and_ln73_144_fu_177_p2.read() & icmp_ln1497_reg_335.read());
}

void decision_function_31::thread_and_ln73_141_fu_192_p2() {
    and_ln73_141_fu_192_p2 = (icmp_ln1497_8_reg_367.read() & xor_ln75_54_fu_187_p2.read());
}

void decision_function_31::thread_and_ln73_142_fu_197_p2() {
    and_ln73_142_fu_197_p2 = (icmp_ln1497_9_fu_151_p2.read() & and_ln73_141_fu_192_p2.read());
}

void decision_function_31::thread_and_ln73_143_fu_214_p2() {
    and_ln73_143_fu_214_p2 = (and_ln73_145_fu_208_p2.read() & xor_ln75_55_fu_203_p2.read());
}

void decision_function_31::thread_and_ln73_144_fu_177_p2() {
    and_ln73_144_fu_177_p2 = (icmp_ln1497_2_reg_361.read() & xor_ln75_fu_172_p2.read());
}

void decision_function_31::thread_and_ln73_145_fu_208_p2() {
    and_ln73_145_fu_208_p2 = (icmp_ln1497_12_fu_157_p2.read() & xor_ln75_54_fu_187_p2.read());
}

void decision_function_31::thread_and_ln73_fu_163_p2() {
    and_ln73_fu_163_p2 = (icmp_ln1497_1_reg_345.read() & icmp_ln1497_reg_335.read());
}

void decision_function_31::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void decision_function_31::thread_ap_CS_fsm_pp0_stage1() {
    ap_CS_fsm_pp0_stage1 = ap_CS_fsm.read()[1];
}

void decision_function_31::thread_ap_CS_fsm_pp0_stage2() {
    ap_CS_fsm_pp0_stage2 = ap_CS_fsm.read()[2];
}

void decision_function_31::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()));
}

void decision_function_31::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()));
}

void decision_function_31::thread_ap_block_pp0_stage1() {
    ap_block_pp0_stage1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage1_11001() {
    ap_block_pp0_stage1_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage1_subdone() {
    ap_block_pp0_stage1_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage2() {
    ap_block_pp0_stage2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage2_11001() {
    ap_block_pp0_stage2_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_pp0_stage2_subdone() {
    ap_block_pp0_stage2_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void decision_function_31::thread_ap_block_state2_pp0_stage1_iter0() {
    ap_block_state2_pp0_stage1_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_state3_pp0_stage2_iter0() {
    ap_block_state3_pp0_stage2_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void decision_function_31::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void decision_function_31::thread_ap_enable_reg_pp0_iter0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read())) {
        ap_enable_reg_pp0_iter0 = ap_start.read();
    } else {
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg.read();
    }
}

void decision_function_31::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_idle_pp0_0to0() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read())) {
        ap_idle_pp0_0to0 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to0 = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_idle_pp0_1to1() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read())) {
        ap_idle_pp0_1to1 = ap_const_logic_1;
    } else {
        ap_idle_pp0_1to1 = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to0.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void decision_function_31::thread_ap_return() {
    ap_return = tmp_fu_303_p10.read();
}

void decision_function_31::thread_icmp_ln1497_12_fu_157_p2() {
    icmp_ln1497_12_fu_157_p2 = (!x_V_q1.read().is_01() || !ap_const_lv12_781.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q1.read()) < sc_bigint<12>(ap_const_lv12_781));
}

void decision_function_31::thread_icmp_ln1497_1_fu_133_p2() {
    icmp_ln1497_1_fu_133_p2 = (!x_V_q1.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q1.read()) < sc_bigint<12>(ap_const_lv12_1));
}

void decision_function_31::thread_icmp_ln1497_2_fu_139_p2() {
    icmp_ln1497_2_fu_139_p2 = (!x_V_q0.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q0.read()) < sc_bigint<12>(ap_const_lv12_1));
}

void decision_function_31::thread_icmp_ln1497_8_fu_145_p2() {
    icmp_ln1497_8_fu_145_p2 = (!x_V_q1.read().is_01() || !ap_const_lv12_B01.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q1.read()) < sc_bigint<12>(ap_const_lv12_B01));
}

void decision_function_31::thread_icmp_ln1497_9_fu_151_p2() {
    icmp_ln1497_9_fu_151_p2 = (!x_V_q0.read().is_01() || !ap_const_lv12_E81.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q0.read()) < sc_bigint<12>(ap_const_lv12_E81));
}

void decision_function_31::thread_icmp_ln1497_fu_127_p2() {
    icmp_ln1497_fu_127_p2 = (!x_V_q0.read().is_01() || !ap_const_lv12_101.is_01())? sc_lv<1>(): (sc_bigint<12>(x_V_q0.read()) < sc_bigint<12>(ap_const_lv12_101));
}

void decision_function_31::thread_or_ln88_82_fu_226_p2() {
    or_ln88_82_fu_226_p2 = (icmp_ln1497_reg_335.read() | and_ln73_142_fu_197_p2.read());
}

void decision_function_31::thread_or_ln88_83_fu_231_p2() {
    or_ln88_83_fu_231_p2 = (icmp_ln1497_reg_335.read() | and_ln73_141_fu_192_p2.read());
}

void decision_function_31::thread_or_ln88_84_fu_236_p2() {
    or_ln88_84_fu_236_p2 = (or_ln88_83_fu_231_p2.read() | and_ln73_143_fu_214_p2.read());
}

void decision_function_31::thread_or_ln88_fu_220_p2() {
    or_ln88_fu_220_p2 = (and_ln73_fu_163_p2.read() | and_ln73_140_fu_182_p2.read());
}

void decision_function_31::thread_select_ln89_140_fu_260_p3() {
    select_ln89_140_fu_260_p3 = (!or_ln88_fu_220_p2.read()[0].is_01())? sc_lv<2>(): ((or_ln88_fu_220_p2.read()[0].to_bool())? select_ln89_fu_252_p3.read(): ap_const_lv2_3);
}

void decision_function_31::thread_select_ln89_141_fu_272_p3() {
    select_ln89_141_fu_272_p3 = (!icmp_ln1497_reg_335.read()[0].is_01())? sc_lv<3>(): ((icmp_ln1497_reg_335.read()[0].to_bool())? zext_ln89_29_fu_268_p1.read(): ap_const_lv3_4);
}

void decision_function_31::thread_select_ln89_142_fu_279_p3() {
    select_ln89_142_fu_279_p3 = (!or_ln88_82_fu_226_p2.read()[0].is_01())? sc_lv<3>(): ((or_ln88_82_fu_226_p2.read()[0].to_bool())? select_ln89_141_fu_272_p3.read(): ap_const_lv3_5);
}

void decision_function_31::thread_select_ln89_143_fu_287_p3() {
    select_ln89_143_fu_287_p3 = (!or_ln88_83_fu_231_p2.read()[0].is_01())? sc_lv<3>(): ((or_ln88_83_fu_231_p2.read()[0].to_bool())? select_ln89_142_fu_279_p3.read(): ap_const_lv3_6);
}

void decision_function_31::thread_select_ln89_fu_252_p3() {
    select_ln89_fu_252_p3 = (!and_ln73_fu_163_p2.read()[0].is_01())? sc_lv<2>(): ((and_ln73_fu_163_p2.read()[0].to_bool())? zext_ln89_fu_248_p1.read(): ap_const_lv2_2);
}

void decision_function_31::thread_tmp_fu_303_p9() {
    tmp_fu_303_p9 = (!or_ln88_84_fu_236_p2.read()[0].is_01())? sc_lv<3>(): ((or_ln88_84_fu_236_p2.read()[0].to_bool())? select_ln89_143_fu_287_p3.read(): ap_const_lv3_7);
}

void decision_function_31::thread_x_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
            x_V_address0 =  (sc_lv<4>) (ap_const_lv64_3);
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            x_V_address0 =  (sc_lv<4>) (ap_const_lv64_0);
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            x_V_address0 =  (sc_lv<4>) (ap_const_lv64_A);
        } else {
            x_V_address0 = "XXXX";
        }
    } else {
        x_V_address0 = "XXXX";
    }
}

void decision_function_31::thread_x_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
            x_V_address1 =  (sc_lv<4>) (ap_const_lv64_8);
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            x_V_address1 =  (sc_lv<4>) (ap_const_lv64_6);
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            x_V_address1 =  (sc_lv<4>) (ap_const_lv64_2);
        } else {
            x_V_address1 = "XXXX";
        }
    } else {
        x_V_address1 = "XXXX";
    }
}

void decision_function_31::thread_x_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001.read(), ap_const_boolean_0)))) {
        x_V_ce0 = ap_const_logic_1;
    } else {
        x_V_ce0 = ap_const_logic_0;
    }
}

void decision_function_31::thread_x_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage2_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage1_11001.read(), ap_const_boolean_0)))) {
        x_V_ce1 = ap_const_logic_1;
    } else {
        x_V_ce1 = ap_const_logic_0;
    }
}

void decision_function_31::thread_xor_ln75_54_fu_187_p2() {
    xor_ln75_54_fu_187_p2 = (icmp_ln1497_reg_335.read() ^ ap_const_lv1_1);
}

void decision_function_31::thread_xor_ln75_55_fu_203_p2() {
    xor_ln75_55_fu_203_p2 = (icmp_ln1497_8_reg_367.read() ^ ap_const_lv1_1);
}

void decision_function_31::thread_xor_ln75_fu_172_p2() {
    xor_ln75_fu_172_p2 = (icmp_ln1497_1_reg_345.read() ^ ap_const_lv1_1);
}

void decision_function_31::thread_xor_ln89_fu_242_p2() {
    xor_ln89_fu_242_p2 = (and_ln73_139_fu_167_p2.read() ^ ap_const_lv1_1);
}

void decision_function_31::thread_zext_ln89_29_fu_268_p1() {
    zext_ln89_29_fu_268_p1 = esl_zext<3,2>(select_ln89_140_fu_260_p3.read());
}

void decision_function_31::thread_zext_ln89_fu_248_p1() {
    zext_ln89_fu_248_p1 = esl_zext<2,1>(xor_ln89_fu_242_p2.read());
}

void decision_function_31::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_reset_idle_pp0.read(), ap_const_logic_0) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_1to1.read())))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reset_idle_pp0.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage1_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(ap_block_pp0_stage2_subdone.read(), ap_const_boolean_0)) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
            break;
    }
}

}

