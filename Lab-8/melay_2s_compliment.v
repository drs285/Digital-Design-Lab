`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2022 06:35:43 PM
// Design Name: 
// Module Name: melay_2s_compliment
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


module melay_2s_compliment(X,load,ctrl,clk,Y,led);
input [3:0]X;
input load,ctrl,clk;
output reg [3:0] Y;
output reg [6:0] led;
wire D,V;
reg A=0;

always @(posedge clk)
begin
    if(load)
    begin
        Y[0]=X[0];
        Y[1]=X[1];
        Y[2]=X[2];
        Y[3]=X[3];
    end
    if(ctrl)
    begin
        A<=D;
        Y[0]<=Y[1];
        Y[1]<=Y[2];
        Y[2]<=Y[3];
        Y[3]<=V;
    end
end

assign D= A | Y[0];
assign V= Y[0]^A;

always @(Y)
begin
    case(Y)
        0: led=7'b0000001;
        1: led=7'b1001111;
        2: led=7'b0010010;
        3: led=7'b0000110;
        4: led=7'b1001100;
        5: led=7'b0100100;
        6: led=7'b0100000;
        7: led=7'b0001111;
        8: led=7'b0000000;
        9: led=7'b0000100;
        10: led=7'b0001000;
        11: led=7'b1100000;
        12: led=7'b0110001;
        13: led=7'b1000010;
        14: led=7'b0110000;
        15: led=7'b0111000;
        default: led=7'b0000001;
    endcase
end
endmodule
