`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2022 02:44:21 PM
// Design Name: 
// Module Name: test_compare
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


module test_compare();
reg [31:0] A,B;
wire Carry_look_ahead,Carry_skip,Carry_select;
wire [31:0] S_look_ahead,S_skip,S_select;
carry_select_adder CSA1(A,B,S_look_ahead,Carry_look_ahead);
carry_skip_adder CSAb(A,B,S_skip,Carry_skip);
carry_select_adder CSAc(A,B,S_select,Carry_select);
initial
begin
    A=32'b10001110110101010110101011001000;
    B=32'b01111101101001100110001010101001;
    #100 
    A=32'b00101110111010101010101011001000;
    B=32'b01010110101001100111010101011001;
end
initial #200 $finish;
endmodule
