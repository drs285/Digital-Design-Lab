`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 05:46:18 PM
// Design Name: 
// Module Name: non_blocking_Dffs
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


module non_blocking_Dffs(D,clk,Q1,Q2);
input D,clk;
output reg Q1,Q2;

always @(posedge clk)
begin
    Q1<=D;
    Q2<=Q1;
end
endmodule

