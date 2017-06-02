;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.3 (Jul 18 2013) (MINGW32)
; This file was generated Thu Dec 12 11:10:13 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"InitRstSbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_ANSELbits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_KBIMbits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_LVDCRbits
	extern	_OSCMbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ABuf
	extern	_StatusBuf
	extern	_Keycode
	extern	_DisplayMode
	extern	_MasterTime_1ms
	extern	_MasterTime_10ms
	extern	_MasterTime_100ms
	extern	_MasterTime_1s
	extern	_sleeptime
	extern	_key_cnt
	extern	_key_time
	extern	_key_press_time
	extern	_short_press_time
	extern	_BAT_avgAD
	extern	_Load_avgAD
	extern	_Last_BATAD
	extern	_Load_avgAD2
	extern	_NoLoadCount
	extern	_ZNB602Register
	extern	_Flag
	extern	_Flag1
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_STATUS
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_ANSEL
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_KBIM
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_LVDCR
	extern	_OSCM
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_OSCAL

	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_InitialSys

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_InitRstSbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitialSys	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitialSys	;Function start
; 2 exit points
;	.line	8; "InitRstSbr.c"	OEP0 = 0xff;
	MOVAI	0xff
	MOVRA	_OEP0
;	.line	9; "InitRstSbr.c"	OEP1 = 0xff; // 设置方向
	MOVAI	0xff
	MOVRA	_OEP1
;	.line	10; "InitRstSbr.c"	PUP0 = 0x00;
	CLRR	_PUP0
;	.line	11; "InitRstSbr.c"	PUP1 = 0x00; // 设置上拉电阻
	CLRR	_PUP1
;	.line	12; "InitRstSbr.c"	IOP0 = 0;
	CLRR	_IOP0
;	.line	13; "InitRstSbr.c"	IOP1 = 0;    // 设置数据
	CLRR	_IOP1
;	.line	14; "InitRstSbr.c"	MCR = 0x05; // 设置外部中断方式
	MOVAI	0x05
	MOVRA	_MCR
;	.line	15; "InitRstSbr.c"	ANSEL = 0x00; // 设置IO口是否为模拟输入口 做AD用
	CLRR	_ANSEL
;	.line	16; "InitRstSbr.c"	T0CR = 0x00; //设置定时器0
	CLRR	_T0CR
;	.line	17; "InitRstSbr.c"	T1LOAD = 249; // 设置定时器以及PWM周期
	MOVAI	0xf9
	MOVRA	_T1LOAD
;	.line	18; "InitRstSbr.c"	T0DATA = 12;
	MOVAI	0x0c
	MOVRA	_T0DATA
;	.line	19; "InitRstSbr.c"	T1CR = 0x00; // 设置定时器1
	CLRR	_T1CR
;	.line	20; "InitRstSbr.c"	T1LOAD = 159;
	MOVAI	0x9f
	MOVRA	_T1LOAD
;	.line	21; "InitRstSbr.c"	T1DATA = 25;
	MOVAI	0x19
	MOVRA	_T1DATA
;	.line	22; "InitRstSbr.c"	ADCR0 = 0x0f;
	MOVAI	0x0f
	MOVRA	_ADCR0
;	.line	23; "InitRstSbr.c"	ADCR1 = 0x03; // 选择VDD做参考
	MOVAI	0x03
	MOVRA	_ADCR1
;	.line	24; "InitRstSbr.c"	TC0EN = 1;
	BSET	_T0CRbits,7
;	.line	25; "InitRstSbr.c"	T0IE = 1;
	BSET	_INTEbits,0
;	.line	26; "InitRstSbr.c"	TC1EN = 1;
	BSET	_T1CRbits,7
;	.line	27; "InitRstSbr.c"	PWM0OE = 1;
	BSET	_T0CRbits,6
	RETURN	
; exit point of _InitialSys


;	code size estimation:
;	   30+    0 =    30 instructions (   60 byte)

	end
