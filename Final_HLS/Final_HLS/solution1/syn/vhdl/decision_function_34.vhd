-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decision_function_34 is
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


architecture behav of decision_function_34 is 
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
    constant ap_const_lv64_A : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001010";
    constant ap_const_lv64_5 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000101";
    constant ap_const_lv64_2 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv64_B : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000001011";
    constant ap_const_lv64_3 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000011";
    constant ap_const_lv64_6 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000110";
    constant ap_const_lv12_101 : STD_LOGIC_VECTOR (11 downto 0) := "000100000001";
    constant ap_const_lv12_370 : STD_LOGIC_VECTOR (11 downto 0) := "001101110000";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv12_A01 : STD_LOGIC_VECTOR (11 downto 0) := "101000000001";
    constant ap_const_lv12_E81 : STD_LOGIC_VECTOR (11 downto 0) := "111010000001";
    constant ap_const_lv12_901 : STD_LOGIC_VECTOR (11 downto 0) := "100100000001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv12_FFC : STD_LOGIC_VECTOR (11 downto 0) := "111111111100";
    constant ap_const_lv12_FE4 : STD_LOGIC_VECTOR (11 downto 0) := "111111100100";
    constant ap_const_lv12_43 : STD_LOGIC_VECTOR (11 downto 0) := "000001000011";
    constant ap_const_lv12_FE3 : STD_LOGIC_VECTOR (11 downto 0) := "111111100011";
    constant ap_const_lv12_F : STD_LOGIC_VECTOR (11 downto 0) := "000000001111";
    constant ap_const_lv12_1B : STD_LOGIC_VECTOR (11 downto 0) := "000000011011";
    constant ap_const_lv12_FE6 : STD_LOGIC_VECTOR (11 downto 0) := "111111100110";
    constant ap_const_lv12_FE7 : STD_LOGIC_VECTOR (11 downto 0) := "111111100111";

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
    signal icmp_ln1497_fu_131_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_reg_337 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal icmp_ln1497_1_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_1_reg_347 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_2_fu_143_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_2_reg_363 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_fu_149_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_5_reg_369 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_8_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_8_reg_384 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_9_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1497_9_reg_390 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal and_ln73_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_158_fu_181_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_60_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_155_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_159_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln75_61_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_154_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_156_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln88_92_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_157_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_153_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln89_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln89_fu_250_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln88_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_fu_254_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln89_155_fu_262_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln89_31_fu_270_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_91_fu_228_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_156_fu_274_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln89_157_fu_281_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln88_93_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln89_158_fu_289_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_305_p9 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_305_p10 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component my_prj_acceleratobkb_x20 IS
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
    my_prj_acceleratobkb_x20_U145 : component my_prj_acceleratobkb_x20
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
        din0 => ap_const_lv12_FFC,
        din1 => ap_const_lv12_FE4,
        din2 => ap_const_lv12_43,
        din3 => ap_const_lv12_FE3,
        din4 => ap_const_lv12_F,
        din5 => ap_const_lv12_1B,
        din6 => ap_const_lv12_FE6,
        din7 => ap_const_lv12_FE7,
        din8 => tmp_fu_305_p9,
        dout => tmp_fu_305_p10);





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
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                icmp_ln1497_1_reg_347 <= icmp_ln1497_1_fu_137_p2;
                icmp_ln1497_reg_337 <= icmp_ln1497_fu_131_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                icmp_ln1497_2_reg_363 <= icmp_ln1497_2_fu_143_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln1497_reg_337 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                icmp_ln1497_5_reg_369 <= icmp_ln1497_5_fu_149_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln1497_8_reg_384 <= icmp_ln1497_8_fu_155_p2;
                icmp_ln1497_9_reg_390 <= icmp_ln1497_9_fu_161_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_block_pp0_stage0_subdone, ap_idle_pp0_1to1, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_start = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if (((ap_reset_idle_pp0 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                elsif (((ap_reset_idle_pp0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
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
    and_ln73_153_fu_171_p2 <= (icmp_ln1497_2_reg_363 and and_ln73_fu_167_p2);
    and_ln73_154_fu_186_p2 <= (icmp_ln1497_reg_337 and and_ln73_158_fu_181_p2);
    and_ln73_155_fu_196_p2 <= (xor_ln75_60_fu_191_p2 and icmp_ln1497_8_reg_384);
    and_ln73_156_fu_201_p2 <= (icmp_ln1497_9_reg_390 and and_ln73_155_fu_196_p2);
    and_ln73_157_fu_216_p2 <= (xor_ln75_61_fu_206_p2 and and_ln73_159_fu_211_p2);
    and_ln73_158_fu_181_p2 <= (xor_ln75_fu_176_p2 and icmp_ln1497_5_reg_369);
    and_ln73_159_fu_211_p2 <= (xor_ln75_60_fu_191_p2 and icmp_ln1497_2_reg_363);
    and_ln73_fu_167_p2 <= (icmp_ln1497_reg_337 and icmp_ln1497_1_reg_347);
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
        ap_block_state5_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
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

    ap_return <= tmp_fu_305_p10;
    icmp_ln1497_1_fu_137_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_370)) else "0";
    icmp_ln1497_2_fu_143_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_1)) else "0";
    icmp_ln1497_5_fu_149_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_A01)) else "0";
    icmp_ln1497_8_fu_155_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_E81)) else "0";
    icmp_ln1497_9_fu_161_p2 <= "1" when (signed(x_V_q1) < signed(ap_const_lv12_901)) else "0";
    icmp_ln1497_fu_131_p2 <= "1" when (signed(x_V_q0) < signed(ap_const_lv12_101)) else "0";
    or_ln88_91_fu_228_p2 <= (icmp_ln1497_reg_337 or and_ln73_156_fu_201_p2);
    or_ln88_92_fu_233_p2 <= (icmp_ln1497_reg_337 or and_ln73_155_fu_196_p2);
    or_ln88_93_fu_238_p2 <= (or_ln88_92_fu_233_p2 or and_ln73_157_fu_216_p2);
    or_ln88_fu_222_p2 <= (and_ln73_fu_167_p2 or and_ln73_154_fu_186_p2);
    select_ln89_155_fu_262_p3 <= 
        select_ln89_fu_254_p3 when (or_ln88_fu_222_p2(0) = '1') else 
        ap_const_lv2_3;
    select_ln89_156_fu_274_p3 <= 
        zext_ln89_31_fu_270_p1 when (icmp_ln1497_reg_337(0) = '1') else 
        ap_const_lv3_4;
    select_ln89_157_fu_281_p3 <= 
        select_ln89_156_fu_274_p3 when (or_ln88_91_fu_228_p2(0) = '1') else 
        ap_const_lv3_5;
    select_ln89_158_fu_289_p3 <= 
        select_ln89_157_fu_281_p3 when (or_ln88_92_fu_233_p2(0) = '1') else 
        ap_const_lv3_6;
    select_ln89_fu_254_p3 <= 
        zext_ln89_fu_250_p1 when (and_ln73_fu_167_p2(0) = '1') else 
        ap_const_lv2_2;
    tmp_fu_305_p9 <= 
        select_ln89_158_fu_289_p3 when (or_ln88_93_fu_238_p2(0) = '1') else 
        ap_const_lv3_7;

    x_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_block_pp0_stage2)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                x_V_address0 <= ap_const_lv64_3(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                x_V_address0 <= ap_const_lv64_2(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address0 <= ap_const_lv64_A(4 - 1 downto 0);
            else 
                x_V_address0 <= "XXXX";
            end if;
        else 
            x_V_address0 <= "XXXX";
        end if; 
    end process;


    x_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_block_pp0_stage2)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2))) then 
                x_V_address1 <= ap_const_lv64_6(4 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                x_V_address1 <= ap_const_lv64_B(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                x_V_address1 <= ap_const_lv64_5(4 - 1 downto 0);
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


    x_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_11001, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            x_V_ce1 <= ap_const_logic_1;
        else 
            x_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln75_60_fu_191_p2 <= (icmp_ln1497_reg_337 xor ap_const_lv1_1);
    xor_ln75_61_fu_206_p2 <= (icmp_ln1497_8_reg_384 xor ap_const_lv1_1);
    xor_ln75_fu_176_p2 <= (icmp_ln1497_1_reg_347 xor ap_const_lv1_1);
    xor_ln89_fu_244_p2 <= (ap_const_lv1_1 xor and_ln73_153_fu_171_p2);
    zext_ln89_31_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln89_155_fu_262_p3),3));
    zext_ln89_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln89_fu_244_p2),2));
end behav;