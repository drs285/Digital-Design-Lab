`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 10:02:36 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(A,B,C,sum,carry);
input A,B,C;
output sum,carry;
wire S1,C1,C2;

half_addder H1(A,B,S1,C1);
half_addder H2(S1,C,sum,C2);
assign carry=C1|C2;
endmodule
