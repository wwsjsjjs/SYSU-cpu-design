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
    input button_CLK,
    input [1:0]SW,
    input [4:0]Sel,
    output reg[11:0] display_out
    );
    wire CPU_CLK;
    wire [31:0] PC_now;
    wire [31:0] new_Addr;
    wire [4:0] R_Reg_Addr_A;
    wire [4:0] R_Reg_Addr_B;
    wire [31:0] R_Reg_Data_A;
    wire [31:0] R_Reg_Data_B;
    wire [31:0]DB;
    wire [31:0] F;
    reg [3:0]num;
    wire [7:0]dispcode;
    wire [31:0]ans;
//    wire [7:0]display1,display2,display3,display4;
//    reg [3:0]num1,num2,num3,num4;
//    Key k(
//        .button_CLK(button_CLK),
//        .CLK(CLK),
//        .Button(CPU_CLK)
//    );
    Key k(
        .button(button_CLK),
        .CLK(CLK),

        .CPU_CLK(CPU_CLK)
    );
    CPU_top CPU(
        .Sel(Sel),
        .ans(ans),
//        .CLK(button_CLK),
        .CLK(CPU_CLK),
        .CLR(CLR),
        .PC_now(PC_now),
        .new_Addr(new_Addr),
        .R_Reg_Addr_A(R_Reg_Addr_A),
        .R_Reg_Addr_B(R_Reg_Addr_B),
        .R_Reg_Data_A(R_Reg_Data_A),
        .R_Reg_Data_B(R_Reg_Data_B),
        .DB(DB),
        .F(F)

    );
    LED_trans L(
        .num(num),
        .dispcode(dispcode)
    );
//
    reg [19:0] count = 0;
    reg [2:0] sel = 0;
    parameter T1MS = 100000;
    always@(negedge CLK)begin
        if(SW == 2'b00)
        begin
            case(sel)
                0:num<=ans[15:12];
                1:num<=ans[11:8];
                2:num<=ans[7:4];
                3:num<=ans[3:0];
                default: num <= 4'bzzzz;
//                0: num <= PC_now[7:4];
//                1: num <= PC_now[3:0];
//                2: num <= new_Addr[7:4];
//                3: num <= new_Addr[3:0];
//                default: num <= PC_now[3:0];
            endcase
        end
        else if(SW == 2'b01) 
        begin
            case(sel)
                3: num <= {3'b000,R_Reg_Addr_A[4]};
                2: num <= R_Reg_Addr_A[3:0];
                1: num <= R_Reg_Data_A[7:4];
                0: num <= R_Reg_Data_A[3:0];
                default: num <= R_Reg_Data_A[3:0];

            endcase
        end
        else if(SW == 2'b10) 
        begin
            case(sel)
               
                3: num <= {3'b000,R_Reg_Addr_B[4]};
                2: num <= R_Reg_Addr_B[3:0];
                1: num <= R_Reg_Data_B[7:4];
                0: num <= R_Reg_Data_B[3:0];
                default: num <= R_Reg_Data_B[3:0];

            endcase
        end
        else if(SW == 2'b11) 
        begin
            case(sel)
                
                1: num <= DB[7:4];
                0: num <= DB[3:0];
                3: num <= F[7:4];
                2: num <= F[3:0];
                default: num <= F[3:0];

            endcase
        end
        
    
    end
    
    always @(posedge CLK) begin
        if(SW == 2'b00)
        begin
            case(sel)
                0: display_out <={4'b0111,dispcode[7:0]};
                1: display_out <={4'b1011,dispcode[7:0]};
                2: display_out <={4'b1101,dispcode[7:0]};
                3: display_out <={4'b1110,dispcode[7:0]};
                default: display_out <={4'b1111,dispcode[7:0]};
            endcase
        end
        else if(SW == 2'b01) 
        begin
            case(sel)
                0: display_out <={4'b1110,dispcode[7:0]};
                1: display_out <={4'b1101,dispcode[7:0]};
                2: display_out <={4'b1011,dispcode[7:0]};
                3: display_out <={4'b0111,dispcode[7:0]};
                default: display_out <={4'b1111,dispcode[7:0]};
            endcase
        end
        else if(SW == 2'b10) 
        begin
            case(sel)
                0: display_out <={4'b1110,dispcode[7:0]};
                1: display_out <={4'b1101,dispcode[7:0]};
                2: display_out <={4'b1011,dispcode[7:0]};
                3: display_out <={4'b0111,dispcode[7:0]};
                default: display_out <={4'b1111,dispcode[7:0]};
            endcase
        end
        else if(SW == 2'b11) 
        begin
            case(sel)
                0: display_out <={4'b1110,dispcode[7:0]};
                1: display_out <={4'b1101,dispcode[7:0]};
                2: display_out <={4'b1011,dispcode[7:0]};
                3: display_out <={4'b0111,dispcode[7:0]};
                default: display_out <={4'b1111,dispcode[7:0]};
            endcase
        end
        end


    always @(posedge CLK) begin
        count <= count + 1;
        if(count == T1MS) begin
            count <= 0;
            sel <= sel + 1;
            if(sel == 4)
                sel <= 0;
        end
    end


    
    
endmodule


