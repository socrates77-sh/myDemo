;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 27 2017) (MINGW32)
; This file was generated Wed Sep 27 18:12:49 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=3221
	radix dec
	include "3221.inc"
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
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_fun1
	global	_main
	global	_gVar

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
UD_main_0	udata
_gVar	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_main_0	udata
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'fun1'
;@fun1 fun1                      Allocated to registers ;size:2
;@fun1 STATUSbits                Allocated to registers ;size:1
;@fun1 MCRbits                   Allocated to registers ;size:1
;@fun1 INTEbits                  Allocated to registers ;size:1
;@fun1 INTFbits                  Allocated to registers ;size:1
;@fun1 IOP0bits                  Allocated to registers ;size:1
;@fun1 OEP0bits                  Allocated to registers ;size:1
;@fun1 PUP0bits                  Allocated to registers ;size:1
;@fun1 ANSELbits                 Allocated to registers ;size:1
;@fun1 IOP1bits                  Allocated to registers ;size:1
;@fun1 OEP1bits                  Allocated to registers ;size:1
;@fun1 PUP1bits                  Allocated to registers ;size:1
;@fun1 KBIMbits                  Allocated to registers ;size:1
;@fun1 T0CRbits                  Allocated to registers ;size:1
;@fun1 T1CRbits                  Allocated to registers ;size:1
;@fun1 LVDCRbits                 Allocated to registers ;size:1
;@fun1 OSCMbits                  Allocated to registers ;size:1
;@fun1 ADCR0bits                 Allocated to registers ;size:1
;@fun1 ADCR1bits                 Allocated to registers ;size:1
;@fun1 gVar                      Allocated to registers ;size:1
;@fun1 lVar                      Allocated to registers r0x1001 ;size:1
;@fun1 INDF                      Allocated to registers ;size:1
;@fun1 INDF0                     Allocated to registers ;size:1
;@fun1 INDF1                     Allocated to registers ;size:1
;@fun1 INDF2                     Allocated to registers ;size:1
;@fun1 HIBYTE                    Allocated to registers ;size:1
;@fun1 FSR                       Allocated to registers ;size:1
;@fun1 FSR0                      Allocated to registers ;size:1
;@fun1 FSR1                      Allocated to registers ;size:1
;@fun1 PCL                       Allocated to registers ;size:1
;@fun1 STATUS                    Allocated to registers ;size:1
;@fun1 MCR                       Allocated to registers ;size:1
;@fun1 INDF3                     Allocated to registers ;size:1
;@fun1 INTE                      Allocated to registers ;size:1
;@fun1 INTF                      Allocated to registers ;size:1
;@fun1 IOP0                      Allocated to registers ;size:1
;@fun1 OEP0                      Allocated to registers ;size:1
;@fun1 PUP0                      Allocated to registers ;size:1
;@fun1 ANSEL                     Allocated to registers ;size:1
;@fun1 IOP1                      Allocated to registers ;size:1
;@fun1 OEP1                      Allocated to registers ;size:1
;@fun1 PUP1                      Allocated to registers ;size:1
;@fun1 KBIM                      Allocated to registers ;size:1
;@fun1 T0CR                      Allocated to registers ;size:1
;@fun1 T0CNT                     Allocated to registers ;size:1
;@fun1 T0LOAD                    Allocated to registers ;size:1
;@fun1 T0DATA                    Allocated to registers ;size:1
;@fun1 T1CR                      Allocated to registers ;size:1
;@fun1 T1CNT                     Allocated to registers ;size:1
;@fun1 T1LOAD                    Allocated to registers ;size:1
;@fun1 T1DATA                    Allocated to registers ;size:1
;@fun1 LVDCR                     Allocated to registers ;size:1
;@fun1 OSCM                      Allocated to registers ;size:1
;@fun1 ADCR0                     Allocated to registers ;size:1
;@fun1 ADCR1                     Allocated to registers ;size:1
;@fun1 ADRH                      Allocated to registers ;size:1
;@fun1 ADRL                      Allocated to registers ;size:1
;@fun1 OSCAL                     Allocated to registers ;size:1
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
;	.line	21; "main.c"	gVar = 18;
	MOVAI	0x12
	MOVRA	_gVar
;	.line	22; "main.c"	fun1();
	CALL	_fun1
;	.line	24; "main.c"	IOP0 = 0XFF;
	MOVAI	0xff
	MOVRA	_IOP0
_00114_DS_
;	.line	28; "main.c"	IOP0=~IOP0;
	COMAR	_IOP0
	MOVRA	_IOP0
;	.line	29; "main.c"	P00 = ~P00;       
	BSET	_IOP0bits,0
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
	DECAR	_gVar
	MOVRA	r0x1001
;	.line	9; "main.c"	if(lVar==18)
	MOVAR	r0x1001
	XORAI	0x12
	JBSET	STATUS,2
	GOTO	_00106_DS_
;	.line	11; "main.c"	IOP1 = 0;
	CLRR	_IOP1
	GOTO	_00108_DS_
_00106_DS_
;	.line	15; "main.c"	IOP1 = 1;
	MOVAI	0x01
	MOVRA	_IOP1
_00108_DS_
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   21+    0 =    21 instructions (   42 byte)

	end
