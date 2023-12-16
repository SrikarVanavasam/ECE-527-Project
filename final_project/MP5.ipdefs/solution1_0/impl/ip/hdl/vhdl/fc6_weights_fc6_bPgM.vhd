-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fc6_weights_fc6_bPgM_rom is 
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


architecture rtl of fc6_weights_fc6_bPgM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100011011111000101010010010", 
    1 => "00111101110011101011001010101000", 
    2 => "10111110000101110100110011010000", 
    3 => "00111101111100000010101010000010", 
    4 => "00111100100101000111011100011011", 
    5 => "10111100001101000110111110101001", 
    6 => "10111101001010111001100000000001", 
    7 => "00111101111111011101111100110101", 
    8 => "00111110000010011111000010100000", 
    9 => "10111101000000001011011010100100", 
    10 => "00111110000011111000101010100000", 
    11 => "00111110001001111000100001111101", 
    12 => "10111100111001000001010011001101", 
    13 => "00111110000101111111001100000010", 
    14 => "10111110010001101111110100000000", 
    15 => "00111100111101011011111101011111", 
    16 => "10111101100001110100001010101010", 
    17 => "00111101111111101011010001011010", 
    18 => "00111110010011010100111011011110", 
    19 => "10111101101111111000001000010110", 
    20 => "10111101101010100010000001100001", 
    21 => "10111111011000101000000111101000", 
    22 => "10111110011101111011011111110100", 
    23 => "00111110010100010101011100111000", 
    24 => "00111100110111111111100100000100", 
    25 => "00111101111011100001100111101001", 
    26 => "00111110000010111001100001001010", 
    27 => "10111101101010101111010000101000", 
    28 => "10111101111111011100001000010111", 
    29 => "00111100110001000110010000110011", 
    30 => "00111110001000001000110101000011", 
    31 => "10111110000011011000011011010010", 
    32 => "10111101110110111011011100010000", 
    33 => "00111101100001111000000001010111", 
    34 => "10111001110011111011010100001010", 
    35 => "00111101011001000111111000110100", 
    36 => "00111110000111011010000000111001", 
    37 => "00111011000000000110100101000111", 
    38 => "00111101001101010100101100001110", 
    39 => "10111100100111001000000110011011", 
    40 => "00111110010110101111111110101101", 
    41 => "00111101100001101000100011101110", 
    42 => "00111101111100001001010101110000", 
    43 => "00111101010010100001001011111110", 
    44 => "10111110000000000011111110110101", 
    45 => "00111110000011110010100000100001", 
    46 => "00111010100101000101101111101101", 
    47 => "00111110000000001011111011011110", 
    48 => "00111110010010101101111101010010", 
    49 => "10111101010100000110000010111011", 
    50 => "00111011100011100101010011000010", 
    51 => "00111110001011001001011001011100", 
    52 => "10111110001000000001000100100010", 
    53 => "10111101000100100001010100000000", 
    54 => "00111110011010010001000111010101", 
    55 => "10111110000111010011111100010101", 
    56 => "00111101011110000100111000111000", 
    57 => "10111100000101100101000011000101", 
    58 => "00111101010010000110010010001011", 
    59 => "00111110010101110111011111100011", 
    60 => "10111110001001110010000101110011", 
    61 => "10111100010101001000101000010000", 
    62 => "00111101010010011111011000110000", 
    63 => "10111101011001111101011000000011", 
    64 => "00111101111001101110001011001011", 
    65 => "00111101101001101110110100011010", 
    66 => "10111100110110100100000110010000", 
    67 => "00111101011111011000001010001010", 
    68 => "00111101010100100110001100000001", 
    69 => "00111101010101011010011100101100", 
    70 => "00111101101100011010010101100001", 
    71 => "00111101101100011101010010011000", 
    72 => "00111100101111010110111100101100", 
    73 => "00111110001100100110110010100111", 
    74 => "00111110001000010001100000010001", 
    75 => "00111100011100110111111101111111", 
    76 => "10111101100001011010111101111010", 
    77 => "10111101100110000000001111110101", 
    78 => "10111101111010000011101100011000", 
    79 => "00111110001011101110101011100011", 
    80 => "00111110000100000011111101010100", 
    81 => "00111110000100100110100101011100", 
    82 => "10111101001110011111111010011100", 
    83 => "00111110000110010010010001010110", 
    84 => "00111101110111000001011010000011", 
    85 => "10111101100100000111011000101110", 
    86 => "10111110001000000010011111000111", 
    87 => "10111110001110111101110110100010", 
    88 => "00111110010101010010001011111010", 
    89 => "00111101110000010111011111100110", 
    90 => "00111110010101110000100001001111", 
    91 => "00111101111001000100001001111001", 
    92 => "00111101101010000100011101111110", 
    93 => "00111101111101000010011011011100", 
    94 => "00111110010010010000110011100010", 
    95 => "10111110000010010101011010011000", 
    96 => "00111101101100000101111010111010", 
    97 => "10111110000001100110010010111010", 
    98 => "10111101101101110011001101001001", 
    99 => "00111101100010100010111110110001" );


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

entity fc6_weights_fc6_bPgM is
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

architecture arch of fc6_weights_fc6_bPgM is
    component fc6_weights_fc6_bPgM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    fc6_weights_fc6_bPgM_rom_U :  component fc6_weights_fc6_bPgM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


