`default_nettype none
`timescale 1ns/1ps

module test;
reg clk = 1'b1;
reg rst_x = 1'b1;

initial begin
@(negedge clk) rst_x = 1'b0;
@(negedge clk) rst_x = 1'b1;
@(posedge clk);

@(posedge clk) #1000 $finish;


always #5 clk = ~clk;

endmodule
