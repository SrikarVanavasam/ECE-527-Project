-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity store_output is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_output_r_AWVALID : OUT STD_LOGIC;
    m_axi_output_r_AWREADY : IN STD_LOGIC;
    m_axi_output_r_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_output_r_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_output_r_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_WVALID : OUT STD_LOGIC;
    m_axi_output_r_WREADY : IN STD_LOGIC;
    m_axi_output_r_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_WLAST : OUT STD_LOGIC;
    m_axi_output_r_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_ARVALID : OUT STD_LOGIC;
    m_axi_output_r_ARREADY : IN STD_LOGIC;
    m_axi_output_r_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_output_r_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_output_r_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_output_r_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_RVALID : IN STD_LOGIC;
    m_axi_output_r_RREADY : OUT STD_LOGIC;
    m_axi_output_r_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_output_r_RLAST : IN STD_LOGIC;
    m_axi_output_r_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_BVALID : IN STD_LOGIC;
    m_axi_output_r_BREADY : OUT STD_LOGIC;
    m_axi_output_r_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_output_r_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_output_r_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    output_offset_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    output_offset_empty_n : IN STD_LOGIC;
    output_offset_read : OUT STD_LOGIC;
    output_fc6_buffer_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    output_fc6_buffer_0_ce0 : OUT STD_LOGIC;
    output_fc6_buffer_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_fc6_buffer_1_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    output_fc6_buffer_1_ce0 : OUT STD_LOGIC;
    output_fc6_buffer_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of store_output is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal output_r_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal output_r_blk_n_W : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln236_reg_215 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln236_reg_215_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal output_r_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal output_offset_blk_n : STD_LOGIC;
    signal phi_ln236_i_reg_134 : STD_LOGIC_VECTOR (3 downto 0);
    signal output_offset1_i_reg_204 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal icmp_ln236_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln236_fu_171_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal trunc_ln236_fu_177_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln236_reg_224 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln236_fu_197_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln236_reg_239 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal zext_ln236_fu_191_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln235_fu_155_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal lshr_ln_i_fu_181_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((m_axi_output_r_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((m_axi_output_r_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((m_axi_output_r_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    phi_ln236_i_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln236_fu_165_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                phi_ln236_i_reg_134 <= add_ln236_fu_171_p2;
            elsif (((m_axi_output_r_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                phi_ln236_i_reg_134 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln236_reg_215 <= icmp_ln236_fu_165_p2;
                icmp_ln236_reg_215_pp0_iter1_reg <= icmp_ln236_reg_215;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((output_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                output_offset1_i_reg_204 <= output_offset_dout(31 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln236_reg_215 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                select_ln236_reg_239 <= select_ln236_fu_197_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln236_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                trunc_ln236_reg_224 <= trunc_ln236_fu_177_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, m_axi_output_r_AWREADY, m_axi_output_r_BVALID, output_offset_empty_n, ap_CS_fsm_state2, ap_enable_reg_pp0_iter2, ap_CS_fsm_state10, icmp_ln236_fu_165_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((output_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((m_axi_output_r_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln236_fu_165_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln236_fu_165_p2 = ap_const_lv1_1)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((m_axi_output_r_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln236_fu_171_p2 <= std_logic_vector(unsigned(phi_ln236_i_reg_134) + unsigned(ap_const_lv4_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(7);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, output_offset_empty_n)
    begin
                ap_block_state1 <= ((output_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_io_assign_proc : process(m_axi_output_r_WREADY, icmp_ln236_reg_215_pp0_iter1_reg)
    begin
                ap_block_state5_io <= ((icmp_ln236_reg_215_pp0_iter1_reg = ap_const_lv1_0) and (m_axi_output_r_WREADY = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln236_fu_165_p2)
    begin
        if ((icmp_ln236_fu_165_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, m_axi_output_r_BVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_output_r_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(m_axi_output_r_BVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_output_r_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln236_fu_165_p2 <= "1" when (phi_ln236_i_reg_134 = ap_const_lv4_A) else "0";
    lshr_ln_i_fu_181_p4 <= phi_ln236_i_reg_134(3 downto 1);
    m_axi_output_r_ARADDR <= ap_const_lv32_0;
    m_axi_output_r_ARBURST <= ap_const_lv2_0;
    m_axi_output_r_ARCACHE <= ap_const_lv4_0;
    m_axi_output_r_ARID <= ap_const_lv1_0;
    m_axi_output_r_ARLEN <= ap_const_lv32_0;
    m_axi_output_r_ARLOCK <= ap_const_lv2_0;
    m_axi_output_r_ARPROT <= ap_const_lv3_0;
    m_axi_output_r_ARQOS <= ap_const_lv4_0;
    m_axi_output_r_ARREGION <= ap_const_lv4_0;
    m_axi_output_r_ARSIZE <= ap_const_lv3_0;
    m_axi_output_r_ARUSER <= ap_const_lv1_0;
    m_axi_output_r_ARVALID <= ap_const_logic_0;
    m_axi_output_r_AWADDR <= zext_ln235_fu_155_p1(32 - 1 downto 0);
    m_axi_output_r_AWBURST <= ap_const_lv2_0;
    m_axi_output_r_AWCACHE <= ap_const_lv4_0;
    m_axi_output_r_AWID <= ap_const_lv1_0;
    m_axi_output_r_AWLEN <= ap_const_lv32_A;
    m_axi_output_r_AWLOCK <= ap_const_lv2_0;
    m_axi_output_r_AWPROT <= ap_const_lv3_0;
    m_axi_output_r_AWQOS <= ap_const_lv4_0;
    m_axi_output_r_AWREGION <= ap_const_lv4_0;
    m_axi_output_r_AWSIZE <= ap_const_lv3_0;
    m_axi_output_r_AWUSER <= ap_const_lv1_0;

    m_axi_output_r_AWVALID_assign_proc : process(m_axi_output_r_AWREADY, ap_CS_fsm_state2)
    begin
        if (((m_axi_output_r_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_output_r_AWVALID <= ap_const_logic_1;
        else 
            m_axi_output_r_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_output_r_BREADY_assign_proc : process(m_axi_output_r_BVALID, ap_CS_fsm_state10)
    begin
        if (((m_axi_output_r_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            m_axi_output_r_BREADY <= ap_const_logic_1;
        else 
            m_axi_output_r_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_output_r_RREADY <= ap_const_logic_0;
    m_axi_output_r_WDATA <= select_ln236_reg_239;
    m_axi_output_r_WID <= ap_const_lv1_0;
    m_axi_output_r_WLAST <= ap_const_logic_0;
    m_axi_output_r_WSTRB <= ap_const_lv4_F;
    m_axi_output_r_WUSER <= ap_const_lv1_0;

    m_axi_output_r_WVALID_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln236_reg_215_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln236_reg_215_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            m_axi_output_r_WVALID <= ap_const_logic_1;
        else 
            m_axi_output_r_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    output_fc6_buffer_0_address0 <= zext_ln236_fu_191_p1(3 - 1 downto 0);

    output_fc6_buffer_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            output_fc6_buffer_0_ce0 <= ap_const_logic_1;
        else 
            output_fc6_buffer_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_fc6_buffer_1_address0 <= zext_ln236_fu_191_p1(3 - 1 downto 0);

    output_fc6_buffer_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            output_fc6_buffer_1_ce0 <= ap_const_logic_1;
        else 
            output_fc6_buffer_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    output_offset_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, output_offset_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            output_offset_blk_n <= output_offset_empty_n;
        else 
            output_offset_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    output_offset_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, output_offset_empty_n)
    begin
        if ((not(((output_offset_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            output_offset_read <= ap_const_logic_1;
        else 
            output_offset_read <= ap_const_logic_0;
        end if; 
    end process;


    output_r_blk_n_AW_assign_proc : process(m_axi_output_r_AWREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            output_r_blk_n_AW <= m_axi_output_r_AWREADY;
        else 
            output_r_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    output_r_blk_n_B_assign_proc : process(m_axi_output_r_BVALID, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            output_r_blk_n_B <= m_axi_output_r_BVALID;
        else 
            output_r_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;


    output_r_blk_n_W_assign_proc : process(m_axi_output_r_WREADY, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, icmp_ln236_reg_215_pp0_iter1_reg)
    begin
        if (((icmp_ln236_reg_215_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            output_r_blk_n_W <= m_axi_output_r_WREADY;
        else 
            output_r_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    select_ln236_fu_197_p3 <= 
        output_fc6_buffer_1_q0 when (trunc_ln236_reg_224(0) = '1') else 
        output_fc6_buffer_0_q0;
    trunc_ln236_fu_177_p1 <= phi_ln236_i_reg_134(1 - 1 downto 0);
    zext_ln235_fu_155_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(output_offset1_i_reg_204),64));
    zext_ln236_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_i_fu_181_p4),64));
end behav;
