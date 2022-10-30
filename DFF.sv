`timescale 1ns / 1ps

module DFF( //this thing works
    input D,clk,enter,clr,
    output logic Q = 0
);

always_ff@(posedge clk)
begin
    if(clr)
        Q<=0;
    else if(enter)
        Q<=D;
end    
endmodule
