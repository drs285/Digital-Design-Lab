`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 04:21:45 PM
// Design Name: 
// Module Name: synchronous_Dff
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


module synchronous_Dff(D,clk,reset,Q);
input D,clk,reset;
output reg Q;

always @(posedge clk)
begin
    if(reset)
        Q=0;
    else
        Q=D;
end
endmodule
