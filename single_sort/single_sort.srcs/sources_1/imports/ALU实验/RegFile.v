`timescale 1ns / 1ns//寄存器堆模块
module RegFile(CLK,CLR,W_Reg_Ctr,R_Reg_Addr_A,R_Reg_Addr_B,W_Reg_Addr,W_Reg_Data,R_Reg_Data_A,R_Reg_Data_B);
   

    parameter SIZE = 32;
    reg [SIZE-1:0]Reg_Data[0:31];
    input CLK,CLR,W_Reg_Ctr;
    input [4:0]R_Reg_Addr_A,R_Reg_Addr_B,W_Reg_Addr;
    input [31:0]W_Reg_Data;
    output [31:0]R_Reg_Data_A,R_Reg_Data_B;
//    input CLK,CLR,R_ctr,W_ctr;
    
//    input [4:0]Mem_Addr;
//    input [31:0]Data_in;
//    output [SIZE-1:0]Data_out;
//    reg [SIZE-1:0]Data_out;
    integer i;
    initial begin
        for(i=0;i<32;i=i+1) 
                Reg_Data[i]<=32'hxxxx_xxxx;
    end
    always@(posedge CLK or posedge CLR)//时钟信号或清零信号上升沿
    begin
        if(CLR)//清零
        begin:loop
            integer i;
//            R_Reg_Data_A=32'hzzzz_zzzz;
//            R_Reg_Data_B=32'hzzzz_zzzz;
            for(i=0;i<32;i=i+1) 
                Reg_Data[i]<=32'h0000_0000;
        end 
        else if(CLK)
        begin
            if(W_Reg_Ctr)
            begin
                Reg_Data[W_Reg_Addr]<=W_Reg_Data[31:0];
            end
//            else if(!R_ctr && W_ctr)
//            begin
//                Data[Mem_Addr]<=Data_in[31:0];
//                Data_out<=32'hzzzz_zzzz;
//            end
//            else
//            begin
//                Data_out<=32'hzzzz_zzzz;
//            end
            
                
        end
    end   
    assign R_Reg_Data_A=Reg_Data[R_Reg_Addr_A];
    assign R_Reg_Data_B=Reg_Data[R_Reg_Addr_B];    
endmodule
