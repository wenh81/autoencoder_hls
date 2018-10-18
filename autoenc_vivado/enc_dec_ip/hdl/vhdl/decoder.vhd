-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    data_V_read : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (127 downto 0) );
end;


architecture behav of decoder is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv26_1000000 : STD_LOGIC_VECTOR (25 downto 0) := "01000000000000000000000000";
    constant ap_const_lv26_0 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv26_3000000 : STD_LOGIC_VECTOR (25 downto 0) := "11000000000000000000000000";
    constant ap_const_lv26_2000000 : STD_LOGIC_VECTOR (25 downto 0) := "10000000000000000000000000";
    constant ap_const_lv32_1000000 : STD_LOGIC_VECTOR (31 downto 0) := "00000001000000000000000000000000";
    constant ap_const_lv25_1000000 : STD_LOGIC_VECTOR (24 downto 0) := "1000000000000000000000000";
    constant ap_const_lv25_0 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal layer1_relu_out_0_V_reg_270 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal layer1_relu_out_1_V_reg_275 : STD_LOGIC_VECTOR (31 downto 0);
    signal layer1_relu_out_2_V_reg_280 : STD_LOGIC_VECTOR (31 downto 0);
    signal layer1_relu_out_3_V_reg_285 : STD_LOGIC_VECTOR (31 downto 0);
    signal logits2_0_V_reg_290 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal logits2_1_V_reg_295 : STD_LOGIC_VECTOR (31 downto 0);
    signal logits2_2_V_reg_300 : STD_LOGIC_VECTOR (31 downto 0);
    signal logits2_3_V_reg_305 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_softmax_fu_48_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_softmax_fu_48_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_softmax_fu_48_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_softmax_fu_48_ap_return_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal call_ret5_reg_310_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal logits3_2_V_reg_315 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal logits3_V_1_0_logits_fu_152_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal logits3_V_1_0_logits_reg_326 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_198_1_fu_163_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_198_1_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal tmp_198_2_fu_173_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_198_2_reg_337 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_softmax_fu_48_ap_start : STD_LOGIC;
    signal grp_softmax_fu_48_ap_done : STD_LOGIC;
    signal grp_softmax_fu_48_ap_idle : STD_LOGIC;
    signal grp_softmax_fu_48_ap_ready : STD_LOGIC;
    signal grp_compute_layer_0_0_0_1_fu_60_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_1_fu_60_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_1_fu_60_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_1_fu_60_ap_return_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_1_fu_60_ap_ce : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_compute_layer_0_0_0_2_fu_68_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_2_fu_68_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_2_fu_68_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_2_fu_68_ap_return_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_compute_layer_0_0_0_2_fu_68_ap_ce : STD_LOGIC;
    signal call_ret3_relu_1_fu_74_ap_ready : STD_LOGIC;
    signal call_ret3_relu_1_fu_74_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal call_ret3_relu_1_fu_74_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal call_ret3_relu_1_fu_74_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal call_ret3_relu_1_fu_74_ap_return_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_softmax_fu_48_ap_start_reg : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm_state5 : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal logits3_V_2_0_logits_fu_167_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_fu_193_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_fu_186_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal p_cast_cast_fu_179_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal p_s_53_fu_197_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_96_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_201_1_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_201_2_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_97_fu_247_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_123_cast_fu_239_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_122_cast_fu_225_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_121_cast_fu_211_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_293_fu_254_p5 : STD_LOGIC_VECTOR (120 downto 0);

    component softmax IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_0_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_1_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_2_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_3_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component compute_layer_0_0_0_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_0_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_1_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_2_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_3_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component compute_layer_0_0_0_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_V_read : IN STD_LOGIC_VECTOR (63 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;


    component relu_1 IS
    port (
        ap_ready : OUT STD_LOGIC;
        data_0_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_1_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_2_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        data_3_V_read : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_softmax_fu_48 : component softmax
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_softmax_fu_48_ap_start,
        ap_done => grp_softmax_fu_48_ap_done,
        ap_idle => grp_softmax_fu_48_ap_idle,
        ap_ready => grp_softmax_fu_48_ap_ready,
        data_0_V_read => logits2_0_V_reg_290,
        data_1_V_read => logits2_1_V_reg_295,
        data_2_V_read => logits2_2_V_reg_300,
        data_3_V_read => logits2_3_V_reg_305,
        ap_return_0 => grp_softmax_fu_48_ap_return_0,
        ap_return_1 => grp_softmax_fu_48_ap_return_1,
        ap_return_2 => grp_softmax_fu_48_ap_return_2,
        ap_return_3 => grp_softmax_fu_48_ap_return_3);

    grp_compute_layer_0_0_0_1_fu_60 : component compute_layer_0_0_0_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_0_V_read => layer1_relu_out_0_V_reg_270,
        data_1_V_read => layer1_relu_out_1_V_reg_275,
        data_2_V_read => layer1_relu_out_2_V_reg_280,
        data_3_V_read => layer1_relu_out_3_V_reg_285,
        ap_return_0 => grp_compute_layer_0_0_0_1_fu_60_ap_return_0,
        ap_return_1 => grp_compute_layer_0_0_0_1_fu_60_ap_return_1,
        ap_return_2 => grp_compute_layer_0_0_0_1_fu_60_ap_return_2,
        ap_return_3 => grp_compute_layer_0_0_0_1_fu_60_ap_return_3,
        ap_ce => grp_compute_layer_0_0_0_1_fu_60_ap_ce);

    grp_compute_layer_0_0_0_2_fu_68 : component compute_layer_0_0_0_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_V_read => data_V_read,
        ap_return_0 => grp_compute_layer_0_0_0_2_fu_68_ap_return_0,
        ap_return_1 => grp_compute_layer_0_0_0_2_fu_68_ap_return_1,
        ap_return_2 => grp_compute_layer_0_0_0_2_fu_68_ap_return_2,
        ap_return_3 => grp_compute_layer_0_0_0_2_fu_68_ap_return_3,
        ap_ce => grp_compute_layer_0_0_0_2_fu_68_ap_ce);

    call_ret3_relu_1_fu_74 : component relu_1
    port map (
        ap_ready => call_ret3_relu_1_fu_74_ap_ready,
        data_0_V_read => grp_compute_layer_0_0_0_2_fu_68_ap_return_0,
        data_1_V_read => grp_compute_layer_0_0_0_2_fu_68_ap_return_1,
        data_2_V_read => grp_compute_layer_0_0_0_2_fu_68_ap_return_2,
        data_3_V_read => grp_compute_layer_0_0_0_2_fu_68_ap_return_3,
        ap_return_0 => call_ret3_relu_1_fu_74_ap_return_0,
        ap_return_1 => call_ret3_relu_1_fu_74_ap_return_1,
        ap_return_2 => call_ret3_relu_1_fu_74_ap_return_2,
        ap_return_3 => call_ret3_relu_1_fu_74_ap_return_3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_softmax_fu_48_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_softmax_fu_48_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_logic_1 = ap_NS_fsm_state5))) then 
                    grp_softmax_fu_48_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_softmax_fu_48_ap_ready = ap_const_logic_1)) then 
                    grp_softmax_fu_48_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                call_ret5_reg_310_3 <= grp_softmax_fu_48_ap_return_3;
                logits3_2_V_reg_315 <= grp_softmax_fu_48_ap_return_2;
                logits3_V_1_0_logits_reg_326 <= logits3_V_1_0_logits_fu_152_p3;
                tmp_s_reg_321 <= tmp_s_fu_146_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                layer1_relu_out_0_V_reg_270 <= call_ret3_relu_1_fu_74_ap_return_0;
                layer1_relu_out_1_V_reg_275 <= call_ret3_relu_1_fu_74_ap_return_1;
                layer1_relu_out_2_V_reg_280 <= call_ret3_relu_1_fu_74_ap_return_2;
                layer1_relu_out_3_V_reg_285 <= call_ret3_relu_1_fu_74_ap_return_3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                logits2_0_V_reg_290 <= grp_compute_layer_0_0_0_1_fu_60_ap_return_0;
                logits2_1_V_reg_295 <= grp_compute_layer_0_0_0_1_fu_60_ap_return_1;
                logits2_2_V_reg_300 <= grp_compute_layer_0_0_0_1_fu_60_ap_return_2;
                logits2_3_V_reg_305 <= grp_compute_layer_0_0_0_1_fu_60_ap_return_3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                tmp_198_1_reg_332 <= tmp_198_1_fu_163_p2;
                tmp_198_2_reg_337 <= tmp_198_2_fu_173_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_NS_fsm_state5 <= ap_NS_fsm(4);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_293_fu_254_p5),128));

    grp_compute_layer_0_0_0_1_fu_60_ap_ce_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            grp_compute_layer_0_0_0_1_fu_60_ap_ce <= ap_const_logic_1;
        else 
            grp_compute_layer_0_0_0_1_fu_60_ap_ce <= ap_const_logic_0;
        end if; 
    end process;


    grp_compute_layer_0_0_0_2_fu_68_ap_ce_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
            grp_compute_layer_0_0_0_2_fu_68_ap_ce <= ap_const_logic_1;
        else 
            grp_compute_layer_0_0_0_2_fu_68_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_softmax_fu_48_ap_start <= grp_softmax_fu_48_ap_start_reg;
    logits3_V_1_0_logits_fu_152_p3 <= 
        grp_softmax_fu_48_ap_return_1 when (tmp_s_fu_146_p2(0) = '1') else 
        grp_softmax_fu_48_ap_return_0;
    logits3_V_2_0_logits_fu_167_p3 <= 
        logits3_2_V_reg_315 when (tmp_198_1_fu_163_p2(0) = '1') else 
        logits3_V_1_0_logits_reg_326;
    p_cast_cast_fu_179_p3 <= 
        ap_const_lv26_1000000 when (tmp_s_reg_321(0) = '1') else 
        ap_const_lv26_0;
    p_s_53_fu_197_p3 <= 
        p_s_fu_186_p3 when (tmp_fu_193_p2(0) = '1') else 
        p_cast_cast_fu_179_p3;
    p_s_fu_186_p3 <= 
        ap_const_lv26_3000000 when (tmp_198_2_reg_337(0) = '1') else 
        ap_const_lv26_2000000;
    tmp_121_cast_fu_211_p3 <= 
        ap_const_lv32_1000000 when (tmp_96_fu_205_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_122_cast_fu_225_p3 <= 
        ap_const_lv32_1000000 when (tmp_201_1_fu_219_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_123_cast_fu_239_p3 <= 
        ap_const_lv32_1000000 when (tmp_201_2_fu_233_p2(0) = '1') else 
        ap_const_lv32_0;
    tmp_198_1_fu_163_p2 <= "1" when (signed(logits3_2_V_reg_315) > signed(logits3_V_1_0_logits_reg_326)) else "0";
    tmp_198_2_fu_173_p2 <= "1" when (signed(call_ret5_reg_310_3) > signed(logits3_V_2_0_logits_fu_167_p3)) else "0";
    tmp_201_1_fu_219_p2 <= "1" when (p_s_53_fu_197_p3 = ap_const_lv26_1000000) else "0";
    tmp_201_2_fu_233_p2 <= "1" when (p_s_53_fu_197_p3 = ap_const_lv26_2000000) else "0";
    tmp_293_fu_254_p5 <= (((tmp_97_fu_247_p3 & tmp_123_cast_fu_239_p3) & tmp_122_cast_fu_225_p3) & tmp_121_cast_fu_211_p3);
    tmp_96_fu_205_p2 <= "1" when (p_s_53_fu_197_p3 = ap_const_lv26_0) else "0";
    tmp_97_fu_247_p3 <= 
        ap_const_lv25_1000000 when (tmp_198_2_reg_337(0) = '1') else 
        ap_const_lv25_0;
    tmp_fu_193_p2 <= (tmp_198_2_reg_337 or tmp_198_1_reg_332);
    tmp_s_fu_146_p2 <= "1" when (signed(grp_softmax_fu_48_ap_return_1) > signed(grp_softmax_fu_48_ap_return_0)) else "0";
end behav;
