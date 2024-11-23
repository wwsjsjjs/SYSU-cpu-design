`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 21:15:31
// Design Name: 
// Module Name: ALU_ctr
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


module ALU_ctr(
    input [5:0] opcode, 
    input [5:0] func, 
    
//    input zero, sign,
    
    output reg ALUSrcA, ALUSrcB, //DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel, 
    
//    output reg [1: 0] PCSrc,
    
    output reg [3: 0] ALUop

    );
    always @(*)begin 
//        PCSrc=2'b00;
        case(opcode)
            6'b000000: //ALU计算 
            begin
                case(func)
                6'b100000: //加法add
                begin 
                    {ALUSrcA, ALUSrcB}=2'b00; 
//                    PCSrc=2'b00;
                    ALUop=4'b0000; 
//                    WDSel=2'b00; 
                end
                6'b100010: //减法sub
                begin 
                    {ALUSrcA, ALUSrcB}=2'b00; 
//                    PCSrc=2'b00;
                    ALUop=4'b0001; 
//                    WDSel=2'b00; 
                end
                6'b100100: //与and
                begin 
                    {ALUSrcA, ALUSrcB}=2'b00; 
//                    PCSrc=2'b00;
                    ALUop=4'b0100; 
//                    WDSel=2'b00; 
                end
                6'b100101: //或or
                begin 
                    {ALUSrcA, ALUSrcB}=2'b00; 
//                    PCSrc=2'b00;
                    ALUop=4'b0011;
//                    WDSel=2'b00; 
                end
                6'b000000: //左移sll
                begin 
                    {ALUSrcA, ALUSrcB}=2'b10; 
//                    PCSrc=2'b00;
                    ALUop=4'b0010;
//                    WDSel=2'b00; 
                end
                default
                begin 
                    {ALUSrcA, ALUSrcB}=2'b00; 
//                    PCSrc=2'b00;
                    ALUop=4'b0100; 
//                    WDSel=2'b00; 
                end
                endcase 
            end
           
           
            6'b001100://andi
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0100; 
            end
            6'b001101://ori
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0011; 
            end
            6'b001010://slti
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0110; 
            end
            6'b001001://addiu
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0000; 
            end
            6'b000101://bne
            begin
                {ALUSrcA, ALUSrcB}=2'b00; 
                
                ALUop=4'b0001; 
            end
            6'b000100://beq
            begin
                {ALUSrcA, ALUSrcB}=2'b00; 
               
                ALUop=4'b0001; 
            end
            6'b000010://j
            begin
                {ALUSrcA, ALUSrcB}=2'bxx; 
//                PCSrc=2'b10;
                ALUop=4'bxxxx; 
            end
            6'b001000://bltz
            begin
                {ALUSrcA, ALUSrcB}=2'b00; 

                ALUop=4'b0001; 
            end
            6'b101011://sw
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0000; 
            end
            
            
            6'b100011://lw
            begin
                {ALUSrcA, ALUSrcB}=2'b01; 
//                PCSrc=2'b00;
                ALUop=4'b0000; 
            end
            default:
//            6'b111111://halt
            begin
                {ALUSrcA, ALUSrcB}=2'b00; 
//                PCSrc=2'b00;
                ALUop=4'b0000; 
            end
//            6'b100001:  
//            begin //lh
//                {ALUSrcA, ALUSrcB}=10'b101111001;
//                PCSrc=2'b00;
//                ALUop=4'b0000; 
//                WDSel=2'b01;
//            end

        endcase 
    end
endmodule
