`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 01:31:25 PM
// Design Name: 
// Module Name: bcd_adder
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

assign S1=A^B;
assign C1=A&B;
assign sum=S1^C;
assign C2=S1&C;
assign carry=C1|C2;
endmodule

module four_bit_adder(A,B,S,Carry);
input [3:0] A,B;
output [3:0] S;
output Carry;
reg C0=1'b0;
wire C1,C2,C3;

full_adder FA1(A[0],B[0],C0,S[0],C1);
full_adder FA2(A[1],B[1],C1,S[1],C2);
full_adder FA3(A[2],B[2],C2,S[2],C3);
full_adder FA4(A[3],B[3],C3,S[3],Carry);
endmodule

module bcd_adder(A,B,S,C);
input [3:0] A,B;
output [3:0] S;
output C;
wire [3:0] Z,X;
wire K;

four_bit_adder FBA1(A,B,Z,K);
assign C=K|(Z[3]&Z[2])|(Z[3]&Z[1]);
assign X[0]=1'b0; assign X[1]=C; assign X[2]=C; assign X[3]=1'b0;
four_bit_adder FBA2(X,Z,S);
endmodule
