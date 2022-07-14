`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 04:43:02 PM
// Design Name: 
// Module Name: test_bcd_subtractor
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


module test_bcd_subtractor();
reg [3:0] A,B;
wire [3:0] S;
bcd_subtractor BCDS1(A,B,S);
initial
begin
    A=4'd4;B=4'd5;
    #10 A=4'd6;B=4'd4;
    #10 A=4'd7;B=4'd2;
    #10 A=4'd8;B=4'd9;
    #10 A=4'd0;B=4'd3;
    #10 A=4'd2;B=4'd6;
    #10 A=4'd1;B=4'd8;
    #10 A=4'd9;B=4'd7;
    #10 A=4'd5;B=4'd0;
    #10 A=4'd3;B=4'd1;
end
initial #100 $finish;
endmodule
