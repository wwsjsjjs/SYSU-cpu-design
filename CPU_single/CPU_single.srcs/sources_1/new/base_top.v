`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/20 21:04:49
// Design Name: 
// Module Name: base_top
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


module base_top(
    input CLK,
    input CLR,
    input botton_CLK,
    
    input [1:0]status,
    output reg [7:0]display,
    output reg [3:0]dis_addr
    );
//    wire CLK  
//    wire CLR  
    wire [31:0] PC_now;
    wire [4:0] R_Reg_Addr_A;
    wire [4:0] R_Reg_Addr_B;
    wire [31:0] R_Reg_Data_A;
    wire [31:0] R_Reg_Data_B;
    wire [31:0] Mem_Addr;
    wire [31:0] Data_out;
    wire [31:0] F;
    wire [7:0]display1,display2,display3,display4;
    reg [3:0]num1,num2,num3,num4;
    always @(*) begin
        dis_addr=dis_addr<<1;
        if(dis_addr==4'b0000)
            dis_addr<=4'b0001;
        case (dis_addr)
            4'b0001:begin display=display1;end 
            4'b0010:begin display=display2;end 
            4'b0100:begin display=display3;end 
            4'b1000:begin display=display4;end 
        endcase
        case (status)
            4'b00 : 
            begin
            num1=PC_now[15:12];
            num2=PC_now[11:8];
            num3=PC_now[7:4];
            num4=PC_now[3:0];
            
            end
            4'b01 : 
            begin
            num1=R_Reg_Data_A[15:12];
            num2=R_Reg_Data_A[11:8];
            num3=R_Reg_Data_A[7:4];
            num4=R_Reg_Data_A[3:0];
            end
            4'b10 : 
            begin
            num1=R_Reg_Data_B[15:12];
            num2=R_Reg_Data_B[11:8];
            num3=R_Reg_Data_B[7:4];
            num4=R_Reg_Data_B[3:0];
            end
            4'b11 :  
            begin
            num1=F[15:12];
            num2=F[11:8];
            num3=F[7:4];
            num4=F[3:0];
            end
            
        endcase
    end
    CPU_top(
        .CLK(botton_CLK),
        .CLR(CLR),
        .PC_now(PC_now),
        .R_Reg_Addr_A(R_Reg_Addr_A),
        .R_Reg_Addr_B(R_Reg_Addr_B),
        .R_Reg_Data_A(R_Reg_Data_A),
        .R_Reg_Data_B(R_Reg_Data_B),
        .Mem_Addr(Mem_Addr),
        .Data_out(Data_out),
        .F(F)

    );
    LED_trans(
        .num(num1),
        .dispcode(display1)
    
    
    );
    LED_trans(
        .num(num2),
        .dispcode(display2)
    
    
    );
    LED_trans(
        .num(num3),
        .dispcode(display3)
    
    
    );
    LED_trans(
        .num(num4),
        .dispcode(display4)
    
    
    );
endmodule
