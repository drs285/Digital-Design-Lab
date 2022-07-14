`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/28/2022 05:25:13 PM
// Design Name: 
// Module Name: asynchronous_Dff
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


module asynchronous_Dff(D,clk,reset,Q);
input D,clk,reset;
output reg Q;

always @(posedge clk,posedge reset)
begin
    if(reset)
        Q=0;
    else
        Q=D;
end
endmodule
