`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 02:06:38 PM
// Design Name: 
// Module Name: test_moore
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


module test_moore();
reg [3:0] X;
reg load,ctrl,clk;
wire [3:0] Y;
moore_2s_compliment mA(X,load,ctrl,clk,Y);

initial
begin
    X=4'd8; load =0; ctrl=0; clk=0;
    #5 load=1;
    #5 clk=1; #5 load=0;
    #5 clk=0; #5 ctrl=1;
    #5 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1; #5 ctrl=0;
end
initial #120 $finish;
endmodule
