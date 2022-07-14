`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 04:14:06 PM
// Design Name: 
// Module Name: priority_encoder_b
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


module priority_encoder_b(D,X,V);
input [3:0] D;
output reg [1:0] X;
output reg V;

integer k;
always @(D)
begin
    X=2'bxx;
    V=0;
    for (k=0;k<4;k=k+1)
    if(D[k])
    begin
        X=k;
        V=1;
    end
end
endmodule
