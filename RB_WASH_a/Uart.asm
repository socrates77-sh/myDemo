;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:50 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"Uart.c"
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
	extern	__gptrget1

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
	global	_UartSendInt
	global	_UartSendByte
	global	_UartDelay
	global	_EndUart
	global	_InitUart
	global	_UartStep
	global	_UartTemp

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_Uart_0	udata
_UartStep	res	1

UD_Uart_1	udata
_UartTemp	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_Uart_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1006	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'InitUart'
;@InitUart WorkOnInit                Allocated to registers ;size:2
;@InitUart Detection                 Allocated to registers ;size:2
;@InitUart Actuation                 Allocated to registers ;size:2
;@InitUart ConsecutiveFive           Allocated to registers ;size:2
;@InitUart init                      Allocated to registers ;size:2
;@InitUart ClrrRAM                   Allocated to registers ;size:2
;@InitUart KeyScan                   Allocated to registers ;size:2
;@InitUart NeedSleep                 Allocated to registers ;size:2
;@InitUart EndUart                   Allocated to registers ;size:2
;@InitUart UartSendByte              Allocated to registers ;size:2
;@InitUart UartDelay                 Allocated to registers ;size:2
;@InitUart UartSendInt               Allocated to registers ;size:2
;@InitUart STATUSbits                Allocated to registers ;size:1
;@InitUart P0bits                    Allocated to registers ;size:1
;@InitUart P1bits                    Allocated to registers ;size:1
;@InitUart MCRbits                   Allocated to registers ;size:1
;@InitUart KBIMbits                  Allocated to registers ;size:1
;@InitUart PDCONbits                 Allocated to registers ;size:1
;@InitUart ODCONbits                 Allocated to registers ;size:1
;@InitUart PUCONbits                 Allocated to registers ;size:1
;@InitUart INTECONbits               Allocated to registers ;size:1
;@InitUart INTFLAGbits               Allocated to registers ;size:1
;@InitUart T0CRbits                  Allocated to registers ;size:1
;@InitUart DDR0bits                  Allocated to registers ;size:1
;@InitUart DDR1bits                  Allocated to registers ;size:1
;@InitUart TMCRbits                  Allocated to registers ;size:1
;@InitUart T1CRbits                  Allocated to registers ;size:1
;@InitUart WorkONInitStep            Allocated to registers ;size:1
;@InitUart LEDFlashTimes             Allocated to registers ;size:1
;@InitUart LEDFlashSpace             Allocated to registers ;size:1
;@InitUart RXDebounce                Allocated to registers ;size:1
;@InitUart RXCnt                     Allocated to registers ;size:1
;@InitUart DetectSpace               Allocated to registers ;size:1
;@InitUart DetectStep                Allocated to registers ;size:1
;@InitUart SleepCnt                  Allocated to registers ;size:1
;@InitUart MaxRunTimes               Allocated to registers ;size:2
;@InitUart MaxMotorTimes             Allocated to registers ;size:2
;@InitUart MotorFiveCnt              Allocated to registers ;size:1
;@InitUart PositionDelay             Allocated to registers ;size:1
;@InitUart Flag1                     Allocated to registers ;size:1
;@InitUart Flag2                     Allocated to registers ;size:1
;@InitUart UartStep                  Allocated to registers ;size:1
;@InitUart UartTemp                  Allocated to registers ;size:1
;@InitUart INDF                      Allocated to registers ;size:1
;@InitUart T0CNT                     Allocated to registers ;size:1
;@InitUart PCL                       Allocated to registers ;size:1
;@InitUart STATUS                    Allocated to registers ;size:1
;@InitUart FSR                       Allocated to registers ;size:1
;@InitUart P0                        Allocated to registers ;size:1
;@InitUart P1                        Allocated to registers ;size:1
;@InitUart MCR                       Allocated to registers ;size:1
;@InitUart KBIM                      Allocated to registers ;size:1
;@InitUart PCLATH                    Allocated to registers ;size:1
;@InitUart PDCON                     Allocated to registers ;size:1
;@InitUart ODCON                     Allocated to registers ;size:1
;@InitUart PUCON                     Allocated to registers ;size:1
;@InitUart INTECON                   Allocated to registers ;size:1
;@InitUart INTFLAG                   Allocated to registers ;size:1
;@InitUart T0CR                      Allocated to registers ;size:1
;@InitUart DDR0                      Allocated to registers ;size:1
;@InitUart DDR1                      Allocated to registers ;size:1
;@InitUart TMCR                      Allocated to registers ;size:1
;@InitUart T1CR                      Allocated to registers ;size:1
;@InitUart T1CNT                     Allocated to registers ;size:1
;@InitUart T1LOAD                    Allocated to registers ;size:1
;@InitUart T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'InitUart';
;@Allocation info for local variables in function 'EndUart'
;@end Allocation info for local variables in function 'EndUart';
;@Allocation info for local variables in function 'UartDelay'
;@UartDelay SetBaud                   Allocated to registers r0x1000 ;size:1
;@end Allocation info for local variables in function 'UartDelay';
;@Allocation info for local variables in function 'UartSendByte'
;@UartSendByte Data                      Allocated to registers ;size:1
;@UartSendByte i                         Allocated to registers r0x1002 ;size:1
;@UartSendByte temp                      Allocated to registers r0x1001 ;size:1
;@end Allocation info for local variables in function 'UartSendByte';
;@Allocation info for local variables in function 'UartSendInt'
;@UartSendInt String                    Allocated to registers ;size:3
;@UartSendInt temp                      Allocated to registers r0x1006 ;size:1
;@end Allocation info for local variables in function 'UartSendInt';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_Uart	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _UartSendInt	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   _UartSendByte
;   __gptrget1
;   _UartSendByte
;6 compiler assigned registers:
;   r0x1003
;   STK00
;   r0x1004
;   STK01
;   r0x1005
;   r0x1006
;; Starting pCode block
_UartSendInt	;Function start
; 2 exit points
;	.line	58; "Uart.c"	void UartSendInt(const unsigned char *String)
	MOVRA	r0x1003
	MOVAR	STK00
	MOVRA	r0x1004
	MOVAR	STK01
	MOVRA	r0x1005
_00132_DS_
;	.line	61; "Uart.c"	while(*String != '\0')
	MOVAR	r0x1005
	MOVRA	STK01
	MOVAR	r0x1004
	MOVRA	STK00
	MOVAR	r0x1003
	CALL	__gptrget1
	MOVRA	r0x1006
	MOVAI	0x00
	ORAR	r0x1006
	JBCLR	STATUS,2
	GOTO	_00135_DS_
;	.line	64; "Uart.c"	UartSendByte(temp);
	MOVAR	r0x1006
	CALL	_UartSendByte
;	.line	65; "Uart.c"	String++;
	INCR	r0x1005
	JBCLR	STATUS,2
	INCR	r0x1004
	JBCLR	STATUS,2
	INCR	r0x1003
	GOTO	_00132_DS_
_00135_DS_
	RETURN	
; exit point of _UartSendInt

;***
;  pBlock Stats: dbName = C
;***
;entry:  _UartSendByte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;2 compiler assigned registers:
;   r0x1001
;   r0x1002
;; Starting pCode block
_UartSendByte	;Function start
; 2 exit points
;	.line	31; "Uart.c"	void UartSendByte(unsigned char Data)
	MOVRA	r0x1001
;	.line	35; "Uart.c"	UartTx = 0;
	BCLR	_P1bits,7
;	.line	36; "Uart.c"	UartDelay(88);
	MOVAI	0x58
	CALL	_UartDelay
;	.line	37; "Uart.c"	for(i=0;i<8;i++)
	CLRR	r0x1002
;;unsigned compare: left < lit(0x8=8), size=1
_00124_DS_
	MOVAI	0x08
	RSUBAR	r0x1002
	JBCLR	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	39; "Uart.c"	if(temp & 0x01)
	JBSET	r0x1001,0
	GOTO	_00122_DS_
;	.line	41; "Uart.c"	UartTx = 1;
	BSET	_P1bits,7
	GOTO	_00123_DS_
_00122_DS_
;	.line	45; "Uart.c"	UartTx = 0;
	BCLR	_P1bits,7
;;shiftRight_Left2ResultLit:5214: shCount=1, size=1, sign=0, same=1, offr=0
_00123_DS_
;	.line	47; "Uart.c"	temp >>= 1;
	BCLR	STATUS,0
	RRR	r0x1001
;	.line	48; "Uart.c"	UartDelay(88);
	MOVAI	0x58
	CALL	_UartDelay
;	.line	37; "Uart.c"	for(i=0;i<8;i++)
	INCR	r0x1002
	GOTO	_00124_DS_
_00127_DS_
;	.line	50; "Uart.c"	UartTx = 1;
	BSET	_P1bits,7
;	.line	51; "Uart.c"	UartDelay(88);
	MOVAI	0x58
	CALL	_UartDelay
;	.line	52; "Uart.c"	UartDelay(88);
	MOVAI	0x58
	CALL	_UartDelay
;	.line	53; "Uart.c"	UartDelay(88);
	MOVAI	0x58
	CALL	_UartDelay
	RETURN	
; exit point of _UartSendByte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _UartDelay	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1000
;; Starting pCode block
_UartDelay	;Function start
; 2 exit points
;	.line	20; "Uart.c"	void UartDelay(unsigned char SetBaud)	// 
	MOVRA	r0x1000
;	.line	23; "Uart.c"	T0CR = 0;
	CLRR	_T0CR
_00113_DS_
;	.line	24; "Uart.c"	while(T0CR < SetBaud)
	MOVAR	r0x1000
	RSUBAR	_T0CR
	JBCLR	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	26; "Uart.c"	ClrWdt();	
	clrwdt
	GOTO	_00113_DS_
_00116_DS_
	RETURN	
; exit point of _UartDelay

;***
;  pBlock Stats: dbName = C
;***
;entry:  _EndUart	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_EndUart	;Function start
; 2 exit points
;	.line	16; "Uart.c"	T1DATA = 0x00;
	CLRR	_T1DATA
;	.line	17; "Uart.c"	P12PD = 1;
	BSET	_PDCONbits,6
;	.line	18; "Uart.c"	GIE = 1;
	BSET	_INTECONbits,7
	RETURN	
; exit point of _EndUart

;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitUart	;Function start
; 2 exit points
;has an exit
;functions called:
;   _UartDelay
;   _UartDelay
;   _UartDelay
;   _UartDelay
;; Starting pCode block
_InitUart	;Function start
; 2 exit points
;	.line	6; "Uart.c"	T0SE = 1;		//
	BSET	_T0CRbits,4
;	.line	7; "Uart.c"	DDR12 = 0;		// 256 级
	BCLR	_DDR1bits,2
;	.line	8; "Uart.c"	T1DATA = BIN(1,1,1,0,0,0,0,0);	// 16/2 最小间隔 0.125us
	MOVAI	0xe0
	MOVRA	_T1DATA
;	.line	9; "Uart.c"	UartTx = 1;
	BSET	_P1bits,7
;	.line	10; "Uart.c"	UartDelay(108);
	MOVAI	0x6c
	CALL	_UartDelay
;	.line	11; "Uart.c"	UartDelay(108);
	MOVAI	0x6c
	CALL	_UartDelay
;	.line	12; "Uart.c"	GIE = 0;
	BCLR	_INTECONbits,7
	RETURN	
; exit point of _InitUart


;	code size estimation:
;	   76+    0 =    76 instructions (  152 byte)

	end
