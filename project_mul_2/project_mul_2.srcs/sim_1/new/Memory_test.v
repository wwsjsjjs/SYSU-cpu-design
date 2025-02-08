`timescale  1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 00:02:31
// Design Name: 
// Module Name: Memory_test
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


module Memory_test(

    );
    parameter SIZE = 32;
    reg [SIZE:1]Mem_Addr;
    reg [SIZE:1]Data_in;
    wire [SIZE:1]Data_out;
    reg CLK,CLR,R_ctr,W_ctr;
    
    
    initial begin
        CLK=0;
        CLR=1;
        R_ctr=0;
        W_ctr=0;
        Data_in=32'h0000_0000;
        Mem_Addr=32'h0000_0000;
        
        
        #50;
        CLR=0;
//        CLK=1;
        Mem_Addr=32'h0000_0000;
        W_ctr=1;
        Data_in=32'hffff_1234;
        
        
        
        #50;
        CLK=1;
        
        #50;
        CLK=0;
        Data_in=32'hffff_0000;
        Mem_Addr=32'h0000_0001;
        W_ctr=1;
        #50;
        CLK=1;
        
        
        
        
        #50
        CLK=0;
        Mem_Addr=32'h0000_0000;
        W_ctr=0;
        R_ctr=1;
        #50;
        CLK=1;
        
        
        #50;
        CLK=0;
        Mem_Addr=32'h0000_0001;
        #50;
        
        
        CLK=1;
        
        #50;
        CLK=0;
    end
//    wire [SIZE:1]F;
    Memory a(
        .Mem_Addr(Mem_Addr),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .CLK(CLK),
        .CLR(CLR),
        .R_ctr(R_ctr),
        .W_ctr(W_ctr)
    );
    
endmodule
