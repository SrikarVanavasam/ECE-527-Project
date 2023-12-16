-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fc6_weights_fc6_bMgi_rom is 
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


architecture rtl of fc6_weights_fc6_bMgi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001011101111110001100110", 
    1 => "10111101000011100111101100000000", 
    2 => "10111101100100010111101111011101", 
    3 => "10111101100110011100011011101111", 
    4 => "10111110001010100001111100001110", 
    5 => "10111100110011110001000001110100", 
    6 => "00111110011010111001101101000000", 
    7 => "00111101011000001010000010110111", 
    8 => "00111101110100101100100101000110", 
    9 => "00111110001111010011001100101110", 
    10 => "10111100100011011101101011011111", 
    11 => "10111101011001000011100011010010", 
    12 => "10111110001000101010100001101000", 
    13 => "00111101110101100010101110010110", 
    14 => "00111110110010110000010100100110", 
    15 => "10111101110100100100100011010100", 
    16 => "00111110000101111000000111100100", 
    17 => "00111100100010101001000011111110", 
    18 => "00111100011001010111011011010010", 
    19 => "00111011100000001010101000011111", 
    20 => "00111100111000110110010010010100", 
    21 => "10111110011010000000101101110111", 
    22 => "00111110010001111011101110111111", 
    23 => "10111110000011011101111101001111", 
    24 => "00111001100100100010111111101110", 
    25 => "10111110000001000110000100101100", 
    26 => "10111011110101011001011100110110", 
    27 => "10111101010101110011011001010101", 
    28 => "00111101010101111000011101101110", 
    29 => "10111100000010110101011000010101", 
    30 => "10111110000110101100111100000110", 
    31 => "00111110011000010011011000001100", 
    32 => "00111101100101010010111000110100", 
    33 => "10111101100001101000111001011110", 
    34 => "10111110001111010100010100100010", 
    35 => "10111101000011010010100110111010", 
    36 => "00111110000011011011001101101101", 
    37 => "10111101100101000111110001011010", 
    38 => "10111110010110101101001010101100", 
    39 => "10111101100010111110100101000110", 
    40 => "10111101111011100101010011110110", 
    41 => "00111101000001000001100101111010", 
    42 => "00111100100000101101100010011000", 
    43 => "00111101111111111000100100010010", 
    44 => "00111110001110000110011011111000", 
    45 => "10111101100000111110100011111101", 
    46 => "00111100000100000001001011101000", 
    47 => "10111110000110011011100001010110", 
    48 => "00111101001010100101111100001001", 
    49 => "10111110001101010101100110101001", 
    50 => "10111100000100100011100011010010", 
    51 => "00111101101110011001111100101000", 
    52 => "10111101111011001111010010101001", 
    53 => "00111101001111000011011111010100", 
    54 => "10111110011011010010000000000110", 
    55 => "10111101000011010001010011100001", 
    56 => "10111110000011010101110000110011", 
    57 => "00111101100110111101111010100110", 
    58 => "10111101101100100101000111101001", 
    59 => "00111011101110111101100010011110", 
    60 => "00111011100000110010100101000000", 
    61 => "00111110010001111001100110110011", 
    62 => "00111110001000010010100000000000", 
    63 => "00111101100001111001011001101101", 
    64 => "00111110001001001100010000111111", 
    65 => "00111001000011101100100011011011", 
    66 => "00111101110001111011000110001110", 
    67 => "00111101101011111010011001110000", 
    68 => "10111101001101101010001010010001", 
    69 => "10111101100111111000100111011010", 
    70 => "10111101100101110011011110101110", 
    71 => "10111101010111100011111111010100", 
    72 => "10111110001011010110010011011111", 
    73 => "10111110000000111000110011000010", 
    74 => "00111101001101011101000111100100", 
    75 => "10111110000000101110000011001011", 
    76 => "10111001010111111011000101010110", 
    77 => "00111110000100000100010110011101", 
    78 => "00111101000011111101000001110000", 
    79 => "10111110001100100100011100011011", 
    80 => "00111100010001000110111111111100", 
    81 => "00111101110001101010100000001100", 
    82 => "00111100110001011000101110010000", 
    83 => "00111101010010111000010010001110", 
    84 => "10111110000011101001010101111010", 
    85 => "10111101111100011011110001101011", 
    86 => "00111110001000000101010101010101", 
    87 => "10111100110110100000101010101110", 
    88 => "00111110010110111010101010010100", 
    89 => "00111101101110100101000111001000", 
    90 => "00111101011000000001000001000110", 
    91 => "00111010111011011001111111010110", 
    92 => "00111110000111110111000011001111", 
    93 => "10111100011100010001010110001100", 
    94 => "00111101100000100101111001110010", 
    95 => "10111110010001011100110110000001", 
    96 => "00111101101011010001011011000000", 
    97 => "00111100010010110011010100010010", 
    98 => "00111101001101000110100101000001", 
    99 => "10111101010001101110010111100101" );


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

entity fc6_weights_fc6_bMgi is
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

architecture arch of fc6_weights_fc6_bMgi is
    component fc6_weights_fc6_bMgi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    fc6_weights_fc6_bMgi_rom_U :  component fc6_weights_fc6_bMgi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


