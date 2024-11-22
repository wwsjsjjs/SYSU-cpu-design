`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 20:09:04
// Design Name: 
// Module Name: Ctr_Unit_test
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


module Ctr_Unit_test();
    reg [5:0] opcode;
    reg [5:0] func;
    
    reg zero, sign;
    
    wire PCWre, ALUSrCA, ALUSrcB, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel;
    
    wire [1: 0] PCSrc;
    
    wire [3: 0] ALUop;
    initial begin
        opcode=6'b000000;
        func=6'b000000;
        zero=0;
        sign=0;
        #50;
        opcode=6'b000001;
        func=6'b000000;
        zero=0;
        sign=0;
        #50;
        opcode=6'b111111;
        func=6'b000000;
        zero=0;
        sign=0;
        #50;
    end
    Control_Unit a(
        .opcode(opcode), 
        .func(func), 
        .zero(zero), 
        .sign(sign),
        .PCWre(PCWre), 
        .ALUSrcA(ALUSrcA), 
        .ALUSrcB(ALUSrcB), 
        .DBDataSrc(DBDataSrc), 
        .RegWre(RegWre),
        .InsMemRW(InsMemRW), 
        .mRD(mRD),
        .mWR(mWR), 
        .RegDst(RegDst), 
        .ExtSel(ExtSel), 
        .PCSrc(PCSrc),
        .ALUop(ALUop)
    );
endmodule
