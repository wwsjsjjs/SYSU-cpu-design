`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 11:03:22
// Design Name: 
// Module Name: keytest
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


module keytest(

    );
    reg CLK;
    reg button_CLK;
    wire Button;
    initial begin
        CLK=0;
        button_CLK=1;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        button_CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        
        button_CLK=1;
        #10;CLK=1;#10; CLK=0;
        button_CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
        #10;CLK=1;#10; CLK=0;
    end
    
    
    Key k(
        .button_CLK(button_CLK),
        .CLK(CLK),
        .Button(Button)
        );
endmodule
