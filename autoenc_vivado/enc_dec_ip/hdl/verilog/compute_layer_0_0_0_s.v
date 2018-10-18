// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_layer_0_0_0_s (
        ap_clk,
        ap_rst,
        data_V_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [127:0] data_V_read;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
input   ap_ce;

reg   [31:0] tmp_s_reg_1631;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] tmp_138_0_1_reg_1636;
reg   [26:0] tmp_103_reg_1641;
reg   [30:0] tmp_105_reg_1646;
reg   [31:0] tmp_138_1_reg_1651;
reg   [31:0] tmp_138_1_1_reg_1656;
reg   [31:0] tmp_138_1_2_reg_1661;
reg   [30:0] tmp_108_reg_1666;
reg   [31:0] tmp_138_2_reg_1671;
reg   [30:0] tmp_111_reg_1676;
reg   [30:0] tmp_113_reg_1681;
reg   [31:0] tmp_138_2_3_reg_1686;
reg   [31:0] tmp_138_3_reg_1691;
reg   [30:0] tmp_116_reg_1696;
reg   [31:0] tmp_138_3_2_reg_1701;
reg   [30:0] tmp_118_reg_1706;
wire  signed [31:0] p_Val2_3_3_fu_100_p1;
wire  signed [54:0] OP1_V_3_cast1_fu_1447_p1;
wire    ap_block_pp0_stage0;
wire  signed [31:0] p_Val2_s_fu_101_p1;
wire  signed [55:0] OP1_V_cast_fu_1267_p1;
wire  signed [31:0] p_Val2_2_1_fu_102_p1;
wire  signed [54:0] OP1_V_2_cast1_fu_1385_p1;
wire  signed [31:0] p_Val2_1_fu_103_p1;
wire  signed [55:0] OP1_V_1_cast_fu_1328_p1;
wire  signed [31:0] p_Val2_1_1_fu_104_p1;
wire  signed [31:0] p_Val2_0_1_fu_105_p1;
wire  signed [31:0] p_Val2_1_2_fu_106_p1;
wire  signed [31:0] p_Val2_2_3_fu_107_p1;
wire  signed [55:0] OP1_V_2_cast_fu_1391_p1;
wire  signed [31:0] p_Val2_0_3_fu_108_p1;
wire  signed [31:0] p_Val2_2_fu_109_p1;
wire  signed [31:0] p_Val2_2_2_fu_110_p1;
wire  signed [31:0] p_Val2_3_fu_111_p1;
wire  signed [55:0] OP1_V_3_cast_fu_1453_p1;
wire  signed [31:0] p_Val2_1_3_fu_112_p1;
wire  signed [31:0] p_Val2_3_1_fu_113_p1;
wire  signed [31:0] p_Val2_3_2_fu_114_p1;
wire  signed [31:0] p_Val2_0_2_fu_115_p1;
wire  signed [31:0] tmp_295_fu_1253_p1;
wire   [55:0] p_Val2_s_fu_101_p2;
wire   [55:0] p_Val2_0_1_fu_105_p2;
wire   [50:0] p_Val2_0_2_fu_115_p2;
wire   [54:0] p_Val2_0_3_fu_108_p2;
wire  signed [31:0] tmp_107_fu_1313_p4;
wire   [55:0] p_Val2_1_fu_103_p2;
wire   [55:0] p_Val2_1_1_fu_104_p2;
wire   [55:0] p_Val2_1_2_fu_106_p2;
wire   [54:0] p_Val2_1_3_fu_112_p2;
wire  signed [31:0] tmp_110_fu_1375_p4;
wire   [55:0] p_Val2_2_fu_109_p2;
wire   [54:0] p_Val2_2_1_fu_102_p2;
wire   [54:0] p_Val2_2_2_fu_110_p2;
wire   [55:0] p_Val2_2_3_fu_107_p2;
wire  signed [31:0] tmp_115_fu_1437_p4;
wire   [55:0] p_Val2_3_fu_111_p2;
wire   [54:0] p_Val2_3_1_fu_113_p2;
wire   [55:0] p_Val2_3_2_fu_114_p2;
wire   [54:0] p_Val2_3_3_fu_100_p2;
wire   [31:0] tmp3_fu_1524_p2;
wire   [31:0] tmp1_fu_1520_p2;
wire   [31:0] tmp2_fu_1529_p2;
wire  signed [31:0] tmp_117_fu_1514_p1;
wire  signed [31:0] tmp_112_fu_1508_p1;
wire   [31:0] tmp6_fu_1544_p2;
wire   [31:0] tmp4_fu_1540_p2;
wire   [31:0] tmp5_fu_1550_p2;
wire  signed [31:0] tmp_104_fu_1499_p1;
wire  signed [31:0] tmp_114_fu_1511_p1;
wire   [31:0] tmp9_fu_1567_p2;
wire   [31:0] tmp7_fu_1562_p2;
wire   [31:0] tmp8_fu_1572_p2;
wire  signed [31:0] tmp_109_fu_1505_p1;
wire  signed [31:0] tmp_106_fu_1502_p1;
wire  signed [31:0] tmp_119_fu_1517_p1;
wire   [31:0] tmp12_fu_1590_p2;
wire   [31:0] tmp10_fu_1584_p2;
wire   [31:0] tmp11_fu_1596_p2;
wire   [31:0] res_0_V_write_assig_fu_1534_p2;
wire   [31:0] res_1_V_write_assig_fu_1556_p2;
wire   [31:0] res_2_V_write_assig_fu_1578_p2;
wire   [31:0] res_3_V_write_assig_fu_1601_p2;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        tmp_103_reg_1641 <= {{p_Val2_0_2_fu_115_p2[50:24]}};
        tmp_105_reg_1646 <= {{p_Val2_0_3_fu_108_p2[54:24]}};
        tmp_108_reg_1666 <= {{p_Val2_1_3_fu_112_p2[54:24]}};
        tmp_111_reg_1676 <= {{p_Val2_2_1_fu_102_p2[54:24]}};
        tmp_113_reg_1681 <= {{p_Val2_2_2_fu_110_p2[54:24]}};
        tmp_116_reg_1696 <= {{p_Val2_3_1_fu_113_p2[54:24]}};
        tmp_118_reg_1706 <= {{p_Val2_3_3_fu_100_p2[54:24]}};
        tmp_138_0_1_reg_1636 <= {{p_Val2_0_1_fu_105_p2[55:24]}};
        tmp_138_1_1_reg_1656 <= {{p_Val2_1_1_fu_104_p2[55:24]}};
        tmp_138_1_2_reg_1661 <= {{p_Val2_1_2_fu_106_p2[55:24]}};
        tmp_138_1_reg_1651 <= {{p_Val2_1_fu_103_p2[55:24]}};
        tmp_138_2_3_reg_1686 <= {{p_Val2_2_3_fu_107_p2[55:24]}};
        tmp_138_2_reg_1671 <= {{p_Val2_2_fu_109_p2[55:24]}};
        tmp_138_3_2_reg_1701 <= {{p_Val2_3_2_fu_114_p2[55:24]}};
        tmp_138_3_reg_1691 <= {{p_Val2_3_fu_111_p2[55:24]}};
        tmp_s_reg_1631 <= {{p_Val2_s_fu_101_p2[55:24]}};
    end
end

assign OP1_V_1_cast_fu_1328_p1 = tmp_107_fu_1313_p4;

assign OP1_V_2_cast1_fu_1385_p1 = tmp_110_fu_1375_p4;

assign OP1_V_2_cast_fu_1391_p1 = tmp_110_fu_1375_p4;

assign OP1_V_3_cast1_fu_1447_p1 = tmp_115_fu_1437_p4;

assign OP1_V_3_cast_fu_1453_p1 = tmp_115_fu_1437_p4;

assign OP1_V_cast_fu_1267_p1 = tmp_295_fu_1253_p1;

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return_0 = res_0_V_write_assig_fu_1534_p2;

assign ap_return_1 = res_1_V_write_assig_fu_1556_p2;

assign ap_return_2 = res_2_V_write_assig_fu_1578_p2;

assign ap_return_3 = res_3_V_write_assig_fu_1601_p2;

assign p_Val2_0_1_fu_105_p1 = OP1_V_cast_fu_1267_p1;

assign p_Val2_0_1_fu_105_p2 = ($signed({{1'b0}, {56'd15357447}}) * $signed(p_Val2_0_1_fu_105_p1));

assign p_Val2_0_2_fu_115_p1 = tmp_295_fu_1253_p1;

assign p_Val2_0_2_fu_115_p2 = ($signed({{1'b0}, {51'd510029}}) * $signed(p_Val2_0_2_fu_115_p1));

assign p_Val2_0_3_fu_108_p1 = tmp_295_fu_1253_p1;

assign p_Val2_0_3_fu_108_p2 = ($signed(55'd36028797011366141) * $signed(p_Val2_0_3_fu_108_p1));

assign p_Val2_1_1_fu_104_p1 = OP1_V_1_cast_fu_1328_p1;

assign p_Val2_1_1_fu_104_p2 = ($signed(56'd72057594027532653) * $signed(p_Val2_1_1_fu_104_p1));

assign p_Val2_1_2_fu_106_p1 = OP1_V_1_cast_fu_1328_p1;

assign p_Val2_1_2_fu_106_p2 = ($signed(56'd72057594029310615) * $signed(p_Val2_1_2_fu_106_p1));

assign p_Val2_1_3_fu_112_p1 = tmp_107_fu_1313_p4;

assign p_Val2_1_3_fu_112_p2 = ($signed(55'd36028797010750686) * $signed(p_Val2_1_3_fu_112_p1));

assign p_Val2_1_fu_103_p1 = OP1_V_1_cast_fu_1328_p1;

assign p_Val2_1_fu_103_p2 = ($signed(56'd72057594021897685) * $signed(p_Val2_1_fu_103_p1));

assign p_Val2_2_1_fu_102_p1 = OP1_V_2_cast1_fu_1385_p1;

assign p_Val2_2_1_fu_102_p2 = ($signed({{1'b0}, {55'd6308704}}) * $signed(p_Val2_2_1_fu_102_p1));

assign p_Val2_2_2_fu_110_p1 = OP1_V_2_cast1_fu_1385_p1;

assign p_Val2_2_2_fu_110_p2 = ($signed(55'd36028797014058924) * $signed(p_Val2_2_2_fu_110_p1));

assign p_Val2_2_3_fu_107_p1 = OP1_V_2_cast_fu_1391_p1;

assign p_Val2_2_3_fu_107_p2 = ($signed({{1'b0}, {56'd39604611}}) * $signed(p_Val2_2_3_fu_107_p1));

assign p_Val2_2_fu_109_p1 = OP1_V_2_cast_fu_1391_p1;

assign p_Val2_2_fu_109_p2 = ($signed(56'd72057594027506582) * $signed(p_Val2_2_fu_109_p1));

assign p_Val2_3_1_fu_113_p1 = OP1_V_3_cast1_fu_1447_p1;

assign p_Val2_3_1_fu_113_p2 = ($signed(55'd36028797012575045) * $signed(p_Val2_3_1_fu_113_p1));

assign p_Val2_3_2_fu_114_p1 = OP1_V_3_cast_fu_1453_p1;

assign p_Val2_3_2_fu_114_p2 = ($signed(56'd72057594028152224) * $signed(p_Val2_3_2_fu_114_p1));

assign p_Val2_3_3_fu_100_p1 = OP1_V_3_cast1_fu_1447_p1;

assign p_Val2_3_3_fu_100_p2 = ($signed({{1'b0}, {55'd4726739}}) * $signed(p_Val2_3_3_fu_100_p1));

assign p_Val2_3_fu_111_p1 = OP1_V_3_cast_fu_1453_p1;

assign p_Val2_3_fu_111_p2 = ($signed({{1'b0}, {56'd45645548}}) * $signed(p_Val2_3_fu_111_p1));

assign p_Val2_s_fu_101_p1 = OP1_V_cast_fu_1267_p1;

assign p_Val2_s_fu_101_p2 = ($signed(56'd72057594023469229) * $signed(p_Val2_s_fu_101_p1));

assign res_0_V_write_assig_fu_1534_p2 = (tmp1_fu_1520_p2 + tmp2_fu_1529_p2);

assign res_1_V_write_assig_fu_1556_p2 = (tmp4_fu_1540_p2 + tmp5_fu_1550_p2);

assign res_2_V_write_assig_fu_1578_p2 = (tmp7_fu_1562_p2 + tmp8_fu_1572_p2);

assign res_3_V_write_assig_fu_1601_p2 = (tmp10_fu_1584_p2 + tmp11_fu_1596_p2);

assign tmp10_fu_1584_p2 = ($signed(tmp_109_fu_1505_p1) + $signed(tmp_106_fu_1502_p1));

assign tmp11_fu_1596_p2 = (tmp_138_2_3_reg_1686 + tmp12_fu_1590_p2);

assign tmp12_fu_1590_p2 = ($signed(32'd786494) + $signed(tmp_119_fu_1517_p1));

assign tmp1_fu_1520_p2 = (tmp_138_1_reg_1651 + tmp_s_reg_1631);

assign tmp2_fu_1529_p2 = (tmp_138_2_reg_1671 + tmp3_fu_1524_p2);

assign tmp3_fu_1524_p2 = (32'd8578415 + tmp_138_3_reg_1691);

assign tmp4_fu_1540_p2 = (tmp_138_1_1_reg_1656 + tmp_138_0_1_reg_1636);

assign tmp5_fu_1550_p2 = ($signed(tmp_112_fu_1508_p1) + $signed(tmp6_fu_1544_p2));

assign tmp6_fu_1544_p2 = ($signed(32'd3897391) + $signed(tmp_117_fu_1514_p1));

assign tmp7_fu_1562_p2 = ($signed(tmp_138_1_2_reg_1661) + $signed(tmp_104_fu_1499_p1));

assign tmp8_fu_1572_p2 = ($signed(tmp_114_fu_1511_p1) + $signed(tmp9_fu_1567_p2));

assign tmp9_fu_1567_p2 = ($signed(32'd4291875276) + $signed(tmp_138_3_2_reg_1701));

assign tmp_104_fu_1499_p1 = $signed(tmp_103_reg_1641);

assign tmp_106_fu_1502_p1 = $signed(tmp_105_reg_1646);

assign tmp_107_fu_1313_p4 = {{data_V_read[63:32]}};

assign tmp_109_fu_1505_p1 = $signed(tmp_108_reg_1666);

assign tmp_110_fu_1375_p4 = {{data_V_read[95:64]}};

assign tmp_112_fu_1508_p1 = $signed(tmp_111_reg_1676);

assign tmp_114_fu_1511_p1 = $signed(tmp_113_reg_1681);

assign tmp_115_fu_1437_p4 = {{data_V_read[127:96]}};

assign tmp_117_fu_1514_p1 = $signed(tmp_116_reg_1696);

assign tmp_119_fu_1517_p1 = $signed(tmp_118_reg_1706);

assign tmp_295_fu_1253_p1 = data_V_read[31:0];

endmodule //compute_layer_0_0_0_s
