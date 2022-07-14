`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 10:47:31 AM
// Design Name: 
// Module Name: test_multiply5
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


module test_multiply5();
reg [3:0] A;
wire [6:0] X;
multiply5 M(A,X);

initial
begin
    A=4'd15;
    #10 A=4'd10;
    #10 A=4'd4;
    #10 A=4'd5;
    #10 A=4'd12;
    #10 A=4'd14;
    #10 A=4'd7;
    #10 A=4'd0;
    #10 A=4'd6;
    #10 A=4'd1;
    #10 A=4'd3;
    #10 A=4'd13;
    #10 A=4'd8;
    #10 A=4'd2;
    #10 A=4'd11;
    #10 A=4'd9;
end
initial #160 $finish;
endmodule
