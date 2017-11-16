;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 28 2017) (MINGW32)
; This file was generated Wed Nov 15 10:26:57 2017
;--------------------------------------------------------
; MC30/MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"test.c"
	list	p=3221
	radix dec
	include "3221.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
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

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
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
UDL_test_0	udata
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
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
;@main a                         Allocated to registers r0x1000 ;size:1
;@main b                         Allocated to registers r0x1001 ;size:1
;@main c                         Allocated to registers ;size:1
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
; code
;--------------------------------------------------------
code_test	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1000
;   r0x1001
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	7; "test.c"	DDR1 = 0x01;
	MOVAI	0x01
	MOVRA	_DDR1
;	.line	8; "test.c"	KBIM = DDR1 & 0x55;
	MOVAI	0x55
	ANDAR	_DDR1
	MOVRA	_KBIM
;	.line	9; "test.c"	KBIM = DDR1 | 0x66;
	MOVAI	0x66
	ORAR	_DDR1
	MOVRA	_KBIM
;	.line	10; "test.c"	KBIM = DDR1 ^ 0x66;
	MOVAI	0x66
	XORAR	_DDR1
	MOVRA	_KBIM
;	.line	11; "test.c"	KBIE = 1;
	BSET	_INTECONbits,1
;	.line	15; "test.c"	while(a==3)
	MOVAI	0x01
	MOVRA	r0x1000
	MOVAI	0x02
	MOVRA	r0x1001
_00105_DS_
	MOVAR	r0x1000
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00108_DS_
;	.line	17; "test.c"	a++;
	INCR	r0x1000
;	.line	18; "test.c"	b = b + 2;
	INCR	r0x1001
	INCR	r0x1001
;	.line	19; "test.c"	c = a + b;
	GOTO	_00105_DS_
_00108_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   25+    0 =    25 instructions (   50 byte)

	end
