;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:44 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"interrupt.c"
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
	global	_int_isr

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
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x8
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _int_isr	;Function start
; 0 exit points
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	9; "interrupt.c"	if (KBIF) KBIF = 0;
	JBSET	_INTFbits,4
	GOTO	_00106_DS_
	BCLR	_INTFbits,4
_00106_DS_
;	.line	11; "interrupt.c"	if (T1IE&&T1IF)
	JBSET	_INTEbits,1
	GOTO	_00108_DS_
	JBSET	_INTFbits,1
	GOTO	_00108_DS_
;	.line	13; "interrupt.c"	T1IF = 0;
	BCLR	_INTFbits,1
;	.line	14; "interrupt.c"	F1ms = 1;
	BSET	_Flag2,2
_00108_DS_
;	.line	17; "interrupt.c"	if (T0IE&&T0IF)
	JBSET	_INTEbits,0
	GOTO	_00111_DS_
	JBSET	_INTFbits,0
	GOTO	_00111_DS_
;	.line	19; "interrupt.c"	T0IF = 0;
	BCLR	_INTFbits,0
;	.line	20; "interrupt.c"	F1ms = 1;
	BSET	_Flag2,2
_00111_DS_
;	.line	23; "interrupt.c"	if (INT1IE&&INT1IF) INT1IF = 0;
	JBSET	_INTEbits,3
	GOTO	END_OF_INTERRUPT
	JBSET	_INTFbits,3
	GOTO	END_OF_INTERRUPT
	BCLR	_INTFbits,3
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_interrupt	code

;	code size estimation:
;	   21+    0 =    21 instructions (   42 byte)

	end
