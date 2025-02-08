`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/17 20:55:31
// Design Name: 
// Module Name: Reg_test
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


module Reg_test();
    reg CLK;
    reg CLR;
    reg W_Reg_Ctr;
    reg [4:0]R_Reg_Addr_A;
    reg [4:0]R_Reg_Addr_B;
    reg [4:0]W_Reg_Addr;
    reg [31:0]W_Reg_Data;
    wire [31:1]R_Reg_Data_A;
    wire [31:0]R_Reg_Data_B;
    initial begin
        CLK=0;
        CLR=0;
        #50;
        CLR=1;
        #50;
        CLR=0;
        #50;
        CLK=1;
        #50;
        CLK=0;
        W_Reg_Ctr=1'b1;
        R_Reg_Addr_A=5'b00000;
        
        R_Reg_Addr_B=5'b00001;
        W_Reg_Addr=5'b00000;
        
        W_Reg_Data=32'h0000_1234;
        #50;
        CLK=1;
        #50;
        CLK=0;
        W_Reg_Ctr=1'b0;
        R_Reg_Addr_A=5'b00001;
        
        R_Reg_Addr_B=5'b00000;
        W_Reg_Addr=5'b00001;
        
        W_Reg_Data=32'h0000_12dd;
        #50;
        CLK=1;
        #50;
        CLK=0;
        CLR=1;
        #50;
        CLK=1;
        CLR=0;
        #50;
        CLK=0;
        #50;
        CLK=1;
        #50;
        CLK=0;
        #50;
        CLK=1;
        
        
        
    
    end
    

    RegFile regtest(
        .CLK(CLK),
        .CLR(CLR),
        .W_Reg_Ctr(W_Reg_Ctr),
        .R_Reg_Addr_A(R_Reg_Addr_A),
        .R_Reg_Addr_B(R_Reg_Addr_B),
        .W_Reg_Addr(W_Reg_Addr),
        .W_Reg_Data(W_Reg_Data),
        .R_Reg_Data_A(R_Reg_Data_A),
        .R_Reg_Data_B(R_Reg_Data_B)
    );

    
    
endmodule
