`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:09:30 PM
// Design Name: 
// Module Name: binary_to_greycode
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


module binary_to_greycode(A,G);
input [3:0]A;
output [3:0]G;

assign G[3]=A[3];
assign G[2]=A[3]^A[2];
assign G[1]=A[2]^A[1];
assign G[0]=A[1]^A[0];
endmodule
