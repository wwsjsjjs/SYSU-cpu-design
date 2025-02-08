`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/11 22:23:52
// Design Name: 
// Module Name: temp_test
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


module temp_test();
    reg [31:0] in;
    reg CLK,Wre;
    wire [31:0]out;
    initial
    begin
        in=32'h00000023;
        Wre=1;
        #20;
        
        CLK=0;
        #20;
        CLK=1;
        in=32'h77777777;
        #20;
        CLK=0;
        #20;
        CLK=1;
        in=32'haaadd321;
        Wre=0;
        #20;
        CLK=0;
    
    end
    
    Reg_temp a(
    .in(in),
    .CLK(CLK),
    .Wre(Wre),
    .out(out)
    );
endmodule
