;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Aug 24 2017) (MINGW32)
; This file was generated Thu Aug 24 19:29:22 2017
;--------------------------------------------------------
; MC30/MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=0311
	radix dec
	include "p0311.inc"
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
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_fun1
	global	_main
	global	_gVar

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
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
UD_main_0	udata
_gVar	res	1

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
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
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
;	.line	21; "main.c"	gVar = 18;
	MOVLW	0x12
	MOVWF	_gVar
;	.line	22; "main.c"	fun1();
	CALL	_fun1
;	.line	24; "main.c"	P0 = 0XFF;
	MOVLW	0xff
	MOVWF	_P0
_00114_DS_
;	.line	28; "main.c"	P0=~P0;
	COMF	_P0,W
	MOVWF	_P0
;	.line	29; "main.c"	P00 = ~P00;       
	BSF	_P0bits,0
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
;	.line	8; "main.c"	lVar = gVar-1;
	DECF	_gVar,W
;;1	MOVWF	r0x1001
;	.line	9; "main.c"	if(lVar==18)
	XORLW	0x12
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;	.line	11; "main.c"	P1 = 0;
	CLRF	_P1
	GOTO	_00108_DS_
_00106_DS_
;	.line	15; "main.c"	P1 = 1;
	MOVLW	0x01
	MOVWF	_P1
_00108_DS_
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   19+    0 =    19 instructions (   38 byte)

	end
