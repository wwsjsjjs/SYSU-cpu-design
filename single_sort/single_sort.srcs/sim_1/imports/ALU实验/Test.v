`timescale 1ns / 1ns
module Test();
    reg CLK;
    reg CLR;
//    reg [31:0]Ins_Data_out;
//    reg [31:0]out;
    reg [31:0]PC_Addr;
    
    //    Control_Unit Ctr
    wire [5:0]opcode;
    wire [5:0]func;
    wire zero, sign;
    wire PCWre, ALUSrcA, ALUSrcB, DBDataSrc, RegWre,InsMemRW, mRD, mWR, RegDst, ExtSel;
    wire [1:0]PCSrc;
    wire [3:0]ALUop;
    
    
    
//    RegFile(CLK,CLR,W_Reg_Ctr,R_Reg_Addr_A,R_Reg_Addr_B,W_Reg_Addr,W_Reg_Data,R_Reg_Data_A,R_Reg_Data_B);
    wire W_Reg_Ctr;
    wire [4:0]R_Reg_Addr_A;
    wire [4:0]R_Reg_Addr_B;
    wire [4:0]W_Reg_Addr;
    wire [31:0]W_Reg_Data;
//    写入1
    wire [31:0]R_Reg_Data_A;
    wire [31:0]R_Reg_Data_B;
    
//    ALU(OP,A,B,F,ZF,CF,OF,SF,PF);
    wire [3:0]OP;
    //    写入4
    wire [31:0]A;
    wire [31:0]B;
    wire [31:0]F;
    wire ZF;
    wire CF;
    wire OF;
    wire SF;
    wire PF;
 
//    Multiplexer(input_A,input_B,output_Data,Mul_Op);
//    5个选择器?
    
    wire [31:0]ALU_A_Mul_input_A;
    wire [31:0]ALU_A_Mul_input_B;
    //    写入2
    wire [31:0]ALU_A_Mul_output_Data;
    wire ALU_A_Mul_Mul_Op;
    wire [31:0]ALU_B_Mul_input_A;
    wire [31:0]ALU_B_Mul_input_B;
    //    写入3
    wire [31:0]ALU_B_Mul_output_Data;
   wire ALU_B_Mul_Mul_Op;
    
    wire [4:0]W_Reg_Addr_Mul_input_A;
    wire [4:0]W_Reg_Addr_Mul_input_B;
    wire [4:0]W_Reg_Addr_Mul_output_Data;
    wire W_Reg_Addr_Mul_Mul_Op;
        
    wire [31:0]W_Reg_Data_Mul_input_A;
    wire [31:0]W_Reg_Data_Mul_input_B;
    wire [31:0]W_Reg_Data_Mul_output_Data;
    wire W_Reg_Data_Mul_Mul_Op;

//    Memory
//    Addr,Data_in,Data_out,CLK,CLR,R_ctr,W_ctr
    wire [31:0]Mem_Addr;
    wire [31:0]Data_in;
    wire [31:0]Data_out;
    wire R_ctr;
    wire W_ctr;
    
//    Ins_Memory
    wire [31:0]In_Addr;
    wire RW;
    wire [31:0]Ins_Data_in;
    wire [31:0]Ins_Data_out;
//    Extend_Unit
//    (in,Op,out);
    wire [15:0]in;
    wire Ex_Op;
    wire [31:0]out;
//    assign Ctr输入的赋值
    assign opcode=Ins_Data_out[31:26];
    assign func=Ins_Data_out[5:0];
//    assign ALU_A_Mul_input_B=sa;

//    assign Reg OK
    assign W_Reg_Ctr=RegWre;
    assign R_Reg_Addr_A=Ins_Data_out[25:21];
    assign R_Reg_Addr_B=Ins_Data_out[20:16];
    assign W_Reg_Addr=W_Reg_Addr_Mul_output_Data[4:0];
    assign W_Reg_Data=W_Reg_Data_Mul_output_Data[31:0];
    
//    assign ALU OK
    assign A=ALU_A_Mul_output_Data[31:0];
    assign B=ALU_B_Mul_output_Data[31:0];
    assign OP = ALUop[3:0];


//    assign mul*2
    assign ALU_A_Mul_input_A=R_Reg_Data_A[31:0];
    assign ALU_A_Mul_input_B={27'b000000000000000000000000000,Ins_Data_out[10:6]};
    assign ALU_A_Mul_Mul_Op=ALUSrcA;
    
    assign ALU_B_Mul_input_A=R_Reg_Data_B[31:0];
    assign ALU_B_Mul_input_B=out[31:0];
    assign ALU_B_Mul_Mul_Op=ALUSrcB;

    assign W_Reg_Addr_Mul_input_A=Ins_Data_out[20:16];
    assign W_Reg_Addr_Mul_input_B=Ins_Data_out[15:11];
    assign W_Reg_Addr_MulMul_Op=RegDst;
    
    assign W_Reg_Data_Mul_input_A=F[31:0];
    assign W_Reg_Data_Mul_input_B=Data_out[31:0];
    assign W_Reg_Data_Mul_Mul_Op=DBDataSrc;
    
    
    
//    Memory
//    Addr,Data_in,Data_out,CLK,CLR,R_ctr,W_ctr
    assign Mem_Addr=F[31:0];
    assign Data_in=R_Reg_Data_B[31:0];
    assign R_ctr=mRD;
    assign W_ctr=mWR;
//    Ins_Memory
    assign In_Addr=PC_Addr[31:0];
    assign RW=InsMemRW;
    
//    Extend_Unit
//    (in,Op,out);
    assign in=Ins_Data_out[15:0];
    assign Ex_Op=ExtSel;  
//(CLK,CLR,W_Reg_Ctr,R_Reg_Addr_A,R_Reg_Addr_B,W_Reg_Addr,W_Reg_Data,R_Reg_Data_A,R_Reg_Data_B);
//    parameter SIZE =32;
//    reg [4:0]Mem_Addr;
//    reg [31:0]Data_in;
//    wire [31:0]Data_out;
//    reg CLK,CLR,R_ctr,W_ctr;
    
    
    initial begin
        CLK=1'b0;
        CLR=1'b1;
        PC_Addr=32'h0000_0000;
//        Ins_Data_out=32'hffff_ffff;
//        out=32'h0000_0000;
        #50;
        CLK=1   ;
        CLR=0   ;
        
        
        #50;
        CLK=0   ;
        PC_Addr=32'h0000_0004;
//        Ins_Data_out=32'b00010000000000000000000000000111;

       
        #50;
        CLK=1   ;
        #50;
        CLK=0   ;
        
        PC_Addr=32'h0000_0008;
        #50;
        CLK=1   ;
        #50;
        CLK=0   ;
        #50;
        CLK=1   ;
        #50;
        CLK=0   ;
        
//        R_Reg_Data_A=5'b00000;
//        R_Reg_Data_B=5'b00000;
        
        
        
    end
     //实例化
     RegFile Reg(  
        .CLK(CLK),
        .CLR(CLR),
        .W_Reg_Ctr(W_Reg_Ctr),
        .R_Reg_Addr_A(R_Reg_Addr_A),
        .R_Reg_Addr_B(R_Reg_Addr_B),
        .W_Reg_Addr(W_Reg_Addr),
        .W_Reg_Data(W_Reg_Data),
        .R_Reg_Data_A(R_Reg_Data_A),
        .R_Reg_Data_B(R_Reg_Data_B)
    );

    ALU ALU(    
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
    Memory Mem(
        .Mem_Addr(Mem_Addr),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .CLK(CLK),
        .CLR(CLR),
        .R_ctr(R_ctr),
        .W_ctr(W_ctr)
    );
    Control_Unit Ctr_Unit(
        .opcode(opcode),
        .func(func),
        .zero(zero),
        .sign(sign),
        .PCWre(PCWre),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .DBDataSrc(DBDataSrc),
        .RegWre(RegWre),
        .InsMemRW(InsMemRW),
        .mRD(mRD),
        .mWR(mWR),
        .RegDst(RegDst),
        .ExtSel(ExtSel),
        .PCSrc(PCSrc),
        .ALUop(ALUop)
    );
    Ins_Memory Ins(
        .In_Addr(In_Addr),
        .RW(RW),
        .Ins_Data_in(Ins_Data_in),
        .Ins_Data_out(Ins_Data_out)
    );
    Extend_Unit Ex(
        .in(in),
        .Ex_Op(Ex_Op),
        .out(out)
    );
endmodule