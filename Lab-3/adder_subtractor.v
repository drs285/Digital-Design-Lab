`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 01:20:19 PM
// Design Name: 
// Module Name: adder_subtractor
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

module half_adder(A,B,sum,carry);
input A,B;
output sum,carry;

assign sum=A^B;
assign carry=A&B;
endmodule

module full_adder(A,B,C,sum,carry);
input A,B,C;
output sum,carry;
wire S1,C1,C2;

half_adder H1(A,B,S1,C1);
half_adder H2(S1,C,sum,C2);
assign carry=C1|C2;
endmodule

module adder_subtractor(A,B,M,S,carry,V);
input [3:0]A,B;
input M;
output [3:0]S;
output carry,V;
wire C0,C1,C2,C3;

assign C0=M;
full_adder FA1(A[0],B[0]^M,C0,S[0],C1);
full_adder FA2(A[1],B[1]^M,C1,S[1],C2);
full_adder FA3(A[2],B[2]^M,C2,S[2],C3);
full_adder FA4(A[3],B[3]^M,C3,S[3],carry);
assign V=carry^C3;
endmodule
