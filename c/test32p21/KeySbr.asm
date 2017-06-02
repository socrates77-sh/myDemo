;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:44:49 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"KeySbr.c"
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
	global	_Key_Scan
	global	_Key_Deal

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
code_KeySbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _Key_Deal	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Key_Deal	;Function start
; 2 exit points
;	.line	50; "KeySbr.c"	if(key_flag)
	JBSET	_Flag,4
	GOTO	_00130_DS_
;;unsigned compare: left < lit(0x14=20), size=1
;	.line	52; "KeySbr.c"	if(key_press_time >= 20) //大于2s
	MOVAI	0x14
	RSUBAR	_key_press_time
	JBSET	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	54; "KeySbr.c"	key_flag = 0;
	BCLR	_Flag,4
;	.line	55; "KeySbr.c"	Keycode = LONGKEY;  
	MOVAI	0x02
	MOVRA	_Keycode
	GOTO	_00132_DS_
_00127_DS_
;	.line	59; "KeySbr.c"	else if(key_flag_bak == 0)// 按键已释放
	JBCLR	_Flag,3
	GOTO	_00132_DS_
;	.line	61; "KeySbr.c"	key_flag = 0;
	BCLR	_Flag,4
;	.line	62; "KeySbr.c"	Keycode = SHORTKEY;
	MOVAI	0x01
	MOVRA	_Keycode
	GOTO	_00132_DS_
_00130_DS_
;	.line	70; "KeySbr.c"	Keycode = NOKEY;
	CLRR	_Keycode
_00132_DS_
	RETURN	
; exit point of _Key_Deal

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Key_Scan	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Key_Scan	;Function start
; 2 exit points
;	.line	11; "KeySbr.c"	if(!KEY_I) //有按键
	JBCLR	_IOP1bits,6
	GOTO	_00117_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x33=51), size=1
;	.line	13; "KeySbr.c"	if(key_time <= KEY_EFFECT) //去抖
	MOVAI	0x33
	RSUBAR	_key_time
	JBCLR	STATUS,0
	GOTO	_00119_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	15; "KeySbr.c"	key_time++;
	INCR	_key_time
;	.line	16; "KeySbr.c"	if(key_time == KEY_EFFECT)
	MOVAR	_key_time
	XORAI	0x32
	JBSET	STATUS,2
	GOTO	_00119_DS_
;	.line	18; "KeySbr.c"	if(!key_flag_bak)  //赋值
	JBCLR	_Flag,3
	GOTO	_00119_DS_
;	.line	20; "KeySbr.c"	key_flag = 1;        //按键有效标志
	BSET	_Flag,4
;	.line	21; "KeySbr.c"	key_flag_bak = 1;    //松开时清除标志
	BSET	_Flag,3
;	.line	22; "KeySbr.c"	key_press_time = 0;  //有效按键计数   
	CLRR	_key_press_time
	GOTO	_00119_DS_
_00117_DS_
;	.line	29; "KeySbr.c"	if(key_time)
	MOVAI	0x00
	ORAR	_key_time
	JBCLR	STATUS,2
	GOTO	_00119_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6=6), size=1
;	.line	31; "KeySbr.c"	if(key_time > 5)
	MOVAI	0x06
	RSUBAR	_key_time
	JBSET	STATUS,0
	GOTO	_00112_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	33; "KeySbr.c"	key_time-=3;
	MOVAI	0xfd
	ADDRA	_key_time
	GOTO	_00119_DS_
_00112_DS_
;	.line	37; "KeySbr.c"	key_time = 0;
	CLRR	_key_time
;	.line	38; "KeySbr.c"	key_flag_bak = 0;
	BCLR	_Flag,3
_00119_DS_
	RETURN	
; exit point of _Key_Scan


;	code size estimation:
;	   49+    0 =    49 instructions (   98 byte)

	end
