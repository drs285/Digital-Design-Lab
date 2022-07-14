`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 02:56:24 PM
// Design Name: 
// Module Name: half_addder
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


module half_addder(A,B,sum,carry);
input A,B;
output sum,carry;

assign sum=A^B;
assign carry=A&B;
endmodule
