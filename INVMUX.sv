`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2022 10:41:47 AM
// Design Name: 
// Module Name: INVMUX
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


module INVMUX #(parameter WIDTH=3)(
         input logic [WIDTH:0] X,
         input logic [WIDTH:0] Y,
         input logic Sub,
         output logic [WIDTH:0] Belp //i used Z instead of an
    );

always_comb
begin
    if (Sub == 1)
        begin
            Belp = X;
        end
    else
        begin
            Belp = Y;
        end
end
endmodule
