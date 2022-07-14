`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 07:21:06 PM
// Design Name: 
// Module Name: multiplier
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

module binary_to_bcd(A,X,Y);
input [5:0] A;
output [3:0] X,Y;
wire [3:0] P,Q,U,V,W;
wire [2:0] M,N;
wire O1,O2,C1,Ca,Sa,L,D1,D2,J;

assign U[3]=A[5]&A[4]; assign U[2]=~A[5]&A[4]; assign U[1]=A[5]^A[4]; assign U[0]=1'b0;
four_bit_adder FBAa(A[3:0],U,P,C1);
assign O1=C1|(P[3] & (P[2]|P[1]));
assign V[3]=1'b0; assign V[2]=O1; assign V[1]=O1; assign V[0]=1'b0;
four_bit_adder FBAb(P,V,Q);
assign O2=Q[3] & (Q[2]|Q[1]);
assign W[3]=1'b0; assign W[2]=O2; assign W[1]=O2; assign W[0]=1'b0;
four_bit_adder FBAc(Q,W,X);

assign N[2]=1'b0;
assign N[0]=O1^O2;
assign N[1]=O1&O2;
assign M[0]=A[5]^A[4];
assign J=A[5]&A[4];
assign M[1]=J^A[5];
assign M[2]=J&A[5];
assign Y[0]=N[0]^M[0];
assign D1=M[0]&N[0];
full_adder FAa(M[1],N[1],D1,Y[1],D2);
full_adder FAb(M[2],N[2],D2,Y[2],Y[3]);
endmodule

module multiplier(A,B,M,N);
input [2:0] A,B;
output [3:0] M,N;
wire [5:0] P;
wire [2:0] Y,Z;
wire [2:1] X;
wire C1,S1,C2,S2,C3,C4,C5;

assign P[0]=A[0]&B[0];assign X[1]=A[1]&B[0];assign X[2]=A[2]&B[0];
assign Y[0]=A[0]&B[1];assign Y[1]=A[1]&B[1];assign Y[2]=A[2]&B[1];
assign Z[0]=A[0]&B[2];assign Z[1]=A[1]&B[2];assign Z[2]=A[2]&B[2];
full_adder FAa(X[1],Y[0],1'b0,P[1],C1);
full_adder FAb(X[2],Y[1],C1,S1,C2);
full_adder FAc(1'b0,Y[2],C2,S2,C3);
full_adder FAd(S1,Z[0],1'b0,P[2],C4);
full_adder FAe(S2,Z[1],C4,P[3],C5);
full_adder FAf(C3,Z[2],C5,P[4],P[5]);
binary_to_bcd BTB(P,M,N);
endmodule
