;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 27 2017) (MINGW32)
; This file was generated Wed Sep 27 18:11:57 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"int1.c"
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
	global	_int_isr
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
UDL_int1_0	udata
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'int_isr'
;@int_isr int_isr                   Allocated to registers ;size:2
;@int_isr STATUSbits                Allocated to registers ;size:1
;@int_isr MCRbits                   Allocated to registers ;size:1
;@int_isr INTEbits                  Allocated to registers ;size:1
;@int_isr INTFbits                  Allocated to registers ;size:1
;@int_isr IOP0bits                  Allocated to registers ;size:1
;@int_isr OEP0bits                  Allocated to registers ;size:1
;@int_isr PUP0bits                  Allocated to registers ;size:1
;@int_isr ANSELbits                 Allocated to registers ;size:1
;@int_isr IOP1bits                  Allocated to registers ;size:1
;@int_isr OEP1bits                  Allocated to registers ;size:1
;@int_isr PUP1bits                  Allocated to registers ;size:1
;@int_isr KBIMbits                  Allocated to registers ;size:1
;@int_isr T0CRbits                  Allocated to registers ;size:1
;@int_isr T1CRbits                  Allocated to registers ;size:1
;@int_isr LVDCRbits                 Allocated to registers ;size:1
;@int_isr OSCMbits                  Allocated to registers ;size:1
;@int_isr ADCR0bits                 Allocated to registers ;size:1
;@int_isr ADCR1bits                 Allocated to registers ;size:1
;@int_isr INDF                      Allocated to registers ;size:1
;@int_isr INDF0                     Allocated to registers ;size:1
;@int_isr INDF1                     Allocated to registers ;size:1
;@int_isr INDF2                     Allocated to registers ;size:1
;@int_isr HIBYTE                    Allocated to registers ;size:1
;@int_isr FSR                       Allocated to registers ;size:1
;@int_isr FSR0                      Allocated to registers ;size:1
;@int_isr FSR1                      Allocated to registers ;size:1
;@int_isr PCL                       Allocated to registers ;size:1
;@int_isr STATUS                    Allocated to registers ;size:1
;@int_isr MCR                       Allocated to registers ;size:1
;@int_isr INDF3                     Allocated to registers ;size:1
;@int_isr INTE                      Allocated to registers ;size:1
;@int_isr INTF                      Allocated to registers ;size:1
;@int_isr IOP0                      Allocated to registers ;size:1
;@int_isr OEP0                      Allocated to registers ;size:1
;@int_isr PUP0                      Allocated to registers ;size:1
;@int_isr ANSEL                     Allocated to registers ;size:1
;@int_isr IOP1                      Allocated to registers ;size:1
;@int_isr OEP1                      Allocated to registers ;size:1
;@int_isr PUP1                      Allocated to registers ;size:1
;@int_isr KBIM                      Allocated to registers ;size:1
;@int_isr T0CR                      Allocated to registers ;size:1
;@int_isr T0CNT                     Allocated to registers ;size:1
;@int_isr T0LOAD                    Allocated to registers ;size:1
;@int_isr T0DATA                    Allocated to registers ;size:1
;@int_isr T1CR                      Allocated to registers ;size:1
;@int_isr T1CNT                     Allocated to registers ;size:1
;@int_isr T1LOAD                    Allocated to registers ;size:1
;@int_isr T1DATA                    Allocated to registers ;size:1
;@int_isr LVDCR                     Allocated to registers ;size:1
;@int_isr OSCM                      Allocated to registers ;size:1
;@int_isr ADCR0                     Allocated to registers ;size:1
;@int_isr ADCR1                     Allocated to registers ;size:1
;@int_isr ADRH                      Allocated to registers ;size:1
;@int_isr ADRL                      Allocated to registers ;size:1
;@int_isr OSCAL                     Allocated to registers ;size:1
;@end Allocation info for local variables in function 'int_isr';
;@Allocation info for local variables in function 'main'
;@main a                         Allocated to registers r0x1000 ;size:1
;@main b                         Allocated to registers r0x1001 ;size:1
;@main c                         Allocated to registers ;size:1
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
;	.line	5; "int1.c"	P01 = 1;
	BSET	_IOP0bits,1
;	.line	6; "int1.c"	P01 = 0;
	BCLR	_IOP0bits,1
;	.line	7; "int1.c"	P01 = 1;
	BSET	_IOP0bits,1
;	.line	8; "int1.c"	T1IF = 0;
	BCLR	_INTFbits,1
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_int1	code
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
;	.line	15; "int1.c"	OEP1 = 0x01;
	MOVAI	0x01
	MOVRA	_OEP1
;	.line	16; "int1.c"	KBIM = OEP1 & 0x55;
	MOVAI	0x55
	ANDAR	_OEP1
	MOVRA	_KBIM
;	.line	17; "int1.c"	KBIM = OEP1 | 0x66;
	MOVAI	0x66
	ORAR	_OEP1
	MOVRA	_KBIM
;	.line	18; "int1.c"	KBIM = OEP1 ^ 0x66;
	MOVAI	0x66
	XORAR	_OEP1
	MOVRA	_KBIM
;	.line	19; "int1.c"	KBIE = 1;
	BSET	_INTEbits,4
;	.line	23; "int1.c"	while(a==3)
	MOVAI	0x01
	MOVRA	r0x1000
	MOVAI	0x02
	MOVRA	r0x1001
_00109_DS_
	MOVAR	r0x1000
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00112_DS_
;	.line	25; "int1.c"	a++;
	INCR	r0x1000
;	.line	26; "int1.c"	b = b + 2;
	INCR	r0x1001
	INCR	r0x1001
;	.line	27; "int1.c"	c = a + b;
	GOTO	_00109_DS_
_00112_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   30+    0 =    30 instructions (   60 byte)

	end
