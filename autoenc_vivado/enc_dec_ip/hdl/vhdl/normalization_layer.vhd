-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity normalization_layer is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    data_0_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
    data_1_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of normalization_layer is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv56_16A09AA : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000001011010100000100110101010";

    signal data_1_V_read_4_reg_180 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal ap_block_state12_pp0_stage0_iter11 : BOOLEAN;
    signal ap_block_state13_pp0_stage0_iter12 : BOOLEAN;
    signal ap_block_state14_pp0_stage0_iter13 : BOOLEAN;
    signal ap_block_state15_pp0_stage0_iter14 : BOOLEAN;
    signal ap_block_state16_pp0_stage0_iter15 : BOOLEAN;
    signal ap_block_state17_pp0_stage0_iter16 : BOOLEAN;
    signal ap_block_state18_pp0_stage0_iter17 : BOOLEAN;
    signal ap_block_state19_pp0_stage0_iter18 : BOOLEAN;
    signal ap_block_state20_pp0_stage0_iter19 : BOOLEAN;
    signal ap_block_state21_pp0_stage0_iter20 : BOOLEAN;
    signal ap_block_state22_pp0_stage0_iter21 : BOOLEAN;
    signal ap_block_state23_pp0_stage0_iter22 : BOOLEAN;
    signal ap_block_state24_pp0_stage0_iter23 : BOOLEAN;
    signal ap_block_state25_pp0_stage0_iter24 : BOOLEAN;
    signal ap_block_state26_pp0_stage0_iter25 : BOOLEAN;
    signal ap_block_state27_pp0_stage0_iter26 : BOOLEAN;
    signal ap_block_state28_pp0_stage0_iter27 : BOOLEAN;
    signal ap_block_state29_pp0_stage0_iter28 : BOOLEAN;
    signal ap_block_state30_pp0_stage0_iter29 : BOOLEAN;
    signal ap_block_state31_pp0_stage0_iter30 : BOOLEAN;
    signal ap_block_state32_pp0_stage0_iter31 : BOOLEAN;
    signal ap_block_state33_pp0_stage0_iter32 : BOOLEAN;
    signal ap_block_state34_pp0_stage0_iter33 : BOOLEAN;
    signal ap_block_state35_pp0_stage0_iter34 : BOOLEAN;
    signal ap_block_state36_pp0_stage0_iter35 : BOOLEAN;
    signal ap_block_state37_pp0_stage0_iter36 : BOOLEAN;
    signal ap_block_state38_pp0_stage0_iter37 : BOOLEAN;
    signal ap_block_state39_pp0_stage0_iter38 : BOOLEAN;
    signal ap_block_state40_pp0_stage0_iter39 : BOOLEAN;
    signal ap_block_state41_pp0_stage0_iter40 : BOOLEAN;
    signal ap_block_state42_pp0_stage0_iter41 : BOOLEAN;
    signal ap_block_state43_pp0_stage0_iter42 : BOOLEAN;
    signal ap_block_state44_pp0_stage0_iter43 : BOOLEAN;
    signal ap_block_state45_pp0_stage0_iter44 : BOOLEAN;
    signal ap_block_state46_pp0_stage0_iter45 : BOOLEAN;
    signal ap_block_state47_pp0_stage0_iter46 : BOOLEAN;
    signal ap_block_state48_pp0_stage0_iter47 : BOOLEAN;
    signal ap_block_state49_pp0_stage0_iter48 : BOOLEAN;
    signal ap_block_state50_pp0_stage0_iter49 : BOOLEAN;
    signal ap_block_state51_pp0_stage0_iter50 : BOOLEAN;
    signal ap_block_state52_pp0_stage0_iter51 : BOOLEAN;
    signal ap_block_state53_pp0_stage0_iter52 : BOOLEAN;
    signal ap_block_state54_pp0_stage0_iter53 : BOOLEAN;
    signal ap_block_state55_pp0_stage0_iter54 : BOOLEAN;
    signal ap_block_state56_pp0_stage0_iter55 : BOOLEAN;
    signal ap_block_state57_pp0_stage0_iter56 : BOOLEAN;
    signal ap_block_state58_pp0_stage0_iter57 : BOOLEAN;
    signal ap_block_state59_pp0_stage0_iter58 : BOOLEAN;
    signal ap_block_state60_pp0_stage0_iter59 : BOOLEAN;
    signal ap_block_state61_pp0_stage0_iter60 : BOOLEAN;
    signal ap_block_state62_pp0_stage0_iter61 : BOOLEAN;
    signal ap_block_state63_pp0_stage0_iter62 : BOOLEAN;
    signal ap_block_state64_pp0_stage0_iter63 : BOOLEAN;
    signal ap_block_state65_pp0_stage0_iter64 : BOOLEAN;
    signal ap_block_state66_pp0_stage0_iter65 : BOOLEAN;
    signal ap_block_state67_pp0_stage0_iter66 : BOOLEAN;
    signal ap_block_state68_pp0_stage0_iter67 : BOOLEAN;
    signal ap_block_state69_pp0_stage0_iter68 : BOOLEAN;
    signal ap_block_state70_pp0_stage0_iter69 : BOOLEAN;
    signal ap_block_state71_pp0_stage0_iter70 : BOOLEAN;
    signal ap_block_state72_pp0_stage0_iter71 : BOOLEAN;
    signal ap_block_state73_pp0_stage0_iter72 : BOOLEAN;
    signal ap_block_state74_pp0_stage0_iter73 : BOOLEAN;
    signal ap_block_state75_pp0_stage0_iter74 : BOOLEAN;
    signal ap_block_state76_pp0_stage0_iter75 : BOOLEAN;
    signal ap_block_state77_pp0_stage0_iter76 : BOOLEAN;
    signal ap_block_state78_pp0_stage0_iter77 : BOOLEAN;
    signal ap_block_state79_pp0_stage0_iter78 : BOOLEAN;
    signal ap_block_state80_pp0_stage0_iter79 : BOOLEAN;
    signal ap_block_state81_pp0_stage0_iter80 : BOOLEAN;
    signal ap_block_state82_pp0_stage0_iter81 : BOOLEAN;
    signal ap_block_state83_pp0_stage0_iter82 : BOOLEAN;
    signal ap_block_state84_pp0_stage0_iter83 : BOOLEAN;
    signal ap_block_state85_pp0_stage0_iter84 : BOOLEAN;
    signal ap_block_state86_pp0_stage0_iter85 : BOOLEAN;
    signal ap_block_state87_pp0_stage0_iter86 : BOOLEAN;
    signal ap_block_state88_pp0_stage0_iter87 : BOOLEAN;
    signal ap_block_state89_pp0_stage0_iter88 : BOOLEAN;
    signal ap_block_state90_pp0_stage0_iter89 : BOOLEAN;
    signal ap_block_state91_pp0_stage0_iter90 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal data_1_V_read_4_reg_180_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter3_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter4_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter7_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter8_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter9_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter10_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter11_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter12_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter13_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter14_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter15_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter16_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter17_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter18_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter19_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter20_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter21_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter22_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter23_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter24_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter25_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter26_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter27_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_4_reg_180_pp0_iter28_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter3_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter4_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter5_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter6_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter7_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter8_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter9_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter10_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter11_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter12_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter13_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter14_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter15_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter16_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter17_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter18_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter19_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter20_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter21_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter22_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter23_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter24_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter25_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter26_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter27_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_0_V_read_4_reg_185_pp0_iter28_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal OP1_V_3_cast_fu_53_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal OP1_V_3_1_cast_fu_63_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal data_square_0_V_reg_202 : STD_LOGIC_VECTOR (31 downto 0);
    signal data_square_1_V_reg_207 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_66_1_fu_93_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_66_1_reg_212 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sqrt_fixed_32_8_s_fu_48_ap_return : STD_LOGIC_VECTOR (27 downto 0);
    signal sqrt_res_V_reg_217 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_s_fu_97_p1 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_107_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_96_reg_238 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_120_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_110_1_reg_243 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_sqrt_fixed_32_8_s_fu_48_ap_ce : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal OP1_V_3_cast_fu_53_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_57_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_57_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal OP1_V_3_1_cast_fu_63_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_67_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_67_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_57_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_67_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_107_p0 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_107_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal grp_fu_120_p0 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_120_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal div_res_0_V_fu_126_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_133_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal div_res_1_V_fu_139_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_146_p0 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_133_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal grp_fu_146_p2 : STD_LOGIC_VECTOR (55 downto 0);
    signal tmp_113_1_fu_162_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_97_fu_152_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_57_ce : STD_LOGIC;
    signal grp_fu_67_ce : STD_LOGIC;
    signal grp_fu_107_ce : STD_LOGIC;
    signal grp_fu_120_ce : STD_LOGIC;
    signal grp_fu_133_ce : STD_LOGIC;
    signal grp_fu_146_ce : STD_LOGIC;
    signal res_V_write_assign_fu_172_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal data_0_V_read_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal data_1_V_read_int_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_int_reg : STD_LOGIC_VECTOR (63 downto 0);

    component sqrt_fixed_32_8_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        x_V : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (27 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component encoder_decoder_mrcU IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (55 downto 0) );
    end component;


    component encoder_decoder_ssc4 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (55 downto 0);
        din1 : IN STD_LOGIC_VECTOR (28 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
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



begin
    grp_sqrt_fixed_32_8_s_fu_48 : component sqrt_fixed_32_8_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        x_V => p_Val2_66_1_reg_212,
        ap_return => grp_sqrt_fixed_32_8_s_fu_48_ap_return,
        ap_ce => grp_sqrt_fixed_32_8_s_fu_48_ap_ce);

    encoder_decoder_mrcU_U57 : component encoder_decoder_mrcU
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_57_p0,
        din1 => grp_fu_57_p1,
        ce => grp_fu_57_ce,
        dout => grp_fu_57_p2);

    encoder_decoder_mrcU_U58 : component encoder_decoder_mrcU
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_67_p0,
        din1 => grp_fu_67_p1,
        ce => grp_fu_67_ce,
        dout => grp_fu_67_p2);

    encoder_decoder_ssc4_U59 : component encoder_decoder_ssc4
    generic map (
        ID => 1,
        NUM_STAGE => 60,
        din0_WIDTH => 56,
        din1_WIDTH => 29,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_107_p0,
        din1 => grp_fu_107_p1,
        ce => grp_fu_107_ce,
        dout => grp_fu_107_p2);

    encoder_decoder_ssc4_U60 : component encoder_decoder_ssc4
    generic map (
        ID => 1,
        NUM_STAGE => 60,
        din0_WIDTH => 56,
        din1_WIDTH => 29,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_120_p0,
        din1 => grp_fu_120_p1,
        ce => grp_fu_120_ce,
        dout => grp_fu_120_p2);

    encoder_decoder_mtde_U61 : component encoder_decoder_mtde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 26,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_133_p0,
        din1 => div_res_0_V_fu_126_p1,
        ce => grp_fu_133_ce,
        dout => grp_fu_133_p2);

    encoder_decoder_mtde_U62 : component encoder_decoder_mtde
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 26,
        din1_WIDTH => 32,
        dout_WIDTH => 56)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_146_p0,
        din1 => div_res_1_V_fu_139_p1,
        ce => grp_fu_146_ce,
        dout => grp_fu_146_p2);





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
                ap_return_int_reg <= res_V_write_assign_fu_172_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                data_0_V_read_4_reg_185 <= data_0_V_read_int_reg;
                data_0_V_read_4_reg_185_pp0_iter10_reg <= data_0_V_read_4_reg_185_pp0_iter9_reg;
                data_0_V_read_4_reg_185_pp0_iter11_reg <= data_0_V_read_4_reg_185_pp0_iter10_reg;
                data_0_V_read_4_reg_185_pp0_iter12_reg <= data_0_V_read_4_reg_185_pp0_iter11_reg;
                data_0_V_read_4_reg_185_pp0_iter13_reg <= data_0_V_read_4_reg_185_pp0_iter12_reg;
                data_0_V_read_4_reg_185_pp0_iter14_reg <= data_0_V_read_4_reg_185_pp0_iter13_reg;
                data_0_V_read_4_reg_185_pp0_iter15_reg <= data_0_V_read_4_reg_185_pp0_iter14_reg;
                data_0_V_read_4_reg_185_pp0_iter16_reg <= data_0_V_read_4_reg_185_pp0_iter15_reg;
                data_0_V_read_4_reg_185_pp0_iter17_reg <= data_0_V_read_4_reg_185_pp0_iter16_reg;
                data_0_V_read_4_reg_185_pp0_iter18_reg <= data_0_V_read_4_reg_185_pp0_iter17_reg;
                data_0_V_read_4_reg_185_pp0_iter19_reg <= data_0_V_read_4_reg_185_pp0_iter18_reg;
                data_0_V_read_4_reg_185_pp0_iter1_reg <= data_0_V_read_4_reg_185;
                data_0_V_read_4_reg_185_pp0_iter20_reg <= data_0_V_read_4_reg_185_pp0_iter19_reg;
                data_0_V_read_4_reg_185_pp0_iter21_reg <= data_0_V_read_4_reg_185_pp0_iter20_reg;
                data_0_V_read_4_reg_185_pp0_iter22_reg <= data_0_V_read_4_reg_185_pp0_iter21_reg;
                data_0_V_read_4_reg_185_pp0_iter23_reg <= data_0_V_read_4_reg_185_pp0_iter22_reg;
                data_0_V_read_4_reg_185_pp0_iter24_reg <= data_0_V_read_4_reg_185_pp0_iter23_reg;
                data_0_V_read_4_reg_185_pp0_iter25_reg <= data_0_V_read_4_reg_185_pp0_iter24_reg;
                data_0_V_read_4_reg_185_pp0_iter26_reg <= data_0_V_read_4_reg_185_pp0_iter25_reg;
                data_0_V_read_4_reg_185_pp0_iter27_reg <= data_0_V_read_4_reg_185_pp0_iter26_reg;
                data_0_V_read_4_reg_185_pp0_iter28_reg <= data_0_V_read_4_reg_185_pp0_iter27_reg;
                data_0_V_read_4_reg_185_pp0_iter2_reg <= data_0_V_read_4_reg_185_pp0_iter1_reg;
                data_0_V_read_4_reg_185_pp0_iter3_reg <= data_0_V_read_4_reg_185_pp0_iter2_reg;
                data_0_V_read_4_reg_185_pp0_iter4_reg <= data_0_V_read_4_reg_185_pp0_iter3_reg;
                data_0_V_read_4_reg_185_pp0_iter5_reg <= data_0_V_read_4_reg_185_pp0_iter4_reg;
                data_0_V_read_4_reg_185_pp0_iter6_reg <= data_0_V_read_4_reg_185_pp0_iter5_reg;
                data_0_V_read_4_reg_185_pp0_iter7_reg <= data_0_V_read_4_reg_185_pp0_iter6_reg;
                data_0_V_read_4_reg_185_pp0_iter8_reg <= data_0_V_read_4_reg_185_pp0_iter7_reg;
                data_0_V_read_4_reg_185_pp0_iter9_reg <= data_0_V_read_4_reg_185_pp0_iter8_reg;
                data_1_V_read_4_reg_180 <= data_1_V_read_int_reg;
                data_1_V_read_4_reg_180_pp0_iter10_reg <= data_1_V_read_4_reg_180_pp0_iter9_reg;
                data_1_V_read_4_reg_180_pp0_iter11_reg <= data_1_V_read_4_reg_180_pp0_iter10_reg;
                data_1_V_read_4_reg_180_pp0_iter12_reg <= data_1_V_read_4_reg_180_pp0_iter11_reg;
                data_1_V_read_4_reg_180_pp0_iter13_reg <= data_1_V_read_4_reg_180_pp0_iter12_reg;
                data_1_V_read_4_reg_180_pp0_iter14_reg <= data_1_V_read_4_reg_180_pp0_iter13_reg;
                data_1_V_read_4_reg_180_pp0_iter15_reg <= data_1_V_read_4_reg_180_pp0_iter14_reg;
                data_1_V_read_4_reg_180_pp0_iter16_reg <= data_1_V_read_4_reg_180_pp0_iter15_reg;
                data_1_V_read_4_reg_180_pp0_iter17_reg <= data_1_V_read_4_reg_180_pp0_iter16_reg;
                data_1_V_read_4_reg_180_pp0_iter18_reg <= data_1_V_read_4_reg_180_pp0_iter17_reg;
                data_1_V_read_4_reg_180_pp0_iter19_reg <= data_1_V_read_4_reg_180_pp0_iter18_reg;
                data_1_V_read_4_reg_180_pp0_iter1_reg <= data_1_V_read_4_reg_180;
                data_1_V_read_4_reg_180_pp0_iter20_reg <= data_1_V_read_4_reg_180_pp0_iter19_reg;
                data_1_V_read_4_reg_180_pp0_iter21_reg <= data_1_V_read_4_reg_180_pp0_iter20_reg;
                data_1_V_read_4_reg_180_pp0_iter22_reg <= data_1_V_read_4_reg_180_pp0_iter21_reg;
                data_1_V_read_4_reg_180_pp0_iter23_reg <= data_1_V_read_4_reg_180_pp0_iter22_reg;
                data_1_V_read_4_reg_180_pp0_iter24_reg <= data_1_V_read_4_reg_180_pp0_iter23_reg;
                data_1_V_read_4_reg_180_pp0_iter25_reg <= data_1_V_read_4_reg_180_pp0_iter24_reg;
                data_1_V_read_4_reg_180_pp0_iter26_reg <= data_1_V_read_4_reg_180_pp0_iter25_reg;
                data_1_V_read_4_reg_180_pp0_iter27_reg <= data_1_V_read_4_reg_180_pp0_iter26_reg;
                data_1_V_read_4_reg_180_pp0_iter28_reg <= data_1_V_read_4_reg_180_pp0_iter27_reg;
                data_1_V_read_4_reg_180_pp0_iter2_reg <= data_1_V_read_4_reg_180_pp0_iter1_reg;
                data_1_V_read_4_reg_180_pp0_iter3_reg <= data_1_V_read_4_reg_180_pp0_iter2_reg;
                data_1_V_read_4_reg_180_pp0_iter4_reg <= data_1_V_read_4_reg_180_pp0_iter3_reg;
                data_1_V_read_4_reg_180_pp0_iter5_reg <= data_1_V_read_4_reg_180_pp0_iter4_reg;
                data_1_V_read_4_reg_180_pp0_iter6_reg <= data_1_V_read_4_reg_180_pp0_iter5_reg;
                data_1_V_read_4_reg_180_pp0_iter7_reg <= data_1_V_read_4_reg_180_pp0_iter6_reg;
                data_1_V_read_4_reg_180_pp0_iter8_reg <= data_1_V_read_4_reg_180_pp0_iter7_reg;
                data_1_V_read_4_reg_180_pp0_iter9_reg <= data_1_V_read_4_reg_180_pp0_iter8_reg;
                data_square_0_V_reg_202 <= grp_fu_57_p2(55 downto 24);
                data_square_1_V_reg_207 <= grp_fu_67_p2(55 downto 24);
                p_Val2_66_1_reg_212 <= p_Val2_66_1_fu_93_p2;
                sqrt_res_V_reg_217 <= grp_sqrt_fixed_32_8_s_fu_48_ap_return;
                tmp_110_1_reg_243 <= grp_fu_120_p2;
                tmp_96_reg_238 <= grp_fu_107_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
                data_0_V_read_int_reg <= data_0_V_read;
                data_1_V_read_int_reg <= data_1_V_read;
            end if;
        end if;
    end process;
    OP1_V_3_1_cast_fu_63_p0 <= data_1_V_read_int_reg;
        OP1_V_3_1_cast_fu_63_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(OP1_V_3_1_cast_fu_63_p0),56));

    OP1_V_3_cast_fu_53_p0 <= data_0_V_read_int_reg;
        OP1_V_3_cast_fu_53_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(OP1_V_3_cast_fu_53_p0),56));

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter10 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage0_iter11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state13_pp0_stage0_iter12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state14_pp0_stage0_iter13 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state15_pp0_stage0_iter14 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state16_pp0_stage0_iter15 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state17_pp0_stage0_iter16 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state18_pp0_stage0_iter17 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state19_pp0_stage0_iter18 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state20_pp0_stage0_iter19 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state21_pp0_stage0_iter20 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state22_pp0_stage0_iter21 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state23_pp0_stage0_iter22 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state24_pp0_stage0_iter23 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state25_pp0_stage0_iter24 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state26_pp0_stage0_iter25 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state27_pp0_stage0_iter26 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state28_pp0_stage0_iter27 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state29_pp0_stage0_iter28 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state30_pp0_stage0_iter29 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state31_pp0_stage0_iter30 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state32_pp0_stage0_iter31 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state33_pp0_stage0_iter32 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state34_pp0_stage0_iter33 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state35_pp0_stage0_iter34 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state36_pp0_stage0_iter35 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state37_pp0_stage0_iter36 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state38_pp0_stage0_iter37 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state39_pp0_stage0_iter38 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state40_pp0_stage0_iter39 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state41_pp0_stage0_iter40 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state42_pp0_stage0_iter41 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state43_pp0_stage0_iter42 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state44_pp0_stage0_iter43 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state45_pp0_stage0_iter44 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state46_pp0_stage0_iter45 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state47_pp0_stage0_iter46 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state48_pp0_stage0_iter47 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state49_pp0_stage0_iter48 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state50_pp0_stage0_iter49 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state51_pp0_stage0_iter50 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state52_pp0_stage0_iter51 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state53_pp0_stage0_iter52 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state54_pp0_stage0_iter53 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state55_pp0_stage0_iter54 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state56_pp0_stage0_iter55 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state57_pp0_stage0_iter56 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state58_pp0_stage0_iter57 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state59_pp0_stage0_iter58 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state60_pp0_stage0_iter59 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state61_pp0_stage0_iter60 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state62_pp0_stage0_iter61 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state63_pp0_stage0_iter62 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state64_pp0_stage0_iter63 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state65_pp0_stage0_iter64 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state66_pp0_stage0_iter65 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state67_pp0_stage0_iter66 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state68_pp0_stage0_iter67 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state69_pp0_stage0_iter68 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state70_pp0_stage0_iter69 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state71_pp0_stage0_iter70 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state72_pp0_stage0_iter71 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state73_pp0_stage0_iter72 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state74_pp0_stage0_iter73 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state75_pp0_stage0_iter74 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state76_pp0_stage0_iter75 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state77_pp0_stage0_iter76 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state78_pp0_stage0_iter77 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state79_pp0_stage0_iter78 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state80_pp0_stage0_iter79 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state81_pp0_stage0_iter80 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state82_pp0_stage0_iter81 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state83_pp0_stage0_iter82 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state84_pp0_stage0_iter83 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state85_pp0_stage0_iter84 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state86_pp0_stage0_iter85 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state87_pp0_stage0_iter86 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state88_pp0_stage0_iter87 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state89_pp0_stage0_iter88 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state90_pp0_stage0_iter89 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state91_pp0_stage0_iter90 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(res_V_write_assign_fu_172_p3, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= res_V_write_assign_fu_172_p3;
        end if; 
    end process;

    div_res_0_V_fu_126_p1 <= tmp_96_reg_238(32 - 1 downto 0);
    div_res_1_V_fu_139_p1 <= tmp_110_1_reg_243(32 - 1 downto 0);

    grp_fu_107_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_107_ce <= ap_const_logic_1;
        else 
            grp_fu_107_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_107_p0 <= (data_0_V_read_4_reg_185_pp0_iter28_reg & ap_const_lv24_0);
    grp_fu_107_p1 <= tmp_s_fu_97_p1(29 - 1 downto 0);

    grp_fu_120_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_120_ce <= ap_const_logic_1;
        else 
            grp_fu_120_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_120_p0 <= (data_1_V_read_4_reg_180_pp0_iter28_reg & ap_const_lv24_0);
    grp_fu_120_p1 <= tmp_s_fu_97_p1(29 - 1 downto 0);

    grp_fu_133_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_133_ce <= ap_const_logic_1;
        else 
            grp_fu_133_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_133_p0 <= ap_const_lv56_16A09AA(26 - 1 downto 0);

    grp_fu_146_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_146_ce <= ap_const_logic_1;
        else 
            grp_fu_146_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_146_p0 <= ap_const_lv56_16A09AA(26 - 1 downto 0);

    grp_fu_57_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_57_ce <= ap_const_logic_1;
        else 
            grp_fu_57_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_57_p0 <= OP1_V_3_cast_fu_53_p1(32 - 1 downto 0);
    grp_fu_57_p1 <= OP1_V_3_cast_fu_53_p1(32 - 1 downto 0);

    grp_fu_67_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_67_ce <= ap_const_logic_1;
        else 
            grp_fu_67_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_67_p0 <= OP1_V_3_1_cast_fu_63_p1(32 - 1 downto 0);
    grp_fu_67_p1 <= OP1_V_3_1_cast_fu_63_p1(32 - 1 downto 0);

    grp_sqrt_fixed_32_8_s_fu_48_ap_ce_assign_proc : process(ap_block_pp0_stage0_11001, ap_ce_reg)
    begin
        if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_sqrt_fixed_32_8_s_fu_48_ap_ce <= ap_const_logic_1;
        else 
            grp_sqrt_fixed_32_8_s_fu_48_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    p_Val2_66_1_fu_93_p2 <= std_logic_vector(unsigned(data_square_1_V_reg_207) + unsigned(data_square_0_V_reg_202));
    res_V_write_assign_fu_172_p3 <= (tmp_113_1_fu_162_p4 & tmp_97_fu_152_p4);
    tmp_113_1_fu_162_p4 <= grp_fu_146_p2(55 downto 24);
    tmp_97_fu_152_p4 <= grp_fu_133_p2(55 downto 24);
    tmp_s_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sqrt_res_V_reg_217),56));
end behav;
