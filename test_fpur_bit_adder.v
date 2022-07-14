`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 11:28:14 PM
// Design Name: 
// Module Name: test_fpur_bit_adder
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


module test_fpur_bit_adder;
reg [3:0]A,B;
wire [3:0]S;
wire carry;
four_bit_adder FBA1(A,B,S,carry);
initial
begin
    A=4'b0001; B=4'b0010;
    #10 A=4'b1100; B=4'b0100;
    #10 A=4'b0011; B=4'b1000;
    #10 A=4'b1111; B=4'b1111;
    #10 A=4'b0111; B=4'b0100;
    #10 A=4'b1010; B=4'b0110;
    #10 A=4'b1110; B=4'b0101;
    #10 A=4'b0000; B=4'b1011;
    #10 A=4'b1011; B=4'b0100;
    #10 A=4'b1100; B=4'b0111;
end
initial #100 $finish;
endmodule
