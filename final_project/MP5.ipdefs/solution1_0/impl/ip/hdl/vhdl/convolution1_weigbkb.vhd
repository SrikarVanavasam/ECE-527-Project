-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution1_weigbkb_rom is 
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


architecture rtl of convolution1_weigbkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010111111000101111010001", 
    1 => "00111110011101011010010110101010", 
    2 => "00111101001111001100100101101010", 
    3 => "00111110010000011100101111010011", 
    4 => "10111101011100110010110111111000", 
    5 => "10111101111010000001001111001001", 
    6 => "10111101100000110100011101110001", 
    7 => "00111101111011101000111000111100", 
    8 => "10111110000110001101100111100010", 
    9 => "10111100100011000011111110111111", 
    10 => "10111110000001101000010010110110", 
    11 => "10111110100111111010110011100001", 
    12 => "10111110010101110010111111001010", 
    13 => "10111101100011100111100110011001", 
    14 => "00111100111010010110011001000110", 
    15 => "00111101001000000110000000111010", 
    16 => "10111100110101001111100010000000", 
    17 => "00111101110000101000000110110101", 
    18 => "00111100001010110100011100000001", 
    19 => "00111101100111110111000001100100", 
    20 => "00111110001011001001100100010011", 
    21 => "00111101110101100000101010010100", 
    22 => "00111101001010000101010000011111", 
    23 => "00111100011011111110110111101111", 
    24 => "10111011001000110001110111010010" );

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

entity convolution1_weigbkb is
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

architecture arch of convolution1_weigbkb is
    component convolution1_weigbkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution1_weigbkb_rom_U :  component convolution1_weigbkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


