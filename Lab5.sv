`timescale 1ns / 1ps

module Lab5(
    input [3:0] A, //BOARD
    input [3:0] B, //BOARD
    input [3:0] Sub, //BOARD
    input clk, enter, clr,
    output [3:0] disp_en,
    output [7:0] ssegs
    //output [3:0] Q //BOARD AND SIM
    //output [3:0] Belp //only needed for sim
    );

    logic [3:0] t1, t2, t3, t4, t6, t7, t10; 
    logic t5, NEG, t8, t9; //needs t9
    assign NEG = t5&t3[3];
    
    INVMUX INVMUX1 (.Sub(Sub), .X(~B), .Y(B), .Belp(t1)); 
    RCA RCA1(.A(t1), .B(Sub), .S(t2)); //WORKS!!!!
    RCA RCA2(.A(A), .B(t2), .S(t3)); //WORKS!!!!
    VAL VAL1 ( .A(A), .Belp(t2), .S(t3), .Val(t5)); //WORKSSSSSSS   
    RCA RCA3 ( .A(~t3), .B(1), .S(t4)); //WORKS!!!!
    INVMUX INVMUX2 (.Sub(NEG), .X(t4), .Y(t3), .Belp(t7));//working on this one
    MemReg4Bit MemReg4Bit1 ( .clk(clk), .enter(enter), .clr(clr), .D(t7), .Q(t10)); //works
    MemReg1Bit MemReg1Bit1 ( .clk(clk), .enter(enter), .clr(clr), .D(NEG), .Q(t8)); //works
    MemRegVBit MemRegVBit1 ( .clk(clk), .enter(enter), .set(clr), .D(t5), .Q(t9)); //works       
    univ_sseg univ_sseg1 ( .clk(clk), .cnt1({10'b0,t10}), .cnt2(0), .dp_en(0), .dp_sel(0), .mod_sel(0), .sign(t8), .valid(t9), .disp_en(disp_en), .ssegs(ssegs)); 
    
endmodule



