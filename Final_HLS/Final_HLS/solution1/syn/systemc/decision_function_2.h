// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _decision_function_2_HH_
#define _decision_function_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "my_prj_acceleratocud_x.h"

namespace ap_rtl {

struct decision_function_2 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > x_V_address0;
    sc_out< sc_logic > x_V_ce0;
    sc_in< sc_lv<12> > x_V_q0;
    sc_out< sc_lv<4> > x_V_address1;
    sc_out< sc_logic > x_V_ce1;
    sc_in< sc_lv<12> > x_V_q1;
    sc_out< sc_lv<12> > ap_return;
    sc_signal< sc_lv<12> > ap_var_for_const0;
    sc_signal< sc_lv<12> > ap_var_for_const1;
    sc_signal< sc_lv<12> > ap_var_for_const2;
    sc_signal< sc_lv<12> > ap_var_for_const3;
    sc_signal< sc_lv<12> > ap_var_for_const4;
    sc_signal< sc_lv<12> > ap_var_for_const5;
    sc_signal< sc_lv<12> > ap_var_for_const6;


    // Module declarations
    decision_function_2(sc_module_name name);
    SC_HAS_PROCESS(decision_function_2);

    ~decision_function_2();

    sc_trace_file* mVcdFile;

    my_prj_acceleratocud_x<1,1,12,12,12,12,12,12,12,3,12>* my_prj_acceleratocud_x_U221;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln1497_fu_103_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_reg_278;
    sc_signal< sc_lv<1> > icmp_ln1497_1_fu_109_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_1_reg_287;
    sc_signal< sc_lv<1> > icmp_ln1497_2_fu_115_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_2_reg_302;
    sc_signal< sc_lv<1> > icmp_ln1497_6_fu_121_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_6_reg_307;
    sc_signal< sc_lv<1> > icmp_ln1497_7_fu_127_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_7_reg_313;
    sc_signal< sc_lv<1> > icmp_ln1497_10_fu_133_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_10_reg_318;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > and_ln73_fu_139_p2;
    sc_signal< sc_lv<1> > xor_ln75_fu_148_p2;
    sc_signal< sc_lv<1> > and_ln73_12_fu_153_p2;
    sc_signal< sc_lv<1> > and_ln73_15_fu_168_p2;
    sc_signal< sc_lv<1> > xor_ln75_5_fu_163_p2;
    sc_signal< sc_lv<1> > and_ln73_13_fu_158_p2;
    sc_signal< sc_lv<1> > or_ln88_7_fu_184_p2;
    sc_signal< sc_lv<1> > and_ln73_14_fu_173_p2;
    sc_signal< sc_lv<1> > and_ln73_11_fu_143_p2;
    sc_signal< sc_lv<1> > xor_ln89_fu_195_p2;
    sc_signal< sc_lv<2> > zext_ln89_fu_201_p1;
    sc_signal< sc_lv<2> > select_ln89_fu_205_p3;
    sc_signal< sc_lv<2> > select_ln89_11_fu_213_p3;
    sc_signal< sc_lv<1> > or_ln88_fu_179_p2;
    sc_signal< sc_lv<3> > zext_ln89_3_fu_220_p1;
    sc_signal< sc_lv<3> > select_ln89_12_fu_224_p3;
    sc_signal< sc_lv<1> > or_ln88_8_fu_189_p2;
    sc_signal< sc_lv<3> > select_ln89_13_fu_232_p3;
    sc_signal< sc_lv<3> > tmp_fu_248_p8;
    sc_signal< sc_lv<12> > tmp_fu_248_p9;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_idle_pp0_1to1;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_pp0_stage0;
    static const sc_lv<2> ap_ST_fsm_pp0_stage1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<12> ap_const_lv12_D81;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<12> ap_const_lv12_B81;
    static const sc_lv<12> ap_const_lv12_781;
    static const sc_lv<12> ap_const_lv12_281;
    static const sc_lv<12> ap_const_lv12_81;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<12> ap_const_lv12_FFF;
    static const sc_lv<12> ap_const_lv12_17;
    static const sc_lv<12> ap_const_lv12_38;
    static const sc_lv<12> ap_const_lv12_FFE;
    static const sc_lv<12> ap_const_lv12_FE6;
    static const sc_lv<12> ap_const_lv12_16;
    static const sc_lv<12> ap_const_lv12_FF9;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_clk_no_reset_();
    void thread_and_ln73_11_fu_143_p2();
    void thread_and_ln73_12_fu_153_p2();
    void thread_and_ln73_13_fu_158_p2();
    void thread_and_ln73_14_fu_173_p2();
    void thread_and_ln73_15_fu_168_p2();
    void thread_and_ln73_fu_139_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage1_iter1();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_idle_pp0_1to1();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return();
    void thread_icmp_ln1497_10_fu_133_p2();
    void thread_icmp_ln1497_1_fu_109_p2();
    void thread_icmp_ln1497_2_fu_115_p2();
    void thread_icmp_ln1497_6_fu_121_p2();
    void thread_icmp_ln1497_7_fu_127_p2();
    void thread_icmp_ln1497_fu_103_p2();
    void thread_or_ln88_7_fu_184_p2();
    void thread_or_ln88_8_fu_189_p2();
    void thread_or_ln88_fu_179_p2();
    void thread_select_ln89_11_fu_213_p3();
    void thread_select_ln89_12_fu_224_p3();
    void thread_select_ln89_13_fu_232_p3();
    void thread_select_ln89_fu_205_p3();
    void thread_tmp_fu_248_p8();
    void thread_x_V_address0();
    void thread_x_V_address1();
    void thread_x_V_ce0();
    void thread_x_V_ce1();
    void thread_xor_ln75_5_fu_163_p2();
    void thread_xor_ln75_fu_148_p2();
    void thread_xor_ln89_fu_195_p2();
    void thread_zext_ln89_3_fu_220_p1();
    void thread_zext_ln89_fu_201_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif