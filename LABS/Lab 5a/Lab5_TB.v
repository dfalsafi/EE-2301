`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2024 01:16:09 PM
// Design Name: 
// Module Name: prelab3_TB
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

module Lab5_TB (
    // list your ports here if any
);


 reg Reset, Clock;
 wire NA,NB,NC;
 
Lab5_Schem inst (
    .RESET(Reset),
    .CLK(Clock),
    .A(NA),
    .B(NB),
    .C(NC)
    );
    

initial
begin
    Clock = 0;
    Reset = 1;
    #25
    Reset = 0;
    #25
    
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;
    #50
    Clock = 1;
    #50
    Clock = 0;

  
     end
     
endmodule
