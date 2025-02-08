`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 22:15:34
// Design Name: 
// Module Name: CPU_test
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


module CPU_test();
    reg CLK;
    reg CLR;
    wire [31:0]PC_now;		
	wire [4:0] R_Reg_Addr_A;
     wire [4:0] R_Reg_Addr_B;
     wire [31:0] R_Reg_Data_A; 
     wire [31:0] R_Reg_Data_B; 
     wire [31:0] new_Addr;
     wire [31:0] F;
     wire [31:0] DB;

    initial begin
        CLK=0;
        CLR=0;
        #10;
        
        CLK=0;
        CLR=1;
        
        #10;
        CLK=0;
        CLR=0;
        
        
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        #10;
        CLK=1;
        #10;
        CLK=0;
        
    end
    CPU_top CPU_single(    
        .CLK(CLK),
        .CLR(CLR),
        .new_Addr(new_Addr),
        .PC_now(PC_now),
        .R_Reg_Addr_A(R_Reg_Addr_A),
        .R_Reg_Addr_B(R_Reg_Addr_B),
        .R_Reg_Data_A(R_Reg_Data_A),
        .R_Reg_Data_B(R_Reg_Data_B),
        .DB(DB),
        .F(F)

    );
    
endmodule
