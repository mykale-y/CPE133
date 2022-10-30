`timescale 1ns / 1ps

module MemReg1Bit(
    input clk, enter, clr, D,
    output Q
    );
    
    DFF DFF1 (.clk(clk), .enter(enter), .clr(clr), .D(D), .Q(Q));
endmodule
