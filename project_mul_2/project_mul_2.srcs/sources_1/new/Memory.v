`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/14 23:11:31
// Design Name: 
// Module Name: Memory
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


module Memory(Mem_Addr,Data_in,Data_out,CLK,CLR,R_ctr,W_ctr);
    parameter SIZE = 32;
    reg [SIZE/4-1:0]Data[0:127];
    
    input CLK,CLR,R_ctr,W_ctr;
    
    input [SIZE-1:0]Mem_Addr;
    input [SIZE-1:0]Data_in;
    output [SIZE-1:0]Data_out;
//    reg [SIZE-1:0]Data_out;
    
    always@(posedge CLK or posedge CLR)//时钟信号或清零信号上升沿
    begin
        if(CLR)//清零
        begin:loop
            integer i;
//            Data_out=32'hzzzz_zzzz;
            for(i=0;i<127;i=i+4) 
                {Data[i],Data[i+1],Data[i+2],Data[i+3]}<=32'h0000_0000;
//                R_ctr=1'b0;
//                W_ctr=1'b0;
        end 
        else if(CLK)
        begin
            if(R_ctr && !W_ctr)
            begin
//                Data_out<=Data[Mem_Addr];
            end
            else if(!R_ctr && W_ctr)
            begin
                {Data[Mem_Addr*4],Data[Mem_Addr*4+1],Data[Mem_Addr*4+2],Data[Mem_Addr*4+3]}<=Data_in[31:0];
//                Data_out<=32'hzzzz_zzzz;
            end
            else
            begin
//                Data_out<=32'hzzzz_zzzz;
            end
            
                
        end
             
                
    end   
    assign Data_out={Data[Mem_Addr*4],Data[Mem_Addr*4+1],Data[Mem_Addr*4+2],Data[Mem_Addr*4+3]};
endmodule
