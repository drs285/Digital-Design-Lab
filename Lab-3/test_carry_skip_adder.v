`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2022 10:19:55 AM
// Design Name: 
// Module Name: test_carry_skip_adder
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


module test_carry_skip_adder();
reg [31:0] A,B;
wire [31:0] S;
wire C;
carry_skip_adder CSA1(A,B,S,C);
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
