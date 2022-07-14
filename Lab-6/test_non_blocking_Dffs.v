`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 06:07:12 PM
// Design Name: 
// Module Name: test_non_blocking_Dffs
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


module test_non_blocking_Dffs();
reg D,clk;
wire Q1,Q2;
non_blocking_Dffs nbDffs(D,clk,Q1,Q2);

initial
begin
    clk=0; D=0;
    #10 clk=1;
    #10 clk=0; #5 D=1;
    #5 clk=1; #5 D=0;
    #5 clk=0; #5 D=1;
    #5 clk=1; #1 D=0;
    #9 clk=0; #2 D=1; #5 D=0;
    #3 clk=1; #1 D=1;
    #9 clk=0;
    #10 clk=1;
end
initial #100 $finish;
endmodule
