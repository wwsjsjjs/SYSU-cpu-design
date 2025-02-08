`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 09:57:17
// Design Name: 
// Module Name: CPU_top
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


module CPU_top(
    input CLK,
    input CLR,
    input [4:0]Sel,
    output wire [31:0]ans,
    
    output wire [31:0]PC_now,
    output wire [31:0]new_Addr,
    output wire [4:0]R_Reg_Addr_A,
    output wire [4:0]R_Reg_Addr_B,
    output wire [31:0]R_Reg_Data_A,
    output wire [31:0]R_Reg_Data_B,
    output wire [31:0] DB,
    
    output wire [31:0] F
    
);
//Reg,ALU,InsMemory,Memory,Extend,PC,Mul*5,ctr,jump_PC, PC_beq


//    RegFile(CLK,CLR,W_Reg_Ctr,R_Reg_Addr_A,R_Reg_Addr_B,W_Reg_Addr,W_Reg_Data,R_Reg_Data_A,R_Reg_Data_B);
    wire W_Reg_Ctr;
//    wire [4:0]R_Reg_Addr_A;
//    wire [4:0]R_Reg_Addr_B;
    wire [4:0]W_Reg_Addr;
    wire [31:0]W_Reg_Data;
//    wire [31:0]R_Reg_Data_A;
//    wire [31:0]R_Reg_Data_B;
    
//    ALU(OP,A,B,F,ZF,CF,OF,SF,PF);
    wire [3:0]OP;
    wire [31:0]A;
    wire [31:0]B;
//    wire [31:0]F;
    wire ZF;
    wire CF;
    wire OF;
    wire SF;
    wire PF;
    
//    Ins_Memory
    wire [31:0]In_Addr;
    wire RW;
    wire [31:0]Ins_Data_in;
    wire [31:0]Ins_Data_out;
    
//    Memory
//    Addr,Data_in,Data_out,CLK,CLR,R_ctr,W_ctr
    wire [31:0]Mem_Addr;
    wire [31:0]Data_in;
    wire [31:0]Data_out;
    wire R_ctr;
    wire W_ctr;
    
//    Extend_Unit
//    (in,Op,out);
    wire [15:0]in;
    wire Ex_Op;
    wire [31:0]out;    
    

    
//    PC(W_PC,CLK, CLR, [31:0] new_Addr,[31:0] PC_Addr);
    wire W_PC;
//    wire CLK;
//    wire CLR;
//    wire [31:0]new_Addr;
    wire [31:0]PC_Addr;
    
//    Multiplexer(input_A,input_B,output_Data,Mul_Op);
//    5个选择器?
//    wire input_A;
//    wire input_B;
//    wire output_Data;
//    wire Mul_Op;
    
        wire [4:0]W_Reg_Addr_Mul_input_A;
        wire [4:0]W_Reg_Addr_Mul_input_B;
        wire [4:0]W_Reg_Addr_Mul_output_Data;
        wire W_Reg_Addr_Mul_Mul_Op;
        
        wire [31:0]ALU_A_Mul_input_A;
        wire [31:0]ALU_A_Mul_input_B;
        wire [31:0]ALU_A_Mul_output_Data;
        wire ALU_A_Mul_Mul_Op;
        
        wire [31:0]ALU_B_Mul_input_A;
        wire [31:0]ALU_B_Mul_input_B;
        wire [31:0]ALU_B_Mul_output_Data;
        wire ALU_B_Mul_Mul_Op;
        
        wire [31:0]W_Reg_Data_Mul_input_A;
        wire [31:0]W_Reg_Data_Mul_input_B;
        wire [31:0]W_Reg_Data_Mul_output_Data;
        wire W_Reg_Data_Mul_Mul_Op;

        wire [31:0]PC_Mul_input_A;
        wire [31:0]PC_Mul_input_B;
        wire [31:0]PC_Mul_input_C;
        wire [31:0]PC_Mul_output_Data;
        wire [1:0]PC_Mul_Mul_Op;
        

//    Control_Unit Ctr
    wire [5:0]opcode;
    wire [5:0]func;
    wire zero, sign;
    wire PCWre, ALUSrcA, ALUSrcB, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel;
    wire [1:0]PCSrc;
    wire [3:0]ALUop;
    
//    jump_PC(
    wire [3:0]PC_head;
    wire [25:0]Jump_where;
    wire [31:0]PC_Jump;
    
    
//    PC_beq(input [31:0]PC_now,input [31:0]PC_add,output reg[31:0]PC_next);
//    wire [31:0]PC_now;
    wire [31:0]PC_add;
    wire [31:0]PC_next;
//    assign Ctr输入的赋值
    assign opcode=Ins_Data_out[31:26];
    assign func=Ins_Data_out[5:0];
    assign zero=ZF;
    assign sign=SF;
//    assign ZF,CF,OF,SF,PF 



//    assign Reg OK
    assign W_Reg_Ctr=RegWre;
    assign R_Reg_Addr_A=Ins_Data_out[25:21];
    assign R_Reg_Addr_B=Ins_Data_out[20:16];
    assign W_Reg_Addr=W_Reg_Addr_Mul_output_Data[4:0];
    assign W_Reg_Data=W_Reg_Data_Mul_output_Data[31:0];
    assign DB=W_Reg_Data_Mul_output_Data[31:0];
//    assign ALU OK
    assign A=ALU_A_Mul_output_Data[31:0];
    assign B=ALU_B_Mul_output_Data[31:0];
    assign OP = ALUop[3:0];
    
    
//    assign Mul*5
//    都是32位需要修改
    assign W_Reg_Addr_Mul_input_A=Ins_Data_out[20:16];
    assign W_Reg_Addr_Mul_input_B=Ins_Data_out[15:11];
    assign W_Reg_Addr_Mul_Mul_Op=RegDst;
    
    assign W_Reg_Data_Mul_input_A=F[31:0];
    assign W_Reg_Data_Mul_input_B=Data_out[31:0];
    assign W_Reg_Data_Mul_Mul_Op=DBDataSrc;
//    assign DB=DBDataSrc
        
    assign ALU_A_Mul_input_A=R_Reg_Data_A[31:0];
    assign ALU_A_Mul_input_B={27'b000000000000000000000000000,Ins_Data_out[10:6]};
    assign ALU_A_Mul_Mul_Op=ALUSrcA;
    
    assign ALU_B_Mul_input_A=R_Reg_Data_B[31:0];
    assign ALU_B_Mul_input_B=out[31:0];
    assign ALU_B_Mul_Mul_Op=ALUSrcB;
    
    
    assign PC_Mul_input_A=PC_Addr[31:0];
    assign PC_Mul_input_B=PC_next[31:0];
    assign PC_Mul_input_C=PC_Jump[31:0];
    assign PC_Mul_Mul_Op=PCSrc[1:0];
    
    
//    Ins_Memory
    assign In_Addr=PC_Addr[31:0];
    assign RW=InsMemRW;
//    assign Ins_Data_in;//没有？

//    Memory
//    Addr,Data_in,Data_out,CLK,CLR,R_ctr,W_ctr
    assign Mem_Addr=F[31:0];
    assign Data_in=R_Reg_Data_B[31:0];
    assign R_ctr=mRD;
    assign W_ctr=mWR;

//    Extend_Unit
//    (in,Op,out);
    assign in=Ins_Data_out[15:0];
    assign Ex_Op=ExtSel;  

//    PC
    assign W_PC=PCWre;
    assign new_Addr=PC_Mul_output_Data[31:0];


//    jump_PC
    assign PC_head=PC_Addr[31:28];
    assign Jump_where=Ins_Data_out[25:0];

//    PC_beq(input PC_now,input PC_add,output regPC_next);
    assign PC_now=PC_Addr[31:0];
    assign PC_add=out[31:0];
    ALU_ctr ALU_ctr(
        .opcode(opcode),
        .func(func),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .ALUop(ALUop)
        
    );
    Control_Unit Ctr_Unit(
        .opcode(opcode),
        .func(func),
        .zero(zero),
        .sign(sign),
        .PCWre(PCWre),
        
        .DBDataSrc(DBDataSrc),
        .RegWre(RegWre),
        .InsMemRW(InsMemRW),
        .mRD(mRD),
        .mWR(mWR),
        .RegDst(RegDst),
        .ExtSel(ExtSel),
        .PCSrc(PCSrc)
    );

    RegFile Reg(        //输入        
        .CLK(CLK),//时钟信号        
        .CLR(CLR),//清零信号     
        .W_Reg_Ctr(W_Reg_Ctr),//写入控制        
        .R_Reg_Addr_A(R_Reg_Addr_A),//A端口读地址       
        .R_Reg_Addr_B(R_Reg_Addr_B),//B端口读地址        
        .W_Reg_Addr(W_Reg_Addr),//写入地址       
        .W_Reg_Data(W_Reg_Data),//写入数据, 由外部或ALU输入                
         //输出        
        .R_Reg_Data_A(R_Reg_Data_A),//A端口读出数据        
        .R_Reg_Data_B(R_Reg_Data_B)//B端口读出数据    
    );              //实例化ALU模块    
     
    ALU ALU(    //输入        
        .OP(OP),//运算符                
        .A(A),//从寄存器读A操作数       
        .B(B),//从寄存器读B操作数       
        //输出 
        .F(F),//ALU_F作为中间变量暂存运算结果，与Input_Data选择输入寄存器                      
        .ZF(ZF),//零标志       
        .CF(CF),//进借位标志(只对无符号数运算有意义)        
        .OF(OF),//溢出标志(只对有符号数运算有意义)        
        .SF(SF),//符号标志(只对有符号数运算有意义)       
        .PF(PF)//奇偶标志    
    );
    Ins_Memory Ins(
        .In_Addr(In_Addr),
        .RW(RW),
        .Ins_Data_in(Ins_Data_in),
        .Ins_Data_out(Ins_Data_out)
    );
    Memory Mem(
        .Sel(Sel),
        .ans(ans),
        .Mem_Addr(Mem_Addr),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .CLK(CLK),
        .CLR(CLR),
        .R_ctr(R_ctr),
        .W_ctr(W_ctr)
        
    );
    Extend_Unit Ex(
        .in(in),
        .Ex_Op(Ex_Op),
        .out(out)
    );
    PC PC(
        .W_PC(W_PC),
        .CLK(CLK),
        .CLR(CLR),
        .new_Addr(new_Addr),
        .PC_Addr(PC_Addr)
    );
    jump_PC j(
        .PC_head(PC_head),
        .Jump_where(Jump_where),
        .PC_Jump(PC_Jump)
    );
    PC_beq PC_b(
        .PC_now(PC_now),
        .PC_add(PC_add),
        .PC_next(PC_next)
    );
//5个mul
    Mul_3to1 PC_Mul(
        .input_A( PC_Mul_input_A ),
        .input_B( PC_Mul_input_B ),
        .input_C( PC_Mul_input_C ),
        .output_Data( PC_Mul_output_Data ),
        .Mul_Op( PC_Mul_Mul_Op )
    );
    
    Multiplexer ALU_A_Mul(
        .input_A(ALU_A_Mul_input_A ),
        .input_B( ALU_A_Mul_input_B ),
        .output_Data( ALU_A_Mul_output_Data ),
        .Mul_Op( ALU_A_Mul_Mul_Op )
    );
    Multiplexer ALU_B_Mul(
        .input_A( ALU_B_Mul_input_A ),
        .input_B( ALU_B_Mul_input_B ),
        .output_Data( ALU_B_Mul_output_Data ),
        .Mul_Op( ALU_B_Mul_Mul_Op )
    );
    Multiplexer W_Reg_Data_Mul(
        .input_A( W_Reg_Data_Mul_input_A ),
        .input_B( W_Reg_Data_Mul_input_B ),
        .output_Data( W_Reg_Data_Mul_output_Data ),
        .Mul_Op( W_Reg_Data_Mul_Mul_Op )
    );
    Multiplexer_5 W_Reg_Addr_Mul(
        .input_A( W_Reg_Addr_Mul_input_A ),
        .input_B( W_Reg_Addr_Mul_input_B ),
        .output_Data( W_Reg_Addr_Mul_output_Data ),
        .Mul_Op( W_Reg_Addr_Mul_Mul_Op )
    );

    

endmodule
