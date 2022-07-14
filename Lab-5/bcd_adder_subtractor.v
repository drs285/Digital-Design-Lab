`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 11:18:55 AM
// Design Name: 
// Module Name: bcd_adder_subtractor
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


module bcd_adder_subtractor(A,B,M,X,Y,S);
input [3:0] A,B;
input M;
reg [4:0] Z;
output reg [3:0] X;
output reg Y,S;

always @(M or A or B)
begin
    Y=0;
    S=0;
    if(M)
    begin
        Z=A-B;
        X=Z[3:0];
        if(Z[4])
        begin
            X=16-X;
            S=1;
        end
    end
    else
    begin
        Z=A+B;
        X=Z[3:0];
        Y=Z[4];
        if (X>9 || Y)
        begin
            X=X+6;
            Y=1;
        end
    end
end 
endmodule
