`timescale 1ns / 1ps

module lab5b_TB;

// Parameters
parameter clk_PERIOD = 10; // Clock period in ns

// Signals
reg clk;
reg Reset;
reg [2:0] a, b;
wire [2:0] sum;
wire cout;

// Instantiate the module under test
lab5b ins (
    .clk(clk),
    .Reset(Reset),
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
);

// Clock generation similar to RisingEdge_DFlipFlop_SyncReset
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    Reset = 0;
    a = 3'b100;
    b = 3'b101;
    #100;
    Reset = 1; // Assert reset again
    #100;
    $finish; // End simulation
end

// Display results
initial begin
    $monitor("Time=%0t, A=%b, B=%b, Sum=%b, Cout=%b", $time, a, b, sum, cout);
end

endmodule