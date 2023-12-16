-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fc6_weights_fc6_bNgs_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 100
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of fc6_weights_fc6_bNgs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110001011101101110010110100", 
    1 => "00111110010000011001000110010100", 
    2 => "00111110000011110101110000110011", 
    3 => "00111101101110111111011001110010", 
    4 => "10111101111010000010001110101001", 
    5 => "00111101110010000101100001011101", 
    6 => "00111110000001011000100001000010", 
    7 => "00111101001010001011100111111110", 
    8 => "00111101100011001010001000000010", 
    9 => "00111100101100000101000111010111", 
    10 => "10111101100110100110100101011111", 
    11 => "10111101101101011110111111000100", 
    12 => "00111110001100010111100010001110", 
    13 => "10111101100000010001101000011100", 
    14 => "10111101101100111011000110111001", 
    15 => "00111101011110110110100000101110", 
    16 => "10111101000101001001010101011110", 
    17 => "10111110010110010101001010111110", 
    18 => "00111010111110111111011100000111", 
    19 => "00111110001001001100110111011111", 
    20 => "00111101110101000010011010110111", 
    21 => "00111101111110001110101001111010", 
    22 => "10111101100111110010001001010101", 
    23 => "10111110000110001101100010101100", 
    24 => "00111101101011001101011011110001", 
    25 => "00111101101000111001011110000011", 
    26 => "10111101110011001100111100110100", 
    27 => "10111101011110111010011110010001", 
    28 => "00111100110001100100001100010000", 
    29 => "00111101100110010000001110000111", 
    30 => "00111101110100100111101110101010", 
    31 => "10111100100010110100001010010100", 
    32 => "00111100110101101010100011100100", 
    33 => "00111110011101010010010101011110", 
    34 => "00111101111110001110001111001010", 
    35 => "00111101010101111010100001100000", 
    36 => "10111101100110000010100110100001", 
    37 => "10111110001011100100010001110001", 
    38 => "00111110010000100100010111101101", 
    39 => "10111101100100000110100011000111", 
    40 => "10111110000111010101011110001100", 
    41 => "10111110011000100111111110000101", 
    42 => "00111110011010010111001001100000", 
    43 => "00111101010110110110111010010001", 
    44 => "10111110010001010101110111101011", 
    45 => "10111100111001111000100100100110", 
    46 => "10111110000011111011110010101010", 
    47 => "10111101110101110101101010110111", 
    48 => "00111110001010000110001000111101", 
    49 => "00111100100000111010011010100011", 
    50 => "10111101110110110111011101110101", 
    51 => "10111110001001000110000011101011", 
    52 => "10111100111001011100101111011100", 
    53 => "10111011100100010110010001010110", 
    54 => "00111101001110010000110100001111", 
    55 => "00111110000001000000011011000001", 
    56 => "00111111001110101010111011000100", 
    57 => "00111011000101111101001110011100", 
    58 => "00111011110110111101000101001101", 
    59 => "10111101111001011100010100011000", 
    60 => "00111110000000101110000011111100", 
    61 => "00111101001000101011100110101001", 
    62 => "00111101100011000010001001100000", 
    63 => "10111101100111110000100101101100", 
    64 => "10111110001101011001001110010110", 
    65 => "10111101101001011011101110010000", 
    66 => "10111110001101110010100101011001", 
    67 => "00111110000101111010111100001011", 
    68 => "10111101111011010010101010110110", 
    69 => "10111110100110000111101001101101", 
    70 => "00111100001010000110101110011010", 
    71 => "10111110010100111110010110101011", 
    72 => "10111110001010011111111101011111", 
    73 => "10111101000111101111111111110000", 
    74 => "00111101111001100100111011100000", 
    75 => "00111101100100100111100001110100", 
    76 => "10111101010010111101000011001110", 
    77 => "10111011100010011101100001011011", 
    78 => "00111101000000010001101001011100", 
    79 => "00111110001001010001111101110111", 
    80 => "10111101100111111101110001111111", 
    81 => "00111101101110110110111011000110", 
    82 => "10111100111111100111000111110001", 
    83 => "00111101011000011011001100111001", 
    84 => "00111110000000101011110001010000", 
    85 => "10111101000110011011000011110110", 
    86 => "00111110000000000110100001111000", 
    87 => "00111110011011101000111001001111", 
    88 => "10111101101111101101101001000010", 
    89 => "10111101101010110001011111010110", 
    90 => "10111110001000010011000110100011", 
    91 => "00111101000110100101010111011010", 
    92 => "00111110011011110010011010000001", 
    93 => "10111101110010101100001101000010", 
    94 => "00111110000011010000001010111010", 
    95 => "00111100001011100000100000011011", 
    96 => "10111101101000111111101110011000", 
    97 => "10111101111100000011100101100111", 
    98 => "00111011111111011111001101100000", 
    99 => "10111101101110010000100011000011" );


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

entity fc6_weights_fc6_bNgs is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 100;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of fc6_weights_fc6_bNgs is
    component fc6_weights_fc6_bNgs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    fc6_weights_fc6_bNgs_rom_U :  component fc6_weights_fc6_bNgs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


