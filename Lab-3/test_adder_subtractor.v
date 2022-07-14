`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 01:33:08 PM
// Design Name: 
// Module Name: test_adder_subtractor
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


module test_adder_subtractor();
reg [3:0]A,B;
reg M;
wire [3:0]S;
wire carry,overflow;
adder_subtractor AS1(A,B,M,S,carry,overflow);
initial
begin
    A=4'b0001; B=4'b0010; M=1'b1;
    #10 A=4'b0100; B=4'b1100;
    #10 A=4'b1010; B=4'b0011;
    #10 A=4'b1111; B=4'b1001;
    #10 A=4'b0111; B=4'b0100;
    #10 A=4'b1010; B=4'b0110; M=1'b0;
    #10 A=4'b1110; B=4'b0101;
    #10 A=4'b0000; B=4'b1011;
    #10 A=4'b1011; B=4'b0100;
    #10 A=4'b0111; B=4'b0111;
end
initial #100 $finish;
endmodule
