`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 03:01:29 PM
// Design Name: 
// Module Name: bcd_subtractor
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

module tens_complement(A,X);
input [3:0] A;
output [3:0] X;

assign X[3]=~(A[3]|A[2]) & ~(A[1]&A[0]);
assign X[2]=A[2]^(A[1]&A[0]);
assign X[1]=~(A[1]^A[0]);
assign X[0]=A[0];
endmodule

module bcd_subtractor(A,B,S);
input [3:0] A,B;
output [3:0] S;
wire [3:0] B_comp,Z,Z_comp;
wire C;

tens_complement TC1(B,B_comp);
bcd_adder BCDA2(A,B_comp,Z,C);
tens_complement TC2(Z,Z_comp);
assign S=C?Z:Z_comp;
endmodule
