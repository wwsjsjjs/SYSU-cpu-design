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


module Mul_4to1(input_A,input_B,input_C,input_D,output_Data,Mul_Op);
    parameter SIZE = 32;
    
    input [SIZE-1:0]input_A;
    input [SIZE-1:0]input_B;
    input [SIZE-1:0]input_C;
    input [SIZE-1:0]input_D;
    input [1:0]Mul_Op;
    output [SIZE-1:0] output_Data;
    reg [SIZE-1:0]output_Data;
    always@(*)
        begin
        case (Mul_Op)
        2'b00:
            output_Data=input_A+4;
        2'b01:
            output_Data=input_B;
        2'b10:
            output_Data=input_C;
        2'b11:
            output_Data=input_D;
        2'bxx:
            output_Data=32'hzzzzzzzz;
        endcase
//        if(!Mul_Op)
//            output_Data=input_A;
//        else
//            output_Data=input_B;
    end 
endmodule
