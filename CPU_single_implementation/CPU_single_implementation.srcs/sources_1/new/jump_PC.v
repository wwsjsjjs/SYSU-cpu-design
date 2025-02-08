`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 19:42:41
// Design Name: 
// Module Name: jump_PC
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


module jump_PC(
    input [3:0]PC_head,
    input [25:0]Jump_where,
    output reg [31:0]PC_Jump
    );
//    [31:0]PC_Jump;
    always@(*)
    begin
        PC_Jump={PC_head,Jump_where,2'b00};
    end
endmodule
