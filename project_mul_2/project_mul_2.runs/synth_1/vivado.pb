
È
Command: %s
1870*	planAhead2
~read_checkpoint -auto_incremental -incremental D:/cpulab/project_mul_2/project_mul_2.srcs/utils_1/imports/synth_1/base_top.dcp2default:defaultZ12-2866h px 
Ç
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2c
OD:/cpulab/project_mul_2/project_mul_2.srcs/utils_1/imports/synth_1/base_top.dcp2default:defaultZ12-5825h px 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px 
u
Command: %s
53*	vivadotcl2D
0synth_design -top base_top -part xc7a35tcpg236-12default:defaultZ4-113h px 
:
Starting synth_design
149*	vivadotclZ4-321h px 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px 

0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px 
±
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 

HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px 
`
#Helper process launched with PID %s4824*oasys2
142202default:defaultZ8-7075h px 
¤
%s*synth2
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1034.660 ; gain = 0.000
2default:defaulth px 
é
synthesizing module '%s'%s4497*oasys2
base_top2default:default2
 2default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/base_top.v2default:default2
232default:default8@Z8-6157h px 
^
%s
*synth2F
2	Parameter T1MS bound to: 100000 - type: integer 
2default:defaulth p
x
 
ß
synthesizing module '%s'%s4497*oasys2
Key2default:default2
 2default:default2T
>D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Key.v2default:default2
492default:default8@Z8-6157h px 

'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Key2default:default2
 2default:default2
12default:default2
12default:default2T
>D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Key.v2default:default2
492default:default8@Z8-6155h px 
ç
synthesizing module '%s'%s4497*oasys2
CPU_top2default:default2
 2default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/CPU_top.v2default:default2
232default:default8@Z8-6157h px 
ç
synthesizing module '%s'%s4497*oasys2
ALU_ctr2default:default2
 2default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/ALU_ctr.v2default:default2
232default:default8@Z8-6157h px 
¢
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU_ctr2default:default2
 2default:default2
22default:default2
12default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/ALU_ctr.v2default:default2
232default:default8@Z8-6155h px 
ï
synthesizing module '%s'%s4497*oasys2
CPU_ctr_mul2default:default2
 2default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/CPU_ctr_mul.v2default:default2
222default:default8@Z8-6157h px 
·
default block is never used226*oasys2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/CPU_ctr_mul.v2default:default2
512default:default8@Z8-226h px 
ª
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU_ctr_mul2default:default2
 2default:default2
32default:default2
12default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/CPU_ctr_mul.v2default:default2
222default:default8@Z8-6155h px 
ò
synthesizing module '%s'%s4497*oasys2
RegFile2default:default2
 2default:default2d
ND:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/imports/ALUÊµÑé/RegFile.v2default:default2
22default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
­
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RegFile2default:default2
 2default:default2
42default:default2
12default:default2d
ND:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/imports/ALUÊµÑé/RegFile.v2default:default2
22default:default8@Z8-6155h px 
ê
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2`
JD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/imports/ALUÊµÑé/ALU.v2default:default2
22default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
¥
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
52default:default2
12default:default2`
JD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/imports/ALUÊµÑé/ALU.v2default:default2
22default:default8@Z8-6155h px 
í
synthesizing module '%s'%s4497*oasys2

Ins_Memory2default:default2
 2default:default2[
ED:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Ins_Memory.v2default:default2
232default:default8@Z8-6157h px 
¨
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Ins_Memory2default:default2
 2default:default2
62default:default2
12default:default2[
ED:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Ins_Memory.v2default:default2
232default:default8@Z8-6155h px 
å
synthesizing module '%s'%s4497*oasys2
Memory2default:default2
 2default:default2W
AD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Memory.v2default:default2
232default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
 
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Memory2default:default2
 2default:default2
72default:default2
12default:default2W
AD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Memory.v2default:default2
232default:default8@Z8-6155h px 
ï
synthesizing module '%s'%s4497*oasys2
Extend_Unit2default:default2
 2default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Extend_Unit.v2default:default2
232default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
ª
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Extend_Unit2default:default2
 2default:default2
82default:default2
12default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Extend_Unit.v2default:default2
232default:default8@Z8-6155h px 
Ý
synthesizing module '%s'%s4497*oasys2
PC2default:default2
 2default:default2S
=D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/PC.v2default:default2
232default:default8@Z8-6157h px 

'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2default:default2
 2default:default2
92default:default2
12default:default2S
=D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/PC.v2default:default2
232default:default8@Z8-6155h px 
ç
synthesizing module '%s'%s4497*oasys2
jump_PC2default:default2
 2default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/jump_PC.v2default:default2
232default:default8@Z8-6157h px 
£
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
jump_PC2default:default2
 2default:default2
102default:default2
12default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/jump_PC.v2default:default2
232default:default8@Z8-6155h px 
å
synthesizing module '%s'%s4497*oasys2
PC_beq2default:default2
 2default:default2W
AD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/PC_beq.v2default:default2
232default:default8@Z8-6157h px 
¡
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC_beq2default:default2
 2default:default2
112default:default2
12default:default2W
AD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/PC_beq.v2default:default2
232default:default8@Z8-6155h px 
é
synthesizing module '%s'%s4497*oasys2
Mul_4to12default:default2
 2default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Mul_4to1.v2default:default2
232default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
×
#case item %s will never be executed153*oasys2
2'bxx2default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Mul_4to1.v2default:default2
352default:default8@Z8-153h px 
¥
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mul_4to12default:default2
 2default:default2
122default:default2
12default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Mul_4to1.v2default:default2
232default:default8@Z8-6155h px 
ï
synthesizing module '%s'%s4497*oasys2
Multiplexer2default:default2
 2default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Multiplexer.v2default:default2
232default:default8@Z8-6157h px 
Z
%s
*synth2B
.	Parameter SIZE bound to: 32 - type: integer 
2default:defaulth p
x
 
«
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Multiplexer2default:default2
 2default:default2
132default:default2
12default:default2\
FD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Multiplexer.v2default:default2
232default:default8@Z8-6155h px 
ó
synthesizing module '%s'%s4497*oasys2!
Multiplexer_52default:default2
 2default:default2^
HD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Multiplexer_5.v2default:default2
232default:default8@Z8-6157h px 
Y
%s
*synth2A
-	Parameter SIZE bound to: 5 - type: integer 
2default:defaulth p
x
 
¯
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Multiplexer_52default:default2
 2default:default2
142default:default2
12default:default2^
HD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Multiplexer_5.v2default:default2
232default:default8@Z8-6155h px 
Ý
synthesizing module '%s'%s4497*oasys2
IR2default:default2
 2default:default2S
=D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/IR.v2default:default2
232default:default8@Z8-6157h px 

'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IR2default:default2
 2default:default2
152default:default2
12default:default2S
=D:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/IR.v2default:default2
232default:default8@Z8-6155h px 
é
synthesizing module '%s'%s4497*oasys2
Reg_temp2default:default2
 2default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Reg_temp.v2default:default2
232default:default8@Z8-6157h px 
¥
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Reg_temp2default:default2
 2default:default2
162default:default2
12default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/Reg_temp.v2default:default2
232default:default8@Z8-6155h px 
£
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU_top2default:default2
 2default:default2
172default:default2
12default:default2X
BD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/CPU_top.v2default:default2
232default:default8@Z8-6155h px 
ë
synthesizing module '%s'%s4497*oasys2
	LED_trans2default:default2
 2default:default2Z
DD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/LED_trans.v2default:default2
232default:default8@Z8-6157h px 
µ
default block is never used226*oasys2Z
DD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/LED_trans.v2default:default2
292default:default8@Z8-226h px 
§
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	LED_trans2default:default2
 2default:default2
182default:default2
12default:default2Z
DD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/LED_trans.v2default:default2
232default:default8@Z8-6155h px 
¥
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
base_top2default:default2
 2default:default2
192default:default2
12default:default2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/sources_1/new/base_top.v2default:default2
232default:default8@Z8-6155h px 
¦
%s*synth2
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
²
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1442default:default2
1252.4802default:default2
0.0002default:defaultZ17-268h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
>

Processing XDC Constraints
244*projectZ1-262h px 
=
Initializing timing engine
348*projectZ1-569h px 

Parsing XDC File [%s]
179*designutils2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/constrs_1/new/constr.xdc2default:default8Z20-179h px 
£
Finished Parsing XDC File [%s]
178*designutils2Y
CD:/cpulab/project_mul_2/project_mul_2.srcs/constrs_1/new/constr.xdc2default:default8Z20-178h px 

ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2W
CD:/cpulab/project_mul_2/project_mul_2.srcs/constrs_1/new/constr.xdc2default:default2.
.Xil/base_top_propImpl.xdc2default:defaultZ1-236h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1252.4802default:default2
0.0002default:defaultZ17-268h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0282default:default2
1252.4802default:default2
0.0002default:defaultZ17-268h px 
±
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px 
¢
øFlow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¬
%s*synth2
Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
»
%s*synth2¢
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¿
%s*synth2¦
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

3inferred FSM for state register '%s' in module '%s'802*oasys2

status_reg2default:default2
CPU_ctr_mul2default:defaultZ8-802h px 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE5 |                              000 |                              000
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE4 |                              001 |                              001
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE1 |                              010 |                              010
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE0 |                              011 |                              011
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE6 |                              100 |                              100
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE2 |                              101 |                              101
2default:defaulth p
x
 

%s
*synth2s
_                 iSTATE3 |                              110 |                              110
2default:defaulth p
x
 

%s
*synth2s
_                  iSTATE |                              111 |                              111
2default:defaulth p
x
 

%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
 
Ê
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

status_reg2default:default2

sequential2default:default2
CPU_ctr_mul2default:defaultZ8-3354h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
 
X
%s
*synth2@
,	   3 Input   33 Bit       Adders := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   33 Bit       Adders := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   20 Bit       Adders := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 3     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 1     
2default:defaulth p
x
 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	               32 Bit    Wide XORs := 1     
2default:defaulth p
x
 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	               32 Bit    Registers := 38    
2default:defaulth p
x
 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                8 Bit    Registers := 128   
2default:defaulth p
x
 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                1 Bit    Registers := 13    
2default:defaulth p
x
 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 6     
2default:defaulth p
x
 
X
%s
*synth2@
,	   8 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 3     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 16    
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 126   
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	  13 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	  13 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 15    
2default:defaulth p
x
 
X
%s
*synth2@
,	   6 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   8 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	  13 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 170   
2default:defaulth p
x
 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 12    
2default:defaulth p
x
 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 96    
2default:defaulth p
x
 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 32    
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¼
%s*synth2£
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:52 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
±
%s*synth2
---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px 
j
%s*synth2R
>|Ins_Memory  | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|Ins_Memory  | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|Ins_Memory  | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|Ins_Memory  | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|CPU_top     | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|CPU_top     | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|CPU_top     | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>|CPU_top     | p_0_out    | 128x8         | LUT            | 
2default:defaulth px 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px 
´
%s*synth2
---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
·
%s*synth2
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:53 ; elapsed = 00:01:04 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
ª
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:54 ; elapsed = 00:01:05 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
©
%s*synth2
|Finished Technology Mapping : Time (s): cpu = 00:00:55 ; elapsed = 00:01:07 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
£
%s*synth2
vFinished IO Insertion : Time (s): cpu = 00:00:59 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
´
%s*synth2
Finished Renaming Generated Instances : Time (s): cpu = 00:00:59 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
±
%s*synth2
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:59 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished Renaming Generated Ports : Time (s): cpu = 00:00:59 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
²
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:59 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¯
%s*synth2
Finished Renaming Generated Nets : Time (s): cpu = 00:01:00 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|1     |BUFG   |     2|
2default:defaulth px 
D
%s*synth2,
|2     |CARRY4 |    47|
2default:defaulth px 
D
%s*synth2,
|3     |LUT1   |    13|
2default:defaulth px 
D
%s*synth2,
|4     |LUT2   |    74|
2default:defaulth px 
D
%s*synth2,
|5     |LUT3   |   432|
2default:defaulth px 
D
%s*synth2,
|6     |LUT4   |   253|
2default:defaulth px 
D
%s*synth2,
|7     |LUT5   |   218|
2default:defaulth px 
D
%s*synth2,
|8     |LUT6   |  1433|
2default:defaulth px 
D
%s*synth2,
|9     |MUXF7  |   416|
2default:defaulth px 
D
%s*synth2,
|10    |MUXF8  |    64|
2default:defaulth px 
D
%s*synth2,
|11    |FDCE   |  2263|
2default:defaulth px 
D
%s*synth2,
|12    |FDRE   |    63|
2default:defaulth px 
D
%s*synth2,
|13    |IBUF   |     5|
2default:defaulth px 
D
%s*synth2,
|14    |OBUF   |    12|
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished Writing Synthesis Report : Time (s): cpu = 00:01:00 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
 
¬
%s
*synth2
Synthesis Optimization Runtime : Time (s): cpu = 00:00:47 ; elapsed = 00:01:10 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth p
x
 
®
%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:01:00 ; elapsed = 00:01:13 . Memory (MB): peak = 1252.480 ; gain = 217.820
2default:defaulth p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0982default:default2
1252.4802default:default2
0.0002default:defaultZ17-268h px 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5272default:defaultZ29-17h px 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1252.4802default:default2
0.0002default:defaultZ17-268h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px 
Æ
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:082default:default2
00:01:242default:default2
1252.4802default:default2
217.8202default:defaultZ17-268h px 
¸
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2S
?D:/cpulab/project_mul_2/project_mul_2.runs/synth_1/base_top.dcp2default:defaultZ17-1381h px 

%s4*runtcl2z
fExecuting : report_utilization -file base_top_utilization_synth.rpt -pb base_top_utilization_synth.pb
2default:defaulth px 

Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Dec 13 17:59:59 20242default:defaultZ17-206h px 


End Record