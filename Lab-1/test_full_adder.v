`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 10:13:44 PM
// Design Name: 
// Module Name: test_full_adder
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


module test_full_adder;
reg A,B,C;
wire sum,carry;
full_adder FA1(A,B,C,sum,carry);
initial
begin
    A=1'b0; B=1'b0; C=1'b0;
    #10 C=1'b1;
    #10 B=1'b1; C=1'b0;
    #10 C=1'b1;
    #10 A=1'b1; B=1'b0; C=1'b0;
    #10 C=1'b1;
    #10 B=1'b1; C=1'b0;
    #10 C=1'b1;
    #10 A=1'b0; B=1'b0; C=1'b0;
end
initial #90 $finish;
endmodule
