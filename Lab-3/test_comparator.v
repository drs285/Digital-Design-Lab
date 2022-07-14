`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 10:33:28 PM
// Design Name: 
// Module Name: test_comparator
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


module test_comparator();
reg [3:0] A,B;
wire Equality,A_greater,B_greater;
comparator C1(A,B,Equality,A_greater,B_greater);

initial
begin
    A=4'b0000; B=4'b0000;
    #10 A=4'b1100; B=4'b0100;
    #10 A=4'b0011; B=4'b1010;
    #10 A=4'b1111; B=4'b1001;
    #10 A=4'b0111; B=4'b0100;
    #10 A=4'b1010; B=4'b0110;
    #10 A=4'b1110; B=4'b0101;
    #10 A=4'b0000; B=4'b1011;
    #10 A=4'b1011; B=4'b0100;
    #10 A=4'b0111; B=4'b0111;
end
initial #100 $finish;
endmodule
