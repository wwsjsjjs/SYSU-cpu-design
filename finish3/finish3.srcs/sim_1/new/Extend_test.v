`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 22:36:51
// Design Name: 
// Module Name: Extend_test
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


module Extend_test();
//    reg 
    parameter SIZE = 32;
    reg [16:1]in;
    wire [32:1]out;
//    reg [SIZE:1]input_B;
    reg Op;
    initial begin
        in=16'hffff;
        Op=1'b0;
        #50;
        Op=1'b1;
        #50;
        in=16'h0f32;
    end
//    wire [SIZE:1]F;
    Extend_Unit a(
        .in(in),
        .Ex_Op(Op),
        .out(out)
    );
endmodule
