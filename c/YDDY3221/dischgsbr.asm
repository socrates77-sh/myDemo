;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:42:42 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"dischgsbr.c"
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
	global	_AdjVoutSbr
	global	_DisCHGSbr
	global	_InitPWMSbr

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
code_dischgsbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitPWMSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitPWMSbr	;Function start
; 2 exit points
;	.line	38; "dischgsbr.c"	DisPWM = CNPWM0DATA;
	MOVAI	0x05
	MOVRA	_DisPWM
;	.line	39; "dischgsbr.c"	T0DATA = DisPWM;
	MOVAI	0x05
	MOVRA	_T0DATA
	RETURN	
; exit point of _InitPWMSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _AdjVoutSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_AdjVoutSbr	;Function start
; 2 exit points
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x92=146), size=1
;	.line	20; "dischgsbr.c"	if (ADVOut > COUTU5V+2)
	MOVAI	0x92
	RSUBAR	_ADVOut
	JBSET	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	22; "dischgsbr.c"	if (--DisPWM == 0) ++DisPWM;
	DECR	_DisPWM
	MOVAI	0x00
	ORAR	_DisPWM
	JBSET	STATUS,2
	GOTO	_00114_DS_
	INCR	_DisPWM
_00114_DS_
;	.line	23; "dischgsbr.c"	T0DATA = DisPWM;
	MOVAR	_DisPWM
	MOVRA	_T0DATA
;	.line	24; "dischgsbr.c"	return;
	GOTO	_00123_DS_
;;unsigned compare: left < lit(0x8D=141), size=1
_00116_DS_
;	.line	26; "dischgsbr.c"	if (ADVOut < COUTU5V-2)
	MOVAI	0x8d
	RSUBAR	_ADVOut
	JBCLR	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3246: created from rifx:0022608C
;;unsigned compare: left < lit(0x81=129), size=1
;	.line	28; "dischgsbr.c"	if (ADVOut < COUTU4d5V) DisPWM += 5;
	MOVAI	0x81
	RSUBAR	_ADVOut
	JBCLR	STATUS,0
	GOTO	_00118_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAI	0x05
	ADDRA	_DisPWM
_00118_DS_
;	.line	29; "dischgsbr.c"	if (++DisPWM >= CT0-5) DisPWM = CT0-5;
	INCR	_DisPWM
;;unsigned compare: left < lit(0x7B=123), size=1
	MOVAI	0x7b
	RSUBAR	_DisPWM
	JBSET	STATUS,0
	GOTO	_00120_DS_
;;genSkipc:3246: created from rifx:0022608C
	MOVAI	0x7b
	MOVRA	_DisPWM
_00120_DS_
;	.line	30; "dischgsbr.c"	T0DATA = DisPWM;
	MOVAR	_DisPWM
	MOVRA	_T0DATA
_00122_DS_
;	.line	32; "dischgsbr.c"	pPwr = 1;
	BSET	_IOP1bits,0
;	.line	33; "dischgsbr.c"	FPwr1st = 1;
	BSET	_Flag3,6
_00123_DS_
	RETURN	
; exit point of _AdjVoutSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _DisCHGSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   _AdjVoutSbr
;   _AdjVoutSbr
;; Starting pCode block
_DisCHGSbr	;Function start
; 2 exit points
;	.line	13; "dischgsbr.c"	AdjVoutSbr();
	CALL	_AdjVoutSbr
;;unsigned compare: left < lit(0x3=3), size=1
;	.line	14; "dischgsbr.c"	if (ADIOut < COUTI_90mA) FILow = 1;
	MOVAI	0x03
	RSUBAR	_ADIOut
	JBCLR	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_Flag1,5
	GOTO	_00108_DS_
_00106_DS_
;	.line	15; "dischgsbr.c"	else {FILow = 0;ILow0A1Dly10s = 0;}
	BCLR	_Flag1,5
	CLRR	_ILow0A1Dly10s
_00108_DS_
	RETURN	
; exit point of _DisCHGSbr


;	code size estimation:
;	   50+    0 =    50 instructions (  100 byte)

	end
