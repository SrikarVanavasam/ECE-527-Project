-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution1_weigeOg_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 25
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of convolution1_weigeOg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100110110000001000001000111", 
    1 => "10111110001110100100001000011110", 
    2 => "10111110001001111111101111001110", 
    3 => "00111110001110101110101010010111", 
    4 => "00111110000001010011011101110000", 
    5 => "00111110011000110100010001110001", 
    6 => "00111101011010011000110111000000", 
    7 => "00111110010000010001111010110101", 
    8 => "00111100001101010110001110100101", 
    9 => "10111100000001110001100011111001", 
    10 => "10111101000110010111001000001100", 
    11 => "00111101111101010011000000000001", 
    12 => "10111100011111011001010000001010", 
    13 => "10111101100110010010101001011011", 
    14 => "10111101101101011011111000000001", 
    15 => "00111101011101111010010001010111", 
    16 => "00111101101000110011100001101011", 
    17 => "00111110011000100010001011010001", 
    18 => "10111101101010000110011111101101", 
    19 => "10111011110110111110010110000100", 
    20 => "00111110011110010100001011000110", 
    21 => "00111100010010011111110111110000", 
    22 => "10111101100001100101100101111101", 
    23 => "10111101100010001011101101100011", 
    24 => "00111101101000011111011100110011" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity convolution1_weigeOg is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 25;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of convolution1_weigeOg is
    component convolution1_weigeOg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution1_weigeOg_rom_U :  component convolution1_weigeOg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


