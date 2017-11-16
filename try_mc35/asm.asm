;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 28 2017) (MINGW32)
; This file was generated Wed Nov 15 10:36:54 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"asm.c"
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
UD_abs_asm_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_asm_21	udata_ovr	0x0021
_ram1
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main ram1                      Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
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
code_asm	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	13; "asm.c"	__endasm;
	movai 100
	movra 0x33
	
;	.line	15; "asm.c"	__asm__("nop");
	nop
;	.line	17; "asm.c"	Nop();
	nop
_00106_DS_
;	.line	20; "asm.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	    2+    0 =     2 instructions (    4 byte)

	end
