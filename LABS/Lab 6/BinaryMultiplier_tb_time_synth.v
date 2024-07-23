// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jul 23 14:31:40 2024
// Host        : ECE-LAB103 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/falsa003/Desktop/Danyal_EE2301_Lab/lab 6/lab
//               6.sim/sim_1/synth/timing/xsim/BinaryMultiplier_tb_time_synth.v}
// Design      : BinaryMultiplier
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module BinaryMultiplier
   (Multiplier,
    Multiplicand,
    CLK,
    set,
    Product);
  input [7:0]Multiplier;
  input [7:0]Multiplicand;
  input CLK;
  input set;
  output [15:0]Product;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire [7:0]Multiplicand;
  wire [7:0]Multiplicand_IBUF;
  wire [7:0]Multiplier;
  wire [7:0]Multiplier_IBUF;
  wire [15:0]Product;
  wire \Product[15]_i_1_n_0 ;
  wire \Product[15]_i_2_n_0 ;
  wire [15:0]Product_OBUF;
  wire [16:0]acc;
  wire [16:7]acc0;
  wire \acc[10]_i_3_n_0 ;
  wire \acc[10]_i_4_n_0 ;
  wire \acc[10]_i_5_n_0 ;
  wire \acc[14]_i_3_n_0 ;
  wire \acc[14]_i_4_n_0 ;
  wire \acc[14]_i_5_n_0 ;
  wire \acc[14]_i_6_n_0 ;
  wire \acc[16]_i_1_n_0 ;
  wire \acc[16]_i_4_n_0 ;
  wire \acc_reg[10]_i_2_n_0 ;
  wire \acc_reg[10]_i_2_n_1 ;
  wire \acc_reg[10]_i_2_n_2 ;
  wire \acc_reg[10]_i_2_n_3 ;
  wire \acc_reg[14]_i_2_n_0 ;
  wire \acc_reg[14]_i_2_n_1 ;
  wire \acc_reg[14]_i_2_n_2 ;
  wire \acc_reg[14]_i_2_n_3 ;
  wire \acc_reg[16]_i_3_n_3 ;
  wire \acc_reg_n_0_[0] ;
  wire \acc_reg_n_0_[10] ;
  wire \acc_reg_n_0_[11] ;
  wire \acc_reg_n_0_[12] ;
  wire \acc_reg_n_0_[13] ;
  wire \acc_reg_n_0_[14] ;
  wire \acc_reg_n_0_[15] ;
  wire \acc_reg_n_0_[16] ;
  wire \acc_reg_n_0_[1] ;
  wire \acc_reg_n_0_[2] ;
  wire \acc_reg_n_0_[3] ;
  wire \acc_reg_n_0_[4] ;
  wire \acc_reg_n_0_[5] ;
  wire \acc_reg_n_0_[6] ;
  wire \acc_reg_n_0_[7] ;
  wire \acc_reg_n_0_[8] ;
  wire \acc_reg_n_0_[9] ;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire done;
  wire done_i_1_n_0;
  wire done_reg_n_0;
  wire set;
  wire set_IBUF;
  wire [0:0]state__0;
  wire [3:1]\NLW_acc_reg[16]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_acc_reg[16]_i_3_O_UNCONNECTED ;

initial begin
 $sdf_annotate("BinaryMultiplier_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA5572)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0),
        .I1(\acc_reg_n_0_[0] ),
        .I2(set_IBUF),
        .I3(done),
        .I4(done_reg_n_0),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0F00B30)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\acc_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(done),
        .I3(state__0),
        .I4(done_reg_n_0),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(done),
        .R(1'b0));
  IBUF \Multiplicand_IBUF[0]_inst 
       (.I(Multiplicand[0]),
        .O(Multiplicand_IBUF[0]));
  IBUF \Multiplicand_IBUF[1]_inst 
       (.I(Multiplicand[1]),
        .O(Multiplicand_IBUF[1]));
  IBUF \Multiplicand_IBUF[2]_inst 
       (.I(Multiplicand[2]),
        .O(Multiplicand_IBUF[2]));
  IBUF \Multiplicand_IBUF[3]_inst 
       (.I(Multiplicand[3]),
        .O(Multiplicand_IBUF[3]));
  IBUF \Multiplicand_IBUF[4]_inst 
       (.I(Multiplicand[4]),
        .O(Multiplicand_IBUF[4]));
  IBUF \Multiplicand_IBUF[5]_inst 
       (.I(Multiplicand[5]),
        .O(Multiplicand_IBUF[5]));
  IBUF \Multiplicand_IBUF[6]_inst 
       (.I(Multiplicand[6]),
        .O(Multiplicand_IBUF[6]));
  IBUF \Multiplicand_IBUF[7]_inst 
       (.I(Multiplicand[7]),
        .O(Multiplicand_IBUF[7]));
  IBUF \Multiplier_IBUF[0]_inst 
       (.I(Multiplier[0]),
        .O(Multiplier_IBUF[0]));
  IBUF \Multiplier_IBUF[1]_inst 
       (.I(Multiplier[1]),
        .O(Multiplier_IBUF[1]));
  IBUF \Multiplier_IBUF[2]_inst 
       (.I(Multiplier[2]),
        .O(Multiplier_IBUF[2]));
  IBUF \Multiplier_IBUF[3]_inst 
       (.I(Multiplier[3]),
        .O(Multiplier_IBUF[3]));
  IBUF \Multiplier_IBUF[4]_inst 
       (.I(Multiplier[4]),
        .O(Multiplier_IBUF[4]));
  IBUF \Multiplier_IBUF[5]_inst 
       (.I(Multiplier[5]),
        .O(Multiplier_IBUF[5]));
  IBUF \Multiplier_IBUF[6]_inst 
       (.I(Multiplier[6]),
        .O(Multiplier_IBUF[6]));
  IBUF \Multiplier_IBUF[7]_inst 
       (.I(Multiplier[7]),
        .O(Multiplier_IBUF[7]));
  LUT4 #(
    .INIT(16'h0002)) 
    \Product[15]_i_1 
       (.I0(set_IBUF),
        .I1(done_reg_n_0),
        .I2(state__0),
        .I3(done),
        .O(\Product[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2210)) 
    \Product[15]_i_2 
       (.I0(state__0),
        .I1(done_reg_n_0),
        .I2(set_IBUF),
        .I3(done),
        .O(\Product[15]_i_2_n_0 ));
  OBUF \Product_OBUF[0]_inst 
       (.I(Product_OBUF[0]),
        .O(Product[0]));
  OBUF \Product_OBUF[10]_inst 
       (.I(Product_OBUF[10]),
        .O(Product[10]));
  OBUF \Product_OBUF[11]_inst 
       (.I(Product_OBUF[11]),
        .O(Product[11]));
  OBUF \Product_OBUF[12]_inst 
       (.I(Product_OBUF[12]),
        .O(Product[12]));
  OBUF \Product_OBUF[13]_inst 
       (.I(Product_OBUF[13]),
        .O(Product[13]));
  OBUF \Product_OBUF[14]_inst 
       (.I(Product_OBUF[14]),
        .O(Product[14]));
  OBUF \Product_OBUF[15]_inst 
       (.I(Product_OBUF[15]),
        .O(Product[15]));
  OBUF \Product_OBUF[1]_inst 
       (.I(Product_OBUF[1]),
        .O(Product[1]));
  OBUF \Product_OBUF[2]_inst 
       (.I(Product_OBUF[2]),
        .O(Product[2]));
  OBUF \Product_OBUF[3]_inst 
       (.I(Product_OBUF[3]),
        .O(Product[3]));
  OBUF \Product_OBUF[4]_inst 
       (.I(Product_OBUF[4]),
        .O(Product[4]));
  OBUF \Product_OBUF[5]_inst 
       (.I(Product_OBUF[5]),
        .O(Product[5]));
  OBUF \Product_OBUF[6]_inst 
       (.I(Product_OBUF[6]),
        .O(Product[6]));
  OBUF \Product_OBUF[7]_inst 
       (.I(Product_OBUF[7]),
        .O(Product[7]));
  OBUF \Product_OBUF[8]_inst 
       (.I(Product_OBUF[8]),
        .O(Product[8]));
  OBUF \Product_OBUF[9]_inst 
       (.I(Product_OBUF[9]),
        .O(Product[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[0] ),
        .Q(Product_OBUF[0]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[10] ),
        .Q(Product_OBUF[10]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[11] ),
        .Q(Product_OBUF[11]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[12] ),
        .Q(Product_OBUF[12]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[13] ),
        .Q(Product_OBUF[13]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[14] ),
        .Q(Product_OBUF[14]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[15] ),
        .Q(Product_OBUF[15]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[1] ),
        .Q(Product_OBUF[1]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[2] ),
        .Q(Product_OBUF[2]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[3] ),
        .Q(Product_OBUF[3]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[4] ),
        .Q(Product_OBUF[4]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[5] ),
        .Q(Product_OBUF[5]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[6] ),
        .Q(Product_OBUF[6]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[7] ),
        .Q(Product_OBUF[7]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[8] ),
        .Q(Product_OBUF[8]),
        .R(\Product[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Product_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Product[15]_i_2_n_0 ),
        .D(\acc_reg_n_0_[9] ),
        .Q(Product_OBUF[9]),
        .R(\Product[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4F5F4A0)) 
    \acc[0]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[0] ),
        .I2(\acc_reg_n_0_[1] ),
        .I3(state__0),
        .I4(Multiplier_IBUF[0]),
        .O(acc[0]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[10]_i_1 
       (.I0(acc0[10]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[11] ),
        .I4(done),
        .O(acc[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[10]_i_3 
       (.I0(\acc_reg_n_0_[10] ),
        .I1(Multiplicand_IBUF[2]),
        .O(\acc[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[10]_i_4 
       (.I0(\acc_reg_n_0_[9] ),
        .I1(Multiplicand_IBUF[1]),
        .O(\acc[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[10]_i_5 
       (.I0(\acc_reg_n_0_[8] ),
        .I1(Multiplicand_IBUF[0]),
        .O(\acc[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[11]_i_1 
       (.I0(acc0[11]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[12] ),
        .I4(done),
        .O(acc[11]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[12]_i_1 
       (.I0(acc0[12]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[13] ),
        .I4(done),
        .O(acc[12]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[13]_i_1 
       (.I0(acc0[13]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[14] ),
        .I4(done),
        .O(acc[13]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[14]_i_1 
       (.I0(acc0[14]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[15] ),
        .I4(done),
        .O(acc[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[14]_i_3 
       (.I0(\acc_reg_n_0_[14] ),
        .I1(Multiplicand_IBUF[6]),
        .O(\acc[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[14]_i_4 
       (.I0(\acc_reg_n_0_[13] ),
        .I1(Multiplicand_IBUF[5]),
        .O(\acc[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[14]_i_5 
       (.I0(\acc_reg_n_0_[12] ),
        .I1(Multiplicand_IBUF[4]),
        .O(\acc[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[14]_i_6 
       (.I0(\acc_reg_n_0_[11] ),
        .I1(Multiplicand_IBUF[3]),
        .O(\acc[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[15]_i_1 
       (.I0(acc0[15]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[16] ),
        .I4(done),
        .O(acc[15]));
  LUT4 #(
    .INIT(16'h0076)) 
    \acc[16]_i_1 
       (.I0(state__0),
        .I1(done),
        .I2(set_IBUF),
        .I3(done_reg_n_0),
        .O(\acc[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \acc[16]_i_2 
       (.I0(state__0),
        .I1(acc0[16]),
        .I2(\acc_reg_n_0_[0] ),
        .O(acc[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[16]_i_4 
       (.I0(\acc_reg_n_0_[15] ),
        .I1(Multiplicand_IBUF[7]),
        .O(\acc[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[1]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[1] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[2] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[1]),
        .O(acc[1]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[2]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[2] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[3] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[2]),
        .O(acc[2]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[3]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[3] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[4] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[3]),
        .O(acc[3]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[4]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[4] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[5] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[4]),
        .O(acc[4]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[5]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[5] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[6] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[5]),
        .O(acc[5]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[6]_i_1 
       (.I0(done),
        .I1(\acc_reg_n_0_[6] ),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[7] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[6]),
        .O(acc[6]));
  LUT6 #(
    .INIT(64'hEF40FF55EF40AA00)) 
    \acc[7]_i_1 
       (.I0(done),
        .I1(acc0[7]),
        .I2(\acc_reg_n_0_[0] ),
        .I3(\acc_reg_n_0_[8] ),
        .I4(state__0),
        .I5(Multiplier_IBUF[7]),
        .O(acc[7]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[8]_i_1 
       (.I0(acc0[8]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[9] ),
        .I4(done),
        .O(acc[8]));
  LUT5 #(
    .INIT(32'hFF80B080)) 
    \acc[9]_i_1 
       (.I0(acc0[9]),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(\acc_reg_n_0_[10] ),
        .I4(done),
        .O(acc[9]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[0]),
        .Q(\acc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[10]),
        .Q(\acc_reg_n_0_[10] ),
        .R(1'b0));
  CARRY4 \acc_reg[10]_i_2 
       (.CI(1'b0),
        .CO({\acc_reg[10]_i_2_n_0 ,\acc_reg[10]_i_2_n_1 ,\acc_reg[10]_i_2_n_2 ,\acc_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[10] ,\acc_reg_n_0_[9] ,\acc_reg_n_0_[8] ,1'b0}),
        .O(acc0[10:7]),
        .S({\acc[10]_i_3_n_0 ,\acc[10]_i_4_n_0 ,\acc[10]_i_5_n_0 ,\acc_reg_n_0_[7] }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[11]),
        .Q(\acc_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[12]),
        .Q(\acc_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[13]),
        .Q(\acc_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[14]),
        .Q(\acc_reg_n_0_[14] ),
        .R(1'b0));
  CARRY4 \acc_reg[14]_i_2 
       (.CI(\acc_reg[10]_i_2_n_0 ),
        .CO({\acc_reg[14]_i_2_n_0 ,\acc_reg[14]_i_2_n_1 ,\acc_reg[14]_i_2_n_2 ,\acc_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\acc_reg_n_0_[14] ,\acc_reg_n_0_[13] ,\acc_reg_n_0_[12] ,\acc_reg_n_0_[11] }),
        .O(acc0[14:11]),
        .S({\acc[14]_i_3_n_0 ,\acc[14]_i_4_n_0 ,\acc[14]_i_5_n_0 ,\acc[14]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[15]),
        .Q(\acc_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[16]),
        .Q(\acc_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \acc_reg[16]_i_3 
       (.CI(\acc_reg[14]_i_2_n_0 ),
        .CO({\NLW_acc_reg[16]_i_3_CO_UNCONNECTED [3:1],\acc_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\acc_reg_n_0_[15] }),
        .O({\NLW_acc_reg[16]_i_3_O_UNCONNECTED [3:2],acc0[16:15]}),
        .S({1'b0,1'b0,\acc_reg_n_0_[16] ,\acc[16]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[1]),
        .Q(\acc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[2]),
        .Q(\acc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[3]),
        .Q(\acc_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[4]),
        .Q(\acc_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[5]),
        .Q(\acc_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[6]),
        .Q(\acc_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[7]),
        .Q(\acc_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[8]),
        .Q(\acc_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\acc[16]_i_1_n_0 ),
        .D(acc[9]),
        .Q(\acc_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF0CF00000A20)) 
    \count[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\acc_reg_n_0_[0] ),
        .I2(state__0),
        .I3(done),
        .I4(done_reg_n_0),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count[2]_i_2_n_0 ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[2]_i_2_n_0 ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0034)) 
    \count[2]_i_2 
       (.I0(\acc_reg_n_0_[0] ),
        .I1(state__0),
        .I2(done),
        .I3(done_reg_n_0),
        .O(\count[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFAE0)) 
    done_i_1
       (.I0(state__0),
        .I1(set_IBUF),
        .I2(done_reg_n_0),
        .I3(done),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_reg_n_0),
        .R(1'b0));
  IBUF set_IBUF_inst
       (.I(set),
        .O(set_IBUF));
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
