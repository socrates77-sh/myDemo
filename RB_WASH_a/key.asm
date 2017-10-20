;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:50 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"key.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_WorkOnInit
	extern	_Detection
	extern	_Actuation
	extern	_ConsecutiveFive
	extern	_init
	extern	_ClrrRAM
	extern	_NeedSleep
	extern	_InitUart
	extern	_EndUart
	extern	_UartSendByte
	extern	_UartDelay
	extern	_UartSendInt
	extern	_STATUSbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_TMCRbits
	extern	_T1CRbits
	extern	_WorkONInitStep
	extern	_LEDFlashTimes
	extern	_LEDFlashSpace
	extern	_RXDebounce
	extern	_RXCnt
	extern	_DetectSpace
	extern	_DetectStep
	extern	_SleepCnt
	extern	_MaxRunTimes
	extern	_MaxMotorTimes
	extern	_MotorFiveCnt
	extern	_PositionDelay
	extern	_Flag1
	extern	_Flag2
	extern	_UartStep
	extern	_UartTemp
	extern	_INDF
	extern	_T0CNT
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_P0
	extern	_P1
	extern	_MCR
	extern	_KBIM
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PUCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_T0CR
	extern	_DDR0
	extern	_DDR1
	extern	_TMCR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA

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
	global	_KeyScan
	global	_KeyNew
	global	_KeyOld
	global	_KeyDebounce

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_key_0	udata
_KeyNew	res	1

UD_key_1	udata
_KeyOld	res	1

UD_key_2	udata
_KeyDebounce	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'KeyScan'
;@KeyScan WorkOnInit                Allocated to registers ;size:2
;@KeyScan Detection                 Allocated to registers ;size:2
;@KeyScan Actuation                 Allocated to registers ;size:2
;@KeyScan ConsecutiveFive           Allocated to registers ;size:2
;@KeyScan init                      Allocated to registers ;size:2
;@KeyScan ClrrRAM                   Allocated to registers ;size:2
;@KeyScan NeedSleep                 Allocated to registers ;size:2
;@KeyScan InitUart                  Allocated to registers ;size:2
;@KeyScan EndUart                   Allocated to registers ;size:2
;@KeyScan UartSendByte              Allocated to registers ;size:2
;@KeyScan UartDelay                 Allocated to registers ;size:2
;@KeyScan UartSendInt               Allocated to registers ;size:2
;@KeyScan STATUSbits                Allocated to registers ;size:1
;@KeyScan P0bits                    Allocated to registers ;size:1
;@KeyScan P1bits                    Allocated to registers ;size:1
;@KeyScan MCRbits                   Allocated to registers ;size:1
;@KeyScan KBIMbits                  Allocated to registers ;size:1
;@KeyScan PDCONbits                 Allocated to registers ;size:1
;@KeyScan ODCONbits                 Allocated to registers ;size:1
;@KeyScan PUCONbits                 Allocated to registers ;size:1
;@KeyScan INTECONbits               Allocated to registers ;size:1
;@KeyScan INTFLAGbits               Allocated to registers ;size:1
;@KeyScan T0CRbits                  Allocated to registers ;size:1
;@KeyScan DDR0bits                  Allocated to registers ;size:1
;@KeyScan DDR1bits                  Allocated to registers ;size:1
;@KeyScan TMCRbits                  Allocated to registers ;size:1
;@KeyScan T1CRbits                  Allocated to registers ;size:1
;@KeyScan WorkONInitStep            Allocated to registers ;size:1
;@KeyScan LEDFlashTimes             Allocated to registers ;size:1
;@KeyScan LEDFlashSpace             Allocated to registers ;size:1
;@KeyScan RXDebounce                Allocated to registers ;size:1
;@KeyScan RXCnt                     Allocated to registers ;size:1
;@KeyScan DetectSpace               Allocated to registers ;size:1
;@KeyScan DetectStep                Allocated to registers ;size:1
;@KeyScan SleepCnt                  Allocated to registers ;size:1
;@KeyScan MaxRunTimes               Allocated to registers ;size:2
;@KeyScan MaxMotorTimes             Allocated to registers ;size:2
;@KeyScan MotorFiveCnt              Allocated to registers ;size:1
;@KeyScan PositionDelay             Allocated to registers ;size:1
;@KeyScan Flag1                     Allocated to registers ;size:1
;@KeyScan Flag2                     Allocated to registers ;size:1
;@KeyScan UartStep                  Allocated to registers ;size:1
;@KeyScan UartTemp                  Allocated to registers ;size:1
;@KeyScan KeyNew                    Allocated to registers ;size:1
;@KeyScan KeyOld                    Allocated to registers ;size:1
;@KeyScan KeyDebounce               Allocated to registers ;size:1
;@KeyScan INDF                      Allocated to registers ;size:1
;@KeyScan T0CNT                     Allocated to registers ;size:1
;@KeyScan PCL                       Allocated to registers ;size:1
;@KeyScan STATUS                    Allocated to registers ;size:1
;@KeyScan FSR                       Allocated to registers ;size:1
;@KeyScan P0                        Allocated to registers ;size:1
;@KeyScan P1                        Allocated to registers ;size:1
;@KeyScan MCR                       Allocated to registers ;size:1
;@KeyScan KBIM                      Allocated to registers ;size:1
;@KeyScan PCLATH                    Allocated to registers ;size:1
;@KeyScan PDCON                     Allocated to registers ;size:1
;@KeyScan ODCON                     Allocated to registers ;size:1
;@KeyScan PUCON                     Allocated to registers ;size:1
;@KeyScan INTECON                   Allocated to registers ;size:1
;@KeyScan INTFLAG                   Allocated to registers ;size:1
;@KeyScan T0CR                      Allocated to registers ;size:1
;@KeyScan DDR0                      Allocated to registers ;size:1
;@KeyScan DDR1                      Allocated to registers ;size:1
;@KeyScan TMCR                      Allocated to registers ;size:1
;@KeyScan T1CR                      Allocated to registers ;size:1
;@KeyScan T1CNT                     Allocated to registers ;size:1
;@KeyScan T1LOAD                    Allocated to registers ;size:1
;@KeyScan T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'KeyScan';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_key	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _KeyScan	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_KeyScan	;Function start
; 2 exit points
;	.line	11; "key.c"	if(fKeyT)
	JBSET	_Flag2,0
	GOTO	_00118_DS_
;	.line	13; "key.c"	fKeyT = 0;
	BCLR	_Flag2,0
;	.line	14; "key.c"	if(ON_OFF)
	JBSET	_P0bits,2
	GOTO	_00106_DS_
;	.line	16; "key.c"	KeyNew = 0x00;
	CLRR	_KeyNew
	GOTO	_00107_DS_
_00106_DS_
;	.line	20; "key.c"	KeyNew = 0x01;
	MOVAI	0x01
	MOVRA	_KeyNew
_00107_DS_
;	.line	23; "key.c"	if(KeyNew != KeyOld)
	MOVAR	_KeyOld
	XORAR	_KeyNew
	JBSET	STATUS,2
	GOTO	_00130_DS_
	GOTO	_00114_DS_
_00130_DS_
;	.line	25; "key.c"	KeyDebounce++;
	INCR	_KeyDebounce
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	26; "key.c"	if(KeyDebounce > 20)
	MOVAI	0x15
	RSUBAR	_KeyDebounce
	JBSET	STATUS,0
	GOTO	_00118_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	28; "key.c"	KeyDebounce = 0;
	CLRR	_KeyDebounce
;	.line	29; "key.c"	KeyOld = KeyNew;
	MOVAR	_KeyNew
	MOVRA	_KeyOld
;	.line	30; "key.c"	if(KeyOld == 0x01)
	MOVAR	_KeyOld
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00109_DS_
;	.line	32; "key.c"	fWorkON = 1;
	BSET	_Flag2,1
;	.line	33; "key.c"	fWorkONInit = 1;
	BSET	_Flag2,2
;	.line	34; "key.c"	fDetection = 0;
	BCLR	_Flag1,1
;	.line	35; "key.c"	WorkONInitStep = 0;
	CLRR	_WorkONInitStep
	GOTO	_00118_DS_
_00109_DS_
;	.line	39; "key.c"	fWorkON = 0;
	BCLR	_Flag2,1
;	.line	40; "key.c"	LEDOFF();
	BSET	_P0bits,1
	BSET	_P0bits,2
;	.line	41; "key.c"	RXDIS();
	BSET	_P0bits,1
;	.line	42; "key.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00118_DS_
_00114_DS_
;	.line	48; "key.c"	KeyDebounce = 0;
	CLRR	_KeyDebounce
_00118_DS_
	RETURN	
; exit point of _KeyScan


;	code size estimation:
;	   40+    0 =    40 instructions (   80 byte)

	end
