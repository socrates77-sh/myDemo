;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 27 2017) (MINGW32)
; This file was generated Wed Sep 27 18:17:58 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"type_char.c"
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
	global	_main
	global	_c_a
	global	_c_b
	global	_uc_a
	global	_uc_b

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
UD_type_char_0	udata
_c_a	res	1

UD_type_char_1	udata
_c_b	res	1

UD_type_char_2	udata
_uc_a	res	1

UD_type_char_3	udata
_uc_b	res	1

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
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main ANSELbits                 Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main LVDCRbits                 Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main c_a                       Allocated to registers ;size:1
;@main c_b                       Allocated to registers ;size:1
;@main uc_a                      Allocated to registers ;size:1
;@main uc_b                      Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main INDF0                     Allocated to registers ;size:1
;@main INDF1                     Allocated to registers ;size:1
;@main INDF2                     Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main ANSEL                     Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@main LVDCR                     Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main OSCAL                     Allocated to registers ;size:1
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
code_type_char	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	8; "type_char.c"	c_a = MCR;
	MOVAR	_MCR
	MOVRA	_c_a
;	.line	9; "type_char.c"	c_b = KBIM;
	MOVAR	_KBIM
	MOVRA	_c_b
;	.line	10; "type_char.c"	uc_a = MCR;
	MOVAR	_MCR
	MOVRA	_uc_a
;	.line	11; "type_char.c"	uc_b = KBIM;
	MOVAR	_KBIM
	MOVRA	_uc_b
;	.line	13; "type_char.c"	IOP0 = c_a + c_b;
	MOVAR	_c_b
	ADDAR	_c_a
	MOVRA	_IOP0
;	.line	14; "type_char.c"	IOP0 = uc_a + uc_b;
	MOVAR	_uc_b
	ADDAR	_uc_a
	MOVRA	_IOP0
;	.line	15; "type_char.c"	IOP1 = c_a - c_b;
	MOVAR	_c_b
	RSUBAR	_c_a
	MOVRA	_IOP1
;	.line	16; "type_char.c"	IOP1 = uc_a - uc_b;
	MOVAR	_uc_b
	RSUBAR	_uc_a
	MOVRA	_IOP1
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0x1=1), size=1, mask=ff
;	.line	18; "type_char.c"	if (c_a > 0) IOP0 = c_b;
	MOVAR	_c_a
	ADDAI	0x80
	ADDAI	0x7f
	JBSET	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3194: created from rifx:00D4608C
	MOVAR	_c_b
	MOVRA	_IOP0
_00106_DS_
;	.line	19; "type_char.c"	if (uc_a > 0) IOP0 = uc_b;
	MOVAI	0x00
	ORAR	_uc_a
	JBCLR	STATUS,2
	GOTO	_00108_DS_
	MOVAR	_uc_b
	MOVRA	_IOP0
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0xFFFFFFFE=-2), size=1, mask=ff
_00108_DS_
;	.line	21; "type_char.c"	if (c_a > -3) IOP0 = c_b;
	MOVAR	_c_a
	ADDAI	0x80
	ADDAI	0x82
	JBSET	STATUS,0
	GOTO	_00111_DS_
;;genSkipc:3194: created from rifx:00D4608C
	MOVAR	_c_b
	MOVRA	_IOP0
_00111_DS_
;	.line	22; "type_char.c"	if (uc_a > -3) IOP0 = uc_b;
	MOVAR	_uc_b
	MOVRA	_IOP0
_00114_DS_
;	.line	24; "type_char.c"	while(1);
	GOTO	_00114_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   44+    0 =    44 instructions (   88 byte)

	end
