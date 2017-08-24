;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Aug 18 2017) (MINGW32)
; This file was generated Mon Aug 21 17:07:04 2017
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
	global	_fun1
	global	_main

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
UDL_main_0	udata
r0x1001	res	1
_gVar	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'fun1'
;@fun1 fun1                      Allocated to registers ;size:2
;@fun1 STATUSbits                Allocated to registers ;size:1
;@fun1 P0bits                    Allocated to registers ;size:1
;@fun1 P1bits                    Allocated to registers ;size:1
;@fun1 MCRbits                   Allocated to registers ;size:1
;@fun1 KBIMbits                  Allocated to registers ;size:1
;@fun1 PDCONbits                 Allocated to registers ;size:1
;@fun1 ODCONbits                 Allocated to registers ;size:1
;@fun1 PUCONbits                 Allocated to registers ;size:1
;@fun1 INTECONbits               Allocated to registers ;size:1
;@fun1 INTFLAGbits               Allocated to registers ;size:1
;@fun1 T0CRbits                  Allocated to registers ;size:1
;@fun1 DDR0bits                  Allocated to registers ;size:1
;@fun1 DDR1bits                  Allocated to registers ;size:1
;@fun1 TMCRbits                  Allocated to registers ;size:1
;@fun1 T1CRbits                  Allocated to registers ;size:1
;@fun1 gVar                      Allocated to registers ;size:1
;@fun1 lVar                      Allocated to registers r0x1001 ;size:1
;@fun1 INDF                      Allocated to registers ;size:1
;@fun1 T0CNT                     Allocated to registers ;size:1
;@fun1 PCL                       Allocated to registers ;size:1
;@fun1 STATUS                    Allocated to registers ;size:1
;@fun1 FSR                       Allocated to registers ;size:1
;@fun1 P0                        Allocated to registers ;size:1
;@fun1 P1                        Allocated to registers ;size:1
;@fun1 MCR                       Allocated to registers ;size:1
;@fun1 KBIM                      Allocated to registers ;size:1
;@fun1 PCLATH                    Allocated to registers ;size:1
;@fun1 PDCON                     Allocated to registers ;size:1
;@fun1 ODCON                     Allocated to registers ;size:1
;@fun1 PUCON                     Allocated to registers ;size:1
;@fun1 INTECON                   Allocated to registers ;size:1
;@fun1 INTFLAG                   Allocated to registers ;size:1
;@fun1 T0CR                      Allocated to registers ;size:1
;@fun1 DDR0                      Allocated to registers ;size:1
;@fun1 DDR1                      Allocated to registers ;size:1
;@fun1 TMCR                      Allocated to registers ;size:1
;@fun1 T1CR                      Allocated to registers ;size:1
;@fun1 T1CNT                     Allocated to registers ;size:1
;@fun1 T1LOAD                    Allocated to registers ;size:1
;@fun1 T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'fun1';
;@Allocation info for local variables in function 'main'
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
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fun1
;   _fun1
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	22; "main.c"	gVar = 18;
	MOVAI	0x12
	MOVRA	_gVar
;	.line	23; "main.c"	fun1();
	CALL	_fun1
;	.line	25; "main.c"	P1 = 0XFF;
	MOVAI	0xff
	MOVRA	_P1
_00114_DS_
;	.line	29; "main.c"	P1=~P1;
	COMAR	_P1
	MOVRA	_P1
;	.line	30; "main.c"	P00 = ~P00;    
	BSET	_P0bits,0
	GOTO	_00114_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1001
;; Starting pCode block
_fun1	;Function start
; 2 exit points
;	.line	9; "main.c"	lVar = gVar-1;
	DECAR	_gVar
	MOVRA	r0x1001
;	.line	10; "main.c"	if(lVar==18)
	MOVAR	r0x1001
	XORAI	0x12
	JBSET	STATUS,2
	GOTO	_00106_DS_
;	.line	12; "main.c"	P1 = 0;
	CLRR	_P1
	GOTO	_00108_DS_
_00106_DS_
;	.line	16; "main.c"	P1 = 1;
	MOVAI	0x01
	MOVRA	_P1
_00108_DS_
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   21+    0 =    21 instructions (   42 byte)

	end
