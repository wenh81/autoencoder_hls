// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module decoder (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] data_V_read;
output  [127:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] layer1_relu_out_0_V_reg_270;
wire    ap_CS_fsm_state2;
reg   [31:0] layer1_relu_out_1_V_reg_275;
reg   [31:0] layer1_relu_out_2_V_reg_280;
reg   [31:0] layer1_relu_out_3_V_reg_285;
reg   [31:0] logits2_0_V_reg_290;
wire    ap_CS_fsm_state4;
reg   [31:0] logits2_1_V_reg_295;
reg   [31:0] logits2_2_V_reg_300;
reg   [31:0] logits2_3_V_reg_305;
wire   [31:0] grp_softmax_fu_48_ap_return_0;
wire   [31:0] grp_softmax_fu_48_ap_return_1;
wire   [31:0] grp_softmax_fu_48_ap_return_2;
wire   [31:0] grp_softmax_fu_48_ap_return_3;
reg   [31:0] call_ret3_reg_310_3;
wire    ap_CS_fsm_state10;
reg   [31:0] logits3_2_V_reg_315;
wire   [0:0] tmp_s_fu_146_p2;
reg   [0:0] tmp_s_reg_321;
wire   [31:0] logits3_V_1_0_logits_fu_152_p3;
reg   [31:0] logits3_V_1_0_logits_reg_326;
wire   [0:0] tmp_81_1_fu_163_p2;
reg   [0:0] tmp_81_1_reg_332;
wire    ap_CS_fsm_state11;
wire   [0:0] tmp_81_2_fu_173_p2;
reg   [0:0] tmp_81_2_reg_337;
wire    grp_softmax_fu_48_ap_start;
wire    grp_softmax_fu_48_ap_done;
wire    grp_softmax_fu_48_ap_idle;
wire    grp_softmax_fu_48_ap_ready;
wire   [31:0] grp_compute_layer_0_0_0_s_fu_60_ap_return_0;
wire   [31:0] grp_compute_layer_0_0_0_s_fu_60_ap_return_1;
wire   [31:0] grp_compute_layer_0_0_0_s_fu_60_ap_return_2;
wire   [31:0] grp_compute_layer_0_0_0_s_fu_60_ap_return_3;
reg    grp_compute_layer_0_0_0_s_fu_60_ap_ce;
wire    ap_CS_fsm_state3;
wire   [31:0] grp_compute_layer_0_0_0_1_fu_68_ap_return_0;
wire   [31:0] grp_compute_layer_0_0_0_1_fu_68_ap_return_1;
wire   [31:0] grp_compute_layer_0_0_0_1_fu_68_ap_return_2;
wire   [31:0] grp_compute_layer_0_0_0_1_fu_68_ap_return_3;
reg    grp_compute_layer_0_0_0_1_fu_68_ap_ce;
wire    call_ret1_relu_fu_74_ap_ready;
wire   [31:0] call_ret1_relu_fu_74_ap_return_0;
wire   [31:0] call_ret1_relu_fu_74_ap_return_1;
wire   [31:0] call_ret1_relu_fu_74_ap_return_2;
wire   [31:0] call_ret1_relu_fu_74_ap_return_3;
reg    grp_softmax_fu_48_ap_start_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_NS_fsm_state5;
wire    ap_CS_fsm_state5;
wire   [31:0] logits3_V_2_0_logits_fu_167_p3;
wire    ap_CS_fsm_state12;
wire   [0:0] tmp_fu_193_p2;
wire   [25:0] p_s_fu_186_p3;
wire   [25:0] p_cast_cast_fu_179_p3;
wire   [25:0] p_s_29_fu_197_p3;
wire   [0:0] tmp_35_fu_205_p2;
wire   [0:0] tmp_84_1_fu_219_p2;
wire   [0:0] tmp_84_2_fu_233_p2;
wire   [24:0] tmp_36_fu_247_p3;
wire   [31:0] tmp_50_cast_fu_239_p3;
wire   [31:0] tmp_49_cast_fu_225_p3;
wire   [31:0] tmp_48_cast_fu_211_p3;
wire   [120:0] tmp_160_fu_254_p5;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_softmax_fu_48_ap_start_reg = 1'b0;
end

softmax grp_softmax_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_softmax_fu_48_ap_start),
    .ap_done(grp_softmax_fu_48_ap_done),
    .ap_idle(grp_softmax_fu_48_ap_idle),
    .ap_ready(grp_softmax_fu_48_ap_ready),
    .data_0_V_read(logits2_0_V_reg_290),
    .data_1_V_read(logits2_1_V_reg_295),
    .data_2_V_read(logits2_2_V_reg_300),
    .data_3_V_read(logits2_3_V_reg_305),
    .ap_return_0(grp_softmax_fu_48_ap_return_0),
    .ap_return_1(grp_softmax_fu_48_ap_return_1),
    .ap_return_2(grp_softmax_fu_48_ap_return_2),
    .ap_return_3(grp_softmax_fu_48_ap_return_3)
);

compute_layer_0_0_0_s grp_compute_layer_0_0_0_s_fu_60(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_0_V_read(layer1_relu_out_0_V_reg_270),
    .data_1_V_read(layer1_relu_out_1_V_reg_275),
    .data_2_V_read(layer1_relu_out_2_V_reg_280),
    .data_3_V_read(layer1_relu_out_3_V_reg_285),
    .ap_return_0(grp_compute_layer_0_0_0_s_fu_60_ap_return_0),
    .ap_return_1(grp_compute_layer_0_0_0_s_fu_60_ap_return_1),
    .ap_return_2(grp_compute_layer_0_0_0_s_fu_60_ap_return_2),
    .ap_return_3(grp_compute_layer_0_0_0_s_fu_60_ap_return_3),
    .ap_ce(grp_compute_layer_0_0_0_s_fu_60_ap_ce)
);

compute_layer_0_0_0_1 grp_compute_layer_0_0_0_1_fu_68(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_V_read(data_V_read),
    .ap_return_0(grp_compute_layer_0_0_0_1_fu_68_ap_return_0),
    .ap_return_1(grp_compute_layer_0_0_0_1_fu_68_ap_return_1),
    .ap_return_2(grp_compute_layer_0_0_0_1_fu_68_ap_return_2),
    .ap_return_3(grp_compute_layer_0_0_0_1_fu_68_ap_return_3),
    .ap_ce(grp_compute_layer_0_0_0_1_fu_68_ap_ce)
);

relu call_ret1_relu_fu_74(
    .ap_ready(call_ret1_relu_fu_74_ap_ready),
    .data_0_V_read(grp_compute_layer_0_0_0_1_fu_68_ap_return_0),
    .data_1_V_read(grp_compute_layer_0_0_0_1_fu_68_ap_return_1),
    .data_2_V_read(grp_compute_layer_0_0_0_1_fu_68_ap_return_2),
    .data_3_V_read(grp_compute_layer_0_0_0_1_fu_68_ap_return_3),
    .ap_return_0(call_ret1_relu_fu_74_ap_return_0),
    .ap_return_1(call_ret1_relu_fu_74_ap_return_1),
    .ap_return_2(call_ret1_relu_fu_74_ap_return_2),
    .ap_return_3(call_ret1_relu_fu_74_ap_return_3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_softmax_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == ap_NS_fsm_state5))) begin
            grp_softmax_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_softmax_fu_48_ap_ready == 1'b1)) begin
            grp_softmax_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        call_ret3_reg_310_3 <= grp_softmax_fu_48_ap_return_3;
        logits3_2_V_reg_315 <= grp_softmax_fu_48_ap_return_2;
        logits3_V_1_0_logits_reg_326 <= logits3_V_1_0_logits_fu_152_p3;
        tmp_s_reg_321 <= tmp_s_fu_146_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        layer1_relu_out_0_V_reg_270 <= call_ret1_relu_fu_74_ap_return_0;
        layer1_relu_out_1_V_reg_275 <= call_ret1_relu_fu_74_ap_return_1;
        layer1_relu_out_2_V_reg_280 <= call_ret1_relu_fu_74_ap_return_2;
        layer1_relu_out_3_V_reg_285 <= call_ret1_relu_fu_74_ap_return_3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        logits2_0_V_reg_290 <= grp_compute_layer_0_0_0_s_fu_60_ap_return_0;
        logits2_1_V_reg_295 <= grp_compute_layer_0_0_0_s_fu_60_ap_return_1;
        logits2_2_V_reg_300 <= grp_compute_layer_0_0_0_s_fu_60_ap_return_2;
        logits2_3_V_reg_305 <= grp_compute_layer_0_0_0_s_fu_60_ap_return_3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_81_1_reg_332 <= tmp_81_1_fu_163_p2;
        tmp_81_2_reg_337 <= tmp_81_2_fu_173_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        grp_compute_layer_0_0_0_1_fu_68_ap_ce = 1'b1;
    end else begin
        grp_compute_layer_0_0_0_1_fu_68_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_compute_layer_0_0_0_s_fu_60_ap_ce = 1'b1;
    end else begin
        grp_compute_layer_0_0_0_s_fu_60_ap_ce = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_NS_fsm_state5 = ap_NS_fsm[32'd4];

assign ap_return = tmp_160_fu_254_p5;

assign grp_softmax_fu_48_ap_start = grp_softmax_fu_48_ap_start_reg;

assign logits3_V_1_0_logits_fu_152_p3 = ((tmp_s_fu_146_p2[0:0] === 1'b1) ? grp_softmax_fu_48_ap_return_1 : grp_softmax_fu_48_ap_return_0);

assign logits3_V_2_0_logits_fu_167_p3 = ((tmp_81_1_fu_163_p2[0:0] === 1'b1) ? logits3_2_V_reg_315 : logits3_V_1_0_logits_reg_326);

assign p_cast_cast_fu_179_p3 = ((tmp_s_reg_321[0:0] === 1'b1) ? 26'd16777216 : 26'd0);

assign p_s_29_fu_197_p3 = ((tmp_fu_193_p2[0:0] === 1'b1) ? p_s_fu_186_p3 : p_cast_cast_fu_179_p3);

assign p_s_fu_186_p3 = ((tmp_81_2_reg_337[0:0] === 1'b1) ? 26'd50331648 : 26'd33554432);

assign tmp_160_fu_254_p5 = {{{{tmp_36_fu_247_p3}, {tmp_50_cast_fu_239_p3}}, {tmp_49_cast_fu_225_p3}}, {tmp_48_cast_fu_211_p3}};

assign tmp_35_fu_205_p2 = ((p_s_29_fu_197_p3 == 26'd0) ? 1'b1 : 1'b0);

assign tmp_36_fu_247_p3 = ((tmp_81_2_reg_337[0:0] === 1'b1) ? 25'd16777216 : 25'd0);

assign tmp_48_cast_fu_211_p3 = ((tmp_35_fu_205_p2[0:0] === 1'b1) ? 32'd16777216 : 32'd0);

assign tmp_49_cast_fu_225_p3 = ((tmp_84_1_fu_219_p2[0:0] === 1'b1) ? 32'd16777216 : 32'd0);

assign tmp_50_cast_fu_239_p3 = ((tmp_84_2_fu_233_p2[0:0] === 1'b1) ? 32'd16777216 : 32'd0);

assign tmp_81_1_fu_163_p2 = (($signed(logits3_2_V_reg_315) > $signed(logits3_V_1_0_logits_reg_326)) ? 1'b1 : 1'b0);

assign tmp_81_2_fu_173_p2 = (($signed(call_ret3_reg_310_3) > $signed(logits3_V_2_0_logits_fu_167_p3)) ? 1'b1 : 1'b0);

assign tmp_84_1_fu_219_p2 = ((p_s_29_fu_197_p3 == 26'd16777216) ? 1'b1 : 1'b0);

assign tmp_84_2_fu_233_p2 = ((p_s_29_fu_197_p3 == 26'd33554432) ? 1'b1 : 1'b0);

assign tmp_fu_193_p2 = (tmp_81_2_reg_337 | tmp_81_1_reg_332);

assign tmp_s_fu_146_p2 = (($signed(grp_softmax_fu_48_ap_return_1) > $signed(grp_softmax_fu_48_ap_return_0)) ? 1'b1 : 1'b0);

endmodule //decoder