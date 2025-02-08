`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/15 12:38:07
// Design Name: 
// Module Name: PC
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


module PC(
    input W_PC,
    input CLK,
    input CLR,
    input [31:0] new_Addr,
    output reg [31:0] PC_Addr
    );
    always@(negedge CLK or posedge CLR)
    begin
        if(CLR)
            PC_Addr=32'h0000_0000;
        else if(!CLK)
        begin
            PC_Addr=W_PC?new_Addr[31:0]:PC_Addr[31:0];
        end
    end
endmodule
