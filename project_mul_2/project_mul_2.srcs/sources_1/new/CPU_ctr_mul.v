`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/11 16:32:26
// Design Name: 
// Module Name: CPU_ctr_mul
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

module CPU_ctr_mul(
    input [5:0] opcode, 
    input [5:0] func, 
    
    input zero, sign,
    
    output reg PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR,  ExtSel, 
    output reg [1: 0] PCSrc,
    output reg [1: 0] RegDst,
//    加2个
    output reg IR_Wre,Wre_Reg_Src,
    output reg [2:0]status,
    input CLK,CLR
    
    );
    

    
    always @(negedge CLK or posedge CLR)begin 
        if(CLR)
        begin
            {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel}=9'b000000000;
            PCSrc =2'b00;
        //    加2个
            {IR_Wre,Wre_Reg_Src}=2'b00;
            status=3'b000;
        end
        else
        begin
        case(status)
        
            3'b000://取指
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0000000000010;
                status=3'b001;
            end
            3'b001://译码
            begin
                if(
                opcode==6'b111111||
                opcode==6'b000010||
                (opcode==6'b000000&&func==6'b001000)||
                opcode==6'b000011


                //jump型
                )
                
                begin
                    {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0000001001100;
                    PCWre=(opcode==6'b111111)?0:1;
                    RegWre=(opcode==6'b000011)?1:0;
                    PCSrc=(opcode==6'b000000)?2'b10:(opcode==6'b111111)?2'b00:2'b11;

                    status=3'b000;
                end
                if(
                opcode==6'b001100||
                opcode==6'b001101||
                opcode==6'b001010||
                opcode==6'b001001||
                opcode==6'b001110||
                (opcode==6'b000000&&func!=6'b001000)
                //R型
                )
                begin
                    {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0000000000000;

                    status=3'b110;
//                    ExtSel=1;
//                    ExtSel=0;
                end
                if(
                opcode==6'b000101||
                opcode==6'b000100||
                opcode==6'b001000
                //bne型
                )
                
                begin
                    {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b000000010000;
                    status=3'b101;
                end
                if(
                opcode==6'b101011||
                opcode==6'b100011

                //lw,sw型
                )
                
                begin
                    {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0000000000000;

                    status=3'b010;
                end
                

            end
            
            
            3'b110:
//            R型执行
            begin
//                无事发生
                ExtSel = 0;
                if(
                opcode==6'b001010||
                opcode==6'b001001
//                opcode==6'b000000
                )
                begin
                    ExtSel =1;
                    
                end
                DBDataSrc =0;
                status=3'b111;
            end
            3'b111:
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b1010000000001;
                
                if(
                opcode==6'b000000
                )
                begin
                    RegDst=2'b01;
                end
                status=3'b000;
            end
            3'b101:
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b1000000010000;
                if(
                (opcode==6'b000101&&!zero)||
                (opcode==6'b000100&&zero)||
                (opcode==6'b001000&&sign)

                )
                begin
                    PCSrc=01;
                end
                

                status=3'b000;
            end
            3'b010:
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0000000010000;
                status=3'b011;
            end
            3'b011:
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b0100000010000;
                PCWre=(opcode==6'b100011)?0:1;
                mRD=(opcode==6'b100011)?1:0;
                mWR=(opcode==6'b101011)?1:0;


                status=3'b000;
                if(opcode==6'b100011)
                begin
                    status=3'b100;
                end
                

            end
            3'b100:
            begin
                {PCWre, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel,PCSrc,IR_Wre,Wre_Reg_Src}=13'b1110100000001;

                status=3'b000;
            end
            default
            begin
                status=3'b000;
            end
            
        endcase
        end
        
    end
endmodule 
