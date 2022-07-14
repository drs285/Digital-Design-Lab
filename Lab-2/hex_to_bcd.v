`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 03:55:10 PM
// Design Name: 
// Module Name: hex_to_bcd
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


module hex_to_bcd(hex,led);
input [3:0] hex;
output [0:6]led;
reg [0:6]led;

always @(hex)
    begin
        case(hex)
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
