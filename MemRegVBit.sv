`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2022 03:07:44 PM
// Design Name: 
// Module Name: MemRegVBit
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


module MemRegVBit(
    input clk, enter, set, D,
    output Q
    );
    
    DFFS DFFS1 (.clk(clk), .enter(enter), .set(set), .D(D), .Q(Q));
endmodule
