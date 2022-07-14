`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:23:08 PM
// Design Name: 
// Module Name: test_binary_to_greycode
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


module test_binary_to_greycode();
reg [3:0]A;
wire [3:0]G;
binary_to_greycode BG1(A,G);
initial
begin
    A=4'b0000;
    #10 A=4'b0001;
    #10 A=4'b0010;
    #10 A=4'b0011;
    #10 A=4'b0100;
    #10 A=4'b0101;
    #10 A=4'b0110;
    #10 A=4'b0111;
    #10 A=4'b1000;
    #10 A=4'b1001;
    #10 A=4'b1010;
    #10 A=4'b1011;
    #10 A=4'b1100;
    #10 A=4'b1101;
    #10 A=4'b1110;
    #10 A=4'b1111;
end
initial #160 $finish;
endmodule
