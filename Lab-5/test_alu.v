`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 02:15:58 PM
// Design Name: 
// Module Name: test_alu
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


module test_alu();
reg [31:0] A,B;
reg [3:0] S;
wire [31:0]O;
alu ALU(A,B,S,O);

initial
begin
    A=32'b01010101001010101010101010101100;
    B=32'b10101011000101101001010101101001;
    S=3'd0;
    #10 S=3'd1;
    #10 S=3'd2;
    #10 S=3'd3;
    #10 S=3'd4;
    #10 S=3'd5;
    #10 S=3'd6;
    #10 S=3'd7;
end
initial #80 $finish;
endmodule
