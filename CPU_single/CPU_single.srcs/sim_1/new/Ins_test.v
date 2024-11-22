`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 13:37:24
// Design Name: 
// Module Name: Ins_test
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


module Ins_test();
    reg [31:0]In_Addr;
    reg [31:0]Ins_Data_in;
    wire [31:0]Ins_Data_out;
    reg RW;
    initial begin
        RW=0;
        In_Addr=0;
//        Data_in=32'h0000_0023
        #50
        RW=0;
        In_Addr=32'h0000_0000;
        #50;
        In_Addr=32'h0000_0004;
        #50;
        In_Addr=32'h0000_0008;
        #50;
        In_Addr=32'h0000_000c;
        #50;
        
    end
    
    Ins_Memory a(
        .In_Addr(In_Addr),
        .RW(RW),
        .Ins_Data_in(Ins_Data_in),
        .Ins_Data_out(Ins_Data_out)
    );
endmodule
