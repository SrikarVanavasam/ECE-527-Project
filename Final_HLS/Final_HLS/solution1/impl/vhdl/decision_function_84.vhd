-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decision_function_84 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    x_V_ce0 : OUT STD_LOGIC;
    x_V_q0 : IN STD_LOGIC_VECTOR (11 downto 0);
    x_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    x_V_ce1 : OUT STD_LOGIC;
    x_V_q1 : IN STD_LOGIC_VECTOR (11 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of decision_function_84 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv12_201 : STD_LOGIC_VECTOR (11 downto 0) := "001000000001";
    constant ap_const_lv12_C81 : STD_LOGIC_VECTOR (11 downto 0) := "110010000001";
    constant ap_const_lv12_D81 : STD_LOGIC_VECTOR (11 downto 0) := "110110000001";
    constant ap_const_lv12_F1C : STD_LOGIC_VECTOR (11 downto 0) := "111100011100";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv12_FA1 : STD_LOGIC_VECTOR (11 downto 0) := "111110100001";
    constant ap_const_lv12_1A : STD_LOGIC_VECTOR (11 downto 0) := "000000011010";
    constant ap_const_lv12_FDF : STD_LOGIC_VECTOR (11 downto 0) := "111111011111";
    constant ap_const_lv12_C : STD_LOGIC_VECTOR (11 downto 0) := "000000001100";
    constant ap_const_lv12_FF8 : STD_LOGIC_VECTOR (11 downto 0) := "111111111000";
    constant ap_const_lv12_FE3 : STD_LOGIC_VECTOR (11 downto 0) := "111111100011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln1497_fu_105_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_reg_296 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_1_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_1_reg_306 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_9_fu_117_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_9_reg_317 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_reg_327 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_8_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_8_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_12_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_12_reg_338 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal xor_ln75_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_35_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_11_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_37_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_39_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_12_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_36_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_38_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln88_17_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_40_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln88_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_fu_213_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln89_26_fu_221_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln89_fu_229_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_16_fu_197_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_27_fu_233_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln89_28_fu_240_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_18_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_29_fu_248_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_264_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_264_p10 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component my_prj_acceleratobkb_x IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (11 downto 0);
        din2 : IN STD_LOGIC_VECTOR (11 downto 0);
        din3 : IN STD_LOGIC_VECTOR (11 downto 0);
        din4 : IN STD_LOGIC_VECTOR (11 downto 0);
        din5 : IN STD_LOGIC_VECTOR (11 downto 0);
        din6 : IN STD_LOGIC_VECTOR (11 downto 0);
        din7 : IN STD_LOGIC_VECTOR (11 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;



begin
    my_prj_acceleratobkb_x_U32 : component my_prj_acceleratobkb_x
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 12,
        din1_WIDTH => 12,
        din2_WIDTH => 12,
        din3_WIDTH => 12,
        din4_WIDTH => 12,
        din5_WIDTH => 12,
        din6_WIDTH => 12,
        din7_WIDTH => 12,
        din8_WIDTH => 3,
        dout_WIDTH => 12)
    port map (
        din0 => ap_const_lv12_FA1,
        din1 => ap_const_lv12_1A,
        din2 => ap_const_lv12_FDF,
        din3 => ap_const_lv12_C,
        din4 => ap_const_lv12_FF8,
        din5 => ap_const_lv12_FDF,
        din6 => ap_const_lv12_FE3,
        din7 => ap_const_lv12_1A,
        din8 => tmp_fu_264_p9,
        dout => tmp_fu_264_p10);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1497_12_reg_338 <= icmp_ln1497_12_fu_135_p2;
                icmp_ln1497_8_reg_332 <= icmp_ln1497_8_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                icmp_ln1497_1_reg_306 <= icmp_ln1497_1_fu_111_p2;
                icmp_ln1497_9_reg_317 <= icmp_ln1497_9_fu_117_p2;
                icmp_ln1497_reg_296 <= icmp_ln1497_fu_105_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1497_reg_296 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1497_5_reg_327 <= icmp_ln1497_5_fu_123_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_reset_idle_pp0 = ap_const_logic_0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_reset_idle_pp0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    and_ln73_35_fu_150_p2 <= (xor_ln75_fu_145_p2 and icmp_ln1497_5_reg_327);
    and_ln73_36_fu_155_p2 <= (icmp_ln1497_reg_296 and and_ln73_35_fu_150_p2);
    and_ln73_37_fu_165_p2 <= (xor_ln75_11_fu_160_p2 and icmp_ln1497_8_reg_332);
    and_ln73_38_fu_170_p2 <= (icmp_ln1497_9_reg_317 and and_ln73_37_fu_165_p2);
    and_ln73_39_fu_180_p2 <= (xor_ln75_11_fu_160_p2 and icmp_ln1497_12_reg_338);
    and_ln73_40_fu_185_p2 <= (xor_ln75_12_fu_175_p2 and and_ln73_39_fu_180_p2);
    and_ln73_fu_141_p2 <= (icmp_ln1497_reg_296 and icmp_ln1497_1_reg_306);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_enable_reg_pp0_iter0)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_start = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= tmp_fu_264_p10;
    icmp_ln1497_12_fu_135_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_F1C)) else "0";
    icmp_ln1497_1_fu_111_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_1)) else "0";
    icmp_ln1497_5_fu_123_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_C81)) else "0";
    icmp_ln1497_8_fu_129_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_D81)) else "0";
    icmp_ln1497_9_fu_117_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_201)) else "0";
    icmp_ln1497_fu_105_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_C01)) else "0";
    or_ln88_16_fu_197_p2 <= (icmp_ln1497_reg_296 or and_ln73_38_fu_170_p2);
    or_ln88_17_fu_202_p2 <= (icmp_ln1497_reg_296 or and_ln73_37_fu_165_p2);
    or_ln88_18_fu_207_p2 <= (or_ln88_17_fu_202_p2 or and_ln73_40_fu_185_p2);
    or_ln88_fu_191_p2 <= (and_ln73_fu_141_p2 or and_ln73_36_fu_155_p2);
    select_ln89_26_fu_221_p3 <= 
        select_ln89_fu_213_p3 when (or_ln88_fu_191_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln89_27_fu_233_p3 <= 
        zext_ln89_fu_229_p1 when (icmp_ln1497_reg_296(0) = '1') else 
        ap_const_lv3_4;
    select_ln89_28_fu_240_p3 <= 
        select_ln89_27_fu_233_p3 when (or_ln88_16_fu_197_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln89_29_fu_248_p3 <= 
        select_ln89_28_fu_240_p3 when (or_ln88_17_fu_202_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln89_fu_213_p3 <= 
        ap_const_lv2_0 when (and_ln73_fu_141_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_264_p9 <= 
        select_ln89_29_fu_248_p3 when (or_ln88_18_fu_207_p2(0) = '1') else 
        ap_const_lv3_7;

    x_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                x_V_address0 <= ap_const_lv64_9(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address0 <= ap_const_lv64_3(4 - 1 downto 0);
            else 
                x_V_address0 <= "XXXX";
            end if;
        else 
            x_V_address0 <= "XXXX";
        end if; 
    end process;


    x_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                x_V_address1 <= ap_const_lv64_5(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address1 <= ap_const_lv64_0(4 - 1 downto 0);
            else 
                x_V_address1 <= "XXXX";
            end if;
        else 
            x_V_address1 <= "XXXX";
        end if; 
    end process;


    x_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            x_V_ce0 <= ap_const_logic_1;
        else 
            x_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            x_V_ce1 <= ap_const_logic_1;
        else 
            x_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln75_11_fu_160_p2 <= (icmp_ln1497_reg_296 xor ap_const_lv1_1);
    xor_ln75_12_fu_175_p2 <= (icmp_ln1497_8_reg_332 xor ap_const_lv1_1);
    xor_ln75_fu_145_p2 <= (icmp_ln1497_1_reg_306 xor ap_const_lv1_1);
    zext_ln89_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln89_26_fu_221_p3),3));
end behav;
