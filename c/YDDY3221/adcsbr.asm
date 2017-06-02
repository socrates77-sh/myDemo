;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:39 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"adcsbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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
	global	_InitADC
	global	_ADVStartSbr
	global	_CalADISbr
	global	_CalADVOutSbr
	global	_CalADVBatSbr
	global	_IChkSbr
	global	_BatStatusSbr
	global	_BatChkSbr
	global	_ADCSbr

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_adcsbr_0	udata
r0x1025	res	1
r0x1024	res	1
r0x1022	res	1
r0x1023	res	1
r0x101E	res	1
r0x101F	res	1
r0x101A	res	1
r0x101B	res	1
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
code_adcsbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitADC	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitADC	;Function start
; 2 exit points
;	.line	215; "adcsbr.c"	ADVBatBuf = 0;
	CLRR	_ADVBatBuf
	CLRR	(_ADVBatBuf + 1)
;	.line	216; "adcsbr.c"	ADVOutBuf = 0;
	CLRR	_ADVOutBuf
	CLRR	(_ADVOutBuf + 1)
;	.line	217; "adcsbr.c"	ADIOutBuf = 0;
	CLRR	_ADIOutBuf
	CLRR	(_ADIOutBuf + 1)
;	.line	218; "adcsbr.c"	ADCnt = 0;
	CLRR	_ADCnt
	RETURN	
; exit point of _InitADC

;***
;  pBlock Stats: dbName = C
;***
;entry:  _ADVStartSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_ADVStartSbr	;Function start
; 2 exit points
;	.line	197; "adcsbr.c"	void ADVStartSbr(uchar chnl)
	MOVRA	_ADCR0
;	.line	200; "adcsbr.c"	ADON = 1;
	BSET	_ADCR0bits,0
;	.line	201; "adcsbr.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00215_DS_
;	.line	203; "adcsbr.c"	while (!ADEOC){}
	JBSET	_ADCR0bits,1
	GOTO	_00215_DS_
	swapar ADRH
	andai 0xf0
	movra _Buf1
	movai 0x0f
	andar ADRL
	orra _Buf1
	
	RETURN	
; exit point of _ADVStartSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _CalADISbr	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1018
;   r0x1019
;   r0x101A
;   r0x101B
;; Starting pCode block
_CalADISbr	;Function start
; 2 exit points
;	.line	178; "adcsbr.c"	if (ADCnt == 0)
	MOVAI	0x00
	ORAR	_ADCnt
	JBSET	STATUS,2
	GOTO	_00199_DS_
;	.line	180; "adcsbr.c"	ADIMin = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADIMin
;	.line	181; "adcsbr.c"	ADIMax = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADIMax
;	.line	182; "adcsbr.c"	return;
	GOTO	_00210_DS_
_00199_DS_
;	.line	184; "adcsbr.c"	if (ADCnt == 1)
	MOVAR	_ADCnt
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00205_DS_
;	.line	186; "adcsbr.c"	if (Buf1 < ADIMin) {ADIMin = Buf1;return;}
	MOVAR	_ADIMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00201_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADIMin
	GOTO	_00210_DS_
_00201_DS_
;	.line	187; "adcsbr.c"	if (Buf1 > ADIMax) {ADIMax = Buf1;return;}
	MOVAR	_Buf1
	RSUBAR	_ADIMax
	JBCLR	STATUS,0
	GOTO	_00203_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADIMax
	GOTO	_00210_DS_
_00203_DS_
;	.line	188; "adcsbr.c"	return;
	GOTO	_00210_DS_
_00205_DS_
;	.line	191; "adcsbr.c"	if (Buf1 > ADIMax) {Buf0 = ADIMax;ADIMax = Buf1;}
	MOVAR	_Buf1
	RSUBAR	_ADIMax
	JBCLR	STATUS,0
	GOTO	_00207_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADIMax
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADIMax
_00207_DS_
;	.line	192; "adcsbr.c"	if (Buf1 < ADIMin) {Buf0 = ADIMin;ADIMin = Buf1;}
	MOVAR	_ADIMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00209_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADIMin
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADIMin
_00209_DS_
;	.line	194; "adcsbr.c"	ADIOutBuf += Buf0;
	MOVAR	_Buf0
	MOVRA	r0x101A
;;1	MOVRA	r0x1018
;;1	CLRR	r0x1019
;;101	MOVAR	r0x1018
	MOVAI	0x00
	MOVRA	r0x101B
	MOVAR	r0x101A
	ADDRA	_ADIOutBuf
	MOVAR	r0x101B
	JBCLR	STATUS,0
	JZAR	r0x101B
	ADDRA	(_ADIOutBuf + 1)
_00210_DS_
	RETURN	
; exit point of _CalADISbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _CalADVOutSbr	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;; Starting pCode block
_CalADVOutSbr	;Function start
; 2 exit points
;	.line	157; "adcsbr.c"	if (ADCnt == 0)
	MOVAI	0x00
	ORAR	_ADCnt
	JBSET	STATUS,2
	GOTO	_00182_DS_
;	.line	159; "adcsbr.c"	ADVOutMin = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADVOutMin
;	.line	160; "adcsbr.c"	ADVOutMax = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADVOutMax
;	.line	161; "adcsbr.c"	return;
	GOTO	_00193_DS_
_00182_DS_
;	.line	163; "adcsbr.c"	if (ADCnt == 1)
	MOVAR	_ADCnt
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00188_DS_
;	.line	165; "adcsbr.c"	if (Buf1 < ADVOutMin) {ADVOutMin = Buf1;return;}
	MOVAR	_ADVOutMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00184_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADVOutMin
	GOTO	_00193_DS_
_00184_DS_
;	.line	166; "adcsbr.c"	if (Buf1 > ADVOutMax) {ADVOutMax = Buf1;return;}
	MOVAR	_Buf1
	RSUBAR	_ADVOutMax
	JBCLR	STATUS,0
	GOTO	_00186_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADVOutMax
	GOTO	_00193_DS_
_00186_DS_
;	.line	167; "adcsbr.c"	return;
	GOTO	_00193_DS_
_00188_DS_
;	.line	170; "adcsbr.c"	if (Buf1 > ADVOutMax) {Buf0 = ADVOutMax;ADVOutMax = Buf1;}
	MOVAR	_Buf1
	RSUBAR	_ADVOutMax
	JBCLR	STATUS,0
	GOTO	_00190_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADVOutMax
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADVOutMax
_00190_DS_
;	.line	171; "adcsbr.c"	if (Buf1 < ADVOutMin) {Buf0 = ADVOutMin;ADVOutMin = Buf1;}
	MOVAR	_ADVOutMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00192_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADVOutMin
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADVOutMin
_00192_DS_
;	.line	173; "adcsbr.c"	ADVOutBuf += Buf0;
	MOVAR	_Buf0
	MOVRA	r0x101E
;;1	MOVRA	r0x101C
;;1	CLRR	r0x101D
;;100	MOVAR	r0x101C
	MOVAI	0x00
	MOVRA	r0x101F
	MOVAR	r0x101E
	ADDRA	_ADVOutBuf
	MOVAR	r0x101F
	JBCLR	STATUS,0
	JZAR	r0x101F
	ADDRA	(_ADVOutBuf + 1)
_00193_DS_
	RETURN	
; exit point of _CalADVOutSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _CalADVBatSbr	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;; Starting pCode block
_CalADVBatSbr	;Function start
; 2 exit points
;	.line	135; "adcsbr.c"	if (ADCnt == 0)
	MOVAI	0x00
	ORAR	_ADCnt
	JBSET	STATUS,2
	GOTO	_00165_DS_
;	.line	137; "adcsbr.c"	ADVBatMin = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADVBatMin
;	.line	138; "adcsbr.c"	ADVBatMax = Buf1;
	MOVAR	_Buf1
	MOVRA	_ADVBatMax
;	.line	139; "adcsbr.c"	return;
	GOTO	_00176_DS_
_00165_DS_
;	.line	141; "adcsbr.c"	if (ADCnt == 1)
	MOVAR	_ADCnt
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00171_DS_
;	.line	143; "adcsbr.c"	if (Buf1 < ADVBatMin) {ADVBatMin = Buf1;return;}
	MOVAR	_ADVBatMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00167_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADVBatMin
	GOTO	_00176_DS_
_00167_DS_
;	.line	144; "adcsbr.c"	if (Buf1 > ADVBatMax) {ADVBatMax = Buf1;return;}
	MOVAR	_Buf1
	RSUBAR	_ADVBatMax
	JBCLR	STATUS,0
	GOTO	_00169_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf1
	MOVRA	_ADVBatMax
	GOTO	_00176_DS_
_00169_DS_
;	.line	145; "adcsbr.c"	return;
	GOTO	_00176_DS_
_00171_DS_
;	.line	148; "adcsbr.c"	if (Buf1 > ADVBatMax) {Buf0 = ADVBatMax;ADVBatMax = Buf1;}
	MOVAR	_Buf1
	RSUBAR	_ADVBatMax
	JBCLR	STATUS,0
	GOTO	_00173_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADVBatMax
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADVBatMax
_00173_DS_
;	.line	149; "adcsbr.c"	if (Buf1 < ADVBatMin) {Buf0 = ADVBatMin;ADVBatMin = Buf1;}
	MOVAR	_ADVBatMin
	RSUBAR	_Buf1
	JBCLR	STATUS,0
	GOTO	_00175_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_ADVBatMin
	MOVRA	_Buf0
	MOVAR	_Buf1
	MOVRA	_ADVBatMin
_00175_DS_
;	.line	151; "adcsbr.c"	ADVBatBuf += Buf0;
	MOVAR	_Buf0
	MOVRA	r0x1022
;;1	MOVRA	r0x1020
;;1	CLRR	r0x1021
;;99	MOVAR	r0x1020
	MOVAI	0x00
	MOVRA	r0x1023
	MOVAR	r0x1022
	ADDRA	_ADVBatBuf
	MOVAR	r0x1023
	JBCLR	STATUS,0
	JZAR	r0x1023
	ADDRA	(_ADVBatBuf + 1)
_00176_DS_
	RETURN	
; exit point of _CalADVBatSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IChkSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _CloseDisCHG
;   _CloseDisCHG
;; Starting pCode block
_IChkSbr	;Function start
; 2 exit points
;	.line	119; "adcsbr.c"	if (!pPwr) return;
	JBCLR	_IOP1bits,0
	GOTO	_00153_DS_
	GOTO	_00159_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6A=106), size=1
_00153_DS_
;	.line	121; "adcsbr.c"	if (ADIOut > COUTI_2A8)
	MOVAI	0x6a
	RSUBAR	_ADIOut
	JBSET	STATUS,0
	GOTO	_00157_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	123; "adcsbr.c"	if (++LoadCnt > 50)
	INCR	_LoadCnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x33=51), size=1
	MOVAI	0x33
	RSUBAR	_LoadCnt
	JBSET	STATUS,0
	GOTO	_00159_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	125; "adcsbr.c"	--LoadCnt;
	DECR	_LoadCnt
;	.line	126; "adcsbr.c"	CloseDisCHG();
	CALL	_CloseDisCHG
;	.line	127; "adcsbr.c"	return;
	GOTO	_00159_DS_
_00157_DS_
;	.line	130; "adcsbr.c"	else LoadCnt = 0;
	CLRR	_LoadCnt
_00159_DS_
	RETURN	
; exit point of _IChkSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _BatStatusSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_BatStatusSbr	;Function start
; 2 exit points
;	.line	104; "adcsbr.c"	if (pPwr)
	JBSET	_IOP1bits,0
	GOTO	_00142_DS_
;	.line	106; "adcsbr.c"	if (BatStatus < Buf0) BatStatus = Buf0;
	MOVAR	_Buf0
	RSUBAR	_BatStatus
	JBCLR	STATUS,0
	GOTO	_00140_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf0
	MOVRA	_BatStatus
_00140_DS_
;	.line	107; "adcsbr.c"	return;
	GOTO	_00147_DS_
_00142_DS_
;	.line	109; "adcsbr.c"	if (FVIN)
	JBSET	_Flag1,7
	GOTO	_00146_DS_
;	.line	111; "adcsbr.c"	if (BatStatus > Buf0) BatStatus = Buf0;
	MOVAR	_BatStatus
	RSUBAR	_Buf0
	JBCLR	STATUS,0
	GOTO	_00144_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAR	_Buf0
	MOVRA	_BatStatus
_00144_DS_
;	.line	112; "adcsbr.c"	return;
	GOTO	_00147_DS_
_00146_DS_
;	.line	114; "adcsbr.c"	BatStatus = Buf0;
	MOVAR	_Buf0
	MOVRA	_BatStatus
_00147_DS_
	RETURN	
; exit point of _BatStatusSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _BatChkSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;   _BatStatusSbr
;; Starting pCode block
_BatChkSbr	;Function start
; 2 exit points
;	.line	83; "adcsbr.c"	Buf0 = 0;
	CLRR	_Buf0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x8A=138), size=1
;	.line	84; "adcsbr.c"	if (ADVBat <= CBATU300) {BatStatusSbr();return;}
	MOVAI	0x8a
	RSUBAR	_ADVBat
	JBCLR	STATUS,0
	GOTO	_00125_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_BatStatusSbr
	GOTO	_00134_DS_
_00125_DS_
;	.line	86; "adcsbr.c"	++Buf0;
	MOVAI	0x01
	MOVRA	_Buf0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x93=147), size=1
;	.line	87; "adcsbr.c"	if (ADVBat <= CBATU320) {BatStatusSbr();return;}
	MOVAI	0x93
	RSUBAR	_ADVBat
	JBCLR	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_BatStatusSbr
	GOTO	_00134_DS_
_00127_DS_
;	.line	89; "adcsbr.c"	++Buf0;
	MOVAI	0x02
	MOVRA	_Buf0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xA1=161), size=1
;	.line	90; "adcsbr.c"	if (ADVBat <= CBATU350) {BatStatusSbr();return;}
	MOVAI	0xa1
	RSUBAR	_ADVBat
	JBCLR	STATUS,0
	GOTO	_00129_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_BatStatusSbr
	GOTO	_00134_DS_
_00129_DS_
;	.line	92; "adcsbr.c"	++Buf0;
	MOVAI	0x03
	MOVRA	_Buf0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xB8=184), size=1
;	.line	93; "adcsbr.c"	if (ADVBat <= CBATU400) {BatStatusSbr();return;}
	MOVAI	0xb8
	RSUBAR	_ADVBat
	JBCLR	STATUS,0
	GOTO	_00131_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_BatStatusSbr
	GOTO	_00134_DS_
_00131_DS_
;	.line	95; "adcsbr.c"	++Buf0;
	INCR	_Buf0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xBF=191), size=1
;	.line	96; "adcsbr.c"	if (ADVBat <= CBATU416) {BatStatusSbr();return;}
	MOVAI	0xbf
	RSUBAR	_ADVBat
	JBCLR	STATUS,0
	GOTO	_00133_DS_
;;genSkipc:3246: created from rifx:0022608C
	CALL	_BatStatusSbr
	GOTO	_00134_DS_
_00133_DS_
;	.line	98; "adcsbr.c"	++Buf0;
	INCR	_Buf0
;	.line	99; "adcsbr.c"	BatStatusSbr();
	CALL	_BatStatusSbr
_00134_DS_
	RETURN	
; exit point of _BatChkSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _ADCSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _ADVStartSbr
;   _CalADISbr
;   _ADVStartSbr
;   _CalADVBatSbr
;   _ADVStartSbr
;   _CalADVOutSbr
;   _InitADC
;   _IChkSbr
;   _BatChkSbr
;   _CloseDisCHG
;   _ADVStartSbr
;   _CalADISbr
;   _ADVStartSbr
;   _CalADVBatSbr
;   _ADVStartSbr
;   _CalADVOutSbr
;   _InitADC
;   _IChkSbr
;   _BatChkSbr
;   _CloseDisCHG
;2 compiler assigned registers:
;   r0x1024
;   r0x1025
;; Starting pCode block
_ADCSbr	;Function start
; 2 exit points
;	.line	19; "adcsbr.c"	ADON = 1;
	BSET	_ADCR0bits,0
;	.line	21; "adcsbr.c"	ADVStartSbr(CADIOut);
	MOVAI	0x3e
	CALL	_ADVStartSbr
;	.line	22; "adcsbr.c"	CalADISbr();
	CALL	_CalADISbr
;	.line	24; "adcsbr.c"	ADVStartSbr(CADVBat);
	MOVAI	0x0e
	CALL	_ADVStartSbr
;	.line	25; "adcsbr.c"	CalADVBatSbr();
	CALL	_CalADVBatSbr
;	.line	27; "adcsbr.c"	ADVStartSbr(CADVOut);
	MOVAI	0x2e
	CALL	_ADVStartSbr
;	.line	28; "adcsbr.c"	CalADVOutSbr();
	CALL	_CalADVOutSbr
;	.line	30; "adcsbr.c"	if (++ADCnt < 10) return;
	INCR	_ADCnt
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_ADCnt
	JBCLR	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3246: created from rifx:0022608C
	GOTO	_00119_DS_
_00106_DS_
;	.line	32; "adcsbr.c"	ADCnt = 0;
	CLRR	_ADCnt
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=0, offr=0
;	.line	33; "adcsbr.c"	ADVBat = ADVBatBuf/8;
	BCLR	STATUS,0
	RRAR	(_ADVBatBuf + 1)
	MOVRA	r0x1024
	RRAR	_ADVBatBuf
	MOVRA	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
	MOVAR	r0x1025
	MOVRA	_ADVBat
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=0, offr=0
;	.line	39; "adcsbr.c"	ADVOut = ADVOutBuf/8;
	BCLR	STATUS,0
	RRAR	(_ADVOutBuf + 1)
	MOVRA	r0x1024
	RRAR	_ADVOutBuf
	MOVRA	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
	MOVAR	r0x1025
	MOVRA	_ADVOut
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=0, offr=0
;	.line	45; "adcsbr.c"	ADIOut = ADIOutBuf/8;
	BCLR	STATUS,0
	RRAR	(_ADIOutBuf + 1)
	MOVRA	r0x1024
	RRAR	_ADIOutBuf
	MOVRA	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1025
	MOVAR	r0x1025
	MOVRA	_ADIOut
;	.line	50; "adcsbr.c"	InitADC();	
	CALL	_InitADC
;	.line	52; "adcsbr.c"	IChkSbr();
	CALL	_IChkSbr
;	.line	53; "adcsbr.c"	BatChkSbr();
	CALL	_BatChkSbr
;	.line	55; "adcsbr.c"	if (FVIN)
	JBSET	_Flag1,7
	GOTO	_00110_DS_
;;unsigned compare: left < lit(0x2=2), size=1
;	.line	57; "adcsbr.c"	if (BatStatus <	CBAT350) BatStatus = CBAT350;
	MOVAI	0x02
	RSUBAR	_BatStatus
	JBCLR	STATUS,0
	GOTO	_00108_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAI	0x02
	MOVRA	_BatStatus
_00108_DS_
;	.line	58; "adcsbr.c"	return;
	GOTO	_00119_DS_
_00110_DS_
;	.line	60; "adcsbr.c"	if (BatStatus == 0)
	MOVAI	0x00
	ORAR	_BatStatus
	JBSET	STATUS,2
	GOTO	_00115_DS_
;	.line	62; "adcsbr.c"	FBatLow3d2 = 1;
	BSET	_Flag3,3
;	.line	63; "adcsbr.c"	FBatLow3 = 1;
	BSET	_Flag3,4
;	.line	64; "adcsbr.c"	if ((FPwr)&&(BatLowCnt == 0)) CloseDisCHG();
	JBSET	_Flag1,0
	GOTO	_00112_DS_
	MOVAI	0x00
	ORAR	_BatLowCnt
	JBSET	STATUS,2
	GOTO	_00112_DS_
	CALL	_CloseDisCHG
_00112_DS_
;	.line	65; "adcsbr.c"	return;
	GOTO	_00119_DS_
_00115_DS_
;	.line	67; "adcsbr.c"	FBatLow3 = 0;
	BCLR	_Flag3,4
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
;	.line	68; "adcsbr.c"	if (BatStatus > CBAT350)
	MOVAI	0x03
	RSUBAR	_BatStatus
	JBSET	STATUS,0
	GOTO	_00117_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	70; "adcsbr.c"	FBatLow3d2 = 0;
	BCLR	_Flag3,3
;	.line	71; "adcsbr.c"	FDisBatLow = 0;
	BCLR	_Flag2,7
	GOTO	_00119_DS_
_00117_DS_
;	.line	75; "adcsbr.c"	FBatLow3d2 = 1;
	BSET	_Flag3,3
;	.line	76; "adcsbr.c"	FDisBatLow = 1;
	BSET	_Flag2,7
;	.line	77; "adcsbr.c"	BatLowCnt = 6;
	MOVAI	0x06
	MOVRA	_BatLowCnt
_00119_DS_
	RETURN	
; exit point of _ADCSbr


;	code size estimation:
;	  353+    0 =   353 instructions (  706 byte)

	end
