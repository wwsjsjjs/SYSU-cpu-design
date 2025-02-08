`timescale 1ns / 1ps

//ram 
module  ram(
   input  clk,
   input  write_if_from_io,
   input  [31:0]write_data_from_io,
   input  [5:0]write_address_from_io,
   output [31:0]display_data_to_io,
   
    input mem_write, 
    input mem_read,
    input [31:0] addr,
    input [31:0] write_data,
    output [31:0] read_data,
    
    input finish_if_cpu
    
    
);
  reg [31:0] ram[0:255];
  initial begin
    
     ram[0]<=32'd6;
     ram[4]<=32'd1;
     ram[8]<=32'd4;
     ram[12]<=32'd3;
     ram[16]<=32'd10;
     ram[20]<=32'd9;
     ram[24]<=32'd8;
     ram[28]<=32'd7;
     ram[32]<=32'd5;
     ram[36]<=32'd2  ;
     
  end
  
  
  assign read_data = (mem_read) ? ram[addr[7:0]] : 32'd0;
  assign display_data_to_io=(~write_if_from_io)?ram[write_address_from_io]:32'd0;
  
  
  
  always @(negedge clk) begin
    
     if(write_if_from_io) begin     
            ram[write_address_from_io]<=write_data_from_io;
      end
     else
       if(mem_write)
       begin
          ram[addr[7:0]] <= write_data;
      end
      
      
  end
  
endmodule