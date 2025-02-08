`timescale 1ns / 1ps
module RF_ALU(
     CLK,CLR,Write_Reg,Write_Select,//�����ź�       
     R_Addr_A,R_Addr_B,W_Addr,//��д��ַ        
     Input_Data,R_Data_A,R_Data_B,//����IO        
     OP,ZF,CF,OF,SF,PF,F//ALU����
);
    parameter ADDR = 5;//��ַλ��
    parameter SIZE = 32;//����λ��        //�Ĵ�����
    input CLK, CLR;//д��ʱ���ź�, �����ź�
    input Write_Reg;//д�����ź�
    input [ADDR-1:0]R_Addr_A;//A���˿ڼĴ�����ַ
    input [ADDR-1:0]R_Addr_B;//B���˿ڼĴ�����ַ
    input [ADDR-1:0]W_Addr;//д�Ĵ�����ַ
    input [SIZE-1:0]Input_Data;//�ⲿ��������
    output [SIZE-1:0]R_Data_A;//A�˿ڶ�������
    output [SIZE-1:0]R_Data_B;//B�˿ڶ�������        //ALU   
    input [3:0] OP;//���������    
    output ZF,//���־ 
            CF,//����λ��־(ֻ���޷���������������)
            OF,//�����־(ֻ���з���������������) 
            SF,//���ű�־(ֻ���з���������������)
            PF;//��ż��־    
   output [SIZE-1:0] F;//������F
   input Write_Select;//д������ѡ���ź�
   wire [SIZE-1:0]ALU_F;//ALU�������м����
   wire [SIZE-1:0]W_Data;//д������     //Write_Select�ߵ�ƽ��д�ⲿ���룬����д������
   
   begin
   assign W_Data = Write_Select ? Input_Data : ALU_F;
   assign F = ALU_F;
   end
   
//    RegFile RF_Test(        //����        
//        .CLK(CLK),//ʱ���ź�        
//        .CLR(CLR),//�����ź�        
//        .W_Reg_Ctr(Write_Reg),//д�����        
//        .R_Reg_Addr_A(R_Addr_A),//A�˿ڶ���ַ       
//         .R_Reg_Addr_B(R_Addr_B),//B�˿ڶ���ַ        
//        .W_Reg_Addr(W_Addr),//д���ַ       
//         .W_Reg_Data(W_Data),//д������, ���ⲿ��ALU����                //���        
//        .R_Reg_Data_A(R_Data_A),//A�˿ڶ�������        
//        .R_Reg_Data_B(R_Data_B)//B�˿ڶ�������    
//    );              //ʵ����ALUģ��    
     
//    ALU ALU_Test(    //����        
//        .OP(OP),//�����                
//        .A(R_Data_A),//�ӼĴ�����A������       
//        .B(R_Data_B),//�ӼĴ�����B������       
//        .F(ALU_F),//ALU_F��Ϊ�м�����ݴ�����������Input_Dataѡ������Ĵ���                //���       
//        .ZF(ZF),//���־       
//        .CF(CF),//����λ��־(ֻ���޷���������������)        
//        .OF(OF),//�����־(ֻ���з���������������)        
//        .SF(SF),//���ű�־(ֻ���з���������������)       
//        .PF(PF)//��ż��־    
//    );

endmodule
