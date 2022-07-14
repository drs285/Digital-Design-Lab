`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2022 02:01:42 PM
// Design Name: 
// Module Name: alu
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


module alu(A,B,S,O);
input [31:0] A,B;
input [3:0] S;
output reg [31:0]O;
always @(S)
    begin
        case(S)
            0: assign O=32'd0;
            1: assign O=A+B;
            2: assign O=A-B;
            3: assign O=A<<1;
            4: assign O=A>>1;
            5: assign O=A&B;
            6: assign O=A|B;
            7: assign O=A^B;
        endcase
    end
endmodule
