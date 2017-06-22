

;************************************************
;仿真与烧板子有四处差异，记得修改
;标定准
;**************************************************

                ;#include  "mc32p7212.inc"

;==========================================================================
;                               mc33p94
;       Revision History
;
;==========================================================================

;Rev:   Date:    Reason:

;1.00   12/06/21 Initial Release

;==========================================================================
;
;       Verify Processor
;
;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;W 	   	EQU        	H'0000'
;F 	   	EQU        	H'0001'

;----- Register Files------------------------------------------------------
cblock 	0x180
INDF0
INDF1
INDF2
HIBYTE
FSR0
FSR1
PCL
PFALG
;----0x188
MCR
INDF3
INTE0
INTF0
INVALID_ADDR0
INVALID_ADDR1
INVALID_ADDR2
INVALID_ADDR3
;----0x190
IOP0
OEP0
PUP0
INVALID_ADDR4
IOP1
OEP1
PUP1
INVALID_ADDR5
;-----0x198
OEP2
IOP2
PUP2
INVALID_ADDR6
OEP3
IOP3
PUP3
INVALID_ADDR7
;-----0x1a0
T0CR
T0CNT
T0LOAD
T0DATA
T1CR
T1CNT
T1LOAD
T1DATA
;-----0x1a8
LXTCR
HIRCCR0
HIRCCR1
HIRCCR2
INVALID_ADDR14
PUMP
OSCM
LVDCR
;-----0x1b0
ADCR0
ADCR1
ADCR2
TPSC
ADRH
ADRM
ADRL
INVALID_ADDRff
;----0x1b8
LCDCR0
LCDCR1
LCDIOS1
LCDIOS2
INVALID_ADDR15
INVALID_ADDR16
INVALID_ADDR17
INVALID_ADDR18
INVALID_ADDR19
INVALID_ADDR20
;----0x1c0
LCDDS0
LCDDS1
LCDDS2
LCDDS3
LCDDS4
LCDDS5
LCDDS6
LCDDS7
;----0x1c8
LCDDS8
LCDDS9
LCDDSa
LCDDSb
INVALID_ADDR21
INVALID_ADDR22
INVALID_ADDR23
INVALID_ADDR24
endc

OSCCAL          equ        	0x1f3

#define         STATUS          PFALG
#define         INDF            INDF0
#define         FSR             FSR0
#define         P0HCON          PUP0
#define         P1HCON          PUP1
#define         INTECON         INTE0
#define         INTEFLAG        INTF0
#define         LCDDS10         LCDDSa
#define         LCDDS11         LCDDSb
#define         LCDDS12         LCDDSc
#define         LCDDS13         LCDDSd
#define         LCDDS14         LCDDSe
#define         LCDDS15         LCDDSf

;----- STATUS Bits --------------------------
#define	   	Z  	   	PFALG,2
#define	   	DC 	   	PFALG,1
#define	   	C  	   	PFALG,0

;-------------------------------------------
; Status register bit map

;----- MCR Bits --------------------------
#define	   	GIE	   	MCR,7

;-----  P2HCON Bits -----------------------
#define	   	P20PH      	P2HCON,0
#define	   	P21PH      	P2HCON,1
#define	   	P22PH      	P2HCON,2
#define    	P23PH      	P2HCON,3
#define    	P24PH      	P2HCON,4
#define    	P25PH      	P2HCON,5
#define    	P26PH      	P2HCON,6
#define    	P27PH      	P2HCON,7
;----- INTECON Bits --------------------------
#define    	INTE       	INTECON
#define    	ADIE       	INTECON,6
#define    	KBIE       	INTECON,4
#define    	INT1IE     	INTECON,3
#define    	INT0IE     	INTECON,2
#define    	T1IE       	INTECON,1
#define    	T0IE       	INTECON,0
;----- INTEFLAG Bits --------------------------
#define    	INTF       	INTEFLAG
#define    	ADIF       	INTF,6
#define    	KBIF       	INTF,4
#define    	INT1IF     	INTF,3
#define    	INT0IF     	INTF,2
#define    	T1IF       	INTF,1
#define    	T0IF       	INTF,0
;----- UCR Bits--------------------------
#define    	OPEN       	UCR,4
#define    	EPEN       	UCR,3
#define    	UARTEN     	UCR,2
;----- UFR ----------------------
#define    	FREF       	UFR,7
#define    	PAEF       	UFR,6
#define    	OVEF       	UFR,5
#define    	TSEF       	UFR,4
#define    	RDAF       	UFR,1
#define    	TREF       	UFR,0
;---- ADCR0 Bits -----------------
#define    	ADCKS_16       	0<<1       	; Fcpu/16
#define    	ADCKS_8        	1<<1       	; Fcpu/8
#define    	ADCKS_4        	2<<1       	; Fcpu/4
#define    	ADCKS_2        	2<<1       	; Fcpu/2
#define    	ADCHS_0        	0<<4       	; AN0
#define    	ADCHS_1        	1<<4       	; AN1
#define    	ADCHS_2        	2<<4       	; AN2
#define    	ADCHS_3        	3<<4       	; AN3
#define    	ADCHS_4        	4<<4       	; AN4
#define    	ADCHS_5        	5<<4       	; AN5
#define    	ADCHS_6        	6<<4       	; AN6
#define    	ADEN       	ADCR0,0
#define    	ADEOC      	ADCR0,3
;---- ADCR1 Bits -----------------
#define    	ADV_ADD        	3          	; VDD
#define    	ADV_4V         	2          	; 4V
#define    	ADV_3V         	1          	; 3V
#define    	ADV_2V         	0          	; 2V
#define    	ADV_EX         	4          	; 外部参考电压
;----- LCDCR0 Bits --------------------------
#define    	LCDEN      	LCDCR0,7
#define    	VLCDS      	LCDCR0,3
;----- T0CR  Bits ----------------
#define    	TC0EN      	T0CR,7
#define    	PWM0OUT    	T0CR,6
#define    	BUZ0OUT    	T0CR,5
;----- T1CR  Bits ----------------
#define    	TC1EN      	T1CR,7
#define    	PWM1OUT    	T1CR,6
#define    	BUZ1OUT    	T1CR,5
;----- OSCM  Bits ----------------
#define    	STBL       	OSCM,5
#define    	STBH       	OSCM,4
#define    	CLKS       	OSCM,2
#define    	LFEN       	OSCM,1
#define    	HFEN       	OSCM,0
;-----  POWCR Bits -------
#define    	LDOEN      	POWCR,7
#define    	ENB        	POWCR,6
;-----  LVDCR Bits -------
#define    	LVD        	PLVDCR,7
#define    	LVDS       	PLVDCR,6
;***********DDR1 DDR2 **********
#define    	DDR10      	DDR1,0
#define    	DDR11      	DDR1,1
#define    	DDR12      	DDR1,2
#define    	DDR13      	DDR1,3

#define    	DDR20      	DDR2,0
#define    	DDR21      	DDR2,1
#define    	DDR22      	DDR2,2
#define    	DDR23      	DDR2,3
#define    	DDR24      	DDR2,4
#define    	DDR25      	DDR2,5
#define    	DDR26      	DDR2,6
#define    	DDR27      	DDR2,7
;******************************


;#define       	inca   	       	addai 1

       	       	;#include      	"def_men.asm"
#define	       	Buffer0	   	0x00
#define         Buffer1	   	0x01
#define         Buffer2	   	0x02
#define         Buffer3	   	0x03
#define         Buffer4	   	0x04
#define         Buffer5	   	0x05
#define         Buffer6	   	0x06

#define         TempRam1   	0x07
#define         TempRam2   	0x08
#define         TempRam3   	0x09
#define         TempRam4   	0x0a
#define         TempRam5   	0x0b
#define         TempRam6   	0x0c

#define         TempRam11  	0x0d
#define         TempRam12  	0x0e
#define         TempRam13  	0x0f

#define         FtobH  	   	TempRam8
#define         FtobL  	   	TempRam9
;************************************************
;************************************************
;Display Ram area
;************************************************
#define	       	Display1       	0x10

#define	       	Display2       	0x11
#define	       	Dsp_Col	       	7

#define	       	Display3       	0x12
#define	       	Dsp_Point      	7

#define	       	Display4       	0x13

#define	       	DisplayFs1     	0x14

;************************************************
;************************************************
#define	       	SysFlag1       	0x015
WdtProcADFlag  	EQU    	       	0
AdcStartFlag   	EQU    	       	1
AdcOkFlag      	EQU    	       	2
DataOkFlag     	EQU    	       	3
SteadyFlag     	EQU    	       	4
ZeroFlag       	EQU    	       	5
NegFlag	       	EQU    	       	6

#define	       	AdcStartFlag   	1
#define	       	AdcOkFlag      	2
#define	       	SteadyFlag     	3

;************************************************
#define         H_DR   	   	0x16
#define         M_DR   	   	0x17
#define         L_DR   	   	0x18

#define         H_DRBuf	   	0x19
#define         M_DRBuf	   	0x1a
#define         L_DRBuf	   	0x1b

#define         H_DATA 	   	0x1c
#define         M_DATA 	   	0x1d
#define         L_DATA 	   	0x1e

#define         H_DATAA	   	0x1f
#define         M_DATAA	   	0x20
#define         L_DATAA	   	0x21

#define         H_DATAB	   	0x22
#define         M_DATAB	   	0x23
#define         L_DATAB	   	0x24

#define         H_DATAC	   	0x25
#define         M_DATAC	   	0x26
#define         L_DATAC	   	0x27

;................................................
#define         ADRamH 	   	0x28
#define         ADRamM 	   	0x29
#define         ADRamL 	   	0x2a

#define         AD_Temp0   	0x2b
#define         AD_Temp1   	0x2c
#define         AD_Temp2   	0x2d
#define         AD_Temp3   	0x2e

;************************************************
;Counter Area
;************************************************
#define         delay_reg  	0x34
#define         Reg0   	   	0x35
#define         Reg1   	   	0x36
#define         Reg2   	   	0x37
#define         Reg3   	   	0x38
;************************************************
; Int  Buffer  RAM
;************************************************
#define         DspZou8Count   	0x39

#define         WorkRegBank	0x3a
#define         StatusBank 	0x3b
#define         SampleTimes	0x3c

#define         TBASE01S   	0x3d
#define         TBASE05S   	0x3e

#define         DspData	   	0x3f
#define         DspData1   	0x40
#define         Tbase1S	   	0x41
#define         AdcCount   	0x42

#define         StableCount	0x46
#define         Count1 	   	0x47

#define         CalCount1H 	0x48
#define         CalCount1L 	0x49
#define         CalDot1L   	0x4A
#define         CalDot1H   	0x4B
#define         CalDot2L   	0x4C
#define         CalDot2H   	0x4D
#define         CalDot3L   	0x4E
#define         CalDot3H   	0x4F

#define         CalConstL  	0x50
#define         CalConstH  	0x51
#define         CountH 	   	0x52
CountL 	   	EQU	   	53H
TF1	   	EQU	   	54H
Key_Up 	   	EQU	   	55H
UnitKey	   	EQU        	0

SysFlag3       	EQU    	       	56H
DspNegFlag     	EQU    	       	0
DspCalFlag     	EQU    	       	1
GlintOpen1Flag 	EQU    	       	2
UnLockDelayFlag	EQU    	       	3
Glint1Flag     	EQU    	       	5
ZFlashUnitFlag 	EQU    	       	7

Timer1S	   	EQU	   	57H
BiePoint   	EQU	   	58H
   	   	   	   	   	   	; 超载标志
Power_Flags	EQU	   	5AH
Reset_Flag 	EQU	   	0
EeFull_Flag	EQU	   	1  	   	; 内部EEPROM已经标定满的标志
FirTestBie_Flag	EQU	   	2  	   	; 首次测试BIE的标志
ReadBie_Flag   	EQU	   	4
CalNo6v_Flag   	EQU	   	6  	   	; 没有6V标定的标志
FlashZFlag 	EQU	   	7

AmendZeroL 	EQU	   	5BH
AmendZeroH 	EQU	   	5CH

T_Auto_Off 	EQU	   	5EH
Prog_Flow  	EQU	   	5FH
LockCountH 	EQU	   	60H
LockCountL 	EQU	   	61H

SysFlag2   	EQU	   	62H
TF_01A 	   	EQU	   	0
TF_01B 	   	EQU	   	1
TF_05A 	   	EQU	   	2
TF_05B 	   	EQU	   	3
GlintOpenFlag   EQU	   	4  	   	; 允许进入中断处理闪烁的标志
GlintFlag  	EQU	   	5  	   	; 闪烁亮
GlintFlagCom    EQU	   	00100000B
Dsp_Hide   	EQU	   	6
DspHideData	EQU	   	01000000b

WTMemCount 	EQU	   	63H
LCount 	   	EQU	   	64H
LLCount	   	EQU	   	65H

SysFlag4   	EQU	   	66H
StopFlag   	EQU        	0
StartFlag       EQU        	1
LockFlag        EQU        	2
ErrEFlag        EQU        	3
LowBatFlag      EQU        	4

TrackCount 	EQU	   	67H
MaxCountH  	EQU	   	68H
MaxCountL  	EQU	   	69H

Status_Flags   	EQU	   	6CH
SWUnitFlag 	EQU	   	0  	   	; 拨动开关单位转换标志
ZhenDong_Flag   EQU	   	1  	   	; 振动开机方式
Flash5_Flag	EQU	   	2  	   	; 锁定后闪烁5次关机
TwoUnit_Flag    EQU        	3  	   	; 2个单位的标志
Max162KG_Flag   EQU        	4  	   	; 满载为162KG
Max182KG_Flag   EQU        	5  	   	; 满载为182KG
Max202KG_Flag   EQU        	6  	   	; 满载为202KG

FlashZTimeL	EQU	   	6DH
FlashZTimeH	EQU	   	6EH

SysFlag5   	EQU	   	6FH
FlashZeroFlag  	EQU	   	3  	   	; 已经刷新零点的标志
FirTracZeroFlag	EQU	   	4  	   	; 首次归零标志
WdtTrackSFlag  	EQU	   	6
WdtTrackBFlag  	EQU	   	7

WakenUpCount   	EQU	   	70H
AmendZeroM 	EQU	   	71H
TempRam8   	EQU	   	72H
TempRam9   	EQU	   	73H
DisplayFlag	EQU	   	74H
Dsp_Kg          EQU	   	0
Dsp_Lb          EQU	   	1
Dsp_St          EQU        	2

NoSteadyCount  	EQU	   	75H
KeyTimes   	EQU	   	76H
ScanKeyCount   	EQU	   	77H
Key1   	   	EQU	   	78H
Key2   	   	EQU	   	79H
KeyTmr 	   	EQU	   	7AH

displaycal1	EQU	   	7BH
displaycal2	EQU	   	7CH
displaycal3	EQU	   	7DH

tempcal1   	EQU	   	7EH	   	; 读内部BIE寄存器
tempcal2   	EQU	   	7FH
tempcal3   	EQU	   	80H
tempcal4   	EQU	   	81H

keycode	   	EQU	   	82H
SysFlag6   	EQU	   	83H
Caldis 	   	EQU	   	0
TestWdt	   	EQU	   	1
weight_have	EQU	   	2  	   	; 有重量不进STOP
second 	   	EQU	   	84H

DisplayRam1     EQU	   	86H
DisplayRam2     EQU	   	87H
DisplayRam3     EQU	   	88H
DisplayRam4     EQU	   	89H
delay_reg1      EQU	   	8AH
Key_Times       EQU	   	8BH
second2         EQU	   	8CH
second3         EQU	   	8DH

CheckRam1       EQU	   	8EH
CheckRam2       EQU	   	8FH
CheckRam3       EQU	   	90H
CheckRam4       EQU	   	91H
CheckRam5       EQU	   	92H
CheckRam6       EQU	   	93H
Lo_Counter      EQU	   	94H
REG3   	   	EQU	   	95H
FlashK 	   	EQU	   	96H
Fk_ADFI	   	EQU	   	0

;关机不清零
AutoOn_Flags   	EQU    	       	0CCH
WakenOn_Flag   	EQU    	       	0
WdtWaken_Flag  	EQU    	       	1
DispOk_Flag    	EQU    	       	2
KeyOn_Flag     	EQU    	       	3
UnStableFlag   	EQU    	       	5      	       	; 不稳定关机标志
OnWeightFlag   	EQU    	       	6      	       	; 有重量在秤台上的标志
OverLoadFlag   	EQU    	       	7
UnitFlag       	EQU    	       	0CDH
KgFlag 	       	EQU    	       	0
LbFlag 	       	EQU    	       	1
StFlag 	       	EQU    	       	2

#define	       	ZeroH  	       	0xCE
#define	       	ZeroM  	       	0xCF
#define	       	ZeroL  	       	0xD0

AutoOnADH  	EQU	   	0XD1   	   	;6AH
AutoOnADL  	EQU	   	0XD2   	   	;6BH

;************************************************
;立即数
;************************************************

       	       	;#include      	"macro.asm"
;===========================================
; 宏定义
;===========================================
;..................................
; Move Number to File Register
;..................................
movfl  	       	macro  	       	f1,d1
       	       	movai  	       	d1
   	   	movra  	       	f1
       	       	endm

;..................................
; Move File to File Register
;..................................
movff  	       	macro  	       	f2,f1
       	       	movar  	       	f1
       	       	movra  	       	f2
       	       	endm

;*******************************************************
;*******************************************************
       	       	org    	       	00H
;************************************************
       	       	nop
       	       	jbset  	       	MCR,5
       	       	goto   	       	SysInit
       	       	goto   	       	WDTWankenUp    	       	;TO=1:发生WDT溢出

;************************************************
       	       	org    	       	08H
       	       	;#include      	"int.asm"
;************************************************
IntrruptProc:
       	       	movra  	       	WorkRegBank
       	       	movar  	       	STATUS
       	       	movra  	       	StatusBank

;................................................
Proc1_Interrupt:
       	       	jbset  	       	INTE, 2
       	       	goto   	       	IntrruptProc1

       	       	jbset  	       	INTF, 2
       	       	goto   	       	IntrruptProc1
       	       	goto   	       	Ext0Int
IntrruptProc1:
       	       	jbset  	       	INTE, 6
                goto   	       	ExitIntProc

       	       	jbclr  	       	INTF, 6
       	       	goto   	       	ADCInt

;************************************************
ExitIntProc:
       	       	movai  	       	0x00
       	       	movra  	       	INTF
       	       	movar  	       	StatusBank
       	       	movra  	       	STATUS
       	       	movar  	       	WorkRegBank
       	       	retie

;************************************************
;外部中断
;************************************************
Ext0Int:
       	       	bclr   	       	INTF, 2
       	       	movai  	       	0xfe
       	       	movra  	       	INTF
       	       	goto   	       	ExitIntProc

;************************************************
;ADC中断
;************************************************
ADCInt:
       	       	incr   	       	Timer1S
       	       	bset   	       	FlashK,Fk_ADFI
       	       	CLRWDT

       	       	jbset  	       	SysFlag4,LockFlag      	;锁定的标志位
       	       	goto   	       	TimerInt2End

       	       	jbset  	       	SysFlag2,GlintOpenFlag
       	       	goto   	       	TimerInt2End
;-------------------------------
                incr          LCount
                movai         17
                RSUBAR         LCount
                jbset          C
                goto          TimerInt2End

                clrr          LCount
                incr          LLCount

                movai         GlintFlagCom
                XORRA         SysFlag2                   ; 闪烁取反

                movai         4                              ; 闪烁2次
                jbclr         Status_Flags,Flash5_Flag
                movai         10                              ; 闪烁5次关机

                RSUBAR         LLCount
                jbset          C
                goto          TimerInt2End

                clrr          LLCount
                bclr          SysFlag2,GlintOpenFlag
                jbclr         Status_Flags,Flash5_Flag
                goto          TimerInt1A
                movfl         T_Auto_Off, 16      ;movff          T_Auto_Off,T_WeightMode
                goto          TimerInt2End
TimerInt1A:
                movai                3
                RSUBRA         T_Auto_Off
TimerInt2End:
;-------------------------------
TimerInt3:
       	       	incr   	       	second
       	       	incr   	       	second3
       	       	INCR   	       	second2
       	       	incr   	       	TBASE05S
       	       	movai  	       	5
       	       	RSUBAR 	       	TBASE05S
       	       	jbset  	       	C
       	       	goto   	       	TimerInt4      	       	;C=0,TBASE05S<5

       	       	clrr   	       	TBASE05S       	       	;C=1,TBASE05S>=5
       	       	bset   	       	SysFlag2,TF_05A
;-------------------------------
TimerInt4:
       	       	DJZR   	       	KeyTmr 	       	       	;KeyTmr-1
       	       	goto   	       	ADCInt_Time    	       	;KeyTmr>0

       	       	clrr   	       	KeyTimes       	       	;KeyTmr=0
       	       	clrr   	       	KeyTmr
;*******************************
ADCInt_Time:
       	       	bclr   	       	INTF, 6	       	       	;ADIF=0
       	       	incr   	       	SampleTimes

       	       	jbset  	       	SysFlag1,AdcStartFlag
       	       	goto   	       	ADCInt1

       	       	movai  	       	4
       	       	rsubar 	       	SampleTimes
       	       	jbset  	       	C
       	       	goto   	       	ExitIntProc    	       	;SampleTimes<4

       	       	bclr   	       	SysFlag1,AdcStartFlag  	;SampleTimes>=4
       	       	clrr   	       	SampleTimes
       	       	clrr   	       	AD_Temp0
       	       	clrr   	       	AD_Temp1
       	       	clrr   	       	AD_Temp2
       	       	clrr   	       	AD_Temp3
       	       	goto   	       	ExitIntProc
;................................................
ADCInt1:
       	       	movar  	       	ADRH
       	       	movra  	       	ADRamH
       	       	movar  	       	ADRM
       	       	movra  	       	ADRamM
       	       	movar  	       	ADRL
       	       	movra  	       	ADRamL 	       	       	;保存24位ADC结果至ADRam(24bit)

       	       	movai  	       	0x00
       	       	addra  	       	ADRamL
       	       	movai  	       	0x00
       	       	adcra  	       	ADRamM
       	       	movai  	       	0x80
       	       	adcra  	       	ADRamH 	       	       	;ADRam + 0x800000 ?
       	       	jbclr  	       	AutoOn_Flags,WdtWaken_Flag
       	       	goto   	       	AdcInt3
;................................................
ADCInt2:   	   	   	   	   	   	;复位初始采样
       	       	movar  	       	ADRamL
       	       	addra  	       	AD_Temp3
       	       	movar  	       	ADRamM
       	       	adcra  	       	AD_Temp2
       	       	movar  	       	ADRamH
       	       	adcra  	       	AD_Temp1
       	       	movai  	       	0
       	       	adcra  	       	AD_Temp0       	       	;AD_Temp(32b) + ADRam(24b) -> AD_Temp

       	       	movai  	       	8
       	       	rsubar 	       	SampleTimes
       	       	jbset  	       	C
       	       	goto   	       	ExitIntProc
;---------------
       	       	clrr   	       	SampleTimes    	       	;采样8次
       	       	movai  	       	10     	       	; 取19bit的内码数据
       	       	movra  	       	AdcCount
ADCInt2Loop:   	bclr   	       	C
       	       	rrr    	       	AD_Temp0
       	       	rrr    	       	AD_Temp1
       	       	rrr    	       	AD_Temp2
       	       	rrr    	       	AD_Temp3
       	       	djzr   	       	AdcCount
       	       	goto   	       	ADCInt2Loop

       	       	movar  	       	AD_Temp1
       	       	movra  	       	H_DATA
       	       	movar  	       	AD_Temp2
       	       	movra  	       	M_DATA
       	       	movar  	       	AD_Temp3
       	       	movra  	       	L_DATA 	       	       	;24位ADC数据*8/1024=17位数据,结果存于HML_DATA

       	       	clrr   	       	AD_Temp0
       	       	clrr   	       	AD_Temp1
       	       	clrr   	       	AD_Temp2
       	       	clrr   	       	AD_Temp3
;................................................
AdcInt3:
                bset            SysFlag1,AdcOkFlag
                goto            ExitIntProc

;;*************************************************
;

;**************************************************

                ;#include         "subroutine.asm"
;***********************************************
delay1:	   	   	   	   	   	   	;延时约198K指令周期
   	   	movai  	   	0xff
           	movra  	   	delay_reg
           	movai  	   	0xff
           	djza
           	goto   	   	$-1
           	nop
           	nop
           	nop
           	clrwdt
           	nop
           	nop
           	nop
           	nop
           	djzr   	   	delay_reg
           	goto   	   	$-12
           	return
;-------------------------------
delay2:	   	   	   	   	   	   	;延时约791K指令周期
   	   	movai      	0xff
       	   	movra      	delay_reg1
           	movai      	0xff
           	movra      	delay_reg
           	movai      	0xff
           	djza
           	goto       	$-1
           	nop	   	   	   	   	;延时255*3=765指令周期
           	nop
           	nop
           	nop
       	   	nop
           	nop
           	nop
           	nop
delay2A:
           	movai      	0xff
       	   	movra      	delay_reg
       	       	djza
           	goto   	   	$-1
           	nop
           	nop
           	nop
           	nop
       	       	nop
           	nop
           	nop
           	nop
       	       	movai      	0xff
       	   	movra      	delay_reg
       	       	djza
           	goto       	$-1
           	nop
           	nop
           	nop
           	nop
       	       	nop
           	nop
           	nop
           	nop
       	       	movai      	0xff
       	   	movra      	delay_reg
       	       	djza
           	goto       	$-1
           	nop
           	nop
           	nop
           	nop
       	       	nop
           	nop
           	nop
           	nop
       	       	movai      	0xff
       	   	movra      	delay_reg
       	       	djza
           	goto       	$-1
           	nop
           	nop
           	nop
           	nop
       	       	nop
           	nop
           	nop
           	nop

       	       	DJZR       	delay_reg1
           	goto       	delay2A
           	return

;*************************************************
;晶振启动时丢弃不稳定的AD
;*************************************************
discard_ad:
        bset            SysFlag1,AdcStartFlag
        clrr            SampleTimes
        bclr            SysFlag1,AdcOkFlag
        return


;**************************************************
;取零点内码
;**************************************************
GetZeroPoint:
                movff           ZeroH,H_DR
                movff           ZeroM,M_DR
                movff           ZeroL,L_DR
                return

;**************************************************
;当前内码与零点内码之差的子程序
;**************************************************
CurAD_ZeroAD:
                movff           TempRam1,H_DR
                movff           TempRam2,M_DR
                movff           TempRam3,L_DR
                movff           TempRam4,ZeroH
                movff           TempRam5,ZeroM
                movff           TempRam6,ZeroL
                call            _Sub3_3
                return
;**************************************************
;转换校磅流程
;**************************************************
Change_F1:
                bclr           PFALG, 0
                rlr             TF1
                bclr            SysFlag1,SteadyFlag
                clrr            StableCount
        return

;**************************************************
;funtion: 实际要显示的分度(没有任何放大）
;input  : TempRam5 TempRam6
;output : TempRam5 TempRam6
;**************************************************
GetRealCount:
                movai           2
                RSUBRA          TempRam6
                movai           0
                ADCRA           TempRam5

            bclr            PFALG, 0
                rrr             TempRam5
                rrr             TempRam6

            bclr            PFALG, 0
                rrr             TempRam5
                rrr             TempRam6                           ;除以4
        return

;**************************************************
;实际数据与锁定数据的差值
;output : TempRam3 TempRam4
;**************************************************
Real_LockCount:
                movff           TempRam3,CountH
                movff           TempRam4,CountL
                movff           TempRam5,LockCountH
                movff           TempRam6,LockCountL
                CALL            _Sub2_2
                ;CALL            _Neg2
                return

_GetAutoOnDC:
                clrr            TempRam4
                movff           TempRam5,CalDot1H
                movff           TempRam6,CalDot1L

                clrr            TempRam12
                movfl           TempRam13, 40                           ;movff          TempRam13,AutoOnCount
                call            _Mul3_2
                clrr            TempRam11
                movff           TempRam12,CalCount1H
                movff           TempRam13,CalCount1L            ;CalDot1H*40/CalCount1H（商456 余数123）
                call            _Div6_3
                call            _ProcAdd1

                movfl           TempRam1, 3
_GetAutoOnDCLoop:
                bclr            PFALG, 0
                rrr             TempRam4
                rrr             TempRam5
                rrr             TempRam6                            ;商除以2

                DJZR            TempRam1
                goto            _GetAutoOnDCLoop

                movff           TempRam2,ZeroH
                movff           TempRam3,ZeroM
                movff           TempRam4,ZeroL

                movfl           TempRam1, 1
_GetAutoOnDCLoop1:
                bclr            PFALG, 0
                rrr             TempRam2
                rrr             TempRam3
                rrr             TempRam4

                DJZR            TempRam1
                goto            _GetAutoOnDCLoop1

                call            _Add2_2                 ; 因为看门狗唤醒时取的内码是正常工作时内码的1/8，因此，这里的内码也要除以8

                movff           AutoOnADH,TempRam3
                movff           AutoOnADL,TempRam4
       	       	       	       	;incr            AutoOnADH
       	       	       	       	;incr            AutoOnADH

       return

option:
            movai       0x04
        movra   OSCM
       jbset    OSCM,5
        goto    $-1
        movai     0xfc
            movra         0x0F7

       movai    0x00
       movra    OSCM
       jbset   OSCM,4
       goto    $-1
       nop
           return

CLRR_LCD:
      CLRR    LCDDS0
       	  CLRR    LCDDS1
       	       	  movai   0x00
       	       	  movra   LCDDS0
       	       	  movra   LCDDS1
       	  CLRR    LCDDS2
       	  CLRR    LCDDS3
       	  CLRR    LCDDS4
       	  CLRR    LCDDS5
       	  CLRR    LCDDS6
       	  CLRR    LCDDS7
       	  CLRR    LCDDS8
       	  CLRR    LCDDS9
       	  CLRR    LCDDS10

       	  RETURN

Disp_To_Ram:
         movff   Display1,DisplayRam1
       	       	 movff   Display2,DisplayRam2
       	       	 movff   Display3,DisplayRam3
       	       	 movff   Display4,DisplayRam4
       	       	 RETURN
Ram_To_Disp:
       	       	movff  	       	DisplayRam1,Display1
       	       	 movff   DisplayRam2,Display2
       	       	 movff   DisplayRam3,Display3
       	       	 movff   DisplayRam4,Display4
       	       	 RETURN

delay3:

        movai   0xff
        movra   delay_reg
        movai   0xff
        djza
        goto    $-1
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        djzr    delay_reg
        goto    $-12
        return

delay4:
       	movra   delay_reg
dlylp4 	nop
       	nop
       	nop
       	nop
       	nop
       	nop
       	nop
       	nop
       	djzr    delay_reg
       	goto    dlylp4
       	return

               ;#include         "Computer.asm"
;************************************************
;Title  : Calculate Subroutine
;Author : Kevin Lee
;Date   : 2015/6/5 16:19
;**************************************************
;**************************************************
;input  :       TempRam3, TempRam4
;                   TempRam5, TempRam6
;output :
;                   TempRam3, TempRam4
;**************************************************
_Add2_2:
       	       	movar  	       	TempRam6
       	       	ADDRA  	       	TempRam4
       	       	movar  	       	TempRam5
       	       	ADCRA  	       	TempRam3
       	       	return

;**************************************************
;input  :       (TempRam3,TempRam4) - (TempRam5,TempRam6)
;output :       (TempRam3,TempRam4)
;**************************************************
_Sub2_2:
                movar           TempRam6
                rsubra          TempRam4
                movar           TempRam5
                rsbcra          TempRam3
                jbclr          	C
                return

                comar           TempRam4
                addai           1
                movra           TempRam4
                comar           TempRam3
                clrr            TempRam3
                adcra           TempRam3
                bclr            C
                return

;**************************************************
;input  :       (TempRam1,TempRam2,TempRam3) - (TempRam4,TempRam5,TempRam6)
;output :       (TempRam1,TempRam2,TempRam3)
;**************************************************
_Sub3_3:
                movar           TempRam6
                rsubra          TempRam3
                movar           TempRam5
                rsbcra          TempRam2
                movar           TempRam4
                rsbcra          TempRam1
                jbclr           C
                return

                comar           TempRam3
                addai           1
                movra           TempRam3
                comar           TempRam2
                clrr            TempRam2
                adcra           TempRam2
                comar           TempRam1
                clrr            TempRam1
                adcra           TempRam1
                bclr            C
                return


;**************************************************
;input  :       TempRam2, TempRam3  TempRam4, TempRam5, TempRam6
;               TempRam11,TempRam12,TempRam13
;output :
;yushu  :       TempRam1, TempRam2, TempRam3
;shang  :       TempRam4, TempRam5, TempRam6
;temp   :       buffer0,buffer1,buffer2,buffer3
;**************************************************
_Div6_3:
                clrr            TempRam1
                movfl           Buffer3, 24
_Div6_3Loop:
                bclr            PFALG, 0
                rlr             TempRam6
                rlr             TempRam5
                rlr             TempRam4
                rlr             TempRam3
                rlr             TempRam2
                rlr             TempRam1

                movar           TempRam13
                rsubar          TempRam3
                movra           Buffer2

                movar           TempRam12
                rsbcar          TempRam2
                movra           Buffer1

                movar           TempRam11
                rsbcar          TempRam1
                movra           Buffer0

                jbset           PFALG, 0
                goto            _Div6_3Loop1

                movff           TempRam1,Buffer0
                movff           TempRam2,Buffer1
                movff           TempRam3,Buffer2

                incr            TempRam6
_Div6_3Loop1:
                djzr            Buffer3
                goto            _Div6_3Loop
                return

;**************************************************
_ProcAdd1:
                bclr            PFALG, 0
                rlr             TempRam3
                rlr             TempRam2
                rlr             TempRam1

                movar           TempRam13
                rsubra          TempRam3
                movar           TempRam12
                rsbcra          TempRam2
                movar           TempRam11
                rsbcra          TempRam1

                jbset           PFALG, 0
                return
_ProcAdd1_A:
                movai           1
                addra           TempRam6
                movai           0
                adcra           TempRam5
                movai           0
                adcra           TempRam4
                return

;**************************************************
;input  :       TempRam4,TempRam5, TempRam6
;               TempRam12,TempRam13
;output :       TempRam1,TempRam2,TempRam3,TempRam4,TempRam5,TempRam6
;need   :       buffer0 ,buffer1 ,buffer2,buffer3,buffer4,buffer5,Buffer6
;**************************************************
_Mul3_2:
                clrr            TempRam1
                clrr            TempRam2
                clrr            TempRam3
                clrr            Buffer0
                clrr            Buffer1
                clrr            Buffer2

                movff           Buffer3,TempRam4
                movff           Buffer4,TempRam5
                movff           Buffer5,TempRam6

                clrr            TempRam4
                clrr            TempRam5
                clrr            TempRam6

                movfl           Buffer6, 16
                bclr            PFALG, 0
_Mul3_2Loop:
                rrr             TempRam12
                rrr             TempRam13

                jbset           PFALG, 0
                goto            _Mul3_2Loop1

                movar           Buffer5
                addra           TempRam6

                movar           Buffer4
                adcra           TempRam5

                movar           Buffer3
                adcra           TempRam4

                movar           Buffer2
                adcra           TempRam3

                movar           Buffer1
                adcra           TempRam2

                movar           Buffer0
                adcra           TempRam1
_Mul3_2Loop1:
                bclr            PFALG, 0
                rlr             Buffer5
                rlr             Buffer4
                rlr             Buffer3
                rlr             Buffer2
                rlr             Buffer1
                rlr             Buffer0

                djzr            Buffer6
                goto            _Mul3_2Loop
                return

;**************************************************
;Title  :       change to BCD code
;input  :       TempRam12, TempRam13
;Output :       TempRam2, TempRam3 ,TempRam4 ,TempRam5 ,TempRam6
;need   :       Buffer0,Buffer1,Buffer2
;**************************************************
_Ftob:
                clrr            TempRam2
                clrr            TempRam3
                clrr            TempRam4
                clrr            TempRam5
                clrr            TempRam6

                movfl           Buffer0, 27H
                movfl           Buffer1, 10H
Sub10kLoop:
                movar           Buffer1
                rsubar          TempRam13
                movra           Buffer2

                movar           Buffer0
                rsbcar          TempRam12

                jbset           PFALG, 0
                goto            Sub1k

                movra           TempRam12
                movff           TempRam13,Buffer2
                incr            TempRam2
                goto            Sub10kLoop
Sub1k:
                movfl           Buffer0, 03H
                movfl           Buffer1, 0E8H
Sub1kLoop:
                movar           Buffer1
                rsubar          TempRam13
                movra           Buffer2

                movar           Buffer0
                rsbcar          TempRam12

                jbset           PFALG, 0
                goto            Sub100
                movra           TempRam12
                movff           TempRam13,Buffer2
                incr            TempRam3
                goto            Sub1kLoop
Sub100:
                clrr            Buffer0
                movfl           Buffer1, 64H
Sub100Loop:
                movar           Buffer1
                rsubar          TempRam13
                movra           Buffer2

                movar           Buffer0
                rsbcar          TempRam12

                jbset           PFALG, 0
                goto            Sub10
                movra           TempRam12
                movff           TempRam13,Buffer2
                incr            TempRam4
                goto            Sub100Loop
Sub10:
                movfl           Buffer1, 10
sub10Loop:
                movar           Buffer1
                rsubar          TempRam13

                jbset           PFALG, 0
                goto            sub1
                movra           TempRam13
                incr            TempRam5
                goto            sub10Loop
sub1:
                movff           TempRam6,TempRam13
                return


                ;#include         "e2prom.asm"

;**************************************************
;读内部数据
;**************************************************
ReadBie:
          call       delay1
          nop
                  nop
       	       	       	       	  CLRWDT
          movar    INDF3
         movra    tempcal1
         movar    HIBYTE
         movra    tempcal2
         call       delay1
           CLRWDT

                 nop
                 nop
         incr      FSR0
         movar     INDF3
         movra     tempcal3
         movar     HIBYTE
         movra     tempcal4
       	       	 DECR      FSR0



                 ANDAR     tempcal1
                ANDAR     tempcal2
                 ANDAR     tempcal3
       	       	       	       	 ANDAR     tempcal4
                 XORAI     0FFH
       	       	       	       	; XORAI     000H        ;test
                 return
;*************************************************
;写内部数据
;*************************************************
WriteBie:
       	       	jbset  	       	PUMP,7 	       	       	;4个TEST
       	       	goto   	       	WriteBie
       	       	CLRWDT
       	       	call   	       	delay1
       	       	CLRWDT
       	       	jbset  	       	PUMP,7
       	       	goto   	       	CalErr3
       	       	nop
       	       	nop
       	       	nop
       	       	movar  	       	CalDot1H
       	       	movra  	       	HIBYTE
       	       	movar  	       	CalDot1L
       	       	movra  	       	INDF3
       	       	call   	       	delay1
       	       	CLRWDT
       	       	jbset  	       	PUMP,7
       	       	goto   	       	CalErr3

       	       	nop
       	       	nop
       	       	incr   	       	FSR0
       	       	movar  	       	CalDot2H
       	       	movra  	       	HIBYTE
       	       	movar  	       	CalDot2L
       	       	movra  	       	INDF3
       	       	call   	       	delay1
       	       	CLRWDT
       	       	jbset  	       	PUMP,7
       	       	goto   	       	CalErr3
       	       	nop
       	       	nop
       	       	incr   	       	FSR0
       	       	movar  	       	CalDot3H
       	       	movra  	       	HIBYTE
       	       	movar  	       	CalDot3L
       	       	movra  	       	INDF3

                return

                ;#include         "GetCount.asm"
;**************************************************
;Title  : Proc from AD to Count
;Author : Kevin Lee
;Input  : TempRam3,TempRam4
;         CalDot1H,CalDot1L; CalDot2H,CalDot2L; CalDot3H,CalDot3L;CalCount1H,CalCount1L
;OutPut : CountH,CountL (0.25d)  TempRam3,TempRam4
;Date   : 2012/5/31 9:36
;**************************************************
_GetCount:
;      	       	JBSET  	       	IOP0,0
;      	       	call   	       	GetZeroPoint
       	       	call   	       	CurAD_ZeroAD   	       	;HML_DR - ZeroHML
       	       	bclr   	       	SysFlag1,NegFlag
       	       	jbclr  	       	PFALG, 0
       	       	goto   	       	_GetCount123
       	       	bset   	       	SysFlag1,NegFlag
       	       	clrr   	       	CountH
       	       	clrr   	       	CountL
       	       	return
_GetCount123:  	       	       	       	       	       	;HML_DR >= ZeroHML
       	       	movff  	       	Reg1,CalCount1H
       	       	movff  	       	Reg2,CalCount1L

       	       	movff  	       	TempRam1,TempRam2
       	       	movff  	       	TempRam2,TempRam3

       	       	movff  	       	TempRam3,TempRam1
       	       	movff  	       	TempRam4,TempRam2

       	       	movff  	       	TempRam5,CalDot1H
       	       	movff  	       	TempRam6,CalDot1L
       	       	CALL   	       	_Sub2_2
       	       	jbset  	       	PFALG, 0
       	       	GOTO   	       	GetCount1
       	       	nop
       	       	movff  	       	TempRam3,TempRam1
       	       	movff  	       	TempRam4,TempRam2
       	       	movff  	       	TempRam5,CalDot2H
       	       	movff  	       	TempRam6,CalDot2L
       	       	CALL   	       	_Sub2_2
       	       	jbset  	       	PFALG, 0
       	       	GOTO   	       	GetCount2

       	       	bclr   	       	PFALG, 0
       	       	RLR    	       	Reg2
       	       	RLR    	       	Reg1
       	       	movar  	       	CalDot2L
       	       	RSUBAR 	       	CalDot3L
       	       	movra  	       	CalConstL

       	       	movar  	       	CalDot2H
       	       	RSBCAR 	       	CalDot3H
       	       	movra  	       	CalConstH

       	       	movar  	       	CalDot2L
       	       	RSUBAR 	       	TempRam2
       	       	movra  	       	TempRam6

       	       	movar  	       	CalDot2H
       	       	RSBCAR 	       	TempRam1
       	       	movra  	       	TempRam5
       	       	goto   	       	GetCount3
GetCount1:
                clrr            Reg1
                clrr            Reg2
                movff           CalConstH,CalDot1H
                movff           CalConstL,CalDot1L
                movff           TempRam5,TempRam1
                movff           TempRam6,TempRam2
                goto            GetCount3
GetCount2:
                movar           CalDot1L
                RSUBAR           CalDot2L
                movra           CalConstL

                movar           CalDot1H
                RSBCAR          CalDot2H
                movra           CalConstH

                movar           CalDot1L
                RSUBAR           TempRam2
                movra           TempRam6

                movar           CalDot1H
                RSBCAR          TempRam1
                movra           TempRam5
;...............
GetCount3:
                clrr            TempRam11
                movff           TempRam12,CalCount1H
                movff           TempRam13,CalCount1L

                clrr            TempRam4

                bclr            PFALG, 0
                RLR             TempRam6
                RLR             TempRam5
                RLR             TempRam4

                bclr            PFALG, 0
                RLR             TempRam6
                RLR             TempRam5
                RLR             TempRam4

                call            _Mul3_2

                clrr            TempRam11
                movff           TempRam12,CalConstH
                movff           TempRam13,CalConstL
                call            _Div6_3
                call            _ProcAdd1

                movff           TempRam3,Reg1
                movff           TempRam4,Reg2

                bclr            PFALG, 0
                RLR             TempRam4
                RLR             TempRam3

                bclr            PFALG, 0
                RLR             TempRam4
               RLR             TempRam3

                call            _Add2_2

                movff           CountH,TempRam3
                movff           CountL,TempRam4

                return


                ;#include         "Display_Weight.asm"
;************************************************
;Title  : Proc Display Weight
;Author : Kevin Lee
;Input  : TempRam12,TempRam13
;Date   : 2008-7-10 23:50
;*************************************************
Display_Weight:
       	       	jbset  	       	SysFlag4,LockFlag
       	       	goto   	       	Dsp_Weight_B

                ; movff           TempRam12,LockCountH                  ;重量锁定
                ; movff           TempRam13,LockCountL
       	       	movff  	       	TempRam5,LockCountH                  ;重量锁定
       	       	movff  	       	TempRam6,LockCountL
       	       	goto   	       	Dsp_Weight_C

                 ;jbset           SysFlag2,GlintFlag                   ;中断闪烁亮
                 ;goto            Dsp_Weight_B
                ; nop
                ; return
;................................................
Dsp_Weight_B:
                movff           TempRam5,CountH     ;称重显示
                movff           TempRam6,CountL
               ; call            GetRealCount      ;为啥加2

;....................................................
Dsp_Weight_C:
                jbclr           UnitFlag,KgFlag
                goto            Dsp_Weight_C1

                clrr            TempRam4                               ;kg换算lb
                movfl           TempRam12, 2BH
                movfl           TempRam13, 0FH                         ;11023
                call            _Mul3_2
                clrr            TempRam11
                movfl           TempRam12, 27H
                movfl           TempRam13, 10H                         ;10000
                call            _Div6_3
                call            _ProcAdd1

                bclr            C
                RLR             TempRam6
                RLR             TempRam5                               ;乘以2，精度为2g
Dsp_Weight_C1:
       	       	movff           TempRam12,TempRam5
       	       	movff           TempRam13,TempRam6
;................................................
Dsp_Weight_B1:
                jbclr           UnitFlag,StFlag                   ;ST标志位的到来
                goto            Dsp_Weight_St

       	       	call            _Ftob                             ;查找BCD码
       	       	call            Display_Num
       	       	call            Ram_To_Disp

                bset            LCDDS0,2

       	       	       	       	bset            LCDDS0,0

       	       	       	       	jbset  	       	UnitFlag,LbFlag
       	       	        return
       	       	       	       	bclr            LCDDS0,0
       	       	       	       	bset            LCDDS3,0
                 return
;..................................................
Dsp_Weight_St:
                clrr            TempRam2
                clrr            TempRam3
                clrr            TempRam4

                movai           4
                ADDRA           TempRam6
                movai           0                                   ;四舍五入
                ADCRA          TempRam5

                clrr            TempRam11
                clrr            TempRam12
                movfl           TempRam13, 140                      ;lb换算st
                call            _Div6_3

                movff           Reg1,TempRam2
                movff           Reg2,TempRam3                       ;存放余数

                movff           TempRam12,TempRam5
                movff           TempRam13,TempRam6                  ;存放商


                call            _Ftob                               ;转换成BCD码

                movff           Display4,TempRam6
                movff           Display3,TempRam5

                movff           TempRam12,Reg1
                movff           TempRam13,Reg2

                call            _Ftob                               ;转换成BCD码

                movff           TempRam6,TempRam5
                movff           TempRam5,TempRam4

                movff           TempRam3,Display3
                movff           TempRam4,Display4

                clrr            Display3                             ;可不要
                clrr            Display4

                movai           0
                XORAR           TempRam3
                jbset           Z
                goto            Dsp_Weight_St1
                movfl           TempRam3,0x0a           ;清除没有的零
Dsp_Weight_St1:
                movai           0
                XORAR           TempRam5
                jbset           Z
                goto            Dsp_Weight_St2
                movfl           TempRam5,0x0a
Dsp_Weight_St2:
                call            Display_Num
                call            Ram_To_Disp
       	       	       	       	bset            LCDDS6,0
       	       	       	       	bset            LCDDS3,2
                return

                ;#include         "Display_ADC.asm"
;**************************************************
;Title  : Display ADC
;Author : Kevin Lee
;Date   : 2008-7-13 10:20
;**************************************************
Display_ADC:
                jbset           SysFlag3,DspCalFlag
                goto            Display_ADC0

Display_ADCCAL:
                ;movfl           Display4,LcdchC
                ;movfl           Display3,LcdchA
                ;movfl           Display2,LcdchL
                movfl           Display4,05H
                movfl           Display3,05H
                movfl           Display2,05H
                jbclr           TF1, 0
                return
                jbclr           TF1, 2
                movai           3
                jbclr           TF1, 3
                movai           4
                jbclr           TF1, 4
                movai           5
                movra           Display1
                return

;**************************************************
Display_ADC0:
                jbclr           TF1, 0
                goto            Display_ADCCAL

                jbset           TF1, 1
                goto            Display_ADC1

                movff           TempRam1,H_DR
                movff           TempRam2,M_DR
                movff           TempRam3,L_DR
                movff           TempRam4,AmendZeroH
                movff           TempRam5,AmendZeroM
                movff           TempRam6,AmendZeroL
                call            _Sub3_3
                ;call            _Neg3

                bclr            PFALG, 0
                rrr             TempRam1
                rrr             TempRam2
                rrr             TempRam3

                movff           TempRam11,TempRam1
                movff           TempRam12,TempRam2
                movff           TempRam13,TempRam3

                call            _Ftob
                call            Display_Num
                return

;*************************************************
Display_ADC1:
                jbclr           TF1, 2
                goto            Display_ADCCAL

;**************************************************
Display_ADC2:
                call            CurAD_ZeroAD
               ; call            _Neg3

                bclr              PFALG, 0
                rrr             TempRam2       	       	; 校磅内码数/2
                rrr             TempRam3

                movff           FtobH,TempRam2
                movff           FtobL,TempRam3
                call            _Ftob

                call            Display_Num
                return

Lcd_Dis_Cal:
       	       	movai  	       	0x02
       	       	movra  	       	Reg0
       	       	movai  	       	0xc0
       	       	movra  	       	TempRam1

Lcd_Dis_Cal1:
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movar  	       	Display4
       	       	movra  	       	INDF1  	       	       	;[D42:D40]->0X1C0

                incr   	       	TempRam1
                swapr  	       	Display4
                movar  	       	TempRam1
                movra  	       	FSR1
       	       	movai  	       	0x07
       	       	ANDAR  	       	Display4
       	       	movra  	       	INDF1  	       	       	;[D46:D44]->0X1C1

       	       	incr   	       	TempRam1
       	       	bclr   	       	C
       	       	rrr    	       	Display4
       	       	rrr    	       	Display4
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x02
       	       	ANDAR  	       	Display4
       	       	movra  	       	INDF1  	       	       	;[0,D47,0]->0X1C2

Lcd_Dis_Cal2:
       	       	movai  	       	0x02
       	       	movra  	       	Reg0
       	       	movai  	       	0xc3
       	       	movra  	       	TempRam1

Lcd_Dis_Cal3:
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movar  	       	Display3
       	       	movra  	       	INDF1  	       	       	;[D32:D30]->0X1C3

       	       	incr   	       	TempRam1
       	       	swapr  	       	Display3
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x07
       	       	ANDAR  	       	Display3
       	       	movra  	       	INDF1  	       	       	;[D36:D34]->0X1C4

       	       	incr   	       	TempRam1
       	       	bclr   	       	C
       	       	rrr    	       	Display3
       	       	rrr    	       	Display3
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x02
       	       	ANDAR  	       	Display3
       	       	movra  	       	INDF1  	       	       	;[0,D37,0]->0X1C5

Lcd_Dis_Cal4:
       	       	movai  	       	0x02
       	       	movra  	       	Reg0
       	       	movai  	       	0xc6
       	       	movra  	       	TempRam1
Lcd_Dis_Cal5:
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movar  	       	Display2
       	       	movra  	       	INDF1

       	       	incr   	       	TempRam1
       	       	swapr  	       	Display2
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x07
       	       	ANDAR  	       	Display2
       	       	movra  	       	INDF1

       	       	incr   	       	TempRam1
       	       	bclr   	       	C
       	       	rrr    	       	Display2
       	       	rrr    	       	Display2
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x02
       	       	ANDAR  	       	Display2
       	       	movra  	       	INDF1

Lcd_Dis_Cal6:
       	       	movai  	       	0x02
       	       	movra  	       	Reg0
       	       	movai  	       	0xc9
       	       	movra  	       	TempRam1
Lcd_Dis_Cal7:
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movar  	       	Display1
       	       	movra  	       	INDF1

       	       	incr   	       	TempRam1
       	       	swapr  	       	Display1
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x07
       	       	ANDAR  	       	Display1
       	       	movra  	       	INDF1

       	       	incr   	       	TempRam1
       	       	bclr   	       	C
       	       	rrr    	       	Display1
       	       	rrr    	       	Display1
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x02
       	       	ANDAR  	       	Display1
       	       	movra  	       	INDF1

       	       	return


Lcd_Dis_Sys:
                movai           0x02
                movra           Reg0
                movai           0xc0
                movra           TempRam1
Lcd_Dis_Sys1:

                movar           TempRam1
                movra           FSR1
                movar           Display4
                movra           INDF1

                incr            TempRam1
                swapr           Display4
                movar           TempRam1
                movra           FSR1
       	       	movai          0x07
       	       	ANDAR          Display4
                movra          INDF1

       	       	incr   	       	TempRam1
       	       	bclr   	       	C
       	       	rrr    	       	Display4
       	       	rrr    	       	Display4
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movai  	       	0x02
       	       	ANDAR  	       	Display4
       	       	movra  	       	INDF1
       	       	return

                ;#include         "Display.asm"
;**************************************************
;确定要显示的是哪个数！
;**************************************************
Lcd_Num:

       movra    DspData1
       isubai   0x00
       jbclr    Z
       call     lcd_disp0

       movar    DspData1
       isubai   0x01
       jbclr    Z
       call     lcd_disp1

       movar    DspData1
       isubai   0x02
       jbclr    Z
       call     lcd_disp2

       movar    DspData1
       isubai   0x03
       jbclr    Z
       call     lcd_disp3

       movar    DspData1
       isubai   0x04
       jbclr    Z
       call     lcd_disp4

       movar    DspData1
       isubai   0x05
       jbclr    Z
       call     lcd_disp5

       movar    DspData1
       isubai   0x06
       jbclr    Z
       call     lcd_disp6

       movar    DspData1
       isubai   0x07
       jbclr    Z
       call     lcd_disp7

       movar    DspData1
       isubai   0x08
       jbclr    Z
       call     lcd_disp8

       movar    DspData1
       isubai   0x09
       jbclr    Z
       call     lcd_disp9

       movar    DspData1
       isubai   0x0a
       jbclr    Z
       call     lcd_disp_null

       return

;=========================================================


lcd_disp0:

       	movai   11010111b
        movra   DspData
        return
lcd_disp1:

       	movai   00000011b
        movra   DspData
        return
lcd_disp2:

       	movai   01110101b
        movra   DspData
        return
lcd_disp3:

       	movai   00110111b
        movra   DspData
        return
lcd_disp4:
        movai   10100011b
        movra   DspData
        return
lcd_disp5:
        movai   10110110b
        movra   DspData
        return
lcd_disp6:
        movai   11110110b
        movra   DspData
        return
lcd_disp7:
        movai   00010011b
        movra   DspData
        return
lcd_disp8:
        movai   11110111b
        movra   DspData
        return
lcd_disp9:
        movai   10110111b
        movra   DspData
        return
lcd_disp_null:
        movai   00000000b
        movra   DspData
        return

;**************************************************
;十六进制转十进制时的显示
;**************************************************
Display_Num:
                movai           0x00
                xorar           TempRam3
                jbset           Z
                goto            Display_Num1
                movai           0x0a
                movra           TempRam3


                movai           0x00
                xorar           TempRam4
                jbset           Z
                goto            Display_Num1
                movai           0x0a
                movra           TempRam4

             ;   movai           0x00
             ;   xorar           TempRam5
             ;   jbset           Z
             ;   goto            Display_Num1
             ;   movai           10
             ;   movra           TempRam5

Display_Num1:
                movar           TempRam3
                call            Lcd_Num
                movar           DspData
                movra           Display1


                movar           TempRam4
                call            Lcd_Num
                movar           DspData
                movra           Display2

                movar           TempRam5
                call            Lcd_Num
                movar           DspData
                movra           Display3

                movar           TempRam6
                call            Lcd_Num
                movar           DspData
                movra           Display4

                return
;*************************************************
;清显示缓冲
;*************************************************
ClrLCDBuffer:
                movai           0x00
                goto            DisplayCom
FullDspBuffer:
                movai           0xff
DisplayCom:
                movra           DisplayFs1
DisplayCom1:
                movra           Display1
                movra           Display2
                movra           Display3
                movra           Display4

                return
;**************************************************
;装载显示，display-->tempram,tempram-->lcd1&lcd0-->显示，，，
;**************************************************
LoadDspData:   	       	       	       	       	;Display1-4 -> LCDDS2-9
       	       	movai  	       	0x07
       	       	movra  	       	Reg0
       	       	movai  	       	0xc0   	       	;LCDDS4;
       	       	movra  	       	TempRam1

       	       	movai  	       	Display1
       	       	movra  	       	TempRam2
       	       	movra  	       	FSR0
;======================
LoadDspDataLoop1:
       	       	movar  	       	INDF0
       	       	movra  	       	TempRam3
       	       	movar  	       	TempRam1
       	       	movra  	       	FSR1
       	       	movar           TempRam3
       	       	movra           INDF1

       	       	incr            TempRam1
       	       	swapr           TempRam3
       	       	movar           TempRam1
       	       	movra           FSR1
       	       	movar           TempRam3
       	       	movra           INDF1

       	       	incr            TempRam1
       	       	incr            TempRam2
       	       	movar           TempRam2
       	       	movra           FSR0

       	       	djzr            Reg0
       	       	goto            LoadDspDataLoop1
       	       	return

;*************************
Lcd_Dis:
                movai           0x02
                movra           Reg0
                movai           0xc0
                movra           TempRam1
Lcd_Dis1:
                movar           TempRam1
                movra           FSR1
                movar           Display4
                movra           INDF1

                incr            TempRam1
                swapr           Display4
                movar           TempRam1
                movra           FSR1
       	       	movai          0x07
       	       	ANDAR          Display4
                movra          INDF1

       	       	incr            TempRam1
       	       	bclr            C
       	       	rrr             Display4
       	       	rrr             Display4
       	        movar           TempRam1
                movra           FSR1
       	       	movai          0x02
       	       	ANDAR          Display4
                ORRA           INDF1

Lcd_Dis2:
                movai           0x02
                movra           Reg0
                movai           0xc3
                movra           TempRam1
Lcd_Dis3:
                movar           TempRam1
                movra           FSR1
                movar           Display3
                movra           INDF1

                incr            TempRam1
                swapr           Display3
                movar           TempRam1
                movra           FSR1
       	       	movai          0x07
       	       	ANDAR          Display3
                movra          INDF1

       	       	incr            TempRam1
       	       	bclr            C
       	        rrr             Display3
       	       	rrr             Display3
       	       	movar           TempRam1
                movra           FSR1
       	       	movai          0x02
       	       	ANDAR          Display3
                ORRA           INDF1

Lcd_Dis4:
                movai           0x02
                movra           Reg0
                movai           0xc6
                movra           TempRam1
Lcd_Dis5:
                movar           TempRam1
                movra           FSR1
                movar           Display2
                movra           INDF1
                incr            TempRam1
                swapr           Display2
                movar           TempRam1
                movra           FSR1

       	       	movai          0x07
       	       	ANDAR          Display2
                movra          INDF1

       	       	incr            TempRam1
       	       	bclr            C
       	       	rrr             Display2
       	       	rrr             Display2
       	       	movar           TempRam1
                movra           FSR1

       	       	movai          0x02
       	       	ANDAR          Display2
                ORRA           INDF1

Lcd_Dis6:
                movai           0x02
                movra           Reg0
                movai           0xc9
                movra           TempRam1
Lcd_Dis7:
                movar           TempRam1
                movra           FSR1
                movar           Display1
                movra           INDF1

                incr            TempRam1
                swapr           Display1
                movar           TempRam1
                movra           FSR1
       	       	movai          0x07
       	        ANDAR          Display1
                movra          INDF1

       	       	incr            TempRam1
       	       	bclr            C
       	       	rrr             Display1
       	       	rrr             Display1
       	       	movar           TempRam1
                movra           FSR1
       	        movai          0x02
       	       	ANDAR          Display1
                ORRA           INDF1

Unit_Dis:
                jbclr           UnitFlag,KgFlag
       	       	goto            Unit_DisKG
       	       	jbclr           UnitFlag,StFlag
       	       	goto            Unit_DisST
       	       	jbclr  	       	UnitFlag,LbFlag
       	       	goto            Unit_DisLB

Unit_DisKG:
                bset            LCDDS0,2
       	       	bset            LCDDS0,0
       	       	return

Unit_DisLB:
                bclr            LCDDS0,0
       	       	bset            LCDDS0,2
       	       	bset            LCDDS3,0
       	       	return

Unit_DisST:
                bset            LCDDS6,0
       	       	bset            LCDDS3,2
                return


;..................................................
;看门狗唤醒处理
;..................................................
WDTWankenUp:
       	       	;#include      	"WDTWakenUp.asm"
;************************************************
;Title  : 看门狗唤醒处理
;Author : Kevin Lee
;Date   : 2009-9-9 14:18
;************************************************
       	       	jbset  	       	MCR, 5
       	       	goto   	       	goto_allstop
       	       	bclr   	       	MCR, 5
       	       	clrwdt

TestWdtIn:
       	       	bclr   	       	MCR, 5
       	       	bset   	       	AutoOn_Flags,WdtWaken_Flag

;..................................................
WDTClock:
       	       	bset   	       	SysFlag1,AdcStartFlag
       	       	clrr   	       	SampleTimes

       	       	bclr   	       	SysFlag5,WdtTrackSFlag
       	       	bclr   	       	SysFlag5,WdtTrackBFlag
       	       	movfl  	       	WakenUpCount,43
       	       	movfl  	       	TF1, 10

;************************************************
WDTWakenUpLoop:
       	       	bclr   	       	SysFlag1,WdtProcADFlag

;......
WDTWakenUpLoop1:
       	       	bclr   	       	T0CR,7 	       	       	;关T0
       	       	bset   	       	ADCR0,5	       	       	;开PGA
       	       	bset   	       	ADCR0,7        	       	;开ADC
       	       	bset   	       	MCR,7  	       	       	;GIE=1
       	       	bset   	       	PUMP,6 	       	       	;开PUMP

       	       	movai  	       	40H
       	       	movra  	       	INTE   	       	       	;ADIE=1
       	       	movai  	       	0x00
       	       	movra  	       	INTF
       	       	bset   	       	T0CR,7 	       	       	;开T0
       	       	movai  	       	0x07
       	       	movra  	       	ADCR1          	;77=65536,128  57=16384,128  37=4096,128 采样时间16ms@2M?
       	       	movai  	       	0xc0
       	       	movra  	       	ADCR2
       	       	movai  	       	0xc0
       	       	movra  	       	ADCR2  	       	       	;?

       	       	bset   	       	OSCM,0 	       	       	;高频一直开
       	       	BCLR   	       	OSCM,1 	       	       	;低频休眠停振
       	       	BCLR   	       	OSCM,2 	       	       	;系统高频工作
       	       	movai  	       	0x58
       	       	movra  	       	TPSC   	       	       	;LDO开 2.5V,基准电压开
;*******************************
WDT_WAIT:

WDT_STOP:
       	       	bset   	       	OSCM,0 	       	       	;高频一直开
       	       	bclr   	       	OSCM,1 	       	       	;低频休眠停振
       	       	bclr   	       	OSCM,2 	       	       	;系统高频工作
       	       	movai  	       	0x00
       	       	movra  	       	INTF
       	       	CLRWDT
       	       	NOP
       	       	stop   	       	       	       	       	;ADC能唤醒进中断
       	       	nop
       	       	nop
       	       	nop    	       	       	       	       	;唤醒后系统高频工作
       	       	CLRWDT
       	       	bset   	       	MCR,7  	       	       	;GIE=1
wait_adifE:
       	       	jbset  	       	SysFlag1,AdcOkFlag
       	       	goto   	       	WDT_WAIT

       	       	bset   	       	SysFlag1,WdtProcADFlag
       	       	bclr   	       	SysFlag1,AdcOkFlag

       	       	movar  	       	AutoOnADL
       	       	RSUBAR 	       	ADRamM
       	       	movar  	       	AutoOnADH
       	       	RSBCAR 	       	ADRamH

       	       	jbclr  	       	C
       	       	goto   	       	WDTWakenUp0

       	       	goto            goto_allstop   	       	;AD值小于开机显示门限

;................................................
WDTWakenUp0:   	       	       	       	       	       	;AD值超过开机显示门限
       	       	jbclr  	       	SysFlag5,WdtTrackSFlag
       	       	goto   	       	goto_allstop

       	       	bset   	       	SysFlag5,WdtTrackBFlag
       	       	DJZR   	       	WakenUpCount   	       	; 连续50次AD都大于开机重量的AD才开机
       	       	goto   	       	WDTWakenUpLoop
       	       	goto   	       	WDTWakenUp1

;................................................
WDTWakenUp1:
       	       	bset   	       	AutoOn_Flags,WakenOn_Flag      	; 重力开机标志

;................................................
WDTWakenUp2:
       	       	clrwdt
       	       	bclr   	       	AutoOn_Flags,WdtWaken_Flag
       	       	bclr   	       	SysFlag4,LowBatFlag
       	       	bclr   	       	SysFlag1,WdtProcADFlag

;************************************************
WDTWakenUpEnd:
       	       	goto   	       	SysInit1

;************************************************
;上电复位处理
;************************************************
SysInit:
       	       	movai  	       	0x95
       	       	movra  	       	FSR0
rst_clr	       	clrr   	       	INDF0  	   	   	;clr 0x95-0xd4
       	       	incr   	       	FSR0
       	       	movai  	       	0xd5
       	       	rsubar 	       	FSR0
       	       	jbset  	       	C
       	       	goto   	       	rst_clr

       	       	movai  	       	0x01
       	       	movra  	       	UnitFlag

;************************************************
SysInit1:
                ;#include         "sys_init.asm"
sys_init:
       	       	movai  	       	0x30
       	       	movra  	       	OSCM   	   	   	;系统高频工作,高/低频休眠停振
       	       	call   	       	delay1
       	       	movai  	       	0x63
       	       	movra  	       	PUMP   	   	   	;开PUMP,选择高频时钟,烧录电压7.5V,电压受VLCDX控制,LCD电压3.0V
       	       	call   	       	delay1
       	       	movai  	       	0x58
       	       	movra  	       	TPSC   	       	       	;开LDO 2.5V,开基准电压   	;0x78=2.3V,0x58=2.5V,0x38=2.8V,0x18=3.0V
       	       	call   	       	delay1

;***********************************************
;IO设置
;***********************************************
Io_init:
       	       	movai  	       	0xff
       	       	movra  	       	LCDIOS1
       	       	movra  	       	LCDIOS2	       	       	;设置LCD驱动引脚,IO设为SEG2-SEG13

       	       	movai  	       	0xf0
       	       	movra  	       	OEP0   	       	       	;P00-P03输入,P04-P07输出
       	       	movai  	       	0xef
       	       	movra  	       	IOP0   	       	       	;P04输出低,P05-P07输出高
       	       	movai  	       	0xeb
       	       	movra  	       	PUP0   	       	       	;P00,P01,P03上拉
       	       	movai  	       	0xff
       	       	movra  	       	OEP1   	       	       	;P1全输出

       	       	movai  	       	0x00
       	       	movra  	       	PUP1
       	       	movra  	       	PUP2
       	       	movra  	       	PUP3

       	       	movra  	       	IOP1   	       	       	;P1输出低
       	       	movra  	       	OEP2   	       	       	;P2全输入
       	       	movra  	       	OEP3           	       	;P3全输入
       	       	movra  	       	IOP2
       	       	movra  	       	IOP3

;************************************************
inte_init:
       	       	movai  	       	0x00
       	       	movra  	       	MCR    	       	       	;下降沿触发,GIE=0
       	       	movai  	       	0x84
       	       	movra  	       	LVDCR  	       	       	;LVDEN=1,VBGSEL=1,比较电压LVDI输入
       	       	movai  	       	0x45
       	       	movra  	       	INTE   	       	       	;INT0IE=1,T0IE=1,ADIE=1

       	       	clrr   	       	INTF

       	       	movai  	       	0x17
       	       	movra  	       	T0CR   	       	       	;T0未使能,选择低频时钟,128分频

       	       	movai  	       	0x55
       	       	movra  	       	T0LOAD
       	       	movra  	       	T0CNT  	       	       	;T=(0X55+1)*128/32K=344ms

;***********************************************
;AD初始化
;***********************************************
ad_init:
       	       	movai  	       	0xec
       	       	movra  	       	ADCR0  	       	       	;CHOP打开,PGA打开,高频时钟64分频,使能ADC
       	       	movai  	       	0x77   	       	; AD速率//改37-77，降采样选择最高
       	       	movra  	       	ADCR1  	       	; 77=65536,128  57=16384,128  37=4096,128 采样一次32.768ms@8M?
       	       	movai  	       	0xc0
       	       	movra  	       	ADCR2  	       	       	;TADCINEN=1 ? TPGAOUTEN=1 ?

       	       	movai  	       	0x82
       	       	movra  	       	LCDCR0 	       	       	;开LCD

       	       	movai  	       	0x2f
       	       	movra  	       	LCDCR1 	       	       	;1/3DUTY,低频时钟

       ;	       	movai  	       	0x60
       ;	       	movra  	       	HIRCCR1	       	       	;高频时钟2M,8分频 似乎无效//改_删掉
       	       	CLRWDT

       	       	bclr   	       	AutoOn_Flags,WdtWaken_Flag

;..............................................
;清空RAM
;..............................................
       	       	movai  	       	Buffer0
       	       	movra  	       	FSR0
ClrRam:	       	       	       	       	       	       	;清零0X00-0X98
       	       	clrr   	       	INDF0
       	       	incr   	       	FSR0
       	       	movai  	       	0X99
       	       	rsubar 	       	FSR0
       	       	jbset  	       	C
       	       	goto   	       	ClrRam
       	       	clrr   	       	second

;************************************************
;默认数据
;************************************************
   	   	movfl  	       	CalCount1H, 01H
       	       	movfl  	       	CalCount1L, 0F4H

;*************************************************
;读取BIE
;*************************************************
IntReadBie:
       	       	movai  	       	0X00
       	       	movra  	       	MCR    	       	       	;GIE=0
       	       	movai  	       	0x00
       	       	movra  	       	OSCM   	       	       	;系统高频工作,高/低频休眠停振
       	       	MOVAI  	       	0x78
       	       	movra  	       	TPSC   	       	       	;2.3V LDO打开,基准电压打开
       	       	movai  	       	0x64
       	       	movra  	       	PUMP   	       	       	;开PUMP,选择高频时钟,烧录电压7.5V,电压受VCP_CAL控制,LCD电压2.6V

       	       	movai  	       	0x0F
       	       	movra  	       	REG3
       	       	movai  	       	0x00
       	       	movra  	       	FSR0
       	       	movai  	       	0x0F
       	       	movra  	       	FSR1
IntReadBie1:
       	       	nop
       	       	nop
       	       	movar  	       	INDF3  	       	       	;起始地址0x0F00
       	       	movra  	       	CheckRam1
       	       	movar  	       	HIBYTE
       	       	movra  	       	CheckRam2
       	       	nop
       	       	nop
       	       	incr   	       	FSR0
       	       	movar  	       	INDF3
       	       	movra  	       	CheckRam3
       	       	movar  	       	HIBYTE
       	       	movra  	       	CheckRam4
       	       	nop
       	       	nop
       	       	incr   	       	FSR0
       	       	movar  	       	INDF3
       	       	movra  	       	CheckRam5
       	       	movar  	       	HIBYTE
       	       	movra  	       	CheckRam6

       	       	movai  	       	0FFH
       	       	ANDAR  	       	CheckRam1
       	       	ANDAR  	       	CheckRam2
       	       	ANDAR  	       	CheckRam3
       	       	ANDAR  	       	CheckRam4
       	       	XORAI  	       	0FFH
       	       	jbclr  	       	Z
       	       	goto   	       	IntReadBie2    	       	;读出数据全FF
       	       	nop
       	       	movff  	       	CalDot1L,CheckRam1
       	       	movff  	       	CalDot1H,CheckRam2
       	       	movff  	       	CalDot2L,CheckRam3
       	       	movff  	       	CalDot2H,CheckRam4
       	       	movff  	       	CalDot3L,CheckRam5
       	       	movff  	       	CalDot3H,CheckRam6
       	       	movai  	       	0x02
       	       	ADDRA  	       	FSR0
       	       	DJZR   	       	REG3
       	       	goto   	       	IntReadBie1
       	       	goto   	       	IntReadBie4    	       	;15次全有数据
IntReadBie2:
       	       	ORAR   	       	CalDot1H
       	       	ORAR   	       	CalDot3L
       	       	ORAR   	       	CalDot3H
       	       	XORAI  	       	00H
       	       	jbclr  	       	Z
       	       	goto   	       	IntReadBie3	   	;1H\3L\3H数据为0
       	       	goto   	       	IntReadBie4    	       	;
IntReadBie3:
       	       	movfl  	       	CalDot1L,2BH
       	       	movfl  	       	CalDot1H,17H
       	       	movfl  	       	CalDot2L,2BH
       	       	movfl  	       	CalDot2H,2EH
       	       	movfl  	       	CalDot3L,2BH
       	       	movfl  	       	CalDot3H,46H
IntReadBie4:
       	       	nop
       	       	nop
       	       	movai  	       	0x30
       	       	movra  	       	OSCM   	       	       	;系统高频工作,高/低频休眠停振
       	       	movai  	       	0x61
       	       	movra  	       	PUMP   	       	       	;开PUMP,选择高频时钟,烧录电压7.5V,电压受VLCDX控制,LCD电压3.2V
       	       	movai  	       	0x81
       	       	movra  	       	MCR    	       	       	;INT0下降沿触发,GIE=1
   	   	MOVAI  	       	0x58
   	   	movra  	       	TPSC   	       	       	;打开LDO 2.5V,打开基准电压
   	   	CLRWDT
   	   	bset   	       	IOP0,4 	       	       	;P04输出高
       	       	MOVAI  	       	0XFF
       	       	CLRWDT
       	       	CALL   	       	FullDspBuffer
       	       	CLRWDT
       	       	CALL   	       	LoadDspData
       	       	CLRWDT
       	       	MOVAI  	       	0XFF
       	       	movra           LCDDS8
       	       	movra           LCDDS9
       	       	bset   	   	LCDDS8,0
       	       	bset   	   	LCDDS5,3
       	       	BSET   	       	SysFlag6,3

;**************************************************
;  BIE 读取数据
;**************************************************
LoadBIEdata:
       	       	movfl  	       	CalCount1H, 00H
       	       	movfl  	       	CalCount1L, 07DH       	; 50kg

       	       	movfl  	       	MaxCountH, 0X07
       	       	movfl  	       	MaxCountL, 0X08	   	; 152.0 kg 超重

       	       	jbclr  	       	AutoOn_Flags,WakenOn_Flag
       	       	goto   	       	Start
       	       	movfl  	       	UnitFlag, 00000001b    	;复位初始化,重量单位需恢复默认kg
;************************************************
;
;************************************************
Start:
       	       	bset   	       	SysFlag1,AdcStartFlag
       	       	clrr   	       	SampleTimes
       	       	bclr   	       	SysFlag1,AdcOkFlag

       	       	jbset  	       	AutoOn_Flags,WakenOn_Flag
       	       	goto   	       	Init_Power
       	       	bclr   	       	AutoOn_Flags,WakenOn_Flag
       	       	movfl  	       	Prog_Flow, 00001000B   	;开机显示中
       	       	movfl  	       	T_Auto_Off, 12 	       	;movff     T_Auto_Off,T_WeightMode     	; 8秒关机时间

;**************************************************
;initialize some ram
;**************************************************
Init_Power:
       	       	clrr   	       	TBASE01S
       	       	clrr   	       	TBASE05S
       	       	CLRWDT
;................................................

       	       	bclr   	       	SysFlag1,AdcOkFlag
       	       	bclr   	       	SysFlag1,DataOkFlag
       	       	bclr   	       	SysFlag1,SteadyFlag

       	       	clrr   	       	SysFlag4
       	       	clrr   	       	SysFlag5

       	       	clrr   	       	CountH
       	       	clrr   	       	CountL
       	       	clrr   	       	StableCount

       	       	jbclr  	       	Prog_Flow, 3
       	       	goto   	       	MainLoop       	       	;开机显示中

       	       	jbset  	       	Power_Flags,FlashZFlag
       	       	nop
       	       	nop
       	       	movfl  	       	Prog_Flow, 00000010b   	;复位处理中
       	       	movfl  	       	T_Auto_Off, 10 	       	; 最长5秒钟的刷新零点的时间
Init_Power1:

;**************************************************
;开机归零程序
;**************************************************
MainLoop1:
                jbset           Prog_Flow, 1
                goto            MainLoop

                jbset           SysFlag1,SteadyFlag
                goto            MainLoop1End

                call            GetZeroPoint   	       	; 刷新零点
                call            _GetAutoOnDC
                movfl           Prog_Flow, 00001000B
                goto            MainLoop

                clrr            CountH
                clrr            CountL
MainLoop1End:

MainLoop:
       	       	jbclr  	       	Prog_Flow, 1
       	       	goto   	       	Scankey_In
       	       	jbset  	       	SysFlag6,3
       	       	goto   	       	Scankey_In
       	       	bclr   	       	SysFlag6,3
       	       	nop
Test_LowBat
       	       	movai  	       	0x32
       	       	movra  	       	Lo_Counter
Test_LowBat01
       	       	jbset  	       	LVDCR,0
       	       	goto   	       	Scankey_In 	;0x066b
       	       	nop
       	       	nop
       	       	nop
       	       	djzr   	       	Lo_Counter
       	       	goto   	       	Test_LowBat01  	;0x64f
       	       	clrr            Display2
       	       	clrr            Display1
       	       	movai  	       	01100110b      	       	;'o'
       	       	movra  	       	Display4
       	       	movai  	       	01000100b      	       	;'L'
       	       	movra  	       	Display3
       	       	bset   	       	IOP0,4
       	       	call   	       	Lcd_Dis_Cal
       	       	movai  	       	0x02
       	       	movra           LCDDS3
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	call   	       	delay1
       	       	goto            Sleep_In

       	       	;#include      	"scankey.asm"
Scankey_In:
       	       	jbclr  	       	IOP0,0
       	       	goto   	       	Main_Key
       	       	clrr   	       	second3	   	   	;P00输入低
       	       	bset   	       	keycode,0
       	       	goto   	       	Key_Exit

Main_Key:
       	       	clrr   	       	second2	   	   	;P00输入高(上拉)
       	       	jbset  	       	keycode,0
       	       	goto   	       	Key_Exit
Unit_key:      	       	       	       	       	       	;按键弹起
       	       	clrr   	       	keycode
       	       	bset   	       	Key_Up, UnitKey
       	       	incr   	       	Key_Times

Key_Exit:
       	       	;#include      	"change.asm"
;**************************************************
;Function    :Get the unit
;Create Date :2012/5/17 16:03
;Create By   :Kevin Lee
;**************************************************
_GetUnitAux:
       	       	jbclr  	       	Prog_Flow, 7   	       	; 7 校正   单位换算标志位的到来
       	       	goto   	       	_GetUnitAuxEnd

_GetUnitAuxKey:
       	       	bclr   	       	Status_Flags,SWUnitFlag
       	       	jbset  	       	Key_Up, UnitKey
       	       	goto   	       	_GetUnitAuxEnd 	       	;无按键弹起动作

       	       	clrr   	       	second
       	       	movfl  	       	T_Auto_Off, 12 	       	;movff 	T_Auto_Off,T_WeightMode
       	       	bclr   	       	Key_Up, UnitKey
       	       	bclr   	       	PFALG, 0
       	       	rlr    	       	UnitFlag
       	       	movai  	       	00000001B
       	       	jbclr  	       	UnitFlag, 3
       	       	movra  	       	UnitFlag       	       	;0X01->0X02->0X04->0X08->0X01
       	       	goto   	       	_GetUnitAuxEnd

;暂时不用
_GetUnitAuxKey1:
       	       	movai  	       	00000001B
       	       	jbclr  	       	UnitFlag, 2
       	       	movra  	       	UnitFlag
       	       	goto   	       	_GetUnitAuxEnd

Load_LB:
       	       	movai  	       	00000010B
       	       	goto   	       	Load_Unit
Load_ST:
       	       	movai  	       	00000100b
Load_Unit:
       	       	movra  	       	UnitFlag
       	       	bset   	       	Status_Flags,SWUnitFlag
_GetUnitAuxEnd:
       	       	;#include      	"procadc.asm"
;************************************************
;Title  : Proc AD Sub 滑动平均
;Author : Kevin Lee
;Date   : 2008-6-26 20:22
;************************************************
_ProcAdc:
       	       	jbset  	       	SysFlag1,AdcOkFlag
       	       	goto   	       	ProcAdc_End
                bclr   	       	SysFlag1,AdcOkFlag

       	       	movff  	       	TempRam1,H_DR
       	       	movff  	       	TempRam2,M_DR
       	       	movff  	       	TempRam3,L_DR
       	       	movff  	       	TempRam4,H_DATA
       	       	movff  	       	TempRam5,M_DATA
       	       	movff  	       	TempRam6,L_DATA
       	       	CALL   	       	_Sub3_3

       	       	CLRR   	       	TempRam4
       	       	CLRR   	       	TempRam5
       	       	movfl  	       	TempRam6, 80   	; 波动范围
       	       	CALL   	       	_Sub3_3	   	   	;(HML_DR - HML_DATA) - 80
       	       	jbclr  	       	C
       	       	goto   	       	Proc_Adc1
_ProcAdc0: 	   	   	   	   	   	;(HML_DR - HML_DATA) < 80
       	       	movff  	       	TempRam11,H_DATAC
       	       	movff  	       	TempRam12,M_DATAC
       	       	movff  	       	TempRam13,L_DATAC

       	       	movar  	       	L_DATAB	   	; H_DATAC+差值
       	       	movra  	       	L_DATAC
       	       	ADDRA  	       	TempRam13
       	       	movar  	       	M_DATAB
       	       	movra  	       	M_DATAC
       	       	ADCRA  	       	TempRam12
       	       	movar  	       	H_DATAB
       	       	movra  	       	H_DATAC
       	       	ADCRA  	       	TempRam11      	   	;TempRam11/12/13 = HML_DATAC + HML_DATAB ,HML_DATAB -> HML_DATAC
;...............
                movar           L_DATAA
                movra           L_DATAB
                ADDRA           TempRam13
                movar           M_DATAA
                movra           M_DATAB
                ADCRA          	TempRam12
                movar           H_DATAA
                movra           H_DATAB
                ADCRA          	TempRam11
;...............
                movar           L_DATA
                movra           L_DATAA
                ADDRA           TempRam13
                movar           M_DATA
                movra           M_DATAA
                ADCRA          	TempRam12
                movar           H_DATA
                movra           H_DATAA
                ADCRA          	TempRam11

                bclr            C
                RRR             TempRam11
                RRR             TempRam12
                RRR             TempRam13

                bclr            C
                RRR             TempRam11
                RRR             TempRam12
                RRR             TempRam13      	; 除以4取平均

                movff           H_DR,TempRam11
                movff           M_DR,TempRam12
                movff           L_DR,TempRam13
                goto            Proc_Adc2
;***************
Proc_Adc1: 	   	   	   	   	   	;(HML_DR - HML_DATA) >= 80
                movar           H_DATA 	       	; 刷新
                movra           H_DR
                movra           H_DATAA
                movra           H_DATAB
                movra           H_DATAC

                movar           M_DATA
                movra           M_DR
                movra           M_DATAA
                movra           M_DATAB
                movra           M_DATAC

                movar           L_DATA
                movra           L_DR
                movra           L_DATAA
                movra           L_DATAB
                movra           L_DATAC
;...............................
Proc_Adc2: 	   	   	   	   	; 判断内码是否稳定
                movff           TempRam4,H_DRBuf
                movff           TempRam5,M_DRBuf
                movff           TempRam6,L_DRBuf

                movar           H_DR
                movra           H_DRBuf
                movra           TempRam1

                movar           M_DR
                movra           M_DRBuf
                movra           TempRam2

                movar           L_DR
                movra           L_DRBuf
                movra           TempRam3

                call            _Sub3_3

                clrr            TempRam4
                clrr            TempRam5
                movfl           TempRam6, 3    	       	;movff          TempRam6,AdSteadyRange
Proc_Adc2A:
                call            _Sub3_3
                jbclr           PFALG, 0
                goto            Unstable
                incr            StableCount

                movai           5      	       	       	;movar          AdsteadyTimes    ; 稳定次数
                RSUBAR          StableCount
                jbset           PFALG, 0
                goto            ProcAdc_End
                DECR            StableCount
                BSET            SysFlag1,SteadyFlag
                goto            ProcAdc_End
;...............................
Unstable:
                clrr            StableCount
                BCLR            SysFlag1,SteadyFlag
ProcAdc_End:
       	       	bclr            AutoOn_Flags,WdtWaken_Flag
       	       	jbclr  	       	Prog_Flow, 1
       	       	GOTO   	       	Close_End
;***********************************************
;8S没有重量变化自动关机
Main_close:
                movai           0B9H
                ASUBAR          second 	       	       	;0XB9-SECOND
                jbset           C
                goto            Sleep_In       	       	;SECOND>0XB9

Close_End:     	       	       	       	       	       	;时间未到
                movai           02EH
                RSUBAR          second3	       	       	;SECOND3-0X2E
                jbclr           C
               	clrr            Key_Times      	       	;SECOND3>=0X2E

       	       	movai           03
                RSUBAR          Key_Times      	       	;KEY_TIMES-03
                jbset           C
       	        goto            Proc_EnterADCEnd   ;三短 KEY_TIMES<03

Proc_EnterADC1:
       	        jbclr  	       	IOP0,0
       	       	goto   	       	Proc_EnterADCEnd   ;一长

       	       	movai  	       	0x30
       	       	RSUBAR         	second2
       	       	jbset  	       	PFALG, 0
       	       	goto   	       	Proc_EnterADCEnd
       	       	clrr   	       	second2

Proc_EnterADCoK:
                movfl           Prog_Flow, 10000000B
                movfl           TF1, 00000010B
                movfl           UnitFlag, 00000001b

                clrr            AmendZeroH
                clrr            AmendZeroM
                clrr            AmendZeroL

                movff           TempRam11,H_DR
                movff           TempRam12,M_DR
                movff           TempRam13,L_DR

EnterADC1:
       	       	clrr   	       	Timer1S

Proc_EnterADCEnd:

Main_Cal:
                jbset           IOP0,1
                goto            Sleep_In

                jbset           Prog_Flow, 7
                goto            DisplayCount
                ;#include         "Cal.asm"

;**************************************************
;Calibration program
;TF1     1显CAL    2 显零点内码      3第一校正点   4第二校正点
;**************************************************
InterCode1:
                clrr             second
                CLRWDT
                jbset           TF1, 1
                goto            ProcCal_0
                nop
                clrr             second
       	       	movai          00000011b
                movra           Display4
       	       	call           Lcd_Dis_Sys
                movai           00H
                movra           LCDDS0
                movai           04H
                movra           LCDDS1
                movai           04H
                movra           LCDDS2
                movai           02H
                movra           LCDDS3
                movai           03H
                movra           LCDDS4
                movai           0FH
                movra           LCDDS5
                movai           02H
                movra           LCDDS6
                movai           04H
                movra           LCDDS7
       	       	movai           05H
                movra           LCDDS8
       	       	movai           02H
                movra           LCDDS9
       	       	bclr            SysFlag1,SteadyFlag
                call           delay2

InterCode1A:
                call            Change_F1                  ;转换校榜流程，改变TF1的值
                goto            ProcCalExit

;Calibration program
;***************
ProcCal_0:
                jbset           TF1, 2
                goto            ProcCal_A

                jbset           SysFlag1,SteadyFlag
                goto            ProcCalExit

                call            GetZeroPoint
                clrr            displaycal1
                clrr            displaycal2
                clrr            displaycal3
                call            Change_F1
                goto            ProcCalExit

;***************
ProcCal_A:
                call            CurAD_ZeroAD
                movff           displaycal1,TempRam1
                movff           displaycal2,TempRam2
                movff           displaycal3,TempRam3
                jbset           SysFlag1,SteadyFlag
                goto            ProcCalExit

                bclr            SysFlag1,SteadyFlag
                clrr            StableCount

                call            CurAD_ZeroAD

                movff           displaycal1,TempRam1
                movff           displaycal2,TempRam2
                movff           displaycal3,TempRam3

                movff           CalDot3H,TempRam2             ; 当前内码与零点内码差值，暂存CalDot3H、CalDot3L
                movff           CalDot3L,TempRam3
;..................................................

                clrr            TempRam4
                movfl           TempRam5, 01H
                movfl           TempRam6, 090H                ; 1000个内码以下若稳定，都追零，方便同时标定多台秤
                call            _Sub3_3
                jbset            C
                goto            ProcCal_B


                jbset           TF1, 3
                goto            ProcCal_A1
                movff           CalDot1H,CalDot3H
                movff           CalDot1L,CalDot3L
                goto            ProcCalDot1
ProcCal_A1:
                jbset           TF1, 4
                goto            ProcCal_A2
                call            CurAD_ZeroAD
                movff           displaycal1,TempRam1
                movff           displaycal2,TempRam2
                movff           displaycal3,TempRam3
                movff           CalDot3H,TempRam2
                movff           CalDot3L,TempRam3

                clrr            TempRam4
                movfl           TempRam5, 0BH
                movfl           TempRam6, 0B8H
                call            _Sub3_3
                jbset            C
                goto             ProcCalExit
                movff           CalDot2H,CalDot3H
                movff           CalDot2L,CalDot3L

                movff           TempRam3,CalDot2H
                movff           TempRam4,CalDot2L

                movff           TempRam5,CalDot1H
                movff           TempRam6,CalDot1L
                CALL            _Sub2_2
                jbset           PFALG, 0
                goto             ProcCalExit

                movfl           TempRam6,200      ;校正点2要比1大100才能通过
                clrr            TempRam5
                CALL            _Sub2_2
                jbset           PFALG, 0
                goto             ProcCalExit
                goto            ProcCalDot2
ProcCal_A2:
                call            CurAD_ZeroAD
                movff           displaycal1,TempRam1
                movff           displaycal2,TempRam2
                movff           displaycal3,TempRam3
                movff           CalDot3H,TempRam2
                movff           CalDot3L,TempRam3

                clrr            TempRam4
                movfl           TempRam5, 13H
                movfl           TempRam6, 88H
                call            _Sub3_3
                jbset            C
                goto             ProcCalExit

                movff           TempRam3,CalDot3H
                movff           TempRam4,CalDot3L

                movff           TempRam5,CalDot2H
                movff           TempRam6,CalDot2L
                CALL            _Sub2_2
                jbset           PFALG, 0
                goto             ProcCalExit

                movfl           TempRam6,200      ;校正点3要比2大100才能通过
                clrr            TempRam5
                CALL            _Sub2_2
                jbset           PFALG, 0
                goto             ProcCalExit
                goto            ProcCalDot3
ProcCal_B:
                call            GetZeroPoint
                clrr            displaycal1
                clrr            displaycal2
                clrr            displaycal3
                goto            ProcCalExit

;********第一点校正
ProcCalDot1:
                movff           TempRam3,CalDot1H
                movff           TempRam4,CalDot1L

                movff           TempRam5,CalCount1H
                movff           TempRam6,CalCount1L                     ; CalDot1H-CalCount1H

ProcCalDot1D:
                clrr             second
       	       	movai           01110101b
                movra           Display4
       	       	call           Lcd_Dis_Sys
                movai           00H
                movra           LCDDS0
                movai           04H
                movra           LCDDS1
                movai           04H
                movra           LCDDS2
                movai           02H
                movra           LCDDS3
                movai           03H
                movra           LCDDS4
                movai           0FH
                movra           LCDDS5
                movai           02H
                movra           LCDDS6
                movai           04H
                movra           LCDDS7
       	       	movai           05H
                movra           LCDDS8
       	       	movai           02H
                movra           LCDDS9
       	       	bclr            SysFlag1,SteadyFlag
                call           delay2
                bclr            SysFlag6,Caldis
                call            Change_F1
                goto            ProcCalExit

;********第二点校正
ProcCalDot2:
                movff           TempRam5,CalDot1H
                movff           TempRam6,CalDot1L
                 clrr             second
       	       	movai           00110111b
                movra           Display4
       	       	call           Lcd_Dis_Sys
                movai           00H
                movra           LCDDS0
                movai           04H
                movra           LCDDS1
                movai           04H
                movra           LCDDS2
                movai           02H
                movra           LCDDS3
                movai           03H
                movra           LCDDS4
                movai           0FH
                movra           LCDDS5
                movai           02H
                movra           LCDDS6
                movai           04H
                movra           LCDDS7
       	       	movai           05H
                movra           LCDDS8
       	       	movai           02H
                movra           LCDDS9
       	       	bclr            SysFlag1,SteadyFlag
                call           delay2

                bset             SysFlag6,Caldis
                bclr             SysFlag6,Caldis
                call            Change_F1
                goto            ProcCalExit

;********第三点校正
ProcCalDot3:
                movai           00001000b
                movra           Prog_Flow
       	       	call            _GetAutoOnDC
                goto            SaveCalPoint

;*******************************
SaveCalPoint:
               CLRWDT
               movai          0x00
               movra          MCR
               movai          0x00
               movra          OSCM
               MOVAI          0x78
               movra          TPSC
               movai          0x64
               movra          PUMP

SaveCalPoint1R:
         movai          0x0F                ;16次
         movra          REG3
         movai          0x00
         movra          FSR0
         movai          0x0F
         movra          FSR1
SaveCalPoint1RA:
         call          ReadBie
         jbclr         Z
         goto          SaveCalPoint1RB
       	       	 movai          0x04

       	       	 ADDRA          FSR0
       	       	 DJZR           REG3
       	       	 goto           SaveCalPoint1RA
       	       	 goto           CalErr1          ;标定次数满

SaveCalPoint1RB:
               nop
               nop
               call     WriteBie
               goto     IntReadBieA
;..................................................
SaveCalPointOk:
       	       	clrr   	       	second

       	       	movai  	       	10110110b      	       	;'5'
       	       	movra  	       	Display4
       	       	movai  	       	10110110b      	       	;'5'
       	       	movra  	       	Display3
       	       	movai  	       	11110011b      	       	;'A'
       	       	movra  	       	Display2
       	       	movai  	       	11110001b      	       	;'P'
       	       	movra  	       	Display1
       	       	call   	       	Lcd_Dis_Cal
       	       	call   	       	delay2
       	       	CLRWDT
       	       	call   	       	delay1

               movai       0x31
               movra       OSCM	       	       	       	;系统高频工作,高频一直开
               movai       0x63
               movra       PUMP	       	       	       	;开PUMP,选择高频时钟,烧录电压7.5V,电压受VLCDX控制,LCD电压3.0V
               movai       0x81
               movra       MCR
               bset        LCDDS8,0
               bset        LCDDS5,3
               MOVAI       0x58
               movra       TPSC

       	       	movai  	       	0x37
       	       	movra  	       	ADCR1

       	       	org    	0x853
SaveCalPointOk1:
                                                 ; 1S
                call    delay1
       	       	       	       	CLRWDT
                call    delay1
                CLRWDT
                movfl           Prog_Flow, 00001000B
                movfl           T_Auto_Off, 12                          ;movff          T_Auto_Off,T_WeightMode
                bset            AutoOn_Flags,DispOk_Flag
                movfl           UnitFlag, 00000001B
                bclr            Key_Up, UnitKey
                goto            MainLoop

;校验

;**************************************************
IntReadBieA:

IntReadBieB:
         nop
         nop
         nop
         movar    INDF3
         movra    CheckRam5
         movar    HIBYTE
         movra    CheckRam6

         nop
         nop
         DECR      FSR0
         movar     INDF3
         movra     CheckRam3
         movar     HIBYTE
         movra     CheckRam4


         nop
         nop
         DECR      FSR0
         movar     INDF3
         movra     CheckRam1
         movar     HIBYTE
         movra     CheckRam2


       	 movar       CalDot1L
         XORAR       CheckRam1
       	 jbset       Z
       	 goto        CalErr2

       	 movar       CalDot1H
         XORAR       CheckRam2
       	 jbset       Z
       	 goto        CalErr2

       	 movar       CalDot2L
         XORAR       CheckRam3
       	 jbset       Z
       	 goto        CalErr2

       	 movar       CalDot2H
         XORAR       CheckRam4
       	 jbset       Z
       	 goto        CalErr2

       	 movar       CalDot3L
         XORAR       CheckRam5
       	 jbset       Z
       	 goto        CalErr2

         movar       CalDot3H
         XORAR       CheckRam6
       	 jbset       Z
       	 goto        CalErr2
       	 goto        SaveCalPointOk
;**************************************************
 ;标定次数满
CalErr1:
       	       	clrwdt
       	       	movai  	       	00000011b
       	       	movra  	       	Display4       	       	;'1'
       	       	movai  	       	01100000b
       	       	movra  	       	Display3       	       	;'r'
       	       	movai  	       	01100000b
       	       	movra  	       	Display2       	       	;'r'
       	       	movai  	       	11110100b
       	       	movra  	       	Display1       	       	;'E'
       	       	call   	       	Lcd_Dis_Cal
       	       	goto   	       	CalErr1
;校验出错
CalErr2:
       	       	clrwdt
       	       	movai  	       	01110101b
       	       	movra  	       	Display4       	       	;'2'
       	       	movai  	       	01100000b
       	       	movra  	       	Display3       	       	;'r'
       	       	movai  	       	01100000b
       	       	movra  	       	Display2       	       	;'r'
       	       	movai  	       	11110100b
       	       	movra  	       	Display1       	       	;'E'
       	       	call   	       	Lcd_Dis_Cal
       	       	goto   	       	CalErr2
;电压不稳
CalErr3:
       	       	clrwdt
       	       	movai  	       	00110111b
       	       	movra  	       	Display4       	       	;'3'
       	       	movai  	       	01100000b
       	       	movra  	       	Display3       	       	;'r'
       	       	movai  	       	01100000b
       	       	movra  	       	Display2       	       	;'r'
       	       	movai  	       	11110100b
       	       	movra  	       	Display1       	       	;'E'
       	       	call   	       	Lcd_Dis_Cal
       	       	goto   	       	CalErr3
ProcCalExit:
       	       	goto   	       	Display

;*************************************************
DisplayCount:
       	       	jbclr  	       	Prog_Flow, 1   	    ; 追零标志
       	       	goto   	       	MainLoop1

       	       	call   	       	_GetCount

       	       	jbclr           AutoOn_Flags,OverLoadFlag
       	       	goto            MemCount_End

   	   	;#include  	"weight.asm"
       	       	org    	   	0x8b5
TrackZero_A:
                jbclr           SysFlag1,NegFlag
       	       	goto            TrackZero_B
                CLRR            TempRam5
                movfl           TempRam6, 46   	   	;movff 	TempRam6,StartCount

                call            _Sub2_2

                jbclr           PFALG, 0
                goto            NoTrackZero
TrackZero_B:
                bclr                SysFlag6,weight_have
                bset                SysFlag1,ZeroFlag
                bclr                SysFlag1,NegFlag
                bclr                AutoOn_Flags,OnWeightFlag
                bclr                AutoOn_Flags,OverLoadFlag
                CLRR            CountH
                CLRR            CountL
TrackZero_C:
                jbclr           SysFlag1,SteadyFlag
                goto            TrackZero_E
                CLRR            TrackCount
                goto            TrackZero_End
TrackZero_D:
                INCR            TrackCount
                movai           2  	;5              ;movfw 	TrackZeroTimes

                RSUBAR          TrackCount
                jbset           PFALG, 0
                goto            TrackZero_End
TrackZero_E:
                CLRR            TrackCount

                call            GetZeroPoint

                call            _GetAutoOnDC

                org    	0x8d0
       	       	bset   	       	SysFlag3,4
                goto            TrackZero_End

;************************************************
NoTrackZero:
                CLRR            second
                bset            AutoOn_Flags,DispOk_Flag
                CLRR            TrackCount
                bset            SysFlag6,weight_have
                jbclr           SysFlag1,NegFlag           ;判断称重值是否为正值
                goto            TrackZero_End

                jbset           SysFlag1,ZeroFlag         ; 解锁处理,注意：要重量重新回到零后有上升沿才能解锁
                goto            TrackZero_End

                movff           TempRam3,CountH
                movff           TempRam4,CountL
                CLRR            TempRam5
                movfl           TempRam6, 20   	;movff 	TempRam6,StartCount    	; 上升沿解锁范围?(利用开机起磅重量)

                CALL            _Sub2_2
                jbset            PFALG, 0
                GOTO            TrackZero_End
NoTrackZero4:
                bclr            SysFlag4,LockFlag
                bclr            SysFlag1,ZeroFlag
   	   	   	   	   	   	;bclr  	SysFlag2,GlintOpenFlag

                movai           12
                jbset           AutoOn_Flags,OverLoadFlag
                movra           T_Auto_Off     	;movff 	T_Auto_Off,T_WeightMode
TrackZero_End:
;**************************************************
                jbclr           SysFlag4,LockFlag
                goto            JudgeLock_End

;**************************************************
MinusCount:
                bclr            SysFlag3,DspNegFlag

                jbclr           SysFlag1,NegFlag
                bset            SysFlag3,DspNegFlag                     ; 负重量显示标记
MinusCount_End:
;**************************************************
MemCount:

;..................................................
MemCount4:
                call            Real_LockCount             ;Count-lockCount
                CLRR            TempRam5
                movfl           TempRam6,05    	;movff 	TempRam6,MemRange

                CALL            _Sub2_2
                jbclr           PFALG, 0                   ;0在范围内,锁定
                goto            MemCount_End
                movff           CountH,LockCountH
                movff           CountL,LockCountL
MemCount_End:
;**************************************************
JudgeOverWeight:
                bclr            AutoOn_Flags,OverLoadFlag

                movff           TempRam3,MaxCountH
                movff           TempRam4,MaxCountL

                movff           TempRam5,CountH
                movff           TempRam6,CountL
;                call            GetRealCount

                org    	0x0902
                CALL            _Sub2_2
                jbclr            PFALG, 0
       	       	goto             OverWeight_End
                bset            AutoOn_Flags,OverLoadFlag                       ; 超重
       	       	movai            00110111b     	       	;'3'
                movra            Display4
                movai            01100000b     	       	;'r'
                movra            Display3
                movai            01100000b     	       	;'r'
                movra            Display2
                movai            11110100b     	       	;'E'
                movra            Display1
                call             Lcd_Dis_Cal
       	       	       	       	;goto             JudgeOverWeight
OverWeight_End:
;==================================================
JudgeLock:
                jbset           SysFlag1,SteadyFlag
                GOTO            JudgeLock_End

                jbclr           SysFlag1,NegFlag
                GOTO            JudgeLock_End

                jbclr           SysFlag1,ZeroFlag
                GOTO            JudgeLock_End

                jbclr           AutoOn_Flags,OverLoadFlag
                GOTO            JudgeLock_End

                bclr                SysFlag1,ZeroFlag
                bset                SysFlag4,LockFlag
                bset                AutoOn_Flags,OnWeightFlag
                movff           LockCountH,CountH
                movff           LockCountL,CountL

                CLRR            WTMemCount

                bset            SysFlag2,GlintOpenFlag                  ; 允许进入中断处理闪烁的标志
                bset                SysFlag2,GlintFlag                  ; 亮
       	       	       	       	CLRR            second

                CLRR            LCount
                CLRR            LLCount
JudgeLock_End:
                 clrr           TempRam11
                 movff           TempRam12,CountH     ;称重显示
                 movff           TempRam13,CountL

Display:

                jbset           Prog_Flow, 7
                goto            Display_weightA
                nop

                movff           TempRam11,displaycal1
                movff           TempRam12,displaycal2
                movff           TempRam13,displaycal3
                jbclr           SysFlag6,Caldis
                goto             Main_Hold
                goto            Display_cal
 ;锁定显示
Display_weightA:
                 jbset           SysFlag4,LockFlag
                 goto            Display_weightB
                 nop
       	       	CLRWDT

                 movff           TempRam12,LockCountH                  ;重量锁定
                 movff           TempRam13,LockCountL

                 jbset           SysFlag2,GlintFlag                   ;中断闪烁亮
                 goto            Display_weightB
                 jbset           SysFlag2,GlintOpenFlag
                 goto            Display_weightB
                 nop
                 call            ClrLCDBuffer
                 call            LoadDspData   	       	;LCD 全灭
                 call            Lcd_Dis
       	       	 clrr            LCDDS0
       	       	 clrr            LCDDS3
       	       	 clrr            LCDDS6
       	       	 clrr            LCDDS8
       	       	 clrr            LCDDS9
                 CLRWDT
                 goto            MainLoop


 ;称重显示
Display_weightB:
                 jbclr           AutoOn_Flags,OverLoadFlag
                 goto            MainLoop
                 nop
                 call           Display_Weight
                 call           ClrLCDBuffer
       	       	 call           Lcd_Dis
       	       	 clrr            LCDDS0
       	       	 clrr            LCDDS3
       	       	 clrr            LCDDS6
       	       	 clrr            LCDDS8
       	       	 clrr            LCDDS9
       	       	 call           Disp_To_Ram
       	       	 call           Lcd_Dis

       	       	 jbclr           keycode,0
       	       	 goto            MainLoop
       	       	 jbset           SysFlag6,weight_have
       	       	 goto            Main_Hold
       	       	 goto            MainLoop
;校正显示
Display_cal:

                 call            ClrLCDBuffer
                 CLRWDT
                 call            _Ftob
                 call            Display_Num
       	       	 call            Lcd_Dis_Cal
                 goto            MainLoop
Main_Hold:
                goto              MainLoop
                bset             OSCM,0
                bclr              OSCM,1
                bclr              OSCM,2

                bclr              ADCR0,7 ;关闭AD
                bclr              ADCR0,5 ;关闭PGA
                bclr              TPSC,4  ;关闭LDO
                movai             0x00
                movra             INTF
                bset              T0CR,7
                CLRWDT
                NOP
                stop
                nop
                nop
                nop

                bclr              T0CR,7
                bset              TPSC,4  ;开启LDO
                bset              ADCR0,5 ;开启PGA
                bset              ADCR0,7 ;开启AD
                bset              MCR,7
                CLRWDT
wait_adif:

       	       	jbset            IOP0,0
                goto              wait_end
                jbset             ADIF
                goto              wait_adif
                BCLR              INTF,6
wait2_adif:

       	       	jbset            IOP0,0
                goto              wait_end
                jbset             ADIF
                goto              wait2_adif
                BCLR              INTF,6
wait_end:
                BCLR              INTF,6
                movai       0x30
                movra       OSCM
                goto              MainLoop

Sleep_In:
       	       	call   	       	_GetAutoOnDC
       	       	;#include      	"TurnOff.asm"
;*************************************************
;关机
;**********************************************
       	       	org    	       	0x0989
goto_allstop:

       	       	bclr   	       	ADCR0,7	       	       	;关ADC
;      	       	bclr   	       	LVDCR,7
       	       	movai  	       	0x2F
       	       	movra  	       	LVDCR  	       	       	;关LVD,比较电压2.4V
       	       	bclr   	       	ADCR0,5	       	       	;关PGA
       	       	bclr   	       	TPSC,4 	       	       	;关LDO
       	       	bclr   	       	TPSC,3 	       	       	;关基准电压
       	       	bclr   	       	T0CR,7 	       	       	;关T0
       	       	bclr   	       	T1CR,7 	       	       	;关T1
       	       	movai  	       	0x00
       	       	movra  	       	TPSC
       	       	movra  	       	ADCR0
       	       	movra  	       	ADCR1
       	       	movra  	       	LCDIOS2	       	       	;LCD引脚改为IO
       	       	movra  	       	LCDIOS1


       	       	bclr   	       	LCDCR0,7               	;关LCD
       	       	bclr   	       	PUMP,6                 	;关PUMP
       	       	bclr   	       	OSCM,0 	       	       	;高频振荡器休眠时停振
       	       	bset   	       	OSCM,1 	       	       	;低频振荡器始终工作
       	       	bset   	       	OSCM,2 	       	       	;低频时钟作为系统时钟

       	       	movai  	       	0x00
       	       	movra  	       	PUP1   	       	       	;P1上拉无效
       	       	movra  	       	PUP2   	       	       	;P2上拉无效
       	       	movra  	       	PUP3   	       	       	;P3上拉无效
       	       	movai  	       	0x00
       	       	movra  	       	IOP1
       	       	movra  	       	IOP2
       	       	movra  	       	IOP3
       	       	movai           0xFF
       	       	movra  	       	OEP1   	       	       	;P1全输出低
       	       	movra  	       	OEP2   	       	       	;P2全输出低
       	       	movra  	       	OEP3   	       	       	;P3全输出低

goto_allstop1:
       	       	movai  	       	0xFE
       	       	movra  	       	OEP0   	       	       	;p00 to input
       	       	movai  	       	0x01
       	       	movra  	       	IOP0   	       	       	;P01-P07输出低
       	       	movai  	       	0x01
       	       	movra  	       	PUP0   	       	       	;set p00 to pullup
goto_allstop2:
       	       	bset   	       	MCR,7  	       	       	;GIE=1
       	       	movai  	       	0x04
       	       	movra  	       	INTE   	       	       	;INT0IE=1
       	       	clrr   	       	INTF
       	       	clrwdt
       	       	NOP

       	       	STOP   	       	       	       	       	;WDT能唤醒;INT0能唤醒进中断
       	       	nop    	       	       	       	       	;唤醒后系统以低频工作
       	       	nop
       	       	nop

       	       	bset   	       	OSCM,0 	       	       	;高频振荡器始终工作
       	       	bset   	       	OSCM,1 	       	       	;低频振荡器始终工作

       	       	JBCLR  	       	MCR,5
       	       	goto   	       	WDTWankenUp    	       	;发生WDT溢出

;*******************************
       	       	clrr   	       	INTF
       	       	clrr   	       	INTE
       	       	jbclr  	       	IOP0,0
       	       	goto   	       	goto_allstop2
       	       	nop
       	       	nop
       	       	nop
       	       	nop
       	       	MOVAI  	       	0X20
       	       	CALL   	       	delay4
       	       	jbclr  	       	IOP0,0
       	       	goto   	       	goto_allstop2
       	       	goto   	       	SysInit1

;**************************************************
;****************@@@@@@@@@@@@@@@@@@****************
;**************************************************

;...............................................
       	       	end

