;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:50 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"main.c"
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
	extern	_KeyScan
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
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_int_isr

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
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
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main WorkOnInit                Allocated to registers ;size:2
;@main Detection                 Allocated to registers ;size:2
;@main Actuation                 Allocated to registers ;size:2
;@main ConsecutiveFive           Allocated to registers ;size:2
;@main init                      Allocated to registers ;size:2
;@main ClrrRAM                   Allocated to registers ;size:2
;@main KeyScan                   Allocated to registers ;size:2
;@main NeedSleep                 Allocated to registers ;size:2
;@main InitUart                  Allocated to registers ;size:2
;@main EndUart                   Allocated to registers ;size:2
;@main UartSendByte              Allocated to registers ;size:2
;@main UartDelay                 Allocated to registers ;size:2
;@main UartSendInt               Allocated to registers ;size:2
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main P0bits                    Allocated to registers ;size:1
;@main P1bits                    Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main PDCONbits                 Allocated to registers ;size:1
;@main ODCONbits                 Allocated to registers ;size:1
;@main PUCONbits                 Allocated to registers ;size:1
;@main INTECONbits               Allocated to registers ;size:1
;@main INTFLAGbits               Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main DDR0bits                  Allocated to registers ;size:1
;@main DDR1bits                  Allocated to registers ;size:1
;@main TMCRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main WorkONInitStep            Allocated to registers ;size:1
;@main LEDFlashTimes             Allocated to registers ;size:1
;@main LEDFlashSpace             Allocated to registers ;size:1
;@main RXDebounce                Allocated to registers ;size:1
;@main RXCnt                     Allocated to registers ;size:1
;@main DetectSpace               Allocated to registers ;size:1
;@main DetectStep                Allocated to registers ;size:1
;@main SleepCnt                  Allocated to registers ;size:1
;@main MaxRunTimes               Allocated to registers ;size:2
;@main MaxMotorTimes             Allocated to registers ;size:2
;@main MotorFiveCnt              Allocated to registers ;size:1
;@main PositionDelay             Allocated to registers ;size:1
;@main Flag1                     Allocated to registers ;size:1
;@main Flag2                     Allocated to registers ;size:1
;@main UartStep                  Allocated to registers ;size:1
;@main UartTemp                  Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main P0                        Allocated to registers ;size:1
;@main P1                        Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main PCLATH                    Allocated to registers ;size:1
;@main PDCON                     Allocated to registers ;size:1
;@main ODCON                     Allocated to registers ;size:1
;@main PUCON                     Allocated to registers ;size:1
;@main INTECON                   Allocated to registers ;size:1
;@main INTFLAG                   Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main DDR0                      Allocated to registers ;size:1
;@main DDR1                      Allocated to registers ;size:1
;@main TMCR                      Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'int_isr'
;@end Allocation info for local variables in function 'int_isr';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	_main
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
;	.line	37; "main.c"	if(T0SE)			// ¶¨Ê±1ms
	JBSET	_T0CRbits,4
	GOTO	END_OF_INTERRUPT
;	.line	39; "main.c"	T0SE = 0;
	BCLR	_T0CRbits,4
;	.line	40; "main.c"	T1CR = 0X05;
	MOVAI	0x05
	MOVRA	_T1CR
;	.line	41; "main.c"	fKeyT = 1;
	BSET	_Flag2,0
;	.line	42; "main.c"	fWorkONInitT = 1;
	BSET	_Flag1,0
;	.line	43; "main.c"	fDetectionT = 1;
	BSET	_Flag1,2
;	.line	44; "main.c"	fMotorT = 1;
	BSET	_Flag1,4
;	.line	45; "main.c"	fSleepT = 1;
	BSET	_Flag1,7
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _init
;   _KeyScan
;   _WorkOnInit
;   _Detection
;   _Actuation
;   _init
;   _KeyScan
;   _WorkOnInit
;   _Detection
;   _Actuation
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	6; "main.c"	init();
	CALL	_init
;	.line	7; "main.c"	P00 = 1;
	BSET	_P0bits,0
;	.line	8; "main.c"	P13 = 1;
	BSET	_P1bits,3
_00106_DS_
;	.line	24; "main.c"	ClrWdt();
	clrwdt
;	.line	25; "main.c"	KeyScan();
	CALL	_KeyScan
;	.line	26; "main.c"	WorkOnInit();
	CALL	_WorkOnInit
;	.line	27; "main.c"	Detection();
	CALL	_Detection
;	.line	28; "main.c"	Actuation();
	CALL	_Actuation
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   20+    0 =    20 instructions (   40 byte)

	end
