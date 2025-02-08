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


//module Key(
//    input button_CLK,
//    input CLK,
//    output reg Button
//);
//    reg [21:0]low;
//    reg [21:0]high; 
    
//    always@(posedge CLK)
//    begin
    
//        low<=button_CLK?1'b0:low+1;
//        high<=!button_CLK?1'b0:high+1;
        
//        if(high==5000)
//        begin
//            Button<=1'b1;
//        end
//        if(low==5000)
//        begin
//            Button<=1'b0;
//        end
        
//    end
    

module Key(
    input button,
    input CLK,

    output  CPU_CLK
);

reg previous;
reg current;
wire button_remain_low;
reg [20:0] counter;
reg debounced_previous;
reg debounced_current;

assign button_remain_low = previous & (~current); //�ޱ仯
assign CPU_CLK = debounced_previous & (~debounced_current);

always @ (posedge CLK) begin
    current <= button;
    previous <= current;
end

always @ (posedge CLK) begin
    if(button_remain_low)
        counter <= 21'h0;
    else
        counter <= counter + 1;
end

always @ (posedge CLK) begin
    if(counter == 2000000) 
        debounced_current <= current;
    debounced_previous <= debounced_current;
end

endmodule

//endmodule
