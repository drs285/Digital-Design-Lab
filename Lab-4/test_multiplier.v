`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 08:21:59 PM
// Design Name: 
// Module Name: test_multiplier
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


module test_multiplier();
reg [2:0] A,B;
wire [3:0] Tens,Ones;
multiplier M1(A,B,Ones,Tens);

initial
begin
    A=3'd4;B=3'd7;
    #10 A=3'd1;B=3'd6;
    #10 A=3'd7;B=3'd2;
    #10 A=3'd6;B=3'd5;
    #10 A=3'd7;B=3'd7;
    #10 A=3'd2;B=3'd5;
    #10 A=3'd6;B=3'd4;
    #10 A=3'd0;B=3'd3;
    #10 A=3'd5;B=3'd5;
    #10 A=3'd3;B=3'd1;
end
initial #100 $finish;
endmodule
