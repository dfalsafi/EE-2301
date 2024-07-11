`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 02:42:07 PM
// Design Name: 
// Module Name: Lab5bfinal_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab5bfinal_tb(

    );
reg clk = 0;
reg RightNotLeft;
reg[7:0] inputNumber;
reg reset=0;
reg [2:0] N;
wire [7:0]OutputNumber;

Lab5BFinal inst(
 .inputNumber(inputNumber),
 .clk(clk), 
 .reset(reset),
 .RightNotLeft(RightNotLeft), 
 .N(N), 
 .OutputNumber(OutputNumber)
  );
    always #10 begin
        clk<=~clk;
    end       
    initial 
    begin
         inputNumber = 8'b00000000; N = 3'd0; RightNotLeft = 0;reset = 1;
        #40
        inputNumber=8'b11001100; RightNotLeft=1; N=3'd2;reset=0;
        #40
        inputNumber = 8'b10101010; RightNotLeft = 0; N = 3'd1;reset = 0; 
        #40
        inputNumber =8'b11100000; RightNotLeft=1; N=3'd5; reset = 0; 
        #40
        inputNumber = 8'b00000001; RightNotLeft = 0; N = 3'd7; reset = 0; 
        #40
        inputNumber = 8'b01010101; RightNotLeft = 1;  N = 3'd1;reset = 1;

        end


endmodule