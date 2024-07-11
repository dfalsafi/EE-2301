`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 11:36:34 AM
// Design Name: 
// Module Name: Lab5_Schem
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


module Lab5_Schem(
    output A,
    output B,
    output C,
    input RESET,
    input CLK
    );
    
    wire NextA, NextB, NextC;

       assign NextA = (~B) | (~C);
       assign NextB = A;
       assign NextC = B;
       
   DFF FA0(A, NextA, ~RESET, CLK);
   DFF FA1(B, NextB, ~RESET, CLK);
   DFF FA2(C, NextC, ~RESET, CLK);

endmodule
