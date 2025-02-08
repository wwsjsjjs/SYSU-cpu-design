#include<iostream>
using namespace std;
// int a,b,c;
int a[5];
int count=0;
string imm;
int sa;
int rs,rt,rd;
string bit[32]={
    "00000","00001","00010","00011",
    "00100","00101","00110","00111",
    "01000","01001","01010","01011",
    "01100","01101","01110","01111",
    "10000","10001","10010","10011",
    "10100","10101","10110","10111",
    "11000","11001","11010","11011",
    "11100","11101","11110","11111"

};
string to_str(int a){
    int t=0;
    if(a<0){
        a*=-1;
        t=1;
    }
    string x;
    while(a){
        a%2==1?x='1'+x:x='0'+x;
        a/=2;
    }
    while(x.size()!=16){
        x='0'+x;
    }
    if(t){
        for(int i=0; i<16; i++){
            if(x[i]=='0'){
                x[i]='1';
            }else{
                x[i]='0';
            }
        }
        for(int i=15; i>=0; i--){
            if(x[i]=='1'){
                x[i]='0';
            }else{
                x[i]='1';
                return x;
            }
        }
    }

    return x;
    // return "11sss";
}
void read(string s){
    int b=0;
    int k=0;
    int sx=1;
    for(int i=0; i<s.size(); i++){
        if(s[i]=='-'){
            sx=-1;
        }
        if(s[i]>='0'&&s[i]<='9'){
            b=b*10+s[i]-'0';
            k=1;
        }else{
            if(k==1){
                a[count++]=sx*b;
                k=0;
                b=0;
                sx=1;
            }
        }
    }
    a[count++]=b*sx;
    
}
void jump(string s){
    rs=a[0];
    rt=a[1];
    imm=to_str(a[2]);
    // cout << a[0]<<a[1]<<a[2];
    if(s.substr(0,4)=="halt"){
        cout <<"11111100000000000000000000000000\n";
    }else if(s.substr(0,3)=="jal"){
        cout << "000011"<<a[0]<<endl;

    }else if(s.substr(0,2)=="jr"){
        cout << "000000"<<bit[a[0]]<<bit[0]<<bit[0]<<bit[0]<< "001000\n";
    }else if(s.substr(0,1)=="j"){
        cout<<"000010"<<a[0];
    }else if(s.substr(0,3)=="bne"){
        cout<<"000101"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,3)=="beq"){
        cout<<"000100"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,4)=="bltz"){
        imm=to_str(a[1]);
        cout<<"000101"<<bit[rs]<<bit[0]<<imm;
    }
}
void op(string s){
    rd=a[0];
    rs=a[1];
    rt=a[2];
    // R

    if(s[0]=='j'||s[0]=='h'||s[0]=='b'){
        jump(s);
    }else if(s.substr(0,2)=="lw"){
        rt=a[0];
        rs=a[2];
         imm=to_str(a[1]);
        cout << "100011"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,2)=="sw"){
        rt=a[0];
        rs=a[2];
         imm=to_str(a[1]);
        cout << "101011"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,5)=="addiu"){
        rt=a[0];
        rs=a[1];
         imm=to_str(a[2]);
        cout << "001001"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,4)=="xori"){
        rt=a[0];
        rs=a[1];
         imm=to_str(a[2]);
        cout << "001110"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,4)=="slti"){
        rt=a[0];
        rs=a[1];
         imm=to_str(a[2]);
        cout << "001010"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,4)=="andi"){
        rt=a[0];
        rs=a[1];
         imm=to_str(a[2]);
        cout << "001100"<<bit[rs]<<bit[rt]<<imm;
    }else if(s.substr(0,3)=="add"){
        cout <<rs<<rt<<rd<<endl;
        cout << "000000"<<bit[rs]<<bit[rt]<<bit[rd]<<bit[0]<<"100000\n";
    }else if(s.substr(0,3)=="sub"){
        cout << "000000"<<bit[rs]<<bit[rt]<<bit[rd]<<bit[0]<<"100010\n";
        
    }else if(s.substr(0,3)=="and"){
        cout << "000000"<<bit[rs]<<bit[rt]<<bit[rd]<<bit[0]<<"100100\n";
        
    }else if(s.substr(0,3)=="ori"){
        rt=a[0];
        rs=a[1];
         imm=to_str(a[2]);
        cout << "001101"<<bit[rs]<<bit[rt]<<imm;
        
    }else if(s.substr(0,3)=="sll"){
        sa=a[2];
        rt=a[0];
        rd=a[1];
        cout << "000000"<<bit[0]<<bit[rt]<<bit[rd]<<bit[sa]<<"000000\n";
        
    }else if(s.substr(0,3)=="slt"){
        cout << "000000"<<bit[rs]<<bit[rt]<<bit[rd]<<bit[0]<<"101010\n";
        
    }else if(s.substr(0,3)=="or"){
        cout << "000000"<<bit[rs]<<bit[rt]<<bit[rd]<<bit[0]<<"100101\n";
        
    }
}
int main(){

    string s;
    getline(cin,s);
    read(s);
    op(s);
    // cout << s;
}
