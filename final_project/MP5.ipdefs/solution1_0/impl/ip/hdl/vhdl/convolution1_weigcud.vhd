-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution1_weigcud_rom is 
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


architecture rtl of convolution1_weigcud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100011111011101111000110010", 
    1 => "00111101110010111010101101100101", 
    2 => "00111100001101011010001001111001", 
    3 => "10111101100010101001001101101000", 
    4 => "00111101101000101000101001111111", 
    5 => "00111101001001001101000001111111", 
    6 => "00111110000110011100010000101001", 
    7 => "00111101001100000010000001011001", 
    8 => "00111101110000010001110000101101", 
    9 => "10111011111101010111110101110000", 
    10 => "10111011101001011111101101010010", 
    11 => "10111101111001110001001001000110", 
    12 => "00111101111101111000100101111101", 
    13 => "10111101101001010001101111001011", 
    14 => "00111101001011010011111010110101", 
    15 => "10111100001011111110100111101000", 
    16 => "10111101010111100101101011110010", 
    17 => "00111101101100010111111011001100", 
    18 => "00111101111110100011111010000001", 
    19 => "10111101110011010111010101011101", 
    20 => "10111110001100100111011001110100", 
    21 => "10111101010100000000101010001111", 
    22 => "10111101100011011000011000101001", 
    23 => "00111110000100001111010111110101", 
    24 => "00111101110100011101111111000001" );

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

entity convolution1_weigcud is
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

architecture arch of convolution1_weigcud is
    component convolution1_weigcud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution1_weigcud_rom_U :  component convolution1_weigcud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


