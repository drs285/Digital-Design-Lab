`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2022 03:02:06 PM
// Design Name: 
// Module Name: test_half_adder
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


module test_half_adder();
reg A,B;
wire sum,carry;
half_addder(A,B,sum,carry);
initial
begin
    A=1'b0;
    B=1'b0;
    
    #10 A=1'b1;
    #10 A=1'b0; B=1'b1;
    #10 B=1'b1;
end

initial #50 $finish;
endmodule
