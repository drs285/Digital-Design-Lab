`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:46:02 PM
// Design Name: 
// Module Name: greycode_to_binary
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


module greycode_to_binary(G,A);
input [3:0]G;
output [3:0]A;

assign A[3]=G[3];
assign A[2]=G[3]^G[2];
assign A[1]=G[3]^G[2]^G[1];
assign A[0]=G[3]^G[2]^G[1]^G[0];
endmodule
