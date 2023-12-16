-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convolution3_weigocq_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 200
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of convolution3_weigocq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110101011010101010110000", 
    1 => "00111101101000011110100100000000", 
    2 => "10111100010001011111010001010110", 
    3 => "10111110000110001101111100101010", 
    4 => "10111101010001000010100110111000", 
    5 => "00111100010110101111100010011111", 
    6 => "10111101000111001100011000011111", 
    7 => "00111100001101001110000111011111", 
    8 => "10111110000000100000100011010100", 
    9 => "00111100010001011110000001010100", 
    10 => "10111110000011110001101000111000", 
    11 => "00111011100010010011010101011110", 
    12 => "10111101000100111010100101110011", 
    13 => "10111101110010000001110011011001", 
    14 => "10111110000100101101001111100100", 
    15 => "10111110000011111010100011100010", 
    16 => "10111101011111001000110111001101", 
    17 => "10111110000100001111110111010011", 
    18 => "10111110001100011011111000001010", 
    19 => "10111110001101010110001010101110", 
    20 => "10111101000111100100000000111010", 
    21 => "10111101110110100011010011010011", 
    22 => "10111110001011010001010110110110", 
    23 => "00111110000110000101010110011010", 
    24 => "10111101101101001111001111011100", 
    25 => "10111100101000000001111010010100", 
    26 => "10111101000111100011011100000101", 
    27 => "00111011011100001000000010110001", 
    28 => "10111011011111010001110110100010", 
    29 => "10111101110100111110100101111001", 
    30 => "10111101111011111011001010001101", 
    31 => "10111110000001000101100111010110", 
    32 => "10111101001101010111100000111111", 
    33 => "10111011110111110101010111111100", 
    34 => "10111100001010000010010000010110", 
    35 => "10111101110111111100111101010110", 
    36 => "10111101110101100100011010101100", 
    37 => "10111110000010010111110100011011", 
    38 => "10111100100110001001110111101100", 
    39 => "10111110001101111110101010110100", 
    40 => "10111101110011011111101111110011", 
    41 => "10111101100101100100101010001001", 
    42 => "10111101000111000100000011010001", 
    43 => "10111110001000010000010111011010", 
    44 => "10111101010111110101110001001001", 
    45 => "10111101100010011000101100110011", 
    46 => "10111100011011101011111100011011", 
    47 => "10111110000110001111100100000011", 
    48 => "00111100100110110111001001101101", 
    49 => "10111101110001011001101010100000", 
    50 => "10111010010101110100100100101000", 
    51 => "00111101001111100101110111110001", 
    52 => "10111101100100111110011110010111", 
    53 => "10111101000000111011101110000110", 
    54 => "10111100111001110001101010110111", 
    55 => "10111110001101010010001001110100", 
    56 => "10111100111101110110110011011110", 
    57 => "10111011001001111011110111001010", 
    58 => "10111110000101000010001011100000", 
    59 => "10111101101110111110010110000101", 
    60 => "10111110001110101001110001001011", 
    61 => "00111011110101101110001010010000", 
    62 => "10111101000100101011000010111111", 
    63 => "10111110000001001000011010010001", 
    64 => "10111110010010101101100001010111", 
    65 => "10111110100111111001110000001111", 
    66 => "10111101110011001010101010010111", 
    67 => "00111101100110010101101100011110", 
    68 => "10111101101001001110110110111000", 
    69 => "10111110011010011010001000101011", 
    70 => "10111110001011010010000010110111", 
    71 => "10111101100010110101110011110110", 
    72 => "00111101001010010010110011110101", 
    73 => "00111100000110101110110101110111", 
    74 => "10111101011111101000011111001000", 
    75 => "10111101010011011111100010111001", 
    76 => "10111110000100010000101101101001", 
    77 => "00111101011010111110011110011101", 
    78 => "10111011101111110110110101101001", 
    79 => "10111011000001101100111111101000", 
    80 => "10111010100000000000100011111010", 
    81 => "00111100010101001010000000000000", 
    82 => "10111101010011110011100111100111", 
    83 => "10111100110110100000011101111110", 
    84 => "00111100101011001111101100010000", 
    85 => "10111101111011100011110101101100", 
    86 => "10111100001000010100100000001111", 
    87 => "00111100110001101101111100110010", 
    88 => "10111110000100101110001110001000", 
    89 => "10111110000001001011000101010001", 
    90 => "10111101001100010010100111000001", 
    91 => "10111101100110000100101001000011", 
    92 => "00111101000011111001101000100111", 
    93 => "10111100110110010111001110101111", 
    94 => "00111100101100100111101110010011", 
    95 => "10111100011010111100110001110111", 
    96 => "10111100000100001110000010101110", 
    97 => "10111101010001111011000010000110", 
    98 => "10111011011101010101110110010000", 
    99 => "00111100101011011010110010101100", 
    100 => "10111100100000111101110110100000", 
    101 => "00111101000101000011100100110000", 
    102 => "00111101101111011001100100011001", 
    103 => "00111101100010001000101100111110", 
    104 => "10111100111001011010110010101000", 
    105 => "10111101010001111001010100110000", 
    106 => "10111100100110001000101010100110", 
    107 => "00111101010011010111101101101110", 
    108 => "10111101010000110101011010010010", 
    109 => "10111101010011010010111101001011", 
    110 => "10111101111000000110011110100110", 
    111 => "00111100101000100001111101011010", 
    112 => "00111101010000001000001111101100", 
    113 => "10111101110100000011101110101111", 
    114 => "10111101011001101010000011111100", 
    115 => "10111100101110011111000010000010", 
    116 => "10111101101000110101100111111111", 
    117 => "00111101011100001101100010101000", 
    118 => "10111101000110000100011000011000", 
    119 => "00111101100000000010111111100111", 
    120 => "00111101100011001100110001101001", 
    121 => "00111101000101100110100110011110", 
    122 => "00111101100011011111110111000001", 
    123 => "00111100111011101100010011110101", 
    124 => "00111101111110101001100011110100", 
    125 => "10111100011110010111000101111011", 
    126 => "10111101001000010110000011010110", 
    127 => "10111110001011000000001101011011", 
    128 => "00111101010010111101111110010111", 
    129 => "10111101100011011110010000111100", 
    130 => "00111100110100111010100001001110", 
    131 => "10111101001010110000010001110011", 
    132 => "10111101100110101101001100010110", 
    133 => "10111100100000110010011000010000", 
    134 => "00111101001001100111101101001100", 
    135 => "10111101011111010101000000100101", 
    136 => "10111110000011100101110101010000", 
    137 => "10111100101100110101011100111011", 
    138 => "00111101100110110000111010100010", 
    139 => "10111101110001011111000100010000", 
    140 => "10111101111011100111011011011001", 
    141 => "10111110000101110111111010100001", 
    142 => "10111101010111101001000011100010", 
    143 => "00111101111010011010011010110101", 
    144 => "00111100100011010101100011011110", 
    145 => "10111101010001100110000101100011", 
    146 => "10111101001111100101100110101101", 
    147 => "10111100101011011011000100011110", 
    148 => "00111101010001100101100011000111", 
    149 => "00111100001100111110101011101001", 
    150 => "10111101100101001000111100010011", 
    151 => "00111011101001011001111110100010", 
    152 => "00111011111010011111110011001001", 
    153 => "10111011011110000011101101100110", 
    154 => "00111101100101100110100110100000", 
    155 => "10111101101011001001100111010100", 
    156 => "10111101100111110101000010101010", 
    157 => "10111011000111100110011111100000", 
    158 => "00111101100101111101011101010011", 
    159 => "00111001110110110011000110111111", 
    160 => "10111100000010010000000011111011", 
    161 => "10111101001110101100110001111101", 
    162 => "00111101111000000001000010101001", 
    163 => "00111101101101101010111011001011", 
    164 => "10111101000001101100010010111011", 
    165 => "10111101000100001100001010101110", 
    166 => "00111101001110010011111111101101", 
    167 => "00111101010001000001101100001101", 
    168 => "10111101011000000000110110011100", 
    169 => "10111100111000000011101111110101", 
    170 => "00111100000011110101011100010110", 
    171 => "00111100010000001001111000101011", 
    172 => "00111101100100100100001101100000", 
    173 => "00111011111010001100010101100110", 
    174 => "10111011110101010010101100101011", 
    175 => "00111101000001000110101111001000", 
    176 => "00111101010000001010000101110110", 
    177 => "00111100110100000100100000001100", 
    178 => "00111011000001001011000101010101", 
    179 => "10111100011001001001110111100100", 
    180 => "00111100011101000101011101001011", 
    181 => "00111100101111101110111000110010", 
    182 => "00111100111101101110100100110000", 
    183 => "00111100100111001101010000100111", 
    184 => "00111101110101000100010001110100", 
    185 => "10111100101111010101000000101101", 
    186 => "00111110000010111010100000010111", 
    187 => "00111100100100000100011110110001", 
    188 => "10111101111111010001110001010111", 
    189 => "10111101011110010101101111000001", 
    190 => "10111101010111100100110001011100", 
    191 => "00111110001010000101101101110001", 
    192 => "10111101101010100101000010100010", 
    193 => "00111101010111010010011111001001", 
    194 => "10111101010100001100100001111101", 
    195 => "00111101010011110110001101001101", 
    196 => "00111100001101111010010110110100", 
    197 => "00111101011011111000001100001000", 
    198 => "00111110000000110101010011110010", 
    199 => "00111101010010010010101011001111" );


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

entity convolution3_weigocq is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 200;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of convolution3_weigocq is
    component convolution3_weigocq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convolution3_weigocq_rom_U :  component convolution3_weigocq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

