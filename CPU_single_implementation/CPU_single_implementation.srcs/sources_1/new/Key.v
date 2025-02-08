`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 22:24:28
// Design Name: 
// Module Name: Key
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


module Key(
    input button_CLK,
    input CLK,
    output reg Button
);
    reg [21:0]low;
    reg [21:0]high; 
    
    always@(posedge CLK)
    begin
    
        low<=button_CLK?1'b0:low+1;
        high<=!button_CLK?1'b0:high+1;
        
        if(high==5000)
        begin
            Button<=1'b1;
        end
        if(low==5000)
        begin
            Button<=1'b0;
        end
        
    end
    /*reg button_previous_state;
reg button_current_state;
wire button_edge;
always @ (posedge BasysCLK) begin
 button_current_state <= Button;
 button_previous_state <= button_current_state;
end
assign button_edge = button_previous_state & (~button_current_state);
reg [20:0] counter;
always @ (posedge BasysCLK) begin
 if(button_edge)
 counter <= 21'h0;
 else
 counter <= counter + 1;
end
reg delayed_button_previous_state;
reg delayed_button_current_state;
//21'h1E8480
always @ (posedge BasysCLK) begin
 if(counter == 21'h1E8480) 
 delayed_button_current_state <= button_current_state;
 delayed_button_previous_state <= delayed_button_current_state;
end
assign CPUCLK = delayed_button_previous_state & (~delayed_button_current_state);*/
    
endmodule
