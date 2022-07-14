`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 01:10:54 PM
// Design Name: 
// Module Name: barrel_shifter
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

module mux(S0,S1,W0,W1,W2,W3,F);
input S0,S1,W0,W1,W2,W3;
output F;

assign F=S1?(S0?W3:W2):(S0?W1:W0);
endmodule


module barrel_shifter(S0,S1,W,Y);
input [3:0] W;
input S0,S1;
output [3:0] Y;

mux M1(S0,S1,W[3],W[0],W[1],W[2],Y[3]);
mux M2(S0,S1,W[2],W[3],W[0],W[1],Y[2]);
mux M3(S0,S1,W[1],W[2],W[3],W[0],Y[1]);
mux M4(S0,S1,W[0],W[1],W[2],W[3],Y[0]);
endmodule
