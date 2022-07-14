`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 12:38:03 AM
// Design Name: 
// Module Name: test_serial_adder
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


module test_serial_adder();
reg [7:0]A,B;
reg clk,ctrl,load;
wire [7:0] SR1,SR2;
serial_adder SA(A,B,clk,ctrl,load,SR1,SR2);
initial
begin
    load=0;clk=0;ctrl=0;A=8'd45;B=8'd35;#5 load=1;
    #5 clk=1; #5 load=0;
    #5 clk=0; #5 ctrl=1;
    #5 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;A=8'd90;
    #10 clk=1;
    #10 clk=0;B=8'd110;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1; #5 ctrl=0;
    #5 clk=0;#5load=1;
    #5 clk=1; #5load=0;
    #5 clk=0;
    #10 clk=1;
    #10 clk=0;#5 ctrl=1;
    #5 clk=1;#10 clk=0;#10 clk=1;
    #10 clk=0;#10 clk=1;#10 clk=0;#10 clk=1;
    #10 clk=0;#10 clk=1;#10 clk=0;#10 clk=1;
    #10 clk=0;#10 clk=1;#10 clk=0;#10 clk=1;
    #5 ctrl=0; #5clk=0;
end
initial #380 $finish;
endmodule
