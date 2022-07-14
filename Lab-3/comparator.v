`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 05:28:55 PM
// Design Name: 
// Module Name: comparator
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


module comparator(A,B,E,X,Y);
input [3:0] A,B;
output E,X,Y;
reg M=1'b1;
wire [3:0] S;
wire C,V;

adder_subtractor AS2(A,B,M,S,C,V);
assign Y=V^S[3];
assign E= ~(S[3]|S[2]|S[1]|S[0]);
assign X=~(Y|E);
endmodule
