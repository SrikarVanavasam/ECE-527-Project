// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _decision_function_21_HH_
#define _decision_function_21_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "my_prj_acceleratobkb_x26.h"

namespace ap_rtl {

struct decision_function_21 : public sc_module {
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
    sc_signal< sc_lv<12> > ap_var_for_const7;


    // Module declarations
    decision_function_21(sc_module_name name);
    SC_HAS_PROCESS(decision_function_21);

    ~decision_function_21();

    sc_trace_file* mVcdFile;

    my_prj_acceleratobkb_x26<1,1,12,12,12,12,12,12,12,12,3,12>* my_prj_acceleratobkb_x26_U173;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state3_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln1497_fu_133_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_reg_345;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > icmp_ln1497_1_fu_139_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_1_reg_355;
    sc_signal< sc_lv<1> > icmp_ln1497_2_fu_145_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_2_reg_371;
    sc_signal< sc_lv<1> > icmp_ln1497_5_fu_151_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_5_reg_376;
    sc_signal< sc_lv<1> > icmp_ln1497_12_fu_157_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_12_reg_391;
    sc_signal< sc_lv<1> > icmp_ln1497_8_fu_163_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_8_reg_396;
    sc_signal< sc_lv<1> > icmp_ln1497_9_fu_169_p2;
    sc_signal< sc_lv<1> > icmp_ln1497_9_reg_402;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0_reg;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<1> > and_ln73_fu_175_p2;
    sc_signal< sc_lv<1> > xor_ln75_fu_184_p2;
    sc_signal< sc_lv<1> > and_ln73_96_fu_189_p2;
    sc_signal< sc_lv<1> > xor_ln75_35_fu_199_p2;
    sc_signal< sc_lv<1> > and_ln73_93_fu_204_p2;
    sc_signal< sc_lv<1> > and_ln73_97_fu_219_p2;
    sc_signal< sc_lv<1> > xor_ln75_36_fu_214_p2;
    sc_signal< sc_lv<1> > and_ln73_92_fu_194_p2;
    sc_signal< sc_lv<1> > and_ln73_94_fu_209_p2;
    sc_signal< sc_lv<1> > or_ln88_54_fu_241_p2;
    sc_signal< sc_lv<1> > and_ln73_95_fu_224_p2;
    sc_signal< sc_lv<1> > and_ln73_91_fu_179_p2;
    sc_signal< sc_lv<1> > xor_ln89_fu_252_p2;
    sc_signal< sc_lv<2> > zext_ln89_fu_258_p1;
    sc_signal< sc_lv<1> > or_ln88_fu_230_p2;
    sc_signal< sc_lv<2> > select_ln89_fu_262_p3;
    sc_signal< sc_lv<2> > select_ln89_92_fu_270_p3;
    sc_signal< sc_lv<3> > zext_ln89_19_fu_278_p1;
    sc_signal< sc_lv<1> > or_ln88_53_fu_236_p2;
    sc_signal< sc_lv<3> > select_ln89_93_fu_282_p3;
    sc_signal< sc_lv<3> > select_ln89_94_fu_289_p3;
    sc_signal< sc_lv<1> > or_ln88_55_fu_246_p2;
    sc_signal< sc_lv<3> > select_ln89_95_fu_297_p3;
    sc_signal< sc_lv<3> > tmp_fu_313_p9;
    sc_signal< sc_lv<12> > tmp_fu_313_p10;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_idle_pp0_1to1;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_pp0_stage1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage2;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<12> ap_const_lv12_101;
    static const sc_lv<12> ap_const_lv12_370;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<12> ap_const_lv12_601;
    static const sc_lv<12> ap_const_lv12_800;
    static const sc_lv<12> ap_const_lv12_981;
    static const sc_lv<12> ap_const_lv12_C01;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<12> ap_const_lv12_FFE;
    static const sc_lv<12> ap_const_lv12_FE3;
    static const sc_lv<12> ap_const_lv12_2A;
    static const sc_lv<12> ap_const_lv12_FE2;
    static const sc_lv<12> ap_const_lv12_12;
    static const sc_lv<12> ap_const_lv12_FEE;
    static const sc_lv<12> ap_const_lv12_87;
    static const sc_lv<12> ap_const_lv12_10;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const7();
    void thread_ap_clk_no_reset_();
    void thread_and_ln73_91_fu_179_p2();
    void thread_and_ln73_92_fu_194_p2();
    void thread_and_ln73_93_fu_204_p2();
    void thread_and_ln73_94_fu_209_p2();
    void thread_and_ln73_95_fu_224_p2();
    void thread_and_ln73_96_fu_189_p2();
    void thread_and_ln73_97_fu_219_p2();
    void thread_and_ln73_fu_175_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state3_pp0_stage2_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage1_iter1();
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
    void thread_icmp_ln1497_12_fu_157_p2();
    void thread_icmp_ln1497_1_fu_139_p2();
    void thread_icmp_ln1497_2_fu_145_p2();
    void thread_icmp_ln1497_5_fu_151_p2();
    void thread_icmp_ln1497_8_fu_163_p2();
    void thread_icmp_ln1497_9_fu_169_p2();
    void thread_icmp_ln1497_fu_133_p2();
    void thread_or_ln88_53_fu_236_p2();
    void thread_or_ln88_54_fu_241_p2();
    void thread_or_ln88_55_fu_246_p2();
    void thread_or_ln88_fu_230_p2();
    void thread_select_ln89_92_fu_270_p3();
    void thread_select_ln89_93_fu_282_p3();
    void thread_select_ln89_94_fu_289_p3();
    void thread_select_ln89_95_fu_297_p3();
    void thread_select_ln89_fu_262_p3();
    void thread_tmp_fu_313_p9();
    void thread_x_V_address0();
    void thread_x_V_address1();
    void thread_x_V_ce0();
    void thread_x_V_ce1();
    void thread_xor_ln75_35_fu_199_p2();
    void thread_xor_ln75_36_fu_214_p2();
    void thread_xor_ln75_fu_184_p2();
    void thread_xor_ln89_fu_252_p2();
    void thread_zext_ln89_19_fu_278_p1();
    void thread_zext_ln89_fu_258_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
