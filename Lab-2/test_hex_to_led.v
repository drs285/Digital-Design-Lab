`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 03:22:23 PM
// Design Name: 
// Module Name: test_hex_to_led
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


module test_hex_to_led();
reg [3:0]hex;
wire [0:6] led;
hex_to_bcd HL1(hex,led);
initial
begin
    hex=0;
    #10 hex=1;
    #10 hex=2;
    #10 hex=3;
    #10 hex=4;
    #10 hex=5;
    #10 hex=6;
    #10 hex=7;
    #10 hex=8;
    #10 hex=9;
    #10 hex=10;
    #10 hex=11;
    #10 hex=12;
    #10 hex=13;
    #10 hex=14;
    #10 hex=15;
end
initial #160 $finish;
endmodule
