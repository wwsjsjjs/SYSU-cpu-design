`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/17 12:59:05
// Design Name: 
// Module Name: Mul_3to1_test
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


module Mul_3to1_test();
    parameter SIZE = 32;
    reg [SIZE-1:0]input_A;
    reg [SIZE-1:0]input_B;
    reg [SIZE-1:0]input_C;
    reg [1:0]Op;
    wire [SIZE-1:0]F;
    initial begin
        input_A=32'h0000_0001;
        input_B=32'h0000_1112;
        input_C=32'h0000_1182;
        Op=2'b00;
        #50
        Op=2'b01;
        #50;
        input_A=32'h0000_0cc1;
        input_B=32'h0000_ffff;
        input_C=32'h0000_ff8f;
        #50;
        Op=2'b10;
    end
    Mul_3to1 a(
        .input_A(input_A),
        .input_B(input_B),
        .input_C(input_C),
        .output_Data(F),
        .Mul_Op(Op)
    );
endmodule
