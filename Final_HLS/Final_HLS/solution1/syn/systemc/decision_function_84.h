// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _decision_function_84_HH_
#define _decision_function_84_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "my_prj_acceleratobkb_x.h"

namespace ap_rtl {

struct decision_function_84 : public sc_module {
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


    // Module declarations
    decision_function_84(sc_module_name name);
    SC_HAS_PROCESS(decision_function_84);

    ~decision_function_84();

    sc_trace_file* mVcdFile;

    my_prj_acceleratobkb_x<1,1,12,12,12,12,12,12,12,12,3,12>* my_prj_acceleratobkb_x_U32;
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
    sc_signal< sc_lv<1> > icmp_ln1497_fu_105_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_reg_296;
    sc_signal< sc_lv<1> > icmp_ln1497_1_fu_111_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_1_reg_306;
    sc_signal< sc_lv<1> > icmp_ln1497_9_fu_117_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_9_reg_317;
    sc_signal< sc_lv<1> > icmp_ln1497_5_fu_123_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_5_reg_327;
    sc_signal< sc_lv<1> > icmp_ln1497_8_fu_129_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_8_reg_332;
    sc_signal< sc_lv<1> > icmp_ln1497_12_fu_135_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_12_reg_338;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > xor_ln75_fu_145_p2;
    sc_signal< sc_lv<1> > and_ln73_35_fu_150_p2;
    sc_signal< sc_lv<1> > xor_ln75_11_fu_160_p2;
    sc_signal< sc_lv<1> > and_ln73_37_fu_165_p2;
    sc_signal< sc_lv<1> > and_ln73_39_fu_180_p2;
    sc_signal< sc_lv<1> > xor_ln75_12_fu_175_p2;
    sc_signal< sc_lv<1> > and_ln73_fu_141_p2;
    sc_signal< sc_lv<1> > and_ln73_36_fu_155_p2;
    sc_signal< sc_lv<1> > and_ln73_38_fu_170_p2;
    sc_signal< sc_lv<1> > or_ln88_17_fu_202_p2;
    sc_signal< sc_lv<1> > and_ln73_40_fu_185_p2;
    sc_signal< sc_lv<1> > or_ln88_fu_191_p2;
    sc_signal< sc_lv<2> > select_ln89_fu_213_p3;
    sc_signal< sc_lv<2> > select_ln89_26_fu_221_p3;
    sc_signal< sc_lv<3> > zext_ln89_fu_229_p1;
    sc_signal< sc_lv<1> > or_ln88_16_fu_197_p2;
    sc_signal< sc_lv<3> > select_ln89_27_fu_233_p3;
    sc_signal< sc_lv<3> > select_ln89_28_fu_240_p3;
    sc_signal< sc_lv<1> > or_ln88_18_fu_207_p2;
    sc_signal< sc_lv<3> > select_ln89_29_fu_248_p3;
    sc_signal< sc_lv<3> > tmp_fu_264_p9;
    sc_signal< sc_lv<12> > tmp_fu_264_p10;
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
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<12> ap_const_lv12_C01;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<12> ap_const_lv12_201;
    static const sc_lv<12> ap_const_lv12_C81;
    static const sc_lv<12> ap_const_lv12_D81;
    static const sc_lv<12> ap_const_lv12_F1C;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<12> ap_const_lv12_FA1;
    static const sc_lv<12> ap_const_lv12_1A;
    static const sc_lv<12> ap_const_lv12_FDF;
    static const sc_lv<12> ap_const_lv12_C;
    static const sc_lv<12> ap_const_lv12_FF8;
    static const sc_lv<12> ap_const_lv12_FE3;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_clk_no_reset_();
    void thread_and_ln73_35_fu_150_p2();
    void thread_and_ln73_36_fu_155_p2();
    void thread_and_ln73_37_fu_165_p2();
    void thread_and_ln73_38_fu_170_p2();
    void thread_and_ln73_39_fu_180_p2();
    void thread_and_ln73_40_fu_185_p2();
    void thread_and_ln73_fu_141_p2();
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
    void thread_icmp_ln1497_12_fu_135_p2();
    void thread_icmp_ln1497_1_fu_111_p2();
    void thread_icmp_ln1497_5_fu_123_p2();
    void thread_icmp_ln1497_8_fu_129_p2();
    void thread_icmp_ln1497_9_fu_117_p2();
    void thread_icmp_ln1497_fu_105_p2();
    void thread_or_ln88_16_fu_197_p2();
    void thread_or_ln88_17_fu_202_p2();
    void thread_or_ln88_18_fu_207_p2();
    void thread_or_ln88_fu_191_p2();
    void thread_select_ln89_26_fu_221_p3();
    void thread_select_ln89_27_fu_233_p3();
    void thread_select_ln89_28_fu_240_p3();
    void thread_select_ln89_29_fu_248_p3();
    void thread_select_ln89_fu_213_p3();
    void thread_tmp_fu_264_p9();
    void thread_x_V_address0();
    void thread_x_V_address1();
    void thread_x_V_ce0();
    void thread_x_V_ce1();
    void thread_xor_ln75_11_fu_160_p2();
    void thread_xor_ln75_12_fu_175_p2();
    void thread_xor_ln75_fu_145_p2();
    void thread_zext_ln89_fu_229_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
