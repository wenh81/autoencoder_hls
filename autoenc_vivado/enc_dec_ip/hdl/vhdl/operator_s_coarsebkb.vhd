-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity operator_s_coarsebkb_rom is 
    generic(
             DWIDTH     : integer := 17; 
             AWIDTH     : integer := 9; 
             MEM_SIZE    : integer := 512
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of operator_s_coarsebkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111111111111110", 1 => "11110101010111100", 
    2 => "11101111111100110", 3 => "11101100011001011", 
    4 => "11101001101110100", 5 => "11100111100101001", 
    6 => "11100101110010001", 7 => "11100100001111000", 
    8 => "11100010110111110", 9 => "11100001101010000", 
    10 => "11100000100011101", 11 => "11011111100011011", 
    12 => "11011110101000011", 13 => "11011101110001101", 
    14 => "11011100111110101", 15 => "11011100001111000", 
    16 => "11011011100010001", 17 => "11011010110111110", 
    18 => "11011010001111101", 19 => "11011001101001101", 
    20 => "11011001000101011", 21 => "11011000100010110", 
    22 => "11011000000001101", 23 => "11010111100001111", 
    24 => "11010111000011011", 25 => "11010110100110001", 
    26 => "11010110001001111", 27 => "11010101101110101", 
    28 => "11010101010100010", 29 => "11010100111010111", 
    30 => "11010100100010001", 31 => "11010100001010010", 
    32 => "11010011110011001", 33 => "11010011011100101", 
    34 => "11010011000110110", 35 => "11010010110001011", 
    36 => "11010010011100110", 37 => "11010010001000100", 
    38 => "11010001110100111", 39 => "11010001100001101", 
    40 => "11010001001110111", 41 => "11010000111100100", 
    42 => "11010000101010101", 43 => "11010000011001001", 
    44 => "11010000001000000", 45 => "11001111110111010", 
    46 => "11001111100110111", 47 => "11001111010110110", 
    48 => "11001111000111000", 49 => "11001110110111100", 
    50 => "11001110101000011", 51 => "11001110011001011", 
    52 => "11001110001010111", 53 => "11001101111100100", 
    54 => "11001101101110011", 55 => "11001101100000100", 
    56 => "11001101010010111", 57 => "11001101000101100", 
    58 => "11001100111000010", 59 => "11001100101011011", 
    60 => "11001100011110100", 61 => "11001100010010000", 
    62 => "11001100000101101", 63 => "11001011111001011", 
    64 => "11001011100111100", 65 => "11001011010000001", 
    66 => "11001010111001100", 67 => "11001010100011011", 
    68 => "11001010001110000", 69 => "11001001111001000", 
    70 => "11001001100100101", 71 => "11001001010000101", 
    72 => "11001000111101010", 73 => "11001000101010010", 
    74 => "11001000010111101", 75 => "11001000000101100", 
    76 => "11000111110011110", 77 => "11000111100010011", 
    78 => "11000111010001010", 79 => "11000111000000101", 
    80 => "11000110110000010", 81 => "11000110100000001", 
    82 => "11000110010000011", 83 => "11000110000001000", 
    84 => "11000101110001110", 85 => "11000101100010111", 
    86 => "11000101010100010", 87 => "11000101000101111", 
    88 => "11000100110111110", 89 => "11000100101001110", 
    90 => "11000100011100001", 91 => "11000100001110101", 
    92 => "11000100000001011", 93 => "11000011110100011", 
    94 => "11000011100111100", 95 => "11000011011010110", 
    96 => "11000011001000010", 97 => "11000010110000000", 
    98 => "11000010011000011", 99 => "11000010000001100", 
    100 => "11000001101011001", 101 => "11000001010101011", 
    102 => "11000001000000001", 103 => "11000000101011011", 
    104 => "11000000010111010", 105 => "11000000000011011", 
    106 => "10111111110000001", 107 => "10111111011101010", 
    108 => "10111111001010110", 109 => "10111110111000101", 
    110 => "10111110100110111", 111 => "10111110010101100", 
    112 => "10111110000100100", 113 => "10111101110011110", 
    114 => "10111101100011011", 115 => "10111101010011010", 
    116 => "10111101000011100", 117 => "10111100110100000", 
    118 => "10111100100100110", 119 => "10111100010101110", 
    120 => "10111100000111000", 121 => "10111011111000100", 
    122 => "10111011101010010", 123 => "10111011011100010", 
    124 => "10111011001110011", 125 => "10111011000000110", 
    126 => "10111010110011011", 127 => "10111010100110010", 
    128 => "10111010010010111", 129 => "10111001111001100", 
    130 => "10111001100001000", 131 => "10111001001001001", 
    132 => "10111000110001110", 133 => "10111000011011001", 
    134 => "10111000000101000", 135 => "10110111101111011", 
    136 => "10110111011010010", 137 => "10110111000101101", 
    138 => "10110110110001100", 139 => "10110110011101110", 
    140 => "10110110001010100", 141 => "10110101110111101", 
    142 => "10110101100101001", 143 => "10110101010010111", 
    144 => "10110101000001001", 145 => "10110100101111110", 
    146 => "10110100011110101", 147 => "10110100001101110", 
    148 => "10110011111101010", 149 => "10110011101101000", 
    150 => "10110011011101001", 151 => "10110011001101100", 
    152 => "10110010111110000", 153 => "10110010101110111", 
    154 => "10110010100000000", 155 => "10110010010001011", 
    156 => "10110010000010111", 157 => "10110001110100101", 
    158 => "10110001100110101", 159 => "10110001011000111", 
    160 => "10110001000100101", 161 => "10110000101010001", 
    162 => "10110000010000100", 163 => "10101111110111011", 
    164 => "10101111011111000", 165 => "10101111000111010", 
    166 => "10101110110000001", 167 => "10101110011001100", 
    168 => "10101110000011011", 169 => "10101101101101111", 
    170 => "10101101011000110", 171 => "10101101000100001", 
    172 => "10101100101111111", 173 => "10101100011100000", 
    174 => "10101100001000101", 175 => "10101011110101101", 
    176 => "10101011100011000", 177 => "10101011010000110", 
    178 => "10101010111110110", 179 => "10101010101101001", 
    180 => "10101010011011111", 181 => "10101010001010110", 
    182 => "10101001111010001", 183 => "10101001101001101", 
    184 => "10101001011001100", 185 => "10101001001001101", 
    186 => "10101000111010000", 187 => "10101000101010101", 
    188 => "10101000011011011", 189 => "10101000001100100", 
    190 => "10100111111101110", 191 => "10100111101111010", 
    192 => "10100111011010000", 193 => "10100110111110010", 
    194 => "10100110100011010", 195 => "10100110001000111", 
    196 => "10100101101111011", 197 => "10100101010110011", 
    198 => "10100100111110000", 199 => "10100100100110010", 
    200 => "10100100001111000", 201 => "10100011111000010", 
    202 => "10100011100010000", 203 => "10100011001100011", 
    204 => "10100010110111000", 205 => "10100010100010010", 
    206 => "10100010001101110", 207 => "10100001111001110", 
    208 => "10100001100110001", 209 => "10100001010010111", 
    210 => "10100001000000000", 211 => "10100000101101011", 
    212 => "10100000011011001", 213 => "10100000001001010", 
    214 => "10011111110111101", 215 => "10011111100110010", 
    216 => "10011111010101010", 217 => "10011111000100100", 
    218 => "10011110110100000", 219 => "10011110100011110", 
    220 => "10011110010011110", 221 => "10011110000100000", 
    222 => "10011101110100100", 223 => "10011101100101010", 
    224 => "10011101001110110", 225 => "10011100110001011", 
    226 => "10011100010100111", 227 => "10011011111001001", 
    228 => "10011011011110001", 229 => "10011011000011101", 
    230 => "10011010101001111", 231 => "10011010010000110", 
    232 => "10011001111000010", 233 => "10011001100000010", 
    234 => "10011001001000110", 235 => "10011000110001110", 
    236 => "10011000011011010", 237 => "10011000000101001", 
    238 => "10010111101111100", 239 => "10010111011010011", 
    240 => "10010111000101100", 241 => "10010110110001001", 
    242 => "10010110011101001", 243 => "10010110001001011", 
    244 => "10010101110110001", 245 => "10010101100011001", 
    246 => "10010101010000011", 247 => "10010100111110000", 
    248 => "10010100101100000", 249 => "10010100011010001", 
    250 => "10010100001000101", 251 => "10010011110111100", 
    252 => "10010011100110100", 253 => "10010011010101110", 
    254 => "10010011000101010", 255 => "10010010110101001", 
    256 => "10010010011101001", 257 => "10010001111110000", 
    258 => "10010001011111110", 259 => "10010001000010010", 
    260 => "10010000100101100", 261 => "10010000001001011", 
    262 => "10001111101110000", 263 => "10001111010011010", 
    264 => "10001110111001001", 265 => "10001110011111101", 
    266 => "10001110000110100", 267 => "10001101101110001", 
    268 => "10001101010110001", 269 => "10001100111110101", 
    270 => "10001100100111100", 271 => "10001100010000111", 
    272 => "10001011111010110", 273 => "10001011100101000", 
    274 => "10001011001111101", 275 => "10001010111010101", 
    276 => "10001010100110000", 277 => "10001010010001110", 
    278 => "10001001111101110", 279 => "10001001101010001", 
    280 => "10001001010110111", 281 => "10001001000011111", 
    282 => "10001000110001001", 283 => "10001000011110110", 
    284 => "10001000001100100", 285 => "10000111111010101", 
    286 => "10000111101001000", 287 => "10000111010111110", 
    288 => "10000110111110001", 289 => "10000110011100111", 
    290 => "10000101111100011", 291 => "10000101011100110", 
    292 => "10000100111110000", 293 => "10000100011111111", 
    294 => "10000100000010100", 295 => "10000011100101110", 
    296 => "10000011001001110", 297 => "10000010101110010", 
    298 => "10000010010011011", 299 => "10000001111001001", 
    300 => "10000001011111011", 301 => "10000001000110001", 
    302 => "10000000101101010", 303 => "10000000010101000", 
    304 => "01111111111101001", 305 => "01111111100101110", 
    306 => "01111111001110110", 307 => "01111110111000001", 
    308 => "01111110100001111", 309 => "01111110001100000", 
    310 => "01111101110110100", 311 => "01111101100001011", 
    312 => "01111101001100100", 313 => "01111100111000001", 
    314 => "01111100100011111", 315 => "01111100010000000", 
    316 => "01111011111100011", 317 => "01111011101001001", 
    318 => "01111011010110001", 319 => "01111011000011011", 
    320 => "01111010100111110", 321 => "01111010000011110", 
    322 => "01111001100000101", 323 => "01111000111110011", 
    324 => "01111000011101000", 325 => "01110111111100100", 
    326 => "01110111011100101", 327 => "01110110111101100", 
    328 => "01110110011111001", 329 => "01110110000001010", 
    330 => "01110101100100001", 331 => "01110101000111101", 
    332 => "01110100101011100", 333 => "01110100010000001", 
    334 => "01110011110101001", 335 => "01110011011010110", 
    336 => "01110011000000110", 337 => "01110010100111010", 
    338 => "01110010001110010", 339 => "01110001110101100", 
    340 => "01110001011101011", 341 => "01110001000101100", 
    342 => "01110000101110000", 343 => "01110000010111000", 
    344 => "01110000000000010", 345 => "01101111101001111", 
    346 => "01101111010011111", 347 => "01101110111110001", 
    348 => "01101110101000110", 349 => "01101110010011101", 
    350 => "01101101111110110", 351 => "01101101101010010", 
    352 => "01101101001100000", 353 => "01101100100100101", 
    354 => "01101011111110001", 355 => "01101011011000101", 
    356 => "01101010110100000", 357 => "01101010010000001", 
    358 => "01101001101101010", 359 => "01101001001011000", 
    360 => "01101000101001100", 361 => "01101000001000110", 
    362 => "01100111101000101", 363 => "01100111001001001", 
    364 => "01100110101010010", 365 => "01100110001011111", 
    366 => "01100101101110001", 367 => "01100101010001000", 
    368 => "01100100110100010", 369 => "01100100011000000", 
    370 => "01100011111100011", 371 => "01100011100001000", 
    372 => "01100011000110010", 373 => "01100010101011110", 
    374 => "01100010010001110", 375 => "01100001111000010", 
    376 => "01100001011111000", 377 => "01100001000110001", 
    378 => "01100000101101101", 379 => "01100000010101100", 
    380 => "01011111111101101", 381 => "01011111100110001", 
    382 => "01011111001111000", 383 => "01011110111000001", 
    384 => "01011110010110011", 385 => "01011101101010011", 
    386 => "01011100111111100", 387 => "01011100010101100", 
    388 => "01011011101100100", 389 => "01011011000100100", 
    390 => "01011010011101010", 391 => "01011001110110111", 
    392 => "01011001010001010", 393 => "01011000101100100", 
    394 => "01011000001000011", 395 => "01010111100100111", 
    396 => "01010111000010001", 397 => "01010110011111111", 
    398 => "01010101111110011", 399 => "01010101011101011", 
    400 => "01010100111100111", 401 => "01010100011101000", 
    402 => "01010011111101101", 403 => "01010011011110101", 
    404 => "01010011000000010", 405 => "01010010100010010", 
    406 => "01010010000100110", 407 => "01010001100111101", 
    408 => "01010001001011000", 409 => "01010000101110101", 
    410 => "01010000010010110", 411 => "01001111110111010", 
    412 => "01001111011100000", 413 => "01001111000001010", 
    414 => "01001110100110110", 415 => "01001110001100100", 
    416 => "01001101100110000", 417 => "01001100110011100", 
    418 => "01001100000010010", 419 => "01001011010010000", 
    420 => "01001010100010111", 421 => "01001001110100101", 
    422 => "01001001000111011", 423 => "01001000011011000", 
    424 => "01000111101111100", 425 => "01000111000100110", 
    426 => "01000110011010111", 427 => "01000101110001101", 
    428 => "01000101001001001", 429 => "01000100100001010", 
    430 => "01000011111010001", 431 => "01000011010011100", 
    432 => "01000010101101100", 433 => "01000010001000001", 
    434 => "01000001100011010", 435 => "01000000111111000", 
    436 => "01000000011011001", 437 => "00111111110111111", 
    438 => "00111111010101000", 439 => "00111110110010101", 
    440 => "00111110010000110", 441 => "00111101101111010", 
    442 => "00111101001110001", 443 => "00111100101101011", 
    444 => "00111100001101001", 445 => "00111011101101001", 
    446 => "00111011001101101", 447 => "00111010101110011", 
    448 => "00111010000000010", 449 => "00111001000011111", 
    450 => "00111000001000101", 451 => "00110111001110101", 
    452 => "00110110010101101", 453 => "00110101011101110", 
    454 => "00110100100110111", 455 => "00110011110000111", 
    456 => "00110010111011111", 457 => "00110010000111101", 
    458 => "00110001010100010", 459 => "00110000100001101", 
    460 => "00101111101111110", 461 => "00101110111110101", 
    462 => "00101110001110001", 463 => "00101101011110010", 
    464 => "00101100101111000", 465 => "00101100000000011", 
    466 => "00101011010010011", 467 => "00101010100100111", 
    468 => "00101001110111111", 469 => "00101001001011011", 
    470 => "00101000011111011", 471 => "00100111110011111", 
    472 => "00100111001000110", 473 => "00100110011110001", 
    474 => "00100101110100000", 475 => "00100101001010001", 
    476 => "00100100100000110", 477 => "00100011110111101", 
    478 => "00100011001111000", 479 => "00100010100110101", 
    480 => "00100001101010111", 481 => "00100000011100001", 
    482 => "00011111001110101", 483 => "00011110000010010", 
    484 => "00011100110110111", 485 => "00011011101100100", 
    486 => "00011010100011000", 487 => "00011001011010011", 
    488 => "00011000010010101", 489 => "00010111001011100", 
    490 => "00010110000101001", 491 => "00010100111111100", 
    492 => "00010011111010011", 493 => "00010010110101111", 
    494 => "00010001110001111", 495 => "00010000101110011", 
    496 => "00001111101011011", 497 => "00001110101000110", 
    498 => "00001101100110100", 499 => "00001100100100101", 
    500 => "00001011100011001", 501 => "00001010100001111", 
    502 => "00001001100000111", 503 => "00001000100000001", 
    504 => "00000111011111101", 505 => "00000110011111010", 
    506 => "00000101011111001", 507 => "00000100011111001", 
    508 => "00000011011111010", 509 => "00000010011111011", 
    510 => "00000001011111101", 511 => "00000000011111111" );


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

entity operator_s_coarsebkb is
    generic (
        DataWidth : INTEGER := 17;
        AddressRange : INTEGER := 512;
        AddressWidth : INTEGER := 9);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of operator_s_coarsebkb is
    component operator_s_coarsebkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    operator_s_coarsebkb_rom_U :  component operator_s_coarsebkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


