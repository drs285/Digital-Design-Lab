`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 07:58:44 PM
// Design Name: 
// Module Name: test_mls
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


module test_mls();
reg [1:8] A;
reg reset,clk;
wire O;
mls MLS(A,reset,clk,O);

initial
begin
    A=8'b10101011; reset=0; clk=0;
    #5 reset=1; #1 reset=0; #4 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
    #10 clk=0; #10 clk=1;
end
initial #400 $finish;
endmodule
