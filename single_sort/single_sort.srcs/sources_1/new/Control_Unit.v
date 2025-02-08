`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 17:03:51
// Design Name: 
// Module Name: Control_Unit
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

module Control_Unit(
    input [5:0] opcode, 
    input [5:0] func, 
    
    input zero, sign,
    
    output reg PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel, 
    
    output reg [1: 0] PCSrc
    
//    output reg [3: 0] //ALUop
    
    
    
//    output reg [1: 0] WDSel 
    );
    initial begin
        PCWre=1'b0;
//        ALUSrcA=1'b0;
//        ALUSrcB=1'b0;
        DBDataSrc=1'b0;
        RegWre=1'b0;
        InsMemRW=1'b0;
        mRD=1'b0;
        mWR=1'b0;
        RegDst=1'b0;
        ExtSel=1'b0;
        
        PCSrc=2'b00;
        
        //ALUop=4'b0000;
    end
    always @(*)begin 
        PCSrc=2'b00;
        case(opcode)
            6'b000000: //ALU计算 
            begin
                case(func)
                6'b100000: //加法add
                begin 
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0000; 
//                    WDSel=2'b00; 
                end
                6'b10010: //减法sub
                begin 
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0001; 
//                    WDSel=2'b00; 
                end
                6'b100100://与and
                begin
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0010; 
//                    WDSel=2'b00; 
                end
                6'b100101: //或or
                begin 
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0011; 
//                    WDSel=2'b00; 
                end
                6'b000000: //左移sll
                begin 
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0100; 
//                    WDSel=2'b00; 
                end
                default
                begin 
                    {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x01x; 
                    PCSrc=2'b00;
                    //ALUop=4'b0100; 
//                    WDSel=2'b00; 
                end
                endcase 
            end
           
           
            6'b001100://andi
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x000; 
                PCSrc=2'b00;
                //ALUop=4'b0010; 
            end
            6'b001101://ori
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x000; 
                PCSrc=2'b00;
                //ALUop=4'b0011; 
            end
            6'b001010://slti
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x001;
                PCSrc=2'b00;
                //ALUop=4'b0110; 
            end
            6'b001001://addiu
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x001; 
                PCSrc=2'b00;
                //ALUop=4'b0000; 
            end
            6'b001000://addi
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1011x001; 
                PCSrc=2'b00;
                //ALUop=4'b0000; 
            end
            6'b000101://bne
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1x01x0x1;
                 
                PCSrc=2'b00;
                if(!zero)
                begin
                    PCSrc=2'b01;
                end
                else
                begin
                    PCSrc=2'b00;
                end
                //ALUop=4'b0001; 
            end
            6'b000100://beq
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1x01x0x1; 
                PCSrc=2'b00;
                if(zero)
                begin
                    PCSrc=2'b01;
                end
                else
                begin
                    PCSrc=2'b00;
                end
            end
            6'b000010://j
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1x01x0xx; 
                PCSrc=2'b10;
                //ALUop=4'bxxxx; 
            end
            6'b000110://bltz
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1x01x0x1;
                PCSrc=2'b00;
                if(!sign)
                
                begin
                    PCSrc=2'b01;
                end
                else
                begin
                    PCSrc=2'b00;
                end            

                //ALUop=4'b0001; 
            end
            6'b101011://sw
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b1x0101x1; 
                PCSrc=2'b00;
                //ALUop=4'b0000; 
            end
            
            
            6'b100011://lw
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b11111001;
                PCSrc=2'b00;
                //ALUop=4'b0000; 
            end
            default:
//            6'b111111://halt
            begin
                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b00000000; 
                PCSrc=2'b00;
                //ALUop=4'b0000; 
            end
//            6'b100001:  
//            begin //lh
//                {PCWre, DBDataSrc, RegWre, InsMemRW,mRD, mWR, RegDst, ExtSel}=8'b101111001;
//                PCSrc=2'b00;
//                //ALUop=4'b0000; 
//                WDSel=2'b01;
//            end

        endcase 
    end
endmodule 
