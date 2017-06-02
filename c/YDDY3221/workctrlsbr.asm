;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:43 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"workctrlsbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_DisCHGSbr
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
	global	_CHGOverSbr
	global	_PwrInSbr
	global	_WorkCtrlSbr

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
code_workctrlsbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _CHGOverSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_CHGOverSbr	;Function start
; 2 exit points
;	.line	58; "workctrlsbr.c"	FCHGOver = 1;
	BSET	_Flag1,4
;	.line	59; "workctrlsbr.c"	PWM1OE = 0;
	BCLR	_T1CRbits,6
;	.line	60; "workctrlsbr.c"	pCHG = 0;
	BCLR	_IOP1bits,3
	RETURN	
; exit point of _CHGOverSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _PwrInSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _CHGOverSbr
;   _CHGOverSbr
;; Starting pCode block
_PwrInSbr	;Function start
; 2 exit points
;	.line	21; "workctrlsbr.c"	pDisCHG = 0;
	BCLR	_IOP1bits,2
;	.line	22; "workctrlsbr.c"	PWM0OE = 0;
	BCLR	_T0CRbits,6
;	.line	23; "workctrlsbr.c"	pPwr = 0;
	BCLR	_IOP1bits,0
;	.line	24; "workctrlsbr.c"	FPwr = 0;
	BCLR	_Flag1,0
;	.line	25; "workctrlsbr.c"	FILow = 0;
	BCLR	_Flag1,5
;	.line	26; "workctrlsbr.c"	if (FCHGOver) {CHGOverSbr();return;}
	JBSET	_Flag1,4
	GOTO	_00116_DS_
	CALL	_CHGOverSbr
_00116_DS_
	RETURN	
; exit point of _PwrInSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _WorkCtrlSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _PwrInSbr
;   _DisCHGSbr
;   _PwrInSbr
;   _DisCHGSbr
;; Starting pCode block
_WorkCtrlSbr	;Function start
; 2 exit points
;	.line	13; "workctrlsbr.c"	if (FVIN) {PwrInSbr();return;}
	JBSET	_Flag1,7
	GOTO	_00106_DS_
	CALL	_PwrInSbr
	GOTO	_00109_DS_
_00106_DS_
;	.line	14; "workctrlsbr.c"	pCHG = 0;
	BCLR	_IOP1bits,3
;	.line	15; "workctrlsbr.c"	FCHGOver = 0;
	BCLR	_Flag1,4
;	.line	16; "workctrlsbr.c"	if (FPwr) {DisCHGSbr();return;}
	JBSET	_Flag1,0
	GOTO	_00109_DS_
	CALL	_DisCHGSbr
_00109_DS_
	RETURN	
; exit point of _WorkCtrlSbr


;	code size estimation:
;	   23+    0 =    23 instructions (   46 byte)

	end
