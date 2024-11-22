`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 08:53:14
// Design Name: 
// Module Name: base_test
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


module base_test(

    );
    
     reg CLK;
     reg CLR;
     reg button_CLK;
    
     reg [1:0]status;
     wire [11:0]display_out;
     initial begin
     CLK=0;
     CLR=0;
     button_CLK=0;
     
     #50;
     CLR=1;
     CLK=1;
     status=2'b00;
     #50;
     CLR=0;
     CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     #50;
     CLK=1;
     button_CLK=1;
     #50;
     CLK=0;
     button_CLK=0;
     end
     
     base_top base(
        .CLK(CLK),
        .CLR(CLR),
        .button_CLK(button_CLK),
        .SW(status),
        .display_out(display_out)
//        .dis_addr(dis_addr)
        
     
     );
endmodule
