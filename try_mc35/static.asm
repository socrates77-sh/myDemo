;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 28 2017) (MINGW32)
; This file was generated Sun Nov 19 16:48:45 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"static.c"
	list	p=2K7041
	radix dec
	include "2K7041.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_INDF
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCH
	extern	_PCL
	extern	_STATUS
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_ram1
	global	_ram0

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
UD_abs_static_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_static_21	udata_ovr	0x0021
_ram1
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_static_0	udata
r0x1001	res	1
_main_c_a_1_2	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main ram1                      Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
;@main c_a                       Allocated to registers ;size:1
;@main c_b                       Allocated to registers r0x1001 ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCH                       Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
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
code_static	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1001
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	11; "static.c"	ram0 = 0x53;
	MOVAI	0x53
	MOVRA	_ram0
;	.line	12; "static.c"	ram1 = 0x78;
	MOVAI	0x78
	MOVRA	_ram1
;	.line	14; "static.c"	c_a = ram0;
	MOVAR	_ram0
	MOVRA	_main_c_a_1_2
;	.line	15; "static.c"	c_b = ram1;
	MOVAR	_ram1
	MOVRA	r0x1001
;	.line	17; "static.c"	ram0 = c_a + c_b;  	// 0xcb
	MOVAR	r0x1001
	ADDAR	_main_c_a_1_2
	MOVRA	_ram0
;	.line	18; "static.c"	ram1 = c_a - c_b;  	// 0xdb
	MOVAR	r0x1001
	XCH	_main_c_a_1_2
	ASUBRA	_main_c_a_1_2
	XCH	_main_c_a_1_2
	MOVRA	_ram1
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
;	.line	20; "static.c"	if (c_a > 0) ram0 = c_b;   	// true
	MOVAR	_main_c_a_1_2
	ADDAI	0x80
	ADDAI	0x7f
	JBSET	STATUS,2
	GOTO	_00106_DS_
;;genSkipc:3223: created from rifx:00D5608C
	MOVAR	r0x1001
	MOVRA	_ram0
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0xFFFFFFFE=-2), size=1, mask=ff
_00106_DS_
;	.line	22; "static.c"	if (c_a > -3) ram0 = c_b+1;	// true
	MOVAR	_main_c_a_1_2
	ADDAI	0x80
	ADDAI	0x82
	JBSET	STATUS,2
	GOTO	_00110_DS_
;;genSkipc:3223: created from rifx:00D5608C
	JZAR	r0x1001
	NOP	
	MOVRA	_ram0
_00110_DS_
;	.line	24; "static.c"	while(1);
	GOTO	_00110_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   33+    0 =    33 instructions (   66 byte)

	end
