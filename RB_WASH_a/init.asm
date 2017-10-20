;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:49 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"init.c"
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
	global	_ClrrRAM
	global	_init

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

;@Allocation info for local variables in function 'init'
;@init WorkOnInit                Allocated to registers ;size:2
;@init Detection                 Allocated to registers ;size:2
;@init Actuation                 Allocated to registers ;size:2
;@init ConsecutiveFive           Allocated to registers ;size:2
;@init ClrrRAM                   Allocated to registers ;size:2
;@init KeyScan                   Allocated to registers ;size:2
;@init NeedSleep                 Allocated to registers ;size:2
;@init InitUart                  Allocated to registers ;size:2
;@init EndUart                   Allocated to registers ;size:2
;@init UartSendByte              Allocated to registers ;size:2
;@init UartDelay                 Allocated to registers ;size:2
;@init UartSendInt               Allocated to registers ;size:2
;@init STATUSbits                Allocated to registers ;size:1
;@init P0bits                    Allocated to registers ;size:1
;@init P1bits                    Allocated to registers ;size:1
;@init MCRbits                   Allocated to registers ;size:1
;@init KBIMbits                  Allocated to registers ;size:1
;@init PDCONbits                 Allocated to registers ;size:1
;@init ODCONbits                 Allocated to registers ;size:1
;@init PUCONbits                 Allocated to registers ;size:1
;@init INTECONbits               Allocated to registers ;size:1
;@init INTFLAGbits               Allocated to registers ;size:1
;@init T0CRbits                  Allocated to registers ;size:1
;@init DDR0bits                  Allocated to registers ;size:1
;@init DDR1bits                  Allocated to registers ;size:1
;@init TMCRbits                  Allocated to registers ;size:1
;@init T1CRbits                  Allocated to registers ;size:1
;@init WorkONInitStep            Allocated to registers ;size:1
;@init LEDFlashTimes             Allocated to registers ;size:1
;@init LEDFlashSpace             Allocated to registers ;size:1
;@init RXDebounce                Allocated to registers ;size:1
;@init RXCnt                     Allocated to registers ;size:1
;@init DetectSpace               Allocated to registers ;size:1
;@init DetectStep                Allocated to registers ;size:1
;@init SleepCnt                  Allocated to registers ;size:1
;@init MaxRunTimes               Allocated to registers ;size:2
;@init MaxMotorTimes             Allocated to registers ;size:2
;@init MotorFiveCnt              Allocated to registers ;size:1
;@init PositionDelay             Allocated to registers ;size:1
;@init Flag1                     Allocated to registers ;size:1
;@init Flag2                     Allocated to registers ;size:1
;@init UartStep                  Allocated to registers ;size:1
;@init UartTemp                  Allocated to registers ;size:1
;@init INDF                      Allocated to registers ;size:1
;@init T0CNT                     Allocated to registers ;size:1
;@init PCL                       Allocated to registers ;size:1
;@init STATUS                    Allocated to registers ;size:1
;@init FSR                       Allocated to registers ;size:1
;@init P0                        Allocated to registers ;size:1
;@init P1                        Allocated to registers ;size:1
;@init MCR                       Allocated to registers ;size:1
;@init KBIM                      Allocated to registers ;size:1
;@init PCLATH                    Allocated to registers ;size:1
;@init PDCON                     Allocated to registers ;size:1
;@init ODCON                     Allocated to registers ;size:1
;@init PUCON                     Allocated to registers ;size:1
;@init INTECON                   Allocated to registers ;size:1
;@init INTFLAG                   Allocated to registers ;size:1
;@init T0CR                      Allocated to registers ;size:1
;@init DDR0                      Allocated to registers ;size:1
;@init DDR1                      Allocated to registers ;size:1
;@init TMCR                      Allocated to registers ;size:1
;@init T1CR                      Allocated to registers ;size:1
;@init T1CNT                     Allocated to registers ;size:1
;@init T1LOAD                    Allocated to registers ;size:1
;@init T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'init';
;@Allocation info for local variables in function 'ClrrRAM'
;@end Allocation info for local variables in function 'ClrrRAM';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_init	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _ClrrRAM	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_ClrrRAM	;Function start
; 2 exit points
;	.line	52; "init.c"	__endasm;
	jbclr STATUS,05h
	movar 0x20
	movra FSR
	clrr INDF
	incr FSR
	movra 0x80
	xorar FSR
	jbset STATUS,02h
	goto $-5
	jbclr STATUS,05h
	movar 0xa0
	movra FSR
	clrr INDF
	incr FSR
	movai 0xc0
	xorar FSR
	jbset STATUS,02h
	goto $-5
	jbclr STATUS,05h
	RETURN	
; exit point of _ClrrRAM

;***
;  pBlock Stats: dbName = C
;***
;entry:  _init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_init	;Function start
; 2 exit points
;	.line	6; "init.c"	INDF = BIN(0,0,0,0,1,1,0,0);		//  wdt 18*16    Fcpu 4/4
	MOVAI	0x0c
	MOVRA	_INDF
;	.line	7; "init.c"	T0CNT = BIN(1,0,0,0,0,0,0,0);		//设置模拟、数字口
	MOVAI	0x80
	MOVRA	_T0CNT
;	.line	8; "init.c"	PDCON = BIN(1,1,1,0,1,0,0,1);		//设置输入输出
	MOVAI	0xe9
	MOVRA	_PDCON
;	.line	9; "init.c"	ODCON = BIN(1,1,1,1,1,1,1,1);
	MOVAI	0xff
	MOVRA	_ODCON
;	.line	10; "init.c"	PUCON = BIN(0,0,0,0,0,0,0,0);		//设置加强型驱动
	CLRR	_PUCON
;	.line	11; "init.c"	INTECON = BIN(0,0,0,0,0,0,0,0);		//设置开漏输出
	CLRR	_INTECON
;	.line	12; "init.c"	INTFLAG = BIN(0,0,0,0,0,0,0,0);		//设置下拉电阻
	CLRR	_INTFLAG
;	.line	13; "init.c"	T0CR =  BIN(0,0,0,0,1,1,0,1);		//设置上拉电阻
	MOVAI	0x0d
	MOVRA	_T0CR
;	.line	15; "init.c"	DDR0 = BIN(0,1,1,0,0,0,0,0);
	MOVAI	0x60
	MOVRA	_DDR0
;	.line	16; "init.c"	DDR1 = BIN(0,0,0,0,0,0,0,0);
	CLRR	_DDR1
;	.line	17; "init.c"	TMCR = BIN(0,0,0,0,0,0,0,0);
	CLRR	_TMCR
;	.line	18; "init.c"	T1CR = BIN(0,0,1,0,0,0,0,0);
	MOVAI	0x20
	MOVRA	_T1CR
;	.line	23; "init.c"	T1CNT = BIN(0,0,1,0,0,0,0,1);
	MOVAI	0x21
	MOVRA	_T1CNT
;	.line	24; "init.c"	T1LOAD = BIN(0,0,0,0,0,0,0,1);
	MOVAI	0x01
	MOVRA	_T1LOAD
;	.line	25; "init.c"	T1DATA  = BIN(1,1,0,0,0,0,0,0);
	MOVAI	0xc0
	MOVRA	_T1DATA
	RETURN	
; exit point of _init


;	code size estimation:
;	   27+    0 =    27 instructions (   54 byte)

	end
