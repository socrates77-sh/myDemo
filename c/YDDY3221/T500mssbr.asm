;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:42 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"T500mssbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_CHGOverSbr
	extern	_CloseDisCHG
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
	global	_T500msSbr

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_T500mssbr_0	udata
r0x1009	res	1
r0x100A	res	1
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
code_T500mssbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _T500msSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _CHGOverSbr
;   _CHGOverSbr
;   _CloseDisCHG
;   _CHGOverSbr
;   _CHGOverSbr
;   _CloseDisCHG
;2 compiler assigned registers:
;   r0x1009
;   r0x100A
;; Starting pCode block
_T500msSbr	;Function start
; 2 exit points
;	.line	8; "T500mssbr.c"	FF250 = !FF250;
	CLRR	r0x1009
	JBCLR	_Flag1,6
	INCR	r0x1009
	MOVAR	r0x1009
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1009
	MOVRA	r0x100A
;;100	MOVAR	r0x100A
	RRAR	r0x1009
	JBSET	STATUS,0
	BCLR	_Flag1,6
	JBCLR	STATUS,0
	BSET	_Flag1,6
;	.line	9; "T500mssbr.c"	if (!FF250) return;
	JBCLR	_Flag1,6
	GOTO	_00106_DS_
	GOTO	_00141_DS_
_00106_DS_
;	.line	10; "T500mssbr.c"	FFlash = !FFlash;
	CLRR	r0x1009
	JBCLR	_Flag1,2
	INCR	r0x1009
	MOVAR	r0x1009
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1009
	MOVRA	r0x100A
;;99	MOVAR	r0x100A
	RRAR	r0x1009
	JBSET	STATUS,0
	BCLR	_Flag1,2
	JBCLR	STATUS,0
	BSET	_Flag1,2
;	.line	11; "T500mssbr.c"	if (!FT5s)
	JBCLR	_Flag2,3
	GOTO	_00110_DS_
;	.line	13; "T500mssbr.c"	if (++PwrON5s >= 6) FT5s = 1;
	INCR	_PwrON5s
;;unsigned compare: left < lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_PwrON5s
	JBSET	STATUS,0
	GOTO	_00108_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_Flag2,3
_00108_DS_
;	.line	14; "T500mssbr.c"	return;
	GOTO	_00141_DS_
_00110_DS_
;	.line	16; "T500mssbr.c"	if (BatLowCnt == 0)
	MOVAI	0x00
	ORAR	_BatLowCnt
	JBSET	STATUS,2
	GOTO	_00114_DS_
;	.line	18; "T500mssbr.c"	if (FDisBatLow)
	JBSET	_Flag2,7
	GOTO	_00115_DS_
;	.line	20; "T500mssbr.c"	FDisBatLow = 0;
	BCLR	_Flag2,7
;	.line	21; "T500mssbr.c"	pLed1C = 0;
	BCLR	_OEP1bits,4
;	.line	22; "T500mssbr.c"	pLed2C = 0;
	BCLR	_OEP1bits,5
;	.line	23; "T500mssbr.c"	pLedCC = 1;
	BSET	_OEP0bits,4
	GOTO	_00115_DS_
_00114_DS_
;	.line	26; "T500mssbr.c"	else --BatLowCnt;
	DECR	_BatLowCnt
_00115_DS_
;	.line	28; "T500mssbr.c"	if (FVIN)
	JBSET	_Flag1,7
	GOTO	_00129_DS_
;	.line	30; "T500mssbr.c"	FPwr = 0;
	BCLR	_Flag1,0
;	.line	31; "T500mssbr.c"	pDisCHG = 0;
	BCLR	_IOP1bits,2
;	.line	32; "T500mssbr.c"	PWM0OE = 0;
	BCLR	_T0CRbits,6
;	.line	33; "T500mssbr.c"	TStop5s = 0;
	CLRR	_TStop5s
;	.line	34; "T500mssbr.c"	FStop = 0;
	BCLR	_Flag2,1
;	.line	35; "T500mssbr.c"	if (FCHGOver) return;
	JBSET	_Flag1,4
	GOTO	_00117_DS_
	GOTO	_00141_DS_
_00117_DS_
;	.line	36; "T500mssbr.c"	if (FCHGI)
	JBSET	_Flag3,1
	GOTO	_00121_DS_
;	.line	38; "T500mssbr.c"	if (++CHGI100ms1min >=120) CHGOverSbr();
	INCR	_CHGI100ms1min
;;unsigned compare: left < lit(0x78=120), size=1
	MOVAI	0x78
	RSUBAR	_CHGI100ms1min
	JBSET	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_CHGOverSbr
	GOTO	_00122_DS_
_00121_DS_
;	.line	40; "T500mssbr.c"	else CHGI100ms1min = 0;
	CLRR	_CHGI100ms1min
_00122_DS_
;	.line	41; "T500mssbr.c"	if (FCHGV)
	JBSET	_Flag3,0
	GOTO	_00126_DS_
;	.line	43; "T500mssbr.c"	if (++CHGV4d2T1min >= 120) CHGOverSbr();
	INCR	_CHGV4d2T1min
;;unsigned compare: left < lit(0x78=120), size=1
	MOVAI	0x78
	RSUBAR	_CHGV4d2T1min
	JBSET	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_CHGOverSbr
	GOTO	_00127_DS_
_00126_DS_
;	.line	45; "T500mssbr.c"	else CHGV4d2T1min = 0;
	CLRR	_CHGV4d2T1min
_00127_DS_
;	.line	46; "T500mssbr.c"	return;
	GOTO	_00141_DS_
_00129_DS_
;	.line	49; "T500mssbr.c"	PWM1OE = 0;
	BCLR	_T1CRbits,6
;	.line	50; "T500mssbr.c"	FCHGI = 0;
	BCLR	_Flag3,1
;	.line	51; "T500mssbr.c"	FCHGV = 0;
	BCLR	_Flag3,0
;	.line	52; "T500mssbr.c"	CHGV4d2T1min = 0;
	CLRR	_CHGV4d2T1min
;	.line	53; "T500mssbr.c"	CHGI100ms1min = 0;
	CLRR	_CHGI100ms1min
;	.line	55; "T500mssbr.c"	if (FPwr)
	JBSET	_Flag1,0
	GOTO	_00136_DS_
;	.line	57; "T500mssbr.c"	TStop5s = 0;
	CLRR	_TStop5s
;	.line	58; "T500mssbr.c"	FStop = 0;
	BCLR	_Flag2,1
;	.line	59; "T500mssbr.c"	if (FILow)
	JBSET	_Flag1,5
	GOTO	_00133_DS_
;	.line	61; "T500mssbr.c"	if (++ILow0A1Dly10s >= 20) CloseDisCHG();
	INCR	_ILow0A1Dly10s
;;unsigned compare: left < lit(0x14=20), size=1
	MOVAI	0x14
	RSUBAR	_ILow0A1Dly10s
	JBSET	STATUS,0
	GOTO	_00134_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_CloseDisCHG
	GOTO	_00134_DS_
_00133_DS_
;	.line	63; "T500mssbr.c"	else ILow0A1Dly10s = 0;
	CLRR	_ILow0A1Dly10s
_00134_DS_
;	.line	64; "T500mssbr.c"	return;
	GOTO	_00141_DS_
_00136_DS_
;	.line	66; "T500mssbr.c"	FPwr = 0;
	BCLR	_Flag1,0
;	.line	67; "T500mssbr.c"	pDisCHG = 0;
	BCLR	_IOP1bits,2
;	.line	68; "T500mssbr.c"	PWM0OE = 0;
	BCLR	_T0CRbits,6
;	.line	69; "T500mssbr.c"	if (pLedW) return;
	JBSET	_IOP0bits,1
	GOTO	_00138_DS_
	GOTO	_00141_DS_
_00138_DS_
;	.line	71; "T500mssbr.c"	if (++TStop5s >= 10) FStop = 1;
	INCR	_TStop5s
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_TStop5s
	JBSET	STATUS,0
	GOTO	_00141_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_Flag2,1
_00141_DS_
	RETURN	
; exit point of _T500msSbr


;	code size estimation:
;	  116+    0 =   116 instructions (  232 byte)

	end
