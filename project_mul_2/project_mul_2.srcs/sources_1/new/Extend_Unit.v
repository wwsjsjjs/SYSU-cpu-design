`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 22:13:33
// Design Name: 
// Module Name: Extend_Unit
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


module Extend_Unit(in,Ex_Op,out);
    parameter SIZE = 32;
    
    input [15:0]in;
    input Ex_Op;
    
    output [SIZE-1:0] out;
    reg [SIZE-1:0]out;
    always@(*)
        begin
        if(Ex_Op==1'b1)
            out={(Ex_Op&&in[15])?16'hffff:16'h0000,in};
        else if(Ex_Op==1'b0)
            out={16'h0000,in};
        else
            out=32'hzzzzzzzz;
    end 
    
endmodule
