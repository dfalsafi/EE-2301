// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun 25 15:44:47 2024
// Host        : ECE-LAB103 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/falsa003/Desktop/Danyal_EE2301_Lab/lab3imp/lab3imp.sim/sim_1/impl/timing/xsim/StopLightVerilog_TB_time_impl.v
// Design      : StopLightVerilog
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "cf78e2d6" *) 
(* NotValidForBitStream *)
module StopLightVerilog
   (G1,
    Y1,
    R1,
    G2,
    Y2,
    R2,
    C0,
    C2,
    C1);
  output G1;
  output Y1;
  output R1;
  output G2;
  output Y2;
  output R2;
  input C0;
  input C2;
  input C1;

  wire C0;
  wire C0_IBUF;
  wire C1;
  wire C1_IBUF;
  wire C2;
  wire C2_IBUF;
  wire G1;
  wire G1_OBUF;
  wire G2;
  wire G2_OBUF;
  wire R1;
  wire R1_OBUF;
  wire R2;
  wire R2_OBUF;
  wire Y1;
  wire Y1_OBUF;
  wire Y2;
  wire Y2_OBUF;

initial begin
 $sdf_annotate("StopLightVerilog_TB_time_impl.sdf",,,,"tool_control");
end
  IBUF C0_IBUF_inst
       (.I(C0),
        .O(C0_IBUF));
  IBUF C1_IBUF_inst
       (.I(C1),
        .O(C1_IBUF));
  IBUF C2_IBUF_inst
       (.I(C2),
        .O(C2_IBUF));
  OBUF G1_OBUF_inst
       (.I(G1_OBUF),
        .O(G1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    G1_OBUF_inst_i_1
       (.I0(C1_IBUF),
        .I1(C0_IBUF),
        .I2(C2_IBUF),
        .O(G1_OBUF));
  OBUF G2_OBUF_inst
       (.I(G2_OBUF),
        .O(G2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    G2_OBUF_inst_i_1
       (.I0(C2_IBUF),
        .I1(C1_IBUF),
        .I2(C0_IBUF),
        .O(G2_OBUF));
  OBUF R1_OBUF_inst
       (.I(R1_OBUF),
        .O(R1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    R1_OBUF_inst_i_1
       (.I0(C2_IBUF),
        .I1(C0_IBUF),
        .I2(C1_IBUF),
        .O(R1_OBUF));
  OBUF R2_OBUF_inst
       (.I(R2_OBUF),
        .O(R2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    R2_OBUF_inst_i_1
       (.I0(C0_IBUF),
        .I1(C1_IBUF),
        .I2(C2_IBUF),
        .O(R2_OBUF));
  OBUF Y1_OBUF_inst
       (.I(Y1_OBUF),
        .O(Y1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    Y1_OBUF_inst_i_1
       (.I0(C0_IBUF),
        .I1(C1_IBUF),
        .I2(C2_IBUF),
        .O(Y1_OBUF));
  OBUF Y2_OBUF_inst
       (.I(Y2_OBUF),
        .O(Y2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Y2_OBUF_inst_i_1
       (.I0(C0_IBUF),
        .I1(C1_IBUF),
        .O(Y2_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
