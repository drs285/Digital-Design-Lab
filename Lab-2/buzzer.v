`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2022 06:36:13 PM
// Design Name: 
// Module Name: buzzer
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


module buzzer(host,A,B,X,Y);
input host,A,B;
output X,Y;
reg X='b0,Y='b0;

always @(host or A or B)
begin
assign X=host?(A?(B?((X===0)?'b1:X):'b1):(B?'bz:'b0)):'b0;
assign Y=host?(B?(A?((Y===0)?'b1:Y):'b1):(A?'bz:'b0)):'b0;
end
endmodule
