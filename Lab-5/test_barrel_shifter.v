`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 01:25:48 PM
// Design Name: 
// Module Name: test_barrel_shifter
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


module test_barrel_shifter();
reg [3:0]W;
reg S0,S1;
wire [3:0]Y;
barrel_shifter BS(S0,S1,W,Y);

initial
begin
    W=4'd6;
    S0=1'b0;S1=1'b0;
    #10 S0=1'b1;S1=1'b0;
    #10 S0=1'b0;S1=1'b1;
    #10 S0=1'b1;
    #10 W=4'd11;
    S0=1'b0;S1=1'b0;
    #10 S0=1'b1;S1=1'b0;
    #10 S0=1'b0;S1=1'b1;
    #10 S0=1'b1;
    #10 W=4'd2;
    S0=1'b0;S1=1'b0;
    #10 S0=1'b1;S1=1'b0;
    #10 S0=1'b0;S1=1'b1;
    #10 S0=1'b1;
end
initial #120 $finish;
endmodule
