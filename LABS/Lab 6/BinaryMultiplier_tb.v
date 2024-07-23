`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2024 10:27:16 AM
// Design Name: 
// Module Name: BinaryMultiplier_tb
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


module BinaryMultiplier_tb();
    reg [7:0] Multcand;
    reg [7:0] Multplier;
    reg CLK = 0;
    reg set;
    wire [15:0] Product;
   
    BinaryMultiplier instanc(
    .Multiplicand(Multcand), 
    .Multiplier(Multplier),
    .CLK(CLK),
    .set(set),
    .Product(Product));
   
    always #8 begin
    CLK = ~CLK;
    end
   
    initial
    begin
    set = 0; Multcand = 0; Multplier = 0;
    #30
    set = 1; Multcand = 8'b00000000; Multplier = 8'b00000000;
    #400
    set = 0;
    #20
    set = 1; Multcand = 8'b11111111; Multplier = 8'b10100011;
    end
endmodule


