`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2024 10:03:06 AM
// Design Name: 
// Module Name: BinaryMultiplier
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

module BinaryMultiplier(
input [7:0] Multiplier,
input [7:0] Multiplicand,
input CLK,
input set,
output reg [15:0] Product = 0
    );
   
    reg [1:0] currstate = 0;
    reg done = 0;
    reg [16:0] accumulator;
    reg [2:0] counter = 0;


   
   
    always @(posedge CLK) begin
        case(currstate)
            0 : begin
                if (~done && set) begin
                    Product <= 0;
                    accumulator <= Multiplier;
                    currstate <=1;
                end
                if (done && ~set) begin
                    done <= 0;
                end
            end
            1 : begin
                if (~done) begin
                    if (accumulator[0] == 1)begin
                        accumulator <= accumulator + {Multiplicand, 8'b00000000};
                        currstate <= 2;
                    end
                    else begin
                        if (counter == 7) begin
                            accumulator <= accumulator >> 1;
                            counter = counter + 1;
                            currstate <= 3;
                        end
                        else begin
                            accumulator <= accumulator >> 1;
                            counter = counter + 1;
                        end
                    end
                end
            end
            2 : begin
                if (~done) begin
                    if (counter == 7) begin
                        accumulator <= accumulator >> 1;
                        counter <= 0;
                        currstate <= 3;
                    end
                    else begin
                        accumulator <= accumulator >> 1;
                        counter = counter + 1;
                        currstate <= 1;
                    end
                end
            end
            3 : begin
                if (~done) begin
                    done <= 1;
                    currstate <= 0;
                    Product <= accumulator[15:0];
                end      
            end
        endcase
    end
   
endmodule

