`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 21:45:01
// Design Name: 
// Module Name: Mul_test
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


module Mul_test();
    parameter SIZE = 32;
    reg [SIZE-1:0]input_A;
    reg [SIZE-1:0]input_B;
    reg Op;
    wire [SIZE-1:0]F;
    initial begin
        input_A=32'h0000_0001;
        input_B=32'h0000_1112;
        Op=1'b0;
        #50
        Op=1'b1;
        #50;
        input_A=32'h0000_0cc1;
        input_B=32'h0000_ffff;
        #50;
        Op=1'b0;
    end
    Multiplexer Mul(
        .input_A(input_A),
        .input_B(input_B),
        .output_Data(F),
        .Mul_Op(Op)
    );
endmodule
