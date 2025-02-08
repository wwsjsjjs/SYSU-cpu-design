`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 21:36:46
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(input_A,input_B,output_Data,Mul_Op);
    parameter SIZE = 32;
    
    input [SIZE-1:0]input_A;
    input [SIZE-1:0]input_B;
    input Mul_Op;
    output [SIZE-1:0] output_Data;
    reg [SIZE-1:0]output_Data;
    always@(*)
        begin
        if(!Mul_Op)
            output_Data=input_A;
        else
            output_Data=input_B;
    end 
endmodule
