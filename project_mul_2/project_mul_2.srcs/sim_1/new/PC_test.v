`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 12:48:30
// Design Name: 
// Module Name: PC_test
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


module PC_test();
    reg W_PC,CLK,CLR;
    reg [31:0]new_Addr;
    wire [31:0]PC_Addr;
    initial begin
        CLR=1;
        CLK=0;
        W_PC=0;
        #50;
        W_PC=1;
        new_Addr=32'h0000_0100;
        CLK=1;
        CLR=0;
        #50;
        CLK=0;
        #50;
        W_PC=1;
        new_Addr=32'h0000_1000;
        CLK=1;
        #50;
        CLK=0;
        
        #50;
        W_PC=0;
        new_Addr=32'h0000_1100;
        CLK=1;
        #50;
        CLK=0;
        #50;
        CLK=1;
    end
    PC a(
    .W_PC(W_PC),
    .CLK(CLK),
    .CLR(CLR),
    .new_Addr(new_Addr),
    .PC_Addr(PC_Addr)
    );
endmodule
