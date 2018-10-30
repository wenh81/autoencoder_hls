-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity softmax_invert_tacud_rom is 
    generic(
             DWIDTH     : integer := 15; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 1024
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          addr3      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of softmax_invert_tacud_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr3_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 => "000000000000000", 1 => "100000000000000", 2 => "010000000000000", 
    3 => "001010101010101", 4 => "001000000000000", 5 => "000110011001100", 
    6 => "000101010101010", 7 => "000100100100100", 8 => "000100000000000", 
    9 => "000011100011100", 10 => "000011001100110", 11 => "000010111010001", 
    12 => "000010101010101", 13 => "000010011101100", 14 => "000010010010010", 
    15 => "000010001000100", 16 => "000010000000000", 17 => "000001111000011", 
    18 => "000001110001110", 19 => "000001101011110", 20 => "000001100110011", 
    21 => "000001100001100", 22 => "000001011101000", 23 => "000001011001000", 
    24 => "000001010101010", 25 => "000001010001111", 26 => "000001001110110", 
    27 => "000001001011110", 28 => "000001001001001", 29 => "000001000110100", 
    30 => "000001000100010", 31 => "000001000010000", 32 => "000001000000000", 
    33 => "000000111110000", 34 => "000000111100001", 35 => "000000111010100", 
    36 => "000000111000111", 37 => "000000110111010", 38 => "000000110101111", 
    39 => "000000110100100", 40 => "000000110011001", 41 => "000000110001111", 
    42 => "000000110000110", 43 => "000000101111101", 44 => "000000101110100", 
    45 => "000000101101100", 46 => "000000101100100", 47 => "000000101011100", 
    48 => "000000101010101", 49 => "000000101001110", 50 => "000000101000111", 
    51 => "000000101000001", 52 => "000000100111011", 53 => "000000100110101", 
    54 => "000000100101111", 55 => "000000100101001", 56 => "000000100100100", 
    57 => "000000100011111", 58 => "000000100011010", 59 => "000000100010101", 
    60 => "000000100010001", 61 => "000000100001100", 62 => "000000100001000", 
    63 => "000000100000100", 64 => "000000100000000", 65 => "000000011111100", 
    66 => "000000011111000", 67 => "000000011110100", 68 => "000000011110000", 
    69 => "000000011101101", 70 => "000000011101010", 71 => "000000011100110", 
    72 => "000000011100011", 73 => "000000011100000", 74 => "000000011011101", 
    75 => "000000011011010", 76 => "000000011010111", 77 => "000000011010100", 
    78 => "000000011010010", 79 => "000000011001111", 80 => "000000011001100", 
    81 => "000000011001010", 82 => "000000011000111", 83 => "000000011000101", 
    84 => "000000011000011", 85 => "000000011000000", 86 => "000000010111110", 
    87 => "000000010111100", 88 => "000000010111010", 89 => "000000010111000", 
    90 => "000000010110110", 91 => "000000010110100", 92 => "000000010110010", 
    93 => "000000010110000", 94 => "000000010101110", 95 => "000000010101100", 
    96 => "000000010101010", 97 => "000000010101000", 98 => "000000010100111", 
    99 => "000000010100101", 100 => "000000010100011", 101 => "000000010100010", 
    102 => "000000010100000", 103 => "000000010011111", 104 => "000000010011101", 
    105 => "000000010011100", 106 => "000000010011010", 107 => "000000010011001", 
    108 => "000000010010111", 109 => "000000010010110", 110 => "000000010010100", 
    111 => "000000010010011", 112 => "000000010010010", 113 => "000000010010000", 
    114 => "000000010001111", 115 => "000000010001110", 116 => "000000010001101", 
    117 => "000000010001100", 118 => "000000010001010", 119 => "000000010001001", 
    120 => "000000010001000", 121 => "000000010000111", 122 => "000000010000110", 
    123 => "000000010000101", 124 => "000000010000100", 125 => "000000010000011", 
    126 => "000000010000010", 127 => "000000010000001", 128 => "000000010000000", 
    129 => "000000001111111", 130 => "000000001111110", 131 => "000000001111101", 
    132 => "000000001111100", 133 => "000000001111011", 134 => "000000001111010", 
    135 => "000000001111001", 136 => "000000001111000", 137 => "000000001110111", 
    138 => "000000001110110", 139 to 140=> "000000001110101", 141 => "000000001110100", 
    142 => "000000001110011", 143 => "000000001110010", 144 => "000000001110001", 
    145 to 146=> "000000001110000", 147 => "000000001101111", 148 => "000000001101110", 
    149 to 150=> "000000001101101", 151 => "000000001101100", 152 to 153=> "000000001101011", 
    154 => "000000001101010", 155 to 156=> "000000001101001", 157 => "000000001101000", 
    158 to 159=> "000000001100111", 160 => "000000001100110", 161 to 162=> "000000001100101", 
    163 => "000000001100100", 164 to 165=> "000000001100011", 166 to 167=> "000000001100010", 
    168 => "000000001100001", 169 to 170=> "000000001100000", 171 to 172=> "000000001011111", 
    173 to 174=> "000000001011110", 175 to 176=> "000000001011101", 177 to 178=> "000000001011100", 
    179 to 180=> "000000001011011", 181 to 182=> "000000001011010", 183 to 184=> "000000001011001", 
    185 to 186=> "000000001011000", 187 to 188=> "000000001010111", 189 to 190=> "000000001010110", 
    191 to 192=> "000000001010101", 193 to 195=> "000000001010100", 196 to 197=> "000000001010011", 
    198 to 199=> "000000001010010", 200 to 202=> "000000001010001", 203 to 204=> "000000001010000", 
    205 to 207=> "000000001001111", 208 to 210=> "000000001001110", 211 to 212=> "000000001001101", 
    213 to 215=> "000000001001100", 216 to 218=> "000000001001011", 219 to 221=> "000000001001010", 
    222 to 224=> "000000001001001", 225 to 227=> "000000001001000", 228 to 230=> "000000001000111", 
    231 to 234=> "000000001000110", 235 to 237=> "000000001000101", 238 to 240=> "000000001000100", 
    241 to 244=> "000000001000011", 245 to 248=> "000000001000010", 249 to 252=> "000000001000001", 
    253 to 256=> "000000001000000", 257 to 260=> "000000000111111", 261 to 264=> "000000000111110", 
    265 to 268=> "000000000111101", 269 to 273=> "000000000111100", 274 to 277=> "000000000111011", 
    278 to 282=> "000000000111010", 283 to 287=> "000000000111001", 288 to 292=> "000000000111000", 
    293 to 297=> "000000000110111", 298 to 303=> "000000000110110", 304 to 309=> "000000000110101", 
    310 to 315=> "000000000110100", 316 to 321=> "000000000110011", 322 to 327=> "000000000110010", 
    328 to 334=> "000000000110001", 335 to 341=> "000000000110000", 342 to 348=> "000000000101111", 
    349 to 356=> "000000000101110", 357 to 364=> "000000000101101", 365 to 372=> "000000000101100", 
    373 to 381=> "000000000101011", 382 to 390=> "000000000101010", 391 to 399=> "000000000101001", 
    400 to 409=> "000000000101000", 410 to 420=> "000000000100111", 421 to 431=> "000000000100110", 
    432 to 442=> "000000000100101", 443 to 455=> "000000000100100", 456 to 468=> "000000000100011", 
    469 to 481=> "000000000100010", 482 to 496=> "000000000100001", 497 to 512=> "000000000100000", 
    513 to 528=> "000000000011111", 529 to 546=> "000000000011110", 547 to 564=> "000000000011101", 
    565 to 585=> "000000000011100", 586 to 606=> "000000000011011", 607 to 630=> "000000000011010", 
    631 to 655=> "000000000011001", 656 to 682=> "000000000011000", 683 to 712=> "000000000010111", 
    713 to 744=> "000000000010110", 745 to 780=> "000000000010101", 781 to 819=> "000000000010100", 
    820 to 862=> "000000000010011", 863 to 910=> "000000000010010", 911 to 963=> "000000000010001", 
    964 to 1023=> "000000000010000" );
signal mem1 : mem_array := (
    0 => "000000000000000", 1 => "100000000000000", 2 => "010000000000000", 
    3 => "001010101010101", 4 => "001000000000000", 5 => "000110011001100", 
    6 => "000101010101010", 7 => "000100100100100", 8 => "000100000000000", 
    9 => "000011100011100", 10 => "000011001100110", 11 => "000010111010001", 
    12 => "000010101010101", 13 => "000010011101100", 14 => "000010010010010", 
    15 => "000010001000100", 16 => "000010000000000", 17 => "000001111000011", 
    18 => "000001110001110", 19 => "000001101011110", 20 => "000001100110011", 
    21 => "000001100001100", 22 => "000001011101000", 23 => "000001011001000", 
    24 => "000001010101010", 25 => "000001010001111", 26 => "000001001110110", 
    27 => "000001001011110", 28 => "000001001001001", 29 => "000001000110100", 
    30 => "000001000100010", 31 => "000001000010000", 32 => "000001000000000", 
    33 => "000000111110000", 34 => "000000111100001", 35 => "000000111010100", 
    36 => "000000111000111", 37 => "000000110111010", 38 => "000000110101111", 
    39 => "000000110100100", 40 => "000000110011001", 41 => "000000110001111", 
    42 => "000000110000110", 43 => "000000101111101", 44 => "000000101110100", 
    45 => "000000101101100", 46 => "000000101100100", 47 => "000000101011100", 
    48 => "000000101010101", 49 => "000000101001110", 50 => "000000101000111", 
    51 => "000000101000001", 52 => "000000100111011", 53 => "000000100110101", 
    54 => "000000100101111", 55 => "000000100101001", 56 => "000000100100100", 
    57 => "000000100011111", 58 => "000000100011010", 59 => "000000100010101", 
    60 => "000000100010001", 61 => "000000100001100", 62 => "000000100001000", 
    63 => "000000100000100", 64 => "000000100000000", 65 => "000000011111100", 
    66 => "000000011111000", 67 => "000000011110100", 68 => "000000011110000", 
    69 => "000000011101101", 70 => "000000011101010", 71 => "000000011100110", 
    72 => "000000011100011", 73 => "000000011100000", 74 => "000000011011101", 
    75 => "000000011011010", 76 => "000000011010111", 77 => "000000011010100", 
    78 => "000000011010010", 79 => "000000011001111", 80 => "000000011001100", 
    81 => "000000011001010", 82 => "000000011000111", 83 => "000000011000101", 
    84 => "000000011000011", 85 => "000000011000000", 86 => "000000010111110", 
    87 => "000000010111100", 88 => "000000010111010", 89 => "000000010111000", 
    90 => "000000010110110", 91 => "000000010110100", 92 => "000000010110010", 
    93 => "000000010110000", 94 => "000000010101110", 95 => "000000010101100", 
    96 => "000000010101010", 97 => "000000010101000", 98 => "000000010100111", 
    99 => "000000010100101", 100 => "000000010100011", 101 => "000000010100010", 
    102 => "000000010100000", 103 => "000000010011111", 104 => "000000010011101", 
    105 => "000000010011100", 106 => "000000010011010", 107 => "000000010011001", 
    108 => "000000010010111", 109 => "000000010010110", 110 => "000000010010100", 
    111 => "000000010010011", 112 => "000000010010010", 113 => "000000010010000", 
    114 => "000000010001111", 115 => "000000010001110", 116 => "000000010001101", 
    117 => "000000010001100", 118 => "000000010001010", 119 => "000000010001001", 
    120 => "000000010001000", 121 => "000000010000111", 122 => "000000010000110", 
    123 => "000000010000101", 124 => "000000010000100", 125 => "000000010000011", 
    126 => "000000010000010", 127 => "000000010000001", 128 => "000000010000000", 
    129 => "000000001111111", 130 => "000000001111110", 131 => "000000001111101", 
    132 => "000000001111100", 133 => "000000001111011", 134 => "000000001111010", 
    135 => "000000001111001", 136 => "000000001111000", 137 => "000000001110111", 
    138 => "000000001110110", 139 to 140=> "000000001110101", 141 => "000000001110100", 
    142 => "000000001110011", 143 => "000000001110010", 144 => "000000001110001", 
    145 to 146=> "000000001110000", 147 => "000000001101111", 148 => "000000001101110", 
    149 to 150=> "000000001101101", 151 => "000000001101100", 152 to 153=> "000000001101011", 
    154 => "000000001101010", 155 to 156=> "000000001101001", 157 => "000000001101000", 
    158 to 159=> "000000001100111", 160 => "000000001100110", 161 to 162=> "000000001100101", 
    163 => "000000001100100", 164 to 165=> "000000001100011", 166 to 167=> "000000001100010", 
    168 => "000000001100001", 169 to 170=> "000000001100000", 171 to 172=> "000000001011111", 
    173 to 174=> "000000001011110", 175 to 176=> "000000001011101", 177 to 178=> "000000001011100", 
    179 to 180=> "000000001011011", 181 to 182=> "000000001011010", 183 to 184=> "000000001011001", 
    185 to 186=> "000000001011000", 187 to 188=> "000000001010111", 189 to 190=> "000000001010110", 
    191 to 192=> "000000001010101", 193 to 195=> "000000001010100", 196 to 197=> "000000001010011", 
    198 to 199=> "000000001010010", 200 to 202=> "000000001010001", 203 to 204=> "000000001010000", 
    205 to 207=> "000000001001111", 208 to 210=> "000000001001110", 211 to 212=> "000000001001101", 
    213 to 215=> "000000001001100", 216 to 218=> "000000001001011", 219 to 221=> "000000001001010", 
    222 to 224=> "000000001001001", 225 to 227=> "000000001001000", 228 to 230=> "000000001000111", 
    231 to 234=> "000000001000110", 235 to 237=> "000000001000101", 238 to 240=> "000000001000100", 
    241 to 244=> "000000001000011", 245 to 248=> "000000001000010", 249 to 252=> "000000001000001", 
    253 to 256=> "000000001000000", 257 to 260=> "000000000111111", 261 to 264=> "000000000111110", 
    265 to 268=> "000000000111101", 269 to 273=> "000000000111100", 274 to 277=> "000000000111011", 
    278 to 282=> "000000000111010", 283 to 287=> "000000000111001", 288 to 292=> "000000000111000", 
    293 to 297=> "000000000110111", 298 to 303=> "000000000110110", 304 to 309=> "000000000110101", 
    310 to 315=> "000000000110100", 316 to 321=> "000000000110011", 322 to 327=> "000000000110010", 
    328 to 334=> "000000000110001", 335 to 341=> "000000000110000", 342 to 348=> "000000000101111", 
    349 to 356=> "000000000101110", 357 to 364=> "000000000101101", 365 to 372=> "000000000101100", 
    373 to 381=> "000000000101011", 382 to 390=> "000000000101010", 391 to 399=> "000000000101001", 
    400 to 409=> "000000000101000", 410 to 420=> "000000000100111", 421 to 431=> "000000000100110", 
    432 to 442=> "000000000100101", 443 to 455=> "000000000100100", 456 to 468=> "000000000100011", 
    469 to 481=> "000000000100010", 482 to 496=> "000000000100001", 497 to 512=> "000000000100000", 
    513 to 528=> "000000000011111", 529 to 546=> "000000000011110", 547 to 564=> "000000000011101", 
    565 to 585=> "000000000011100", 586 to 606=> "000000000011011", 607 to 630=> "000000000011010", 
    631 to 655=> "000000000011001", 656 to 682=> "000000000011000", 683 to 712=> "000000000010111", 
    713 to 744=> "000000000010110", 745 to 780=> "000000000010101", 781 to 819=> "000000000010100", 
    820 to 862=> "000000000010011", 863 to 910=> "000000000010010", 911 to 963=> "000000000010001", 
    964 to 1023=> "000000000010000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "block_rom";
attribute syn_rom_style of mem1 : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "block";
attribute ROM_STYLE of mem1 : signal is "block";

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

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity softmax_invert_tacud is
    generic (
        DataWidth : INTEGER := 15;
        AddressRange : INTEGER := 1024;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of softmax_invert_tacud is
    component softmax_invert_tacud_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    softmax_invert_tacud_rom_U :  component softmax_invert_tacud_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3);

end architecture;


