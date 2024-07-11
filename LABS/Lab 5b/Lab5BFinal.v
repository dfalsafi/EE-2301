`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 02:26:38 PM
// Design Name: 
// Module Name: Lab5BFinal
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


module Lab5BFinal(
input [7:0] inputNumber,
input RightNotLeft,
input [2:0]N,
input reset,
input clk,
output [7:0] OutputNumber
    );
 reg [7:0]OutputNumber;
    
always @(posedge clk or posedge reset)
 begin
    if (reset) begin
        OutputNumber <= 8'b0;
    end
    else begin
        if(RightNotLeft) 
        OutputNumber <= (inputNumber>>N) | (inputNumber<<(8-N));   
        else
        OutputNumber <=( inputNumber << N )| ( inputNumber >>(8-N));
    end
 end

endmodule
