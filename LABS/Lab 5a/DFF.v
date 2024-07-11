`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 02:51:55 PM
// Design Name: 
// Module Name: DFF
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


module DFF(
    output Q,
    input  D,
    input NRST,
    input CLK
    );

    reg Q;


    always @(posedge CLK, negedge NRST)
    begin
        if (~NRST)
            Q <= 1'b0;
        else 
            Q <= D; 
    end     
endmodule
