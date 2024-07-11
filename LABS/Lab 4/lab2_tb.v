`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: lab2_tb
/////////////////////////////////////////////////////////////////

module lab2_tb(
);
reg inputC0, inputC1, inputC2;
wire G1;
wire Y1;
wire R1;
wire G2;
wire Y2;
wire R2;

design_1_wrapper instance_1(
    .C0(inputC0),
    .C1(inputC1),
    .C2(inputC2),
    .G1(G1),
    .Y1(Y1),
    .R1(R1),
    .G2(G2),
    .Y2(Y2),
    .R2(R2));
initial
begin
    inputC0 = 0; inputC1 = 0; inputC2 = 0;
    #50
    inputC0 = 0; inputC1 = 0; inputC2 = 1;
    #50
    inputC0 = 0; inputC1 = 1; inputC2 = 0;
    #50
    inputC0 = 0; inputC1 = 1; inputC2 = 1;
    #50
    inputC0 = 1; inputC1 = 0; inputC2 = 0;
    #50
    inputC0 = 1; inputC1 = 0; inputC2 = 1;
    #50
    inputC0 = 1; inputC1 = 1; inputC2 = 0;
    #50
    inputC0 = 1; inputC1 = 1; inputC2 = 1;
    end
endmodule
