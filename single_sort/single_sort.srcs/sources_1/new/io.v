//io
`timescale 1ns / 1ps
module io(
   input  clk,
 
   
   input  input_or_display,
   input  next,
   
   input  [7:0]putin_num,
   
   output [3:0]wei_xuan,
   output [6:0]duan_xuan,
   
   output [9:0]place,
   output  write_if_to_ram,
   output  [31:0]write_data_to_ram,
   output [5:0] write_address_to_ram,
   input   [31:0]display_data_from_ram
   
   
);
           
   wire debounced_next;
   //debounce(clk,next,debounced_next);
   debounce  debounce(
       .clk(clk),
       .btn_in(next),
       .btn_out(debounced_next)
   );
 
   assign  write_if_to_ram=~input_or_display;
   assign  write_data_to_ram={{24{putin_num[7]}},putin_num};
   
   wire [31:0] data;
   assign data=(~input_or_display)?{{24{putin_num[7]}},putin_num}:display_data_from_ram;
   //display(clk,data,wei_xuan,duan_xuan)
   display  display(
      .clk(clk),
      .data(data[15:0]),
      .segg(wei_xuan),
      .a_to_gg(duan_xuan)
   );
   
   reg [5:0] key_write;
   initial key_write=0; 
   always @(negedge debounced_next ) begin
           key_write <= (key_write == 10) ? 6'd0 : (key_write + 6'd1);
    end
   
   
   reg[5:0]  key_display;
   initial key_display=0;
  
   wire clk_display;
   div_2  div_2(
      .clk1(clk),
      .clk2(clk_display)
   );
  always @( posedge clk_display) begin
        key_display <= (key_display == 9) ? 6'd0 : (key_display + 6'd1);
    end
   
   
   assign write_address_to_ram=(~input_or_display)?(key_write<<2):(key_display<<2);
   assign place=(~input_or_display)?(1<<key_write):(1<<key_display);
   
   
endmodule
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
//cpu
module cpu(
   input  clk,
   input  start,
   input [31:0]read_data,
   output[31:0] write_data,
   output [31:0]write_address,
   output write_if,
   output  read_if
);
 wire[31:0] inst;
 wire[31:0]addr_ready;
 wire[31:0]addr_pre;           
 wire regdst;                  
 wire alusrc;                  
  wire memtoreg;                
 wire regwrite;                     
 wire branch;                
  wire [3:0]aluop;             
wire jmp;                   
 wire extop;                    
  wire [31:0]a;                
  wire [31:0]b;                         
wire zflag;          
  wire [3:0]aluctr;             
  wire [4:0]w_addr;  
             
 wire [31:0]w_data_regs;     
wire[5:0]op;
wire[4:0]rs;
wire[4:0]rt;
wire[4:0]rd;
wire[4:0]shamt;
wire[5:0]func;
wire[15:0]imm;
 wire[25:0]addr;
   assign op=inst[31:26];
   assign rs=inst[25:21];
   assign rt=inst[20:16];
   assign rd=inst[15:11];
   assign shamt=inst[10:6];
   assign func=inst[5:0];
   assign imm=inst[15:0];
   assign addr=inst[25:0];
 
 
 
   pc unit1(
      .clk(clk),
      .clr(~start),
      .addr1(addr_pre),
      .addr2(addr_ready)
   );
   
   pc_4 unit2(
      .clk(clk),
      .zflag(zflag),
      .pc(addr_ready),
      .jmp(jmp),
      .branch(branch),
      .address(addr),
      .imm(imm),
      .pc_now(addr_pre)
   );
   
   ins_rom unit3(
      .addr(addr_ready),
      .ins(inst)
   );
        
   regs unit4(
      .clk(clk),
      .ctr(~start), 
      .write_reg(regwrite),
      .r_addr_a(rs),
      .r_addr_b(rt), 
      .w_addr(w_addr),
      .w_data(w_data_regs),
      .r_data_a(a),
      .r_data_b(write_data)   
   );      
   
   alu unit5(
      .a(a),
      .b(b),
      .c(write_address),
      .shamt(shamt),
      .flagz(zflag),
      .ctr(aluctr)
   );
   
   control unit6(
     .opcode(op),
     .regdst(regdst), 
     .alusrc(alusrc),     
     .memtoreg(memtoreg),   
     .regwrite(regwrite),                    
     .memread( read_if),    
     .memwrite(write_if),  
     .branch(branch),     
     .aluop(aluop), 
     .jmp(jmp),        
     .extop(extop)      
  );
  
  alu_control unit7(
     .aluop(aluop),
     .funct(func), 
     .aluctr(aluctr) 
  );
  
  alusrc unit8(
      .alusrc(alusrc), 
      .extop(extop),
      .imm(imm),
      .rt(write_data),
      .b(b)
  );            
  
   memtoreg unit9(
       .memtoreg(memtoreg),
       .alu_result(write_address),
       .mem_result( read_data),
       .w_data(w_data_regs)
   );         
   
   regdst unit10(
      .regdst(regdst),
      .rd(rd),
      .rt(rt), 
      .w_addr(w_addr)
   );
endmodule
//zuidingcen
module my_single_cpu_to_sort_data_from_input(
     input  clk,
     input  input_or_display,
     input  next,
     input  [7:0]putin_num,
     output [3:0]wei_xuan,
     output [6:0]duan_xuan,
     output [9:0]place
);
    wire  [31:0]write_data_io_to_ram;
    wire  [5:0]write_address_io_to_ram;
    wire  write_or_display_io_to_ram;
    wire  [31:0]display_data_ram_to_io;
    wire [31:0]read_data;
    wire [31:0]write_data;
    wire [31:0]write_address;
    wire write_if;
    wire  read_if;
  
    
    cpu  cpu(
      .clk(clk),             
      .start(input_or_display),         
      .read_data(read_data),     
      .write_data(write_data),   
      .write_address(write_address),
      .write_if(write_if),     
      .read_if(read_if)    
 
    );
    
    ram  ram(
        .clk(clk),                                   
        .write_if_from_io(write_or_display_io_to_ram),        
        .write_data_from_io(write_data_io_to_ram),     
        .write_address_from_io(write_address_io_to_ram),   
        .display_data_to_io(display_data_ram_to_io),      
        .mem_write(write_if),               
        .mem_read(read_if),                
        . addr(write_address),             
        . write_data(write_data),       
        . read_data(read_data),
        . finish_if_cpu(finish_if_cpu_to_io)
    );
    
    io  io(
       .clk(clk),                                     
       .input_or_display(input_or_display),        
       .next(next),                    
       .putin_num(putin_num),          
       .wei_xuan(wei_xuan),           
       .duan_xuan(duan_xuan),          
       .place(place),              
       .write_if_to_ram(write_or_display_io_to_ram),        
       .write_data_to_ram(write_data_io_to_ram),      
       .write_address_to_ram(write_address_io_to_ram),   
       .display_data_from_ram(display_data_ram_to_io)
    );
endmodule
