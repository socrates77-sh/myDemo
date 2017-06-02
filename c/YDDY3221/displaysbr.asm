;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:41 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"displaysbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_KeySbr
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
	global	_Led1Ligt
	global	_Led2Ligt
	global	_Led3Ligt
	global	_Led4Ligt
	global	_DisplaySbr

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
code_displaysbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _DisplaySbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _KeySbr
;   _Led1Ligt
;   _Led1Ligt
;   _Led2Ligt
;   _Led2Ligt
;   _Led3Ligt
;   _Led3Ligt
;   _Led4Ligt
;   _Led4Ligt
;   _Led4Ligt
;   _KeySbr
;   _Led1Ligt
;   _Led1Ligt
;   _Led2Ligt
;   _Led2Ligt
;   _Led3Ligt
;   _Led3Ligt
;   _Led4Ligt
;   _Led4Ligt
;   _Led4Ligt
;; Starting pCode block
_DisplaySbr	;Function start
; 2 exit points
;	.line	33; "displaysbr.c"	pLed1C = 0;
	BCLR	_OEP1bits,4
;	.line	34; "displaysbr.c"	pLed2C = 0;
	BCLR	_OEP1bits,5
;	.line	35; "displaysbr.c"	pLedCC = 1;
	BSET	_OEP0bits,4
;	.line	37; "displaysbr.c"	if (++DispCnt == 5) {KeySbr();return;}
	INCR	_DispCnt
	MOVAR	_DispCnt
	XORAI	0x05
	JBSET	STATUS,2
	GOTO	_00122_DS_
	CALL	_KeySbr
	GOTO	_00181_DS_
_00122_DS_
;	.line	39; "displaysbr.c"	FLight = 0;
	BCLR	_Flag2,6
;	.line	40; "displaysbr.c"	if (!FT5s)
	JBCLR	_Flag2,3
	GOTO	_00136_DS_
;	.line	42; "displaysbr.c"	if (FFlash) FLight = 1;
	JBSET	_Flag1,2
	GOTO	_00137_DS_
	BSET	_Flag2,6
	GOTO	_00137_DS_
_00136_DS_
;	.line	46; "displaysbr.c"	if (FVIN) Buf2 = BatStatus - CBAT350;
	JBSET	_Flag1,7
	GOTO	_00133_DS_
	MOVAI	0xfe
	ADDAR	_BatStatus
	MOVRA	_Buf2
	GOTO	_00137_DS_
_00133_DS_
;	.line	49; "displaysbr.c"	if (!FPwr) return;
	JBCLR	_Flag1,0
	GOTO	_00126_DS_
	GOTO	_00181_DS_
_00126_DS_
;	.line	50; "displaysbr.c"	if (FDisBatLow)
	JBSET	_Flag2,7
	GOTO	_00130_DS_
;	.line	52; "displaysbr.c"	if (!FF250) return;
	JBCLR	_Flag1,6
	GOTO	_00137_DS_
	GOTO	_00181_DS_
_00130_DS_
;	.line	54; "displaysbr.c"	else Buf2 = BatStatus - CBAT350;
	MOVAI	0xfe
	ADDAR	_BatStatus
	MOVRA	_Buf2
_00137_DS_
;	.line	58; "displaysbr.c"	if (DispCnt == 1)
	MOVAR	_DispCnt
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00146_DS_
;	.line	60; "displaysbr.c"	if (FLight||FFlash||(Buf2 != 0)) Led1Ligt();
	JBCLR	_Flag2,6
	GOTO	_00138_DS_
	JBCLR	_Flag1,2
	GOTO	_00138_DS_
	MOVAI	0x00
	ORAR	_Buf2
	JBCLR	STATUS,2
	GOTO	_00139_DS_
_00138_DS_
	CALL	_Led1Ligt
_00139_DS_
;	.line	61; "displaysbr.c"	if ((Buf2 == 0)&&(FPwr)) Led1Ligt();
	MOVAI	0x00
	ORAR	_Buf2
	JBSET	STATUS,2
	GOTO	_00143_DS_
	JBSET	_Flag1,0
	GOTO	_00143_DS_
	CALL	_Led1Ligt
_00143_DS_
;	.line	62; "displaysbr.c"	return;
	GOTO	_00181_DS_
_00146_DS_
;	.line	64; "displaysbr.c"	if (DispCnt == 2)
	MOVAR	_DispCnt
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00156_DS_
;	.line	66; "displaysbr.c"	if (FLight||(Buf2 > 1)) {Led2Ligt();return;}
	JBCLR	_Flag2,6
	GOTO	_00147_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x2=2), size=1
	MOVAI	0x02
	RSUBAR	_Buf2
	JBSET	STATUS,0
	GOTO	_00148_DS_
;;genSkipc:3246: created from rifx:0022608C
_00147_DS_
	CALL	_Led2Ligt
	GOTO	_00181_DS_
;;unsigned compare: left < lit(0x1=1), size=1
_00148_DS_
;	.line	67; "displaysbr.c"	if (Buf2 < 1) return;
	MOVAI	0x01
	RSUBAR	_Buf2
	JBCLR	STATUS,0
	GOTO	_00151_DS_
;;genSkipc:3246: created from rifx:0022608C
	GOTO	_00181_DS_
_00151_DS_
;	.line	68; "displaysbr.c"	if (FPwr||FFlash) Led2Ligt();
	JBCLR	_Flag1,0
	GOTO	_00152_DS_
	JBSET	_Flag1,2
	GOTO	_00156_DS_
_00152_DS_
	CALL	_Led2Ligt
_00156_DS_
;	.line	70; "displaysbr.c"	if (DispCnt == 3)
	MOVAR	_DispCnt
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00166_DS_
;	.line	72; "displaysbr.c"	if (FLight||(Buf2 > 2)) Led3Ligt();
	JBCLR	_Flag2,6
	GOTO	_00157_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_Buf2
	JBSET	STATUS,0
	GOTO	_00158_DS_
;;genSkipc:3246: created from rifx:0022608C
_00157_DS_
	CALL	_Led3Ligt
;;unsigned compare: left < lit(0x2=2), size=1
_00158_DS_
;	.line	73; "displaysbr.c"	if (Buf2 < 2) return;
	MOVAI	0x02
	RSUBAR	_Buf2
	JBCLR	STATUS,0
	GOTO	_00161_DS_
;;genSkipc:3246: created from rifx:0022608C
	GOTO	_00181_DS_
_00161_DS_
;	.line	74; "displaysbr.c"	if (FPwr||FFlash) Led3Ligt();
	JBCLR	_Flag1,0
	GOTO	_00162_DS_
	JBSET	_Flag1,2
	GOTO	_00163_DS_
_00162_DS_
	CALL	_Led3Ligt
_00163_DS_
;	.line	75; "displaysbr.c"	return;
	GOTO	_00181_DS_
_00166_DS_
;	.line	77; "displaysbr.c"	if (FLight) Led4Ligt();
	JBSET	_Flag2,6
	GOTO	_00168_DS_
	CALL	_Led4Ligt
;;unsigned compare: left < lit(0x3=3), size=1
_00168_DS_
;	.line	78; "displaysbr.c"	if (Buf2 < 3) return;
	MOVAI	0x03
	RSUBAR	_Buf2
	JBCLR	STATUS,0
	GOTO	_00170_DS_
;;genSkipc:3246: created from rifx:0022608C
	GOTO	_00181_DS_
_00170_DS_
;	.line	79; "displaysbr.c"	if (Buf2 == 3)
	MOVAR	_Buf2
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00175_DS_
;	.line	81; "displaysbr.c"	if (FPwr||FFlash) Led4Ligt();
	JBCLR	_Flag1,0
	GOTO	_00171_DS_
	JBSET	_Flag1,2
	GOTO	_00172_DS_
_00171_DS_
	CALL	_Led4Ligt
_00172_DS_
;	.line	82; "displaysbr.c"	return;
	GOTO	_00181_DS_
_00175_DS_
;	.line	84; "displaysbr.c"	if (FPwr||(!FVIN)||FCHGOver||FFlash) Led4Ligt();
	JBCLR	_Flag1,0
	GOTO	_00176_DS_
	JBSET	_Flag1,7
	GOTO	_00176_DS_
	JBCLR	_Flag1,4
	GOTO	_00176_DS_
	JBSET	_Flag1,2
	GOTO	_00181_DS_
_00176_DS_
	CALL	_Led4Ligt
_00181_DS_
	RETURN	
; exit point of _DisplaySbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Led4Ligt	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Led4Ligt	;Function start
; 2 exit points
;	.line	27; "displaysbr.c"	pLedC = 0;
	BCLR	_OEP0bits,4
;	.line	28; "displaysbr.c"	pLed2C = 1;
	BSET	_OEP1bits,5
;	.line	29; "displaysbr.c"	pLed2 = 1;
	BSET	_IOP1bits,5
	RETURN	
; exit point of _Led4Ligt

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Led3Ligt	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Led3Ligt	;Function start
; 2 exit points
;	.line	21; "displaysbr.c"	pLedC = 1;
	BSET	_OEP0bits,4
;	.line	22; "displaysbr.c"	pLed2C = 1;
	BSET	_OEP1bits,5
;	.line	23; "displaysbr.c"	pLed2 = 0;
	BCLR	_IOP1bits,5
	RETURN	
; exit point of _Led3Ligt

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Led2Ligt	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Led2Ligt	;Function start
; 2 exit points
;	.line	15; "displaysbr.c"	pLedC = 1;
	BSET	_OEP0bits,4
;	.line	16; "displaysbr.c"	pLed1C = 1;
	BSET	_OEP1bits,4
;	.line	17; "displaysbr.c"	pLed1 = 0;
	BCLR	_IOP1bits,4
	RETURN	
; exit point of _Led2Ligt

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Led1Ligt	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Led1Ligt	;Function start
; 2 exit points
;	.line	9; "displaysbr.c"	pLedC = 0;
	BCLR	_OEP0bits,4
;	.line	10; "displaysbr.c"	pLed1C = 1;
	BSET	_OEP1bits,4
;	.line	11; "displaysbr.c"	pLed1 = 1;
	BSET	_IOP1bits,4
	RETURN	
; exit point of _Led1Ligt


;	code size estimation:
;	  143+    0 =   143 instructions (  286 byte)

	end
