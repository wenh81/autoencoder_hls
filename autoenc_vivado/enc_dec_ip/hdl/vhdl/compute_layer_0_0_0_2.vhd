-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity compute_layer_0_0_0_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    data_V_read : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of compute_layer_0_0_0_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv56_FFFFFFFF3DE627 : STD_LOGIC_VECTOR (55 downto 0) := "11111111111111111111111111111111001111011110011000100111";
    constant ap_const_lv56_FFFFFFFBE2ABEF : STD_LOGIC_VECTOR (55 downto 0) := "11111111111111111111111111111011111000101010101111101111";
    constant ap_const_lv56_A41F8F : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000101001000001111110001111";
    constant ap_const_lv56_FFFFFFFDC5F54F : STD_LOGIC_VECTOR (55 downto 0) := "11111111111111111111111111111101110001011111010101001111";
    constant ap_const_lv56_FFFFFFFCB4AE8F : STD_LOGIC_VECTOR (55 downto 0) := "11111111111111111111111111111100101101001010111010001111";
    constant ap_const_lv56_8ED3B8 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000100011101101001110111000";
    constant ap_const_lv56_1AC7A32 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000001101011000111101000110010";
    constant ap_const_lv56_29CEA2F : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000010100111001110101000101111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_1A6C3B7 : STD_LOGIC_VECTOR (31 downto 0) := "00000001101001101100001110110111";
    constant ap_const_lv32_1617724 : STD_LOGIC_VECTOR (31 downto 0) := "00000001011000010111011100100100";
    constant ap_const_lv32_FFBEBFA9 : STD_LOGIC_VECTOR (31 downto 0) := "11111111101111101011111110101001";
    constant ap_const_lv32_165AA24 : STD_LOGIC_VECTOR (31 downto 0) := "00000001011001011010101000100100";

    signal OP1_V_cast_fu_393_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal OP1_V_1_cast_fu_411_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal tmp_s_reg_579 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_0_1_reg_584 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_0_2_reg_589 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_0_3_reg_594 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_1_reg_599 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_1_1_reg_604 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_1_2_reg_609 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_166_1_3_reg_614 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_68_p0 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_68_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal grp_fu_69_p0 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_fu_69_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_70_p0 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_70_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_71_p0 : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_fu_71_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_72_p0 : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_fu_72_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_73_p0 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_73_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_74_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_74_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_75_p0 : STD_LOGIC_VECTOR (26 downto 0);
    signal grp_fu_75_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_266_fu_389_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_104_fu_401_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_75_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_72_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_74_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_68_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_73_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_70_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_71_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_69_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal tmp1_fu_499_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_fu_509_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_fu_519_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp4_fu_529_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_0_V_write_assig_fu_504_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_1_V_write_assig_fu_514_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_2_V_write_assig_fu_524_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_3_V_write_assig_fu_534_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_68_ce : STD_LOGIC;
    signal grp_fu_69_ce : STD_LOGIC;
    signal grp_fu_70_ce : STD_LOGIC;
    signal grp_fu_71_ce : STD_LOGIC;
    signal grp_fu_72_ce : STD_LOGIC;
    signal grp_fu_73_ce : STD_LOGIC;
    signal grp_fu_74_ce : STD_LOGIC;
    signal grp_fu_75_ce : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;
    signal data_V_read_int_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_0_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_1_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_2_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_3_int_reg : STD_LOGIC_VECTOR (31 downto 0);

    component encoder_decoder_mibs IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (24 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_mudo IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (27 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_mjbC IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (24 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_mvdy IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (26 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_mtde IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (25 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_mkbM IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (26 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;



begin
    encoder_decoder_mibs_U69 : component encoder_decoder_mibs
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 25,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_68_p0,
        din1 => grp_fu_68_p1,
        ce => grp_fu_68_ce,
        dout => grp_fu_68_p2);

    encoder_decoder_mudo_U70 : component encoder_decoder_mudo
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 28,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_69_p0,
        din1 => grp_fu_69_p1,
        ce => grp_fu_69_ce,
        dout => grp_fu_69_p2);

    encoder_decoder_mjbC_U71 : component encoder_decoder_mjbC
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 25,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_70_p0,
        din1 => grp_fu_70_p1,
        ce => grp_fu_70_ce,
        dout => grp_fu_70_p2);

    encoder_decoder_mvdy_U72 : component encoder_decoder_mvdy
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 27,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_71_p0,
        din1 => grp_fu_71_p1,
        ce => grp_fu_71_ce,
        dout => grp_fu_71_p2);

    encoder_decoder_mvdy_U73 : component encoder_decoder_mvdy
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 27,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_72_p0,
        din1 => grp_fu_72_p1,
        ce => grp_fu_72_ce,
        dout => grp_fu_72_p2);

    encoder_decoder_mjbC_U74 : component encoder_decoder_mjbC
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 25,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_73_p0,
        din1 => grp_fu_73_p1,
        ce => grp_fu_73_ce,
        dout => grp_fu_73_p2);

    encoder_decoder_mtde_U75 : component encoder_decoder_mtde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 26,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_74_p0,
        din1 => grp_fu_74_p1,
        ce => grp_fu_74_ce,
        dout => grp_fu_74_p2);

    encoder_decoder_mkbM_U76 : component encoder_decoder_mkbM
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 27,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_75_p0,
        din1 => grp_fu_75_p1,
        ce => grp_fu_75_ce,
        dout => grp_fu_75_p2);





    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_0_int_reg <= res_0_V_write_assig_fu_504_p2;
                ap_return_1_int_reg <= res_1_V_write_assig_fu_514_p2;
                ap_return_2_int_reg <= res_2_V_write_assig_fu_524_p2;
                ap_return_3_int_reg <= res_3_V_write_assig_fu_534_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                data_V_read_int_reg <= data_V_read;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_166_0_1_reg_584 <= grp_fu_72_p2(55 downto 24);
                tmp_166_0_2_reg_589 <= grp_fu_74_p2(55 downto 24);
                tmp_166_0_3_reg_594 <= grp_fu_68_p2(55 downto 24);
                tmp_166_1_1_reg_604 <= grp_fu_70_p2(55 downto 24);
                tmp_166_1_2_reg_609 <= grp_fu_71_p2(55 downto 24);
                tmp_166_1_3_reg_614 <= grp_fu_69_p2(55 downto 24);
                tmp_166_1_reg_599 <= grp_fu_73_p2(55 downto 24);
                tmp_s_reg_579 <= grp_fu_75_p2(55 downto 24);
            end if;
        end if;
    end process;
        OP1_V_1_cast_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_104_fu_401_p4),56));

        OP1_V_cast_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_266_fu_389_p1),56));

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_0_assign_proc : process(res_0_V_write_assig_fu_504_p2, ap_ce_reg, ap_return_0_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return_0 <= ap_return_0_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return_0 <= res_0_V_write_assig_fu_504_p2;
        end if; 
    end process;


    ap_return_1_assign_proc : process(res_1_V_write_assig_fu_514_p2, ap_ce_reg, ap_return_1_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return_1 <= ap_return_1_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return_1 <= res_1_V_write_assig_fu_514_p2;
        end if; 
    end process;


    ap_return_2_assign_proc : process(res_2_V_write_assig_fu_524_p2, ap_ce_reg, ap_return_2_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return_2 <= ap_return_2_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return_2 <= res_2_V_write_assig_fu_524_p2;
        end if; 
    end process;


    ap_return_3_assign_proc : process(res_3_V_write_assig_fu_534_p2, ap_ce_reg, ap_return_3_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return_3 <= ap_return_3_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return_3 <= res_3_V_write_assig_fu_534_p2;
        end if; 
    end process;


    grp_fu_68_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_68_ce <= ap_const_logic_1;
        else 
            grp_fu_68_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_68_p0 <= ap_const_lv56_FFFFFFFF3DE627(25 - 1 downto 0);
    grp_fu_68_p1 <= OP1_V_cast_fu_393_p1(32 - 1 downto 0);

    grp_fu_69_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_69_ce <= ap_const_logic_1;
        else 
            grp_fu_69_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_69_p0 <= ap_const_lv56_FFFFFFFBE2ABEF(28 - 1 downto 0);
    grp_fu_69_p1 <= OP1_V_1_cast_fu_411_p1(32 - 1 downto 0);

    grp_fu_70_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_70_ce <= ap_const_logic_1;
        else 
            grp_fu_70_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_70_p0 <= ap_const_lv56_A41F8F(25 - 1 downto 0);
    grp_fu_70_p1 <= OP1_V_1_cast_fu_411_p1(32 - 1 downto 0);

    grp_fu_71_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_71_ce <= ap_const_logic_1;
        else 
            grp_fu_71_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_71_p0 <= ap_const_lv56_FFFFFFFDC5F54F(27 - 1 downto 0);
    grp_fu_71_p1 <= OP1_V_1_cast_fu_411_p1(32 - 1 downto 0);

    grp_fu_72_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_72_ce <= ap_const_logic_1;
        else 
            grp_fu_72_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_72_p0 <= ap_const_lv56_FFFFFFFCB4AE8F(27 - 1 downto 0);
    grp_fu_72_p1 <= OP1_V_cast_fu_393_p1(32 - 1 downto 0);

    grp_fu_73_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_73_ce <= ap_const_logic_1;
        else 
            grp_fu_73_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_73_p0 <= ap_const_lv56_8ED3B8(25 - 1 downto 0);
    grp_fu_73_p1 <= OP1_V_1_cast_fu_411_p1(32 - 1 downto 0);

    grp_fu_74_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_74_ce <= ap_const_logic_1;
        else 
            grp_fu_74_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_74_p0 <= ap_const_lv56_1AC7A32(26 - 1 downto 0);
    grp_fu_74_p1 <= OP1_V_cast_fu_393_p1(32 - 1 downto 0);

    grp_fu_75_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_ce_reg))) then 
            grp_fu_75_ce <= ap_const_logic_1;
        else 
            grp_fu_75_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_75_p0 <= ap_const_lv56_29CEA2F(27 - 1 downto 0);
    grp_fu_75_p1 <= OP1_V_cast_fu_393_p1(32 - 1 downto 0);
    res_0_V_write_assig_fu_504_p2 <= std_logic_vector(unsigned(tmp_s_reg_579) + unsigned(tmp1_fu_499_p2));
    res_1_V_write_assig_fu_514_p2 <= std_logic_vector(unsigned(tmp_166_0_1_reg_584) + unsigned(tmp2_fu_509_p2));
    res_2_V_write_assig_fu_524_p2 <= std_logic_vector(unsigned(tmp_166_0_2_reg_589) + unsigned(tmp3_fu_519_p2));
    res_3_V_write_assig_fu_534_p2 <= std_logic_vector(unsigned(tmp_166_0_3_reg_594) + unsigned(tmp4_fu_529_p2));
    tmp1_fu_499_p2 <= std_logic_vector(unsigned(ap_const_lv32_1A6C3B7) + unsigned(tmp_166_1_reg_599));
    tmp2_fu_509_p2 <= std_logic_vector(unsigned(ap_const_lv32_1617724) + unsigned(tmp_166_1_1_reg_604));
    tmp3_fu_519_p2 <= std_logic_vector(signed(ap_const_lv32_FFBEBFA9) + signed(tmp_166_1_2_reg_609));
    tmp4_fu_529_p2 <= std_logic_vector(unsigned(ap_const_lv32_165AA24) + unsigned(tmp_166_1_3_reg_614));
    tmp_104_fu_401_p4 <= data_V_read_int_reg(63 downto 32);
    tmp_266_fu_389_p1 <= data_V_read_int_reg(32 - 1 downto 0);
end behav;
