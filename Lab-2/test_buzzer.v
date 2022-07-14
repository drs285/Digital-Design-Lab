`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2022 11:37:44 PM
// Design Name: 
// Module Name: test_buzzer
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


module test_buzzer();
reg host,A,B;
wire X,Y;
buzzer B1(host,A,B,X,Y);

initial
begin
    host=1'b0; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b1; B=1'b0;
    #2 host=1'b1; A=1'b1; B=1'b1;
    #3 host=1'b0; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b0; B=1'b1;
    #2 host=1'b1; A=1'b1; B=1'b1;
    #3 host=1'b0; A=1'b0; B=1'b0;
    #5 host=1'b0; A=1'b1; B=1'b0;
    #3 host=1'b0; A=1'b0; B=1'b0;
    #4 host=1'b0; A=1'b0; B=1'b1;
    #3 host=1'b0; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b0; B=1'b0;
    #5 host=1'b1; A=1'b1; B=1'b1;
end
initial #60 $finish;
endmodule
