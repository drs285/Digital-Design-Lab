`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:51:47 PM
// Design Name: 
// Module Name: test_greycode_to_binary
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


module test_greycode_to_binary();
reg [3:0]G;
wire [3:0]A;
greycode_to_binary GB1(G,A);
initial
begin
    G=4'b0000;
    #10 G=4'b0001;
    #10 G=4'b0010;
    #10 G=4'b0011;
    #10 G=4'b0100;
    #10 G=4'b0101;
    #10 G=4'b0110;
    #10 G=4'b0111;
    #10 G=4'b1000;
    #10 G=4'b1001;
    #10 G=4'b1010;
    #10 G=4'b1011;
    #10 G=4'b1100;
    #10 G=4'b1101;
    #10 G=4'b1110;
    #10 G=4'b1111;
end
initial #160 $finish;
endmodule
