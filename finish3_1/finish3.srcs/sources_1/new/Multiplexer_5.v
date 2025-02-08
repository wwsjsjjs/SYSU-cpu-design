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


module Multiplexer_5(input_A,input_B,input_C,output_Data,Mul_Op);
    parameter SIZE = 5;
    
    input [SIZE-1:0]input_A;
    input [SIZE-1:0]input_B;
    input [SIZE-1:0]input_C;
    input [1:0]Mul_Op;
    output [SIZE-1:0] output_Data;
    reg [SIZE-1:0]output_Data;
    always@(*)
        begin
        if(Mul_Op==2'b00)
            output_Data=input_A;
        else if(Mul_Op==2'b01)
            output_Data=input_B;
        else if(Mul_Op==2'b10)
            output_Data=input_C;
        else
            output_Data=32'hzzzzzzzz;        
    end 
endmodule
