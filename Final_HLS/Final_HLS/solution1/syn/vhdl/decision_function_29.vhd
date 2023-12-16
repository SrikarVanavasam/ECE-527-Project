-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decision_function_29 is
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


architecture behav of decision_function_29 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001001";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv12_A01 : STD_LOGIC_VECTOR (11 downto 0) := "101000000001";
    constant ap_const_lv12_C01 : STD_LOGIC_VECTOR (11 downto 0) := "110000000001";
    constant ap_const_lv12_B81 : STD_LOGIC_VECTOR (11 downto 0) := "101110000001";
    constant ap_const_lv12_881 : STD_LOGIC_VECTOR (11 downto 0) := "100010000001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv12_12 : STD_LOGIC_VECTOR (11 downto 0) := "000000010010";
    constant ap_const_lv12_FF1 : STD_LOGIC_VECTOR (11 downto 0) := "111111110001";
    constant ap_const_lv12_1E : STD_LOGIC_VECTOR (11 downto 0) := "000000011110";
    constant ap_const_lv12_FF5 : STD_LOGIC_VECTOR (11 downto 0) := "111111110101";
    constant ap_const_lv12_FE5 : STD_LOGIC_VECTOR (11 downto 0) := "111111100101";
    constant ap_const_lv12_FE2 : STD_LOGIC_VECTOR (11 downto 0) := "111111100010";
    constant ap_const_lv12_FF0 : STD_LOGIC_VECTOR (11 downto 0) := "111111110000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln1497_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_reg_322 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln1497_1_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_1_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_2_fu_126_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_2_reg_348 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_reg_353 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal and_ln73_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_fu_159_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_134_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_50_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_9_fu_138_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_131_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_12_fu_144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_135_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_51_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_130_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_132_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln88_77_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_133_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_129_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln89_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln89_fu_235_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln88_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_fu_239_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln89_130_fu_247_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln89_27_fu_255_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_76_fu_213_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_131_fu_259_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln89_132_fu_266_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_78_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_133_fu_274_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_290_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_290_p10 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;

    component my_prj_acceleratobkb_x23 IS
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
    my_prj_acceleratobkb_x23_U156 : component my_prj_acceleratobkb_x23
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
        din0 => ap_const_lv12_12,
        din1 => ap_const_lv12_FF1,
        din2 => ap_const_lv12_1E,
        din3 => ap_const_lv12_FF5,
        din4 => ap_const_lv12_FE5,
        din5 => ap_const_lv12_FE2,
        din6 => ap_const_lv12_FF0,
        din7 => ap_const_lv12_FE2,
        din8 => tmp_fu_290_p9,
        dout => tmp_fu_290_p10);





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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                icmp_ln1497_1_reg_332 <= icmp_ln1497_1_fu_120_p2;
                icmp_ln1497_reg_322 <= icmp_ln1497_fu_114_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1497_reg_322 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                icmp_ln1497_2_reg_348 <= icmp_ln1497_2_fu_126_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                icmp_ln1497_5_reg_353 <= icmp_ln1497_5_fu_132_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_block_pp0_stage2_subdone, ap_reset_idle_pp0, ap_idle_pp0_1to1, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    and_ln73_129_fu_154_p2 <= (icmp_ln1497_2_reg_348 and and_ln73_fu_150_p2);
    and_ln73_130_fu_169_p2 <= (icmp_ln1497_reg_322 and and_ln73_134_fu_164_p2);
    and_ln73_131_fu_179_p2 <= (xor_ln75_50_fu_174_p2 and icmp_ln1497_5_reg_353);
    and_ln73_132_fu_184_p2 <= (icmp_ln1497_9_fu_138_p2 and and_ln73_131_fu_179_p2);
    and_ln73_133_fu_201_p2 <= (xor_ln75_51_fu_190_p2 and and_ln73_135_fu_195_p2);
    and_ln73_134_fu_164_p2 <= (xor_ln75_fu_159_p2 and icmp_ln1497_5_reg_353);
    and_ln73_135_fu_195_p2 <= (xor_ln75_50_fu_174_p2 and icmp_ln1497_12_fu_144_p2);
    and_ln73_fu_150_p2 <= (icmp_ln1497_reg_322 and icmp_ln1497_1_reg_332);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
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
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
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


    ap_ready_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
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

    ap_return <= tmp_fu_290_p10;
    icmp_ln1497_12_fu_144_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_881)) else "0";
    icmp_ln1497_1_fu_120_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_A01)) else "0";
    icmp_ln1497_2_fu_126_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_C01)) else "0";
    icmp_ln1497_5_fu_132_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_1)) else "0";
    icmp_ln1497_9_fu_138_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_B81)) else "0";
    icmp_ln1497_fu_114_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_1)) else "0";
    or_ln88_76_fu_213_p2 <= (icmp_ln1497_reg_322 or and_ln73_132_fu_184_p2);
    or_ln88_77_fu_218_p2 <= (icmp_ln1497_reg_322 or and_ln73_131_fu_179_p2);
    or_ln88_78_fu_223_p2 <= (or_ln88_77_fu_218_p2 or and_ln73_133_fu_201_p2);
    or_ln88_fu_207_p2 <= (and_ln73_fu_150_p2 or and_ln73_130_fu_169_p2);
    select_ln89_130_fu_247_p3 <= 
        select_ln89_fu_239_p3 when (or_ln88_fu_207_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln89_131_fu_259_p3 <= 
        zext_ln89_27_fu_255_p1 when (icmp_ln1497_reg_322(0) = '1') else 
        ap_const_lv3_4;
    select_ln89_132_fu_266_p3 <= 
        select_ln89_131_fu_259_p3 when (or_ln88_76_fu_213_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln89_133_fu_274_p3 <= 
        select_ln89_132_fu_266_p3 when (or_ln88_77_fu_218_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln89_fu_239_p3 <= 
        zext_ln89_fu_235_p1 when (and_ln73_fu_150_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_290_p9 <= 
        select_ln89_133_fu_274_p3 when (or_ln88_78_fu_223_p2(0) = '1') else 
        ap_const_lv3_7;

    x_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_block_pp0_stage2)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                x_V_address0 <= ap_const_lv64_9(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                x_V_address0 <= ap_const_lv64_3(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address0 <= ap_const_lv64_0(4 - 1 downto 0);
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
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                x_V_address1 <= ap_const_lv64_2(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address1 <= ap_const_lv64_6(4 - 1 downto 0);
            else 
                x_V_address1 <= "XXXX";
            end if;
        else 
            x_V_address1 <= "XXXX";
        end if; 
    end process;


    x_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            x_V_ce0 <= ap_const_logic_1;
        else 
            x_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    x_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            x_V_ce1 <= ap_const_logic_1;
        else 
            x_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln75_50_fu_174_p2 <= (icmp_ln1497_reg_322 xor ap_const_lv1_1);
    xor_ln75_51_fu_190_p2 <= (icmp_ln1497_5_reg_353 xor ap_const_lv1_1);
    xor_ln75_fu_159_p2 <= (icmp_ln1497_1_reg_332 xor ap_const_lv1_1);
    xor_ln89_fu_229_p2 <= (ap_const_lv1_1 xor and_ln73_129_fu_154_p2);
    zext_ln89_27_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln89_130_fu_247_p3),3));
    zext_ln89_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln89_fu_229_p2),2));
end behav;
