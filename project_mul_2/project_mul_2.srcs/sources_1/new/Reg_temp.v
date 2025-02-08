`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/11 22:20:39
// Design Name: 
// Module Name: Reg_temp
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


module Reg_temp(
    input [31:0]in,
    input CLK,CLR,
    input Wre,
    output reg[31:0]out
    );
//    always@(posedge CLR )
//    begin
//        out=32'h00000000;
//    end
    
    
    always@(negedge CLK or posedge CLR)
    
    begin
        if(Wre)
        begin
        
            out<=in;
        end
        if(CLR)
        begin
            out<=32'h00000000;
        end
        
        
    end
    
endmodule
