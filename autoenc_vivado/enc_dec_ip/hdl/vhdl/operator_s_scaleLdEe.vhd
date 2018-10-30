-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity operator_s_scaleLdEe_rom is 
    generic(
             DWIDTH     : integer := 17; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of operator_s_scaleLdEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11100011111000011", 1 => "11100010001111110", 
    2 => "11100000100111111", 3 => "11011111000000111", 
    4 => "11011101011010100", 5 => "11011011110100111", 
    6 => "11011010010000000", 7 => "11011000101011111", 
    8 => "11010111001000100", 9 => "11010101100101110", 
    10 => "11010100000011110", 11 => "11010010100010100", 
    12 => "11010001000001111", 13 => "11001111100001111", 
    14 => "11001110000010110", 15 => "11001100100100001", 
    16 => "11001011000110010", 17 => "11001001101001001", 
    18 => "11001000001100101", 19 => "11000110110000110", 
    20 => "11000101010101100", 21 => "11000011111011000", 
    22 => "11000010100001000", 23 => "11000001000111110", 
    24 => "10111111101111001", 25 => "10111110010111010", 
    26 => "10111100111111111", 27 => "10111011101001001", 
    28 => "10111010010011000", 29 => "10111000111101100", 
    30 => "10110111101000101", 31 => "10110110010100011", 
    32 => "10110101000000110", 33 => "10110011101101101", 
    34 => "10110010011011010", 35 => "10110001001001011", 
    36 => "10101111111000000", 37 => "10101110100111011", 
    38 => "10101101010111010", 39 => "10101100000111101", 
    40 => "10101010111000110", 41 => "10101001101010010", 
    42 => "10101000011100011", 43 => "10100111001111001", 
    44 => "10100110000010011", 45 => "10100100110110010", 
    46 => "10100011101010101", 47 => "10100010011111100", 
    48 => "10100001010100111", 49 => "10100000001010111", 
    50 => "10011111000001011", 51 => "10011101111000011", 
    52 => "10011100110000000", 53 => "10011011101000000", 
    54 => "10011010100000101", 55 => "10011001011001110", 
    56 => "10011000010011011", 57 => "10010111001101100", 
    58 => "10010110001000001", 59 => "10010101000011001", 
    60 => "10010011111110110", 61 => "10010010111010111", 
    62 => "10010001110111100", 63 => "10010000110100100", 
    64 => "10001111110010001", 65 => "10001110110000001", 
    66 => "10001101101110101", 67 => "10001100101101101", 
    68 => "10001011101101000", 69 => "10001010101100111", 
    70 => "10001001101101010", 71 => "10001000101110000", 
    72 => "10000111101111011", 73 => "10000110110001000", 
    74 => "10000101110011010", 75 => "10000100110101110", 
    76 => "10000011111000111", 77 => "10000010111100011", 
    78 => "10000010000000010", 79 => "10000001000100101", 
    80 => "10000000001001011", 81 => "01111111001110100", 
    82 => "01111110010100001", 83 => "01111101011010010", 
    84 => "01111100100000101", 85 => "01111011100111100", 
    86 => "01111010101110111", 87 => "01111001110110100", 
    88 => "01111000111110101", 89 => "01111000000111001", 
    90 => "01110111010000000", 91 => "01110110011001010", 
    92 => "01110101100010111", 93 => "01110100101101000", 
    94 => "01110011110111011", 95 => "01110011000010010", 
    96 => "01110010001101100", 97 => "01110001011001001", 
    98 => "01110000100101000", 99 => "01101111110001011", 
    100 => "01101110111110001", 101 => "01101110001011001", 
    102 => "01101101011000101", 103 => "01101100100110011", 
    104 => "01101011110100101", 105 => "01101011000011001", 
    106 => "01101010010010000", 107 => "01101001100001010", 
    108 => "01101000110000110", 109 => "01101000000000110", 
    110 => "01100111010001000", 111 => "01100110100001101", 
    112 => "01100101110010101", 113 => "01100101000011111", 
    114 => "01100100010101100", 115 => "01100011100111100", 
    116 => "01100010111001110", 117 => "01100010001100011", 
    118 => "01100001011111010", 119 => "01100000110010101", 
    120 => "01100000000110001", 121 => "01011111011010000", 
    122 => "01011110101110010", 123 => "01011110000010111", 
    124 => "01011101010111101", 125 => "01011100101100111", 
    126 => "01011100000010010", 127 => "01011011011000000", 
    128 => "01011010101110001", 129 => "01011010000100100", 
    130 => "01011001011011001", 131 => "01011000110010001", 
    132 => "01011000001001011", 133 => "01010111100001000", 
    134 => "01010110111000110", 135 => "01010110010000111", 
    136 => "01010101101001011", 137 => "01010101000010000", 
    138 => "01010100011011000", 139 => "01010011110100010", 
    140 => "01010011001101111", 141 => "01010010100111101", 
    142 => "01010010000001110", 143 => "01010001011100001", 
    144 => "01010000110110110", 145 => "01010000010001101", 
    146 => "01001111101100110", 147 => "01001111001000010", 
    148 => "01001110100011111", 149 => "01001101111111111", 
    150 => "01001101011100000", 151 => "01001100111000100", 
    152 => "01001100010101010", 153 => "01001011110010010", 
    154 => "01001011001111100", 155 => "01001010101100111", 
    156 => "01001010001010101", 157 => "01001001101000101", 
    158 => "01001001000110111", 159 => "01001000100101010", 
    160 => "01001000000100000", 161 => "01000111100010111", 
    162 => "01000111000010001", 163 => "01000110100001100", 
    164 => "01000110000001001", 165 => "01000101100001000", 
    166 => "01000101000001001", 167 => "01000100100001011", 
    168 => "01000100000010000", 169 => "01000011100010110", 
    170 => "01000011000011110", 171 => "01000010100101000", 
    172 => "01000010000110100", 173 => "01000001101000001", 
    174 => "01000001001010000", 175 => "01000000101100001", 
    176 => "01000000001110011", 177 => "00111111110001000", 
    178 => "00111111010011110", 179 => "00111110110110101", 
    180 => "00111110011001110", 181 => "00111101111101001", 
    182 => "00111101100000110", 183 => "00111101000100100", 
    184 => "00111100101000100", 185 => "00111100001100101", 
    186 => "00111011110001000", 187 => "00111011010101101", 
    188 => "00111010111010011", 189 => "00111010011111011", 
    190 => "00111010000100100", 191 => "00111001101001111", 
    192 => "00111001001111011", 193 => "00111000110101001", 
    194 => "00111000011011001", 195 => "00111000000001001", 
    196 => "00110111100111100", 197 => "00110111001110000", 
    198 => "00110110110100101", 199 => "00110110011011100", 
    200 => "00110110000010100", 201 => "00110101101001110", 
    202 => "00110101010001001", 203 => "00110100111000101", 
    204 => "00110100100000011", 205 => "00110100001000010", 
    206 => "00110011110000011", 207 => "00110011011000101", 
    208 => "00110011000001000", 209 => "00110010101001101", 
    210 => "00110010010010011", 211 => "00110001111011010", 
    212 => "00110001100100011", 213 => "00110001001101101", 
    214 => "00110000110111000", 215 => "00110000100000101", 
    216 => "00110000001010011", 217 => "00101111110100010", 
    218 => "00101111011110011", 219 => "00101111001000100", 
    220 => "00101110110010111", 221 => "00101110011101100", 
    222 => "00101110001000001", 223 => "00101101110011000", 
    224 => "00101101011110000", 225 => "00101101001001001", 
    226 => "00101100110100011", 227 => "00101100011111110", 
    228 => "00101100001011011", 229 => "00101011110111001", 
    230 => "00101011100011000", 231 => "00101011001111000", 
    232 => "00101010111011001", 233 => "00101010100111100", 
    234 => "00101010010011111", 235 => "00101010000000100", 
    236 => "00101001101101010", 237 => "00101001011010001", 
    238 => "00101001000111001", 239 => "00101000110100010", 
    240 => "00101000100001100", 241 => "00101000001110111", 
    242 => "00100111111100100", 243 => "00100111101010001", 
    244 => "00100111010111111", 245 => "00100111000101111", 
    246 => "00100110110011111", 247 => "00100110100010001", 
    248 => "00100110010000011", 249 => "00100101111110111", 
    250 => "00100101101101100", 251 => "00100101011100001", 
    252 => "00100101001011000", 253 => "00100100111001111", 
    254 => "00100100101001000", 255 => "00100100011000001" );


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

entity operator_s_scaleLdEe is
    generic (
        DataWidth : INTEGER := 17;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of operator_s_scaleLdEe is
    component operator_s_scaleLdEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    operator_s_scaleLdEe_rom_U :  component operator_s_scaleLdEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


