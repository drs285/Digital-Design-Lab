`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 09:32:42 AM
// Design Name: 
// Module Name: priority_encoder_a
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


module priority_encoder_a(D,X,V);
input [3:0] D;
output reg [1:0] X;
output reg V;

always @(D)
    begin
    V=1'b1;
        casex(D)
            4'b1xxx : X=2'b11;
            4'b01xx : X=2'b10;
            4'b001x : X=2'b01;
            4'b0001 : X=2'b00;
            default : begin
                        V=1'b0;
                        X=2'bXX;
                      end
        endcase
    end
endmodule
