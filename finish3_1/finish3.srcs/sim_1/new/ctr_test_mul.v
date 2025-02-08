`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/11 17:24:01
// Design Name: 
// Module Name: ctr_test_mul
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


module ctr_test_mul();
    reg CLK,CLR;
    reg [5:0] opcode;
    reg [5:0] func;
    reg zero, sign;
    wire PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR,ExtSel;
    wire [1: 0] PCSrc;
    wire [1: 0] RegDst;
    wire IR_Wre,Wre_Reg_Src;
    CPU_ctr_mul a(
        .opcode(opcode),
        .func(func),
        .zero(zero),
        .sign(sign),
        .PCWre(PCWre),
        .DBDataSrc(DBDataSrc),
        .RegWre(RegWre),
        .InsMemRW(InsMemRW),
        .mRD(mRD),
        .mWR(mWR),
        .ExtSel(ExtSel),
        .PCSrc(PCSrc),
        .RegDst(RegDst),
        .IR_Wre(IR_Wre),
        .Wre_Reg_Src(Wre_Reg_Src),
        .CLK(CLK),
        .CLR(CLR)
    );
    initial
    begin
        opcode=6'b000000;
        func=6'b000000;
        CLR=1;
        CLK=1;
        #20;
        CLR=0;
        #20;
        CLK=0;
        #20;
        CLK=1;
        #20;
        CLK=0;
        #20;
        CLK=1;
        #20;
        CLK=0;
        #20;
        CLK=1;
        #20;
        CLK=0;
        #20;
        CLK=1;
        #20;
        CLK=0;
        #20;
        
    end
    
    
endmodule
