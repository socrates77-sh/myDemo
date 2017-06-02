;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:45 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"initSys.c"
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
	extern	_Flag1
	extern	_Flag2
	extern	_Flag3
	extern	_Buf0
	extern	_Buf1
	extern	_Buf2
	extern	_ADCnt
	extern	_ADVBatBuf
	extern	_ADVOutBuf
	extern	_ADIOutBuf
	extern	_ADVBatMin
	extern	_ADVBatMax
	extern	_ADVOut
	extern	_ADVBat
	extern	_ADIOut
	extern	_ADVOutMin
	extern	_ADVOutMax
	extern	_ADIMin
	extern	_ADIMax
	extern	_T500ms
	extern	_KeyCnt
	extern	_KeyLongth
	extern	_BatStatus
	extern	_DispCnt
	extern	_DisPWM
	extern	_CHGPWM
	extern	_VinLowCnt
	extern	_VinHiCnt
	extern	_ILow0A1Dly10s
	extern	_TStop5s
	extern	_PwrON5s
	extern	_CHGV4d2T1min
	extern	_CHGI100ms1min
	extern	_BatLowCnt
	extern	_LoadCnt
	extern	_TSec
	extern	_TMin
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
	global	_InitalRAM
	global	_CHGPinCHKSbr
	global	_CloseDisCHG

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
code_initSys	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _CloseDisCHG	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_CloseDisCHG	;Function start
; 2 exit points
;	.line	84; "initSys.c"	FBatLow3d2 = 0;
	BCLR	_Flag3,3
;	.line	85; "initSys.c"	FDisBatLow = 0;
	BCLR	_Flag2,7
;	.line	86; "initSys.c"	FPwr = 0;
	BCLR	_Flag1,0
;	.line	87; "initSys.c"	pPwr = 0;
	BCLR	_IOP1bits,0
;	.line	88; "initSys.c"	pDisCHG = 0;
	BCLR	_IOP1bits,2
;	.line	89; "initSys.c"	PWM0OE = 0;
	BCLR	_T0CRbits,6
	RETURN	
; exit point of _CloseDisCHG

;***
;  pBlock Stats: dbName = C
;***
;entry:  _CHGPinCHKSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_CHGPinCHKSbr	;Function start
; 2 exit points
;	.line	62; "initSys.c"	if (!pVIN)
	JBCLR	_IOP1bits,1
	GOTO	_00118_DS_
;	.line	64; "initSys.c"	VinHiCnt = 0;
	CLRR	_VinHiCnt
;	.line	65; "initSys.c"	if (++VinLowCnt >= 20)
	INCR	_VinLowCnt
;;unsigned compare: left < lit(0x14=20), size=1
	MOVAI	0x14
	RSUBAR	_VinLowCnt
	JBSET	STATUS,0
	GOTO	_00120_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	67; "initSys.c"	FVIN = 0;
	BCLR	_Flag1,7
;	.line	68; "initSys.c"	FCHGOver = 0;
	BCLR	_Flag1,4
	GOTO	_00120_DS_
_00118_DS_
;	.line	73; "initSys.c"	VinLowCnt = 0;
	CLRR	_VinLowCnt
;	.line	74; "initSys.c"	if (++VinHiCnt >= 20)
	INCR	_VinHiCnt
;;unsigned compare: left < lit(0x14=20), size=1
	MOVAI	0x14
	RSUBAR	_VinHiCnt
	JBSET	STATUS,0
	GOTO	_00120_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	76; "initSys.c"	FBatLow3d2 = 0;
	BCLR	_Flag3,3
;	.line	77; "initSys.c"	FVIN = 1;
	BSET	_Flag1,7
_00120_DS_
	RETURN	
; exit point of _CHGPinCHKSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitalRAM	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitalRAM	;Function start
; 2 exit points
	clrr FSR0
InitalRAM0:
	clrr INDF0
	incr FSR0
	movai 0x7F
	rsubar FSR0
	jbset STATUS,2
	goto InitalRAM0
	
;	.line	57; "initSys.c"	T1IE = 1;
	BSET	_INTEbits,1
	RETURN	
; exit point of _InitalRAM

;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitialSys	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitialSys	;Function start
; 2 exit points
;	.line	10; "initSys.c"	pDisCHG = 0;
	BCLR	_IOP1bits,2
;	.line	11; "initSys.c"	pLedW = 0;
	BCLR	_IOP0bits,1
;	.line	12; "initSys.c"	pPwr = 0;
	BCLR	_IOP1bits,0
;	.line	13; "initSys.c"	pCHG = 0;
	BCLR	_IOP1bits,3
;	.line	14; "initSys.c"	OEP0 = 0xf2;
	MOVAI	0xf2
	MOVRA	_OEP0
;	.line	15; "initSys.c"	OEP1 = 0x8d;
	MOVAI	0x8d
	MOVRA	_OEP1
;	.line	16; "initSys.c"	PUP0 = 0;
	CLRR	_PUP0
;	.line	17; "initSys.c"	PUP1 = 0x40;
	MOVAI	0x40
	MOVRA	_PUP1
;	.line	18; "initSys.c"	ANSEL = 0x0d;
	MOVAI	0x0d
	MOVRA	_ANSEL
;	.line	23; "initSys.c"	T0CR = 0x8f;
	MOVAI	0x8f
	MOVRA	_T0CR
;	.line	24; "initSys.c"	T0LOAD = CT_1ms;
	MOVAI	0x7d
	MOVRA	_T0LOAD
;	.line	25; "initSys.c"	T0DATA = 1;
	MOVAI	0x01
	MOVRA	_T0DATA
;	.line	29; "initSys.c"	T1CR = 0x8f;
	MOVAI	0x8f
	MOVRA	_T1CR
;	.line	30; "initSys.c"	T1LOAD = CT_1ms;
	MOVAI	0x7d
	MOVRA	_T1LOAD
;	.line	31; "initSys.c"	T1DATA = 0;
	CLRR	_T1DATA
;	.line	35; "initSys.c"	KBIM = 0;
	CLRR	_KBIM
;	.line	36; "initSys.c"	MCR = 8;                   
	MOVAI	0x08
	MOVRA	_MCR
;	.line	37; "initSys.c"	INTF = 0;
	CLRR	_INTF
;	.line	38; "initSys.c"	OSCM = 0;
	CLRR	_OSCM
;	.line	39; "initSys.c"	ADCR1 = CADRefVDD;
	MOVAI	0x03
	MOVRA	_ADCR1
	RETURN	
; exit point of _InitialSys


;	code size estimation:
;	   61+    0 =    61 instructions (  122 byte)

	end
