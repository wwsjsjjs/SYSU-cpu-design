`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 20:02:30
// Design Name: 
// Module Name: PC_beq
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


module PC_beq(input [31:0]PC_now,input [31:0]PC_add,output reg[31:0]PC_next);
    always@(*)
    begin
        PC_next=PC_now+4+PC_add*4;
    end
endmodule
