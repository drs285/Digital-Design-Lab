`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 04:28:15 PM
// Design Name: 
// Module Name: test_synchronous_Dff
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


module test_synchronous_Dff();
reg D,clk,reset;
wire Q;
synchronous_Dff sDff(D,clk,reset,Q);

initial
begin
    D=0;clk=0;reset=0;
    #10 clk=1;#5 D=1;
    #5 clk=0; #5 D=0;
    #5 clk=1; #2 D=1; #5 D=0;
    #3 clk=0; #6 D=1;
    #4 clk=1; #1 D=0;
    #9 clk=0; #5 reset=1;
    #5 clk=1; #2 D=1; #3 reset=0; #3 D=0;
    #2 clk=0; #4 reset=1; #3 reset=1; #2 D=1;
    #1 clk=1; #4 D=0;
    #6 clk=0; #7 reset=1;
    #3 clk=1; #1 reset=0;
    #9 clk=0; #1 D=1; #5 D=0; #2 D=1;
    #2 clk=1; #3 reset=1; #1 D=0;
    #6 clk=0; #3 reset=0;
    #7 clk=1; #5 D=1;
    #5 clk=0; #5 D=0; #2 reset=1;
    #3 clk=1; #4 reset=0;
    #6 clk=0; #5 D=1;
    #5 clk=1;
end
initial #200 $finish;
endmodule
