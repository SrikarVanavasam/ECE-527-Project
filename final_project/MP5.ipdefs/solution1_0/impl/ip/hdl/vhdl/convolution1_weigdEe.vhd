-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution1_weigdEe_rom is 
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


architecture rtl of convolution1_weigdEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001100110001111101100000", 
    1 => "00111110000010011101001101101011", 
    2 => "10111110010000000110110110111110", 
    3 => "00111101001111010010100010011010", 
    4 => "10111110001010011001111010111100", 
    5 => "00111100001000000011100010111010", 
    6 => "10111100101011100110011011010110", 
    7 => "10111101010001100100101000000100", 
    8 => "00111101100001101010111101101010", 
    9 => "10111110001010011011000010111111", 
    10 => "10111101101111101010001111111110", 
    11 => "00111101111110111010100110100011", 
    12 => "00111110000010100101001110111111", 
    13 => "00111101000111111101010001011001", 
    14 => "10111101000011100001000110011011", 
    15 => "00111100000001010110111101000000", 
    16 => "00111101110000000011011100011100", 
    17 => "00111101001011110110000111101011", 
    18 => "00111101110011001011110011101010", 
    19 => "10111101110111110000110001110100", 
    20 => "10111011110111011011011111010111", 
    21 => "10111110000000100001100101101101", 
    22 => "00111101100101110110100000000101", 
    23 => "00111110001101000001000111000100", 
    24 => "00111110001000001000111101100100" );

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

entity convolution1_weigdEe is
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

architecture arch of convolution1_weigdEe is
    component convolution1_weigdEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution1_weigdEe_rom_U :  component convolution1_weigdEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


