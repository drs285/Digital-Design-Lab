`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 03:58:50 PM
// Design Name: 
// Module Name: test_half_addder
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


module test_half_addder;
reg A,B;
wire sum,carry;
half_addder H1(A,B,sum,carry);
initial
begin
    A=1'b0;
    B=1'b0;
    #10 A=1'b1;
    #10 A=1'b0; B=1'b1;
    #10 A=1'b1;
    #10 A=1'b0; B=1'b0;
end
initial #40 $finish;
endmodule
