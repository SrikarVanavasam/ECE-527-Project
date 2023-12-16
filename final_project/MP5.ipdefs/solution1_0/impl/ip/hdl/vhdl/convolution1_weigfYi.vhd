-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution1_weigfYi_rom is 
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


architecture rtl of convolution1_weigfYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110001101001111101000101011", 
    1 => "10111110000110110101110010000101", 
    2 => "00111101011011110111100111010000", 
    3 => "00111110000011111000010011011100", 
    4 => "10111101110111110010011010111110", 
    5 => "00111110000110100110001111100001", 
    6 => "10111101101011000101101001111100", 
    7 => "10111101100110100110101111001001", 
    8 => "10111100000011100101101111000011", 
    9 => "00111101000011100001111011101010", 
    10 => "10111110001001100100010111010100", 
    11 => "00111100111111100001010010101001", 
    12 => "00111100111111111100110011011111", 
    13 => "00111101001111110001101000110111", 
    14 => "10111101111011011000100111111100", 
    15 => "00111110001011100010001011110110", 
    16 => "00111101001000111001001101001101", 
    17 => "10111101101000001000111001000100", 
    18 => "00111101101100001101100101111110", 
    19 => "10111101101000100110101010100000", 
    20 => "10111110000010101111110001010000", 
    21 => "00111100110100010011110110010101", 
    22 => "10111100100001001101100100111110", 
    23 => "00111110001110011111001100100110", 
    24 => "00111101110010110110110001111010" );

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

entity convolution1_weigfYi is
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

architecture arch of convolution1_weigfYi is
    component convolution1_weigfYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution1_weigfYi_rom_U :  component convolution1_weigfYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


