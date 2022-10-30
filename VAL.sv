`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2022 11:44:53 AM
// Design Name: 
// Module Name: VAL
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


module VAL(
    input [3:0] A,
    input [3:0] Belp,
    input [3:0] S,
    output logic Val 
    );

always_comb
begin

    if ((A[3]==0)&(Belp[3]==0)&(S[3]==1))
        begin
            Val = 0;
        end
        
    else if ((A[3]==1)&(Belp[3]==1)&(S[3]==0))
        begin
            Val = 0;
        end    
    
    else
        begin
            Val = 1;
        end
end   
endmodule
