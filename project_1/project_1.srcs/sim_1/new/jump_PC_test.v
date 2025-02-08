`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/08 12:02:30
// Design Name: 
// Module Name: jump_PC_test
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


module jump_PC_test(
    
    );
    reg [3:0]a;
    reg [25:0]b;
    wire [31:0]c;
    initial begin
    a=4'h3;
    b=26'h0000_000;
    #20;
    
    a=4'h1;
    #20;
    
    end
    
    jump_PC s(
       .PC_head(a),
   .Jump_where(b),
   .PC_Jump(c)
    );
    
endmodule
