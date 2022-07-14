`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 09:41:18 AM
// Design Name: 
// Module Name: test_priority_encoder_a
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


module test_priority_encoder_a();
reg [3:0] D;
wire [1:0] X;
wire V;
priority_encoder_a PEA(D,X,V);

initial
begin
    D=4'd15;
    #10 D=4'd10;
    #10 D=4'd4;
    #10 D=4'd5;
    #10 D=4'd12;
    #10 D=4'd14;
    #10 D=4'd7;
    #10 D=4'd0;
    #10 D=4'd6;
    #10 D=4'd1;
    #10 D=4'd3;
    #10 D=4'd13;
    #10 D=4'd8;
    #10 D=4'd2;
    #10 D=4'd11;
    #10 D=4'd9;
end
initial #160 $finish;
endmodule
