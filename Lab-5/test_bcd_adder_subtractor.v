`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 11:23:44 AM
// Design Name: 
// Module Name: test_bcd_adder_subtractor
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


module test_bcd_adder_subtractor();
reg [3:0] A,B;
reg M;
wire [3:0] X;
wire Y,S;
bcd_adder_subtractor BAS(A,B,M,X,Y,S);

initial
begin
    A=4'd6;B=4'd7;M=1'b0;
    #10 M=1'b1;
    #10 A=4'd4;B=4'd8;M=1'b0;
    #10 M=1'b1;
    #10 A=4'd3;B=4'd0;M=1'b0;
    #10 M=1'b1;
    #10 A=4'd9;B=4'd9;M=1'b0;
    #10 M=1'b1;
end
initial #80 $finish;
endmodule
