;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:45 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"yddy3221.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_InitialSys
	extern	_InitalRAM
	extern	_CHGPinCHKSbr
	extern	_ADCSbr
	extern	_WorkCtrlSbr
	extern	_T500msSbr
	extern	_DisplaySbr
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
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_Flag1
	global	_Flag2
	global	_Flag3
	global	_Buf0
	global	_Buf1
	global	_Buf2
	global	_ADCnt
	global	_ADVBatBuf
	global	_ADVOutBuf
	global	_ADIOutBuf
	global	_ADVBatMin
	global	_ADVBatMax
	global	_ADVOut
	global	_ADVBat
	global	_ADIOut
	global	_ADVOutMin
	global	_ADVOutMax
	global	_ADIMin
	global	_ADIMax
	global	_T500ms
	global	_KeyCnt
	global	_KeyLongth
	global	_BatStatus
	global	_DispCnt
	global	_DisPWM
	global	_CHGPWM
	global	_VinLowCnt
	global	_VinHiCnt
	global	_ILow0A1Dly10s
	global	_TStop5s
	global	_PwrON5s
	global	_CHGV4d2T1min
	global	_CHGI100ms1min
	global	_BatLowCnt
	global	_LoadCnt
	global	_TSec
	global	_TMin

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_yddy3221_0	udata
_Flag1	res	1

UD_yddy3221_1	udata
_Flag2	res	1

UD_yddy3221_2	udata
_Flag3	res	1

UD_yddy3221_3	udata
_Buf0	res	1

UD_yddy3221_4	udata
_Buf1	res	1

UD_yddy3221_5	udata
_Buf2	res	1

UD_yddy3221_6	udata
_ADCnt	res	1

UD_yddy3221_7	udata
_ADVBatBuf	res	2

UD_yddy3221_8	udata
_ADVOutBuf	res	2

UD_yddy3221_9	udata
_ADIOutBuf	res	2

UD_yddy3221_10	udata
_ADVBatMin	res	1

UD_yddy3221_11	udata
_ADVBatMax	res	1

UD_yddy3221_12	udata
_ADVOut	res	1

UD_yddy3221_13	udata
_ADVBat	res	1

UD_yddy3221_14	udata
_ADIOut	res	1

UD_yddy3221_15	udata
_ADVOutMin	res	1

UD_yddy3221_16	udata
_ADVOutMax	res	1

UD_yddy3221_17	udata
_ADIMin	res	1

UD_yddy3221_18	udata
_ADIMax	res	1

UD_yddy3221_19	udata
_T500ms	res	1

UD_yddy3221_20	udata
_KeyCnt	res	1

UD_yddy3221_21	udata
_KeyLongth	res	1

UD_yddy3221_22	udata
_BatStatus	res	1

UD_yddy3221_23	udata
_DispCnt	res	1

UD_yddy3221_24	udata
_DisPWM	res	1

UD_yddy3221_25	udata
_CHGPWM	res	1

UD_yddy3221_26	udata
_VinLowCnt	res	1

UD_yddy3221_27	udata
_VinHiCnt	res	1

UD_yddy3221_28	udata
_ILow0A1Dly10s	res	1

UD_yddy3221_29	udata
_TStop5s	res	1

UD_yddy3221_30	udata
_PwrON5s	res	1

UD_yddy3221_31	udata
_CHGV4d2T1min	res	1

UD_yddy3221_32	udata
_CHGI100ms1min	res	1

UD_yddy3221_33	udata
_BatLowCnt	res	1

UD_yddy3221_34	udata
_LoadCnt	res	1

UD_yddy3221_35	udata
_TSec	res	1

UD_yddy3221_36	udata
_TMin	res	1

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
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_yddy3221	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _InitialSys
;   _InitalRAM
;   _CHGPinCHKSbr
;   _DisplaySbr
;   _ADCSbr
;   _WorkCtrlSbr
;   _T500msSbr
;   _InitialSys
;   _InitalRAM
;   _CHGPinCHKSbr
;   _DisplaySbr
;   _ADCSbr
;   _WorkCtrlSbr
;   _T500msSbr
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	19; "yddy3221.c"	INTE = 0;  		//¹ØÖÐ¶Ï
	CLRR	_INTE
	clrwdt
;	.line	21; "yddy3221.c"	InitialSys();
	CALL	_InitialSys
;	.line	22; "yddy3221.c"	InitalRAM();
	CALL	_InitalRAM
;	.line	23; "yddy3221.c"	GIE = 1;
	BSET	_MCRbits,7
_00114_DS_
;	.line	27; "yddy3221.c"	if (FStop)
	JBSET	_Flag2,1
	GOTO	_00106_DS_
;	.line	29; "yddy3221.c"	INTE = 0;INT1IE = 1;KBIM6 = 1;KBIE = 1;
	CLRR	_INTE
	BSET	_INTEbits,3
	BSET	_KBIMbits,6
	BSET	_INTEbits,4
;	.line	30; "yddy3221.c"	pLed1 = 1;pLed2 = 1;pLedC = 1;
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_OEP0bits,4
;	.line	31; "yddy3221.c"	pLed1C = 1;pLed2C = 1;pLedCC = 1;
	BSET	_OEP1bits,4
	BSET	_OEP1bits,5
	BSET	_OEP0bits,4
;	.line	32; "yddy3221.c"	pPwr = 0;pCHG = 0;pKey = 1;
	BCLR	_IOP1bits,0
	BCLR	_IOP1bits,3
	BSET	_IOP1bits,6
	nop
	nop
	nop
	stop
	nop
	nop
	nop
;	.line	40; "yddy3221.c"	FStop = 0;INT1IE = 0;T1IE = 1;
	BCLR	_Flag2,1
	BCLR	_INTEbits,3
	BSET	_INTEbits,1
_00106_DS_
;	.line	43; "yddy3221.c"	if (F1ms)
	JBSET	_Flag2,2
	GOTO	_00114_DS_
;	.line	45; "yddy3221.c"	F1ms = 0;
	BCLR	_Flag2,2
	clrwdt
;	.line	47; "yddy3221.c"	CHGPinCHKSbr();
	CALL	_CHGPinCHKSbr
;	.line	48; "yddy3221.c"	DisplaySbr();
	CALL	_DisplaySbr
;	.line	49; "yddy3221.c"	ADCSbr();
	CALL	_ADCSbr
;	.line	50; "yddy3221.c"	if (ADCnt == 0) WorkCtrlSbr();		//;17*2=34ms???
	MOVAI	0x00
	ORAR	_ADCnt
	JBSET	STATUS,2
	GOTO	_00108_DS_
	CALL	_WorkCtrlSbr
_00108_DS_
;	.line	51; "yddy3221.c"	if (++T500ms >= C250ms)
	INCR	_T500ms
;;unsigned compare: left < lit(0xFA=250), size=1
	MOVAI	0xfa
	RSUBAR	_T500ms
	JBSET	STATUS,0
	GOTO	_00114_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	53; "yddy3221.c"	T500ms = 0;
	CLRR	_T500ms
;	.line	54; "yddy3221.c"	T500msSbr();
	CALL	_T500msSbr
	GOTO	_00114_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   42+    0 =    42 instructions (   84 byte)

	end
