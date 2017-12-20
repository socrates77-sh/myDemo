;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:53:46 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"type_long.c"
	list	p=2K7041
	radix dec
	include "2K7041.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_HIBYTEbits
	extern	_FSR0bits
	extern	_FSR1bits
	extern	_PFLAGbits
	extern	_ZEROTRbits
	extern	_OSCCALbits
	extern	_WKCR0bits
	extern	_WKCR5bits
	extern	_ADIOS0bits
	extern	_ADIOS1bits
	extern	_ADIOS2bits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADCR2bits
	extern	_OEP0bits
	extern	_EINTCRbits
	extern	_OEP4bits
	extern	_OEP5bits
	extern	_INTFbits
	extern	_INTEbits
	extern	_OSCMbits
	extern	_WDTCRbits
	extern	_T1LDRbits
	extern	_PCLbits
	extern	_PCHbits
	extern	_IOP0bits
	extern	_IOP4bits
	extern	_IOP5bits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_BUZCRbits
	extern	_MCRbits
	extern	_PUP0bits
	extern	_PUP4bits
	extern	_PUP5bits
	extern	_INDFbits
	extern	_PWMCR0bits
	extern	_PWMCR1bits
	extern	_PWMCNTbits
	extern	_PWMADTbits
	extern	_PWMBDTbits
	extern	_PWMCDTbits
	extern	_PWMPDbits
	extern	_HIBYTE
	extern	_FSR0
	extern	_FSR1
	extern	_PFLAG
	extern	_ZEROTR
	extern	_OSCCAL
	extern	_WKCR0
	extern	_WKCR5
	extern	_ADIOS0
	extern	_ADIOS1
	extern	_ADIOS2
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_ADCR2
	extern	_OEP0
	extern	_EINTCR
	extern	_OEP4
	extern	_OEP5
	extern	_INTF
	extern	_INTE
	extern	_OSCM
	extern	_WDTCR
	extern	_T1LDR
	extern	_PCL
	extern	_PCH
	extern	_IOP0
	extern	_IOP4
	extern	_IOP5
	extern	_T0CR
	extern	_T0CNT
	extern	_T1CR
	extern	_T1CNT
	extern	_BUZCR
	extern	_MCR
	extern	_PUP0
	extern	_PUP4
	extern	_PUP5
	extern	_INDF
	extern	_PWMCR0
	extern	_PWMCR1
	extern	_PWMCNT
	extern	_PWMADT
	extern	_PWMBDT
	extern	_PWMCDT
	extern	_PWMPD
	extern	_STKR0L
	extern	_STKR0H
	extern	_STKR1L
	extern	_STKR1H
	extern	_STKR2L
	extern	_STKR2H
	extern	_STKR3L
	extern	_STKR3H
	extern	_STKR4L
	extern	_STKR4H
	extern	_STKR5L
	extern	_STKR5H
	extern	_STKR6L
	extern	_STKR6H
	extern	_STKR7L
	extern	_STKR7H
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_c_a
	global	_c_b
	global	_uc_a
	global	_uc_b
	global	_ram4
	global	_ram3
	global	_ram2
	global	_ram1
	global	_lram
	global	_lram1

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
UD_type_long_0	udata
_c_a	res	4

UD_type_long_1	udata
_c_b	res	4

UD_type_long_2	udata
_uc_a	res	4

UD_type_long_3	udata
_uc_b	res	4

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_type_long_20	udata_ovr	0x0020
_ram1
	res	1
UD_abs_type_long_21	udata_ovr	0x0021
_ram2
	res	1
UD_abs_type_long_22	udata_ovr	0x0022
_ram3
	res	1
UD_abs_type_long_23	udata_ovr	0x0023
_ram4
	res	1
UD_abs_type_long_30	udata_ovr	0x0030
_lram
	res	4
UD_abs_type_long_40	udata_ovr	0x0040
_lram1
	res	4
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main HIBYTEbits                Allocated to registers ;size:1
;@main FSR0bits                  Allocated to registers ;size:1
;@main FSR1bits                  Allocated to registers ;size:1
;@main PFLAGbits                 Allocated to registers ;size:1
;@main ZEROTRbits                Allocated to registers ;size:1
;@main OSCCALbits                Allocated to registers ;size:1
;@main WKCR0bits                 Allocated to registers ;size:1
;@main WKCR5bits                 Allocated to registers ;size:1
;@main ADIOS0bits                Allocated to registers ;size:1
;@main ADIOS1bits                Allocated to registers ;size:1
;@main ADIOS2bits                Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ADCR2bits                 Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main EINTCRbits                Allocated to registers ;size:1
;@main OEP4bits                  Allocated to registers ;size:1
;@main OEP5bits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main WDTCRbits                 Allocated to registers ;size:1
;@main T1LDRbits                 Allocated to registers ;size:1
;@main PCLbits                   Allocated to registers ;size:1
;@main PCHbits                   Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main IOP4bits                  Allocated to registers ;size:1
;@main IOP5bits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T0CNTbits                 Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T1CNTbits                 Allocated to registers ;size:1
;@main BUZCRbits                 Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main PUP4bits                  Allocated to registers ;size:1
;@main PUP5bits                  Allocated to registers ;size:1
;@main INDFbits                  Allocated to registers ;size:1
;@main PWMCR0bits                Allocated to registers ;size:1
;@main PWMCR1bits                Allocated to registers ;size:1
;@main PWMCNTbits                Allocated to registers ;size:1
;@main PWMADTbits                Allocated to registers ;size:1
;@main PWMBDTbits                Allocated to registers ;size:1
;@main PWMCDTbits                Allocated to registers ;size:1
;@main PWMPDbits                 Allocated to registers ;size:1
;@main c_a                       Allocated to registers ;size:4
;@main c_b                       Allocated to registers ;size:4
;@main uc_a                      Allocated to registers ;size:4
;@main uc_b                      Allocated to registers ;size:4
;@main ram4                      Allocated to registers ;size:1
;@main ram3                      Allocated to registers ;size:1
;@main ram2                      Allocated to registers ;size:1
;@main ram1                      Allocated to registers ;size:1
;@main lram                      Allocated to registers ;size:4
;@main lram1                     Allocated to registers ;size:4
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PFLAG                     Allocated to registers ;size:1
;@main ZEROTR                    Allocated to registers ;size:1
;@main OSCCAL                    Allocated to registers ;size:1
;@main WKCR0                     Allocated to registers ;size:1
;@main WKCR5                     Allocated to registers ;size:1
;@main ADIOS0                    Allocated to registers ;size:1
;@main ADIOS1                    Allocated to registers ;size:1
;@main ADIOS2                    Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main ADCR2                     Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main EINTCR                    Allocated to registers ;size:1
;@main OEP4                      Allocated to registers ;size:1
;@main OEP5                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main WDTCR                     Allocated to registers ;size:1
;@main T1LDR                     Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main PCH                       Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main IOP4                      Allocated to registers ;size:1
;@main IOP5                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main BUZCR                     Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main PUP4                      Allocated to registers ;size:1
;@main PUP5                      Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main PWMCR0                    Allocated to registers ;size:1
;@main PWMCR1                    Allocated to registers ;size:1
;@main PWMCNT                    Allocated to registers ;size:1
;@main PWMADT                    Allocated to registers ;size:1
;@main PWMBDT                    Allocated to registers ;size:1
;@main PWMCDT                    Allocated to registers ;size:1
;@main PWMPD                     Allocated to registers ;size:1
;@main STKR0L                    Allocated to registers ;size:1
;@main STKR0H                    Allocated to registers ;size:1
;@main STKR1L                    Allocated to registers ;size:1
;@main STKR1H                    Allocated to registers ;size:1
;@main STKR2L                    Allocated to registers ;size:1
;@main STKR2H                    Allocated to registers ;size:1
;@main STKR3L                    Allocated to registers ;size:1
;@main STKR3H                    Allocated to registers ;size:1
;@main STKR4L                    Allocated to registers ;size:1
;@main STKR4H                    Allocated to registers ;size:1
;@main STKR5L                    Allocated to registers ;size:1
;@main STKR5H                    Allocated to registers ;size:1
;@main STKR6L                    Allocated to registers ;size:1
;@main STKR6H                    Allocated to registers ;size:1
;@main STKR7L                    Allocated to registers ;size:1
;@main STKR7H                    Allocated to registers ;size:1
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
code_type_long	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	29; "type_long.c"	c_a = 0x10092028;
	MOVAI	0x28
	MOVRA	_c_a
	MOVAI	0x20
	MOVRA	(_c_a + 1)
	MOVAI	0x09
	MOVRA	(_c_a + 2)
	MOVAI	0x10
	MOVRA	(_c_a + 3)
;	.line	30; "type_long.c"	lram = c_a;
	MOVAI	0x28
	MOVRA	_lram
	MOVAI	0x20
	MOVRA	(_lram + 1)
	MOVAI	0x09
	MOVRA	(_lram + 2)
	MOVAI	0x10
	MOVRA	(_lram + 3)
;	.line	37; "type_long.c"	c_b = 0xe44e6910;
	MOVAI	0x10
	MOVRA	_c_b
	MOVAI	0x69
	MOVRA	(_c_b + 1)
	MOVAI	0x4e
	MOVRA	(_c_b + 2)
	MOVAI	0xe4
	MOVRA	(_c_b + 3)
;	.line	38; "type_long.c"	lram = c_b;
	MOVAI	0x10
	MOVRA	_lram
	MOVAI	0x69
	MOVRA	(_lram + 1)
	MOVAI	0x4e
	MOVRA	(_lram + 2)
	MOVAI	0xe4
	MOVRA	(_lram + 3)
;	.line	46; "type_long.c"	uc_a = 0x23572028;
	MOVAI	0x28
	MOVRA	_uc_a
	MOVAI	0x20
	MOVRA	(_uc_a + 1)
	MOVAI	0x57
	MOVRA	(_uc_a + 2)
	MOVAI	0x23
	MOVRA	(_uc_a + 3)
;	.line	47; "type_long.c"	lram = uc_a;
	MOVAI	0x28
	MOVRA	_lram
	MOVAI	0x20
	MOVRA	(_lram + 1)
	MOVAI	0x57
	MOVRA	(_lram + 2)
	MOVAI	0x23
	MOVRA	(_lram + 3)
;	.line	54; "type_long.c"	uc_b = 0x9023e380;
	MOVAI	0x80
	MOVRA	_uc_b
	MOVAI	0xe3
	MOVRA	(_uc_b + 1)
	MOVAI	0x23
	MOVRA	(_uc_b + 2)
	MOVAI	0x90
	MOVRA	(_uc_b + 3)
;	.line	55; "type_long.c"	lram = uc_b;
	MOVAI	0x80
	MOVRA	_lram
	MOVAI	0xe3
	MOVRA	(_lram + 1)
	MOVAI	0x23
	MOVRA	(_lram + 2)
	MOVAI	0x90
	MOVRA	(_lram + 3)
;	.line	59; "type_long.c"	lram = (c_a + c_b);
	MOVAI	0x38
	MOVRA	_lram
	MOVAI	0x89
	MOVRA	(_lram + 1)
	MOVAI	0x57
	MOVRA	(_lram + 2)
	MOVAI	0xf4
	MOVRA	(_lram + 3)
;	.line	60; "type_long.c"	ram4 = (c_a + c_b)>>24;    	   	   	// 0xf4578938
	MOVAI	0xf4
	MOVRA	_ram4
;	.line	61; "type_long.c"	ram3 = (c_a + c_b)>>16;
	MOVAI	0x57
	MOVRA	_ram3
;	.line	62; "type_long.c"	ram2 = (c_a + c_b)>>8;
	MOVAI	0x89
	MOVRA	_ram2
;	.line	63; "type_long.c"	ram1 = (c_a + c_b);
	MOVAI	0x38
	MOVRA	_ram1
;	.line	65; "type_long.c"	lram = (uc_a + uc_b);
	MOVAI	0xa8
	MOVRA	_lram
	MOVAI	0x03
	MOVRA	(_lram + 1)
	MOVAI	0x7b
	MOVRA	(_lram + 2)
	MOVAI	0xb3
	MOVRA	(_lram + 3)
;	.line	66; "type_long.c"	ram4 = (uc_a + uc_b)>>24;      	   	   	// 0xb37b03a8
	MOVAI	0xb3
	MOVRA	_ram4
;	.line	67; "type_long.c"	ram3 = (uc_a + uc_b)>>16;
	MOVAI	0x7b
	MOVRA	_ram3
;	.line	68; "type_long.c"	ram2 = (uc_a + uc_b)>>8;
	MOVAI	0x03
	MOVRA	_ram2
;	.line	69; "type_long.c"	ram1 = (uc_a + uc_b);
	MOVAI	0xa8
	MOVRA	_ram1
;	.line	71; "type_long.c"	lram = (c_a - c_b);
	MOVAI	0x18
	MOVRA	_lram
	MOVAI	0xb7
	MOVRA	(_lram + 1)
	MOVAI	0xba
	MOVRA	(_lram + 2)
	MOVAI	0x2b
	MOVRA	(_lram + 3)
;	.line	72; "type_long.c"	ram4 = (c_a - c_b)>>24;        	   	   	// 0x2bbab718
	MOVAI	0x2b
	MOVRA	_ram4
;	.line	73; "type_long.c"	ram3 = (c_a - c_b)>>16;
	MOVAI	0xba
	MOVRA	_ram3
;	.line	74; "type_long.c"	ram2 = (c_a - c_b)>>8;
	MOVAI	0xb7
	MOVRA	_ram2
;	.line	75; "type_long.c"	ram1 = (c_a - c_b);
	MOVAI	0x18
	MOVRA	_ram1
;	.line	77; "type_long.c"	lram = (uc_a - uc_b);
	MOVAI	0xa8
	MOVRA	_lram
	MOVAI	0x3c
	MOVRA	(_lram + 1)
	MOVAI	0x33
	MOVRA	(_lram + 2)
	MOVAI	0x93
	MOVRA	(_lram + 3)
;	.line	78; "type_long.c"	ram4 = (uc_a - uc_b)>>24;          	   	   	// 0x93333ca8
	MOVAI	0x93
	MOVRA	_ram4
;	.line	79; "type_long.c"	ram3 = (uc_a - uc_b)>>16;
	MOVAI	0x33
	MOVRA	_ram3
;	.line	80; "type_long.c"	ram2 = (uc_a - uc_b)>>8;
	MOVAI	0x3c
	MOVRA	_ram2
;	.line	81; "type_long.c"	ram1 = (uc_a - uc_b);
	MOVAI	0xa8
	MOVRA	_ram1
;	.line	83; "type_long.c"	lram = (uc_a + c_b);
	MOVAI	0x38
	MOVRA	_lram
	MOVAI	0x89
	MOVRA	(_lram + 1)
	MOVAI	0xa5
	MOVRA	(_lram + 2)
	MOVAI	0x07
	MOVRA	(_lram + 3)
;	.line	84; "type_long.c"	ram4 = (uc_a + c_b)>>24;       	   	   	// 0x07a58938
	MOVAI	0x07
	MOVRA	_ram4
;	.line	85; "type_long.c"	ram3 = (uc_a + c_b)>>16;
	MOVAI	0xa5
	MOVRA	_ram3
;	.line	86; "type_long.c"	ram2 = (uc_a + c_b)>>8;
	MOVAI	0x89
	MOVRA	_ram2
;	.line	87; "type_long.c"	ram1 = (uc_a + c_b);
	MOVAI	0x38
	MOVRA	_ram1
;	.line	89; "type_long.c"	lram = (c_a + uc_b);
	MOVAI	0xa8
	MOVRA	_lram
	MOVAI	0x03
	MOVRA	(_lram + 1)
	MOVAI	0x2d
	MOVRA	(_lram + 2)
	MOVAI	0xa0
	MOVRA	(_lram + 3)
;	.line	90; "type_long.c"	ram4 = (c_a + uc_b)>>24;           	   	   	// 0xa02d03a8
	MOVAI	0xa0
	MOVRA	_ram4
;	.line	91; "type_long.c"	ram3 = (c_a + uc_b)>>16;
	MOVAI	0x2d
	MOVRA	_ram3
;	.line	92; "type_long.c"	ram2 = (c_a + uc_b)>>8;
	MOVAI	0x03
	MOVRA	_ram2
;	.line	93; "type_long.c"	ram1 = (c_a + uc_b);
	MOVAI	0xa8
	MOVRA	_ram1
;	.line	95; "type_long.c"	lram = (uc_a - c_b);
	CLRR	_lram
	CLRR	(_lram + 1)
	CLRR	(_lram + 2)
	MOVAI	0x80
	MOVRA	(_lram + 3)
;	.line	96; "type_long.c"	ram4 = (uc_a - c_b)>>24;       	   	   	// 0x80000000?
	MOVAI	0x80
	MOVRA	_ram4
;	.line	97; "type_long.c"	ram3 = (uc_a - c_b)>>16;
	CLRR	_ram3
;	.line	98; "type_long.c"	ram2 = (uc_a - c_b)>>8;
	CLRR	_ram2
;	.line	99; "type_long.c"	ram1 = (uc_a - c_b);
	MOVAI	0x18
	MOVRA	_ram1
;	.line	101; "type_long.c"	lram = (c_a - uc_b);
	CLRR	_lram
	CLRR	(_lram + 1)
	CLRR	(_lram + 2)
	MOVAI	0x80
	MOVRA	(_lram + 3)
;	.line	102; "type_long.c"	ram4 = (c_a - uc_b)>>24;           	   	   	// 0x80000000?
	MOVAI	0x80
	MOVRA	_ram4
;	.line	103; "type_long.c"	ram3 = (c_a - uc_b)>>16;
	CLRR	_ram3
;	.line	104; "type_long.c"	ram2 = (c_a - uc_b)>>8;
	CLRR	_ram2
;	.line	105; "type_long.c"	ram1 = (c_a - uc_b);
	MOVAI	0xa8
	MOVRA	_ram1
;	.line	109; "type_long.c"	if (c_a > 0) ram1 = c_a;   	   	   	// true
	MOVAI	0x28
	MOVRA	_ram1
;	.line	110; "type_long.c"	if (uc_a > 0) ram1 = c_a + 1;      	// true
	MOVAI	0x29
	MOVRA	_ram1
_00114_DS_
;	.line	115; "type_long.c"	while(1);
	GOTO	_00114_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	  188+    0 =   188 instructions (  376 byte)

	end
