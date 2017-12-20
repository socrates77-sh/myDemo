;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:53:39 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"type_short.c"
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
	global	_ram1
	global	_ram0
	global	_iram

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
UD_type_short_0	udata
_c_a	res	2

UD_type_short_1	udata
_c_b	res	2

UD_type_short_2	udata
_uc_a	res	2

UD_type_short_3	udata
_uc_b	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_type_short_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_type_short_21	udata_ovr	0x0021
_ram1
	res	1
UD_abs_type_short_30	udata_ovr	0x0030
_iram
	res	2
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_type_short_0	udata
r0x1008	res	1
r0x1009	res	1
r0x100B	res	1
r0x100A	res	1
r0x100C	res	1
r0x100E	res	1
r0x100F	res	1
r0x1010	res	1
r0x1011	res	1
r0x1013	res	1
r0x1014	res	1
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
;@main c_a                       Allocated to registers ;size:2
;@main c_b                       Allocated to registers ;size:2
;@main uc_a                      Allocated to registers ;size:2
;@main uc_b                      Allocated to registers ;size:2
;@main ram1                      Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
;@main iram                      Allocated to registers ;size:2
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
code_type_short	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;14 compiler assigned registers:
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	15; "type_short.c"	ram1 = 0x20;
	MOVAI	0x20
	MOVRA	_ram1
;	.line	16; "type_short.c"	ram0 = 0x28;
	MOVAI	0x28
	MOVRA	_ram0
;	.line	17; "type_short.c"	c_a = (ram1<<8) + ram0;
	MOVAR	_ram1
	MOVRA	r0x100A
	MOVRA	r0x1008
	CLRR	r0x1009
;;116	MOVAR	r0x1008
	CLRR	r0x100B
	MOVAR	_ram0
	MOVRA	r0x1008
	CLRR	r0x1009
	MOVAR	r0x1008
	ADDAR	r0x100B
	MOVRA	_c_a
	MOVAR	r0x100A
	MOVRA	(_c_a + 1)
	MOVAI	0x00
	JBCLR	PFLAG,2
	JZAR	r0x1009
	ADDRA	(_c_a + 1)
;	.line	19; "type_short.c"	ram1 = 0xa4;
	MOVAI	0xa4
	MOVRA	_ram1
;	.line	20; "type_short.c"	ram0 = 0xd0;
	MOVAI	0xd0
	MOVRA	_ram0
;	.line	21; "type_short.c"	c_b = (ram1<<8) + ram0;
	MOVAR	_ram1
	MOVRA	r0x100A
	MOVRA	r0x1008
	CLRR	r0x1009
;;115	MOVAR	r0x1008
	CLRR	r0x100B
	MOVAR	_ram0
	MOVRA	r0x1008
	CLRR	r0x1009
	MOVAR	r0x1008
	ADDAR	r0x100B
	MOVRA	_c_b
	MOVAR	r0x100A
	MOVRA	(_c_b + 1)
	MOVAI	0x00
	JBCLR	PFLAG,2
	JZAR	r0x1009
	ADDRA	(_c_b + 1)
;	.line	23; "type_short.c"	ram1 = 0x20;
	MOVAI	0x20
	MOVRA	_ram1
;	.line	24; "type_short.c"	ram0 = 0x28;
	MOVAI	0x28
	MOVRA	_ram0
;	.line	25; "type_short.c"	uc_a = (ram1<<8) + ram0;
	MOVAR	_ram1
	MOVRA	r0x100A
	MOVRA	r0x1008
	CLRR	r0x1009
;;113	MOVAR	r0x1008
	CLRR	r0x100B
	MOVAR	_ram0
	MOVRA	r0x1008
	CLRR	r0x1009
	MOVAR	r0x1008
	ADDAR	r0x100B
	MOVRA	_uc_a
	MOVAR	r0x100A
	MOVRA	(_uc_a + 1)
	MOVAI	0x00
	JBCLR	PFLAG,2
	JZAR	r0x1009
	ADDRA	(_uc_a + 1)
;	.line	27; "type_short.c"	ram1 = 0xe3;
	MOVAI	0xe3
	MOVRA	_ram1
;	.line	28; "type_short.c"	ram0 = 0x80;
	MOVAI	0x80
	MOVRA	_ram0
;	.line	29; "type_short.c"	uc_b = (ram1<<8) + ram0;
	MOVAR	_ram1
	MOVRA	r0x100A
	MOVRA	r0x1008
	CLRR	r0x1009
;;109	MOVAR	r0x1008
	CLRR	r0x100B
	MOVAR	_ram0
	MOVRA	r0x1008
	CLRR	r0x1009
	MOVAR	r0x1008
	ADDAR	r0x100B
	MOVRA	_uc_b
	MOVAR	r0x100A
	MOVRA	(_uc_b + 1)
	MOVAI	0x00
	JBCLR	PFLAG,2
	JZAR	r0x1009
	ADDRA	(_uc_b + 1)
;	.line	32; "type_short.c"	ram1 = (c_a + c_b)>>8;   	   	   	// 0xc4f8
	MOVAR	_c_b
	ADDAR	_c_a
	MOVRA	r0x1008
	MOVAR	(_c_a + 1)
	MOVRA	r0x1009
	MOVAR	(_c_b + 1)
	JBCLR	PFLAG,2
	JZAR	(_c_b + 1)
	ADDRA	r0x1009
	MOVAR	r0x1009
	MOVRA	r0x100B
	CLRR	r0x100A
	JBCLR	r0x100B,7
	DJZR	r0x100A
	NOP	
	MOVAR	r0x100B
	MOVRA	_ram1
;	.line	33; "type_short.c"	ram0 = (c_a + c_b) & 0xff;
	MOVAR	_c_a
	MOVRA	r0x100B
	MOVAR	_c_b
	MOVRA	r0x100A
	MOVAR	r0x100A
	ADDAR	r0x100B
	MOVRA	_ram0
;	.line	34; "type_short.c"	iram = (c_a + c_b);
	MOVAR	r0x1008
	MOVRA	_iram
	MOVAR	r0x1009
	MOVRA	(_iram + 1)
;	.line	36; "type_short.c"	ram1 = (uc_a + uc_b)>>8;     	   	   	// 0x03a8
	MOVAR	_uc_b
	ADDAR	_uc_a
	MOVRA	r0x1008
	MOVAR	(_uc_a + 1)
	MOVRA	r0x1009
	MOVAR	(_uc_b + 1)
	JBCLR	PFLAG,2
	JZAR	(_uc_b + 1)
	ADDRA	r0x1009
;;103	MOVAR	r0x1009
;;1	CLRR	r0x100D
;;102	MOVAR	r0x100C
	MOVAR	r0x1009
	MOVRA	r0x100C
	MOVRA	_ram1
;	.line	37; "type_short.c"	ram0 = (uc_a + uc_b) & 0xff;
	MOVAR	_uc_a
	MOVRA	r0x100C
	MOVAR	_uc_b
	MOVRA	r0x100E
	MOVAR	r0x100E
	ADDAR	r0x100C
	MOVRA	_ram0
;	.line	38; "type_short.c"	iram = (uc_a + uc_b);
	MOVAR	r0x1008
	MOVRA	_iram
	MOVAR	r0x1009
	MOVRA	(_iram + 1)
;	.line	40; "type_short.c"	ram1 = (c_a - c_b)>>8;   	   	   	// 0x7b58
	MOVAR	_c_b
	XCH	_c_a
	ASUBRA	_c_a
	XCH	_c_a
	MOVRA	r0x1008
	MOVAR	(_c_b + 1)
	JBSET	PFLAG,2
	JZAR	(_c_b + 1)
	NOP	
	XCH	(_c_a + 1)
	ASUBRA	(_c_a + 1)
	XCH	(_c_a + 1)
	MOVRA	r0x100F
	MOVRA	r0x1009
;;114	MOVAR	r0x1009
	CLRR	r0x1010
	JBCLR	r0x100F,7
	DJZR	r0x1010
	NOP	
	MOVAR	r0x100F
	MOVRA	_ram1
;	.line	41; "type_short.c"	ram0 = (c_a - c_b) & 0xff;
	MOVAR	r0x100A
	XCH	r0x100B
	ASUBRA	r0x100B
	XCH	r0x100B
	MOVRA	_ram0
;	.line	42; "type_short.c"	iram = (c_a - c_b);
	MOVAR	r0x1008
	MOVRA	_iram
	MOVAR	r0x1009
	MOVRA	(_iram + 1)
;	.line	44; "type_short.c"	ram1 = (uc_a - uc_b)>>8;     	   	   	// 0x3ca8
	MOVAR	_uc_b
	XCH	_uc_a
	ASUBRA	_uc_a
	XCH	_uc_a
	MOVRA	r0x1008
	MOVAR	(_uc_b + 1)
	JBSET	PFLAG,2
	JZAR	(_uc_b + 1)
	NOP	
	XCH	(_uc_a + 1)
	ASUBRA	(_uc_a + 1)
	XCH	(_uc_a + 1)
	MOVRA	r0x100F
	MOVRA	r0x1009
;;110	MOVAR	r0x1009
	CLRR	r0x1010
	MOVAR	r0x100F
	MOVRA	_ram1
;	.line	45; "type_short.c"	ram0 = (uc_a - uc_b) & 0xff;
	MOVAR	r0x100E
	XCH	r0x100C
	ASUBRA	r0x100C
	XCH	r0x100C
	MOVRA	_ram0
;	.line	46; "type_short.c"	iram = (uc_a - uc_b);
	MOVAR	r0x1008
	MOVRA	_iram
	MOVAR	r0x1009
	MOVRA	(_iram + 1)
;	.line	49; "type_short.c"	ram1 = (uc_a + c_b)>>8;      	   	   	// 0xc4f8
	MOVAR	_c_b
	MOVRA	r0x1008
	MOVAR	(_c_b + 1)
	MOVRA	r0x1009
	MOVAR	r0x1008
	ADDAR	_uc_a
	MOVRA	r0x100F
	MOVAR	(_uc_a + 1)
	MOVRA	r0x1010
	MOVAR	r0x1009
	JBCLR	PFLAG,2
	JZAR	r0x1009
	ADDRA	r0x1010
;;106	MOVAR	r0x1010
;;1	CLRR	r0x1012
;;105	MOVAR	r0x1011
	MOVAR	r0x1010
	MOVRA	r0x1011
	MOVRA	_ram1
;	.line	50; "type_short.c"	ram0 = (uc_a + c_b) & 0xff;
	MOVAR	r0x100C
	MOVRA	r0x1011
	MOVAR	r0x100A
	ADDAR	r0x1011
	MOVRA	_ram0
;	.line	51; "type_short.c"	iram = (uc_a + c_b);
	MOVAR	r0x100F
	MOVRA	_iram
	MOVAR	r0x1010
	MOVRA	(_iram + 1)
;	.line	53; "type_short.c"	ram1 = (c_a + uc_b)>>8;      	   	   	// 0x03a8
	MOVAR	_c_a
	MOVRA	r0x100C
	MOVAR	(_c_a + 1)
	MOVRA	r0x1013
	MOVRA	r0x100F
	MOVAR	_uc_b
	ADDAR	r0x100C
	MOVRA	r0x1010
;;104	MOVAR	r0x100F
	MOVAR	(_uc_b + 1)
	JBCLR	PFLAG,2
	JZAR	(_uc_b + 1)
	ADDRA	r0x1013
;;112	MOVAR	r0x1013
;;1	CLRR	r0x1015
;;111	MOVAR	r0x1014
	MOVAR	r0x1013
	MOVRA	r0x1014
	MOVRA	_ram1
;;108	MOVAR	r0x100E
;;107	MOVAR	r0x1014
;	.line	54; "type_short.c"	ram0 = (c_a + uc_b) & 0xff;
	MOVAR	r0x100E
	MOVRA	r0x1014
	ADDAR	r0x100B
	MOVRA	_ram0
;	.line	55; "type_short.c"	iram = (c_a + uc_b);
	MOVAR	r0x1010
	MOVRA	_iram
	MOVAR	r0x1013
	MOVRA	(_iram + 1)
;	.line	57; "type_short.c"	ram1 = (uc_a - c_b)>>8;      	   	   	// 0x7b58
	MOVAR	r0x1008
	XCH	_uc_a
	ASUBRA	_uc_a
	XCH	_uc_a
	MOVRA	r0x1008
	MOVAR	r0x1009
	JBSET	PFLAG,2
	JZAR	r0x1009
	NOP	
	XCH	(_uc_a + 1)
	ASUBRA	(_uc_a + 1)
	XCH	(_uc_a + 1)
	MOVRA	r0x100E
	MOVRA	r0x1009
;;101	MOVAR	r0x1009
	CLRR	r0x1010
	MOVAR	r0x100E
	MOVRA	_ram1
;	.line	58; "type_short.c"	ram0 = (uc_a - c_b) & 0xff;
	MOVAR	r0x100A
	XCH	r0x1011
	ASUBRA	r0x1011
	XCH	r0x1011
	MOVRA	_ram0
;	.line	59; "type_short.c"	iram = (uc_a - c_b);
	MOVAR	r0x1008
	MOVRA	_iram
	MOVAR	r0x1009
	MOVRA	(_iram + 1)
;	.line	61; "type_short.c"	ram1 = (c_a - uc_b)>>8;      	   	   	// 0x3ca8
	MOVAR	_uc_b
	XCH	r0x100C
	ASUBAR	r0x100C
	XCH	r0x100C
	MOVAR	(_uc_b + 1)
	XCH	r0x100F
	JBSET	PFLAG,2
	JZR	r0x100F
	ASUBAR	r0x100F
	XCH	r0x100F
;;100	MOVAR	r0x100F
	CLRR	r0x1009
;;99	MOVAR	r0x1008
	MOVAR	r0x100F
	MOVRA	r0x1008
	MOVRA	_ram1
;	.line	62; "type_short.c"	ram0 = (c_a - uc_b) & 0xff;
	MOVAR	r0x1014
	XCH	r0x100B
	ASUBRA	r0x100B
	XCH	r0x100B
	MOVRA	_ram0
;	.line	63; "type_short.c"	iram = (c_a - uc_b);
	MOVAR	r0x100C
	MOVRA	_iram
	MOVAR	r0x100F
	MOVRA	(_iram + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0x1=1), size=2, mask=ffff
;	.line	66; "type_short.c"	if (c_a > 0) ram0 = c_a; 	   	   	// true
	MOVAR	(_c_a + 1)
	ADDAI	0x80
	ADDAI	0x80
	JBSET	PFLAG,0
	GOTO	_00128_DS_
	MOVAI	0x01
	XCH	_c_a
	ASUBRA	_c_a
	XCH	_c_a
_00128_DS_
	JBSET	PFLAG,2
	GOTO	_00106_DS_
;;genSkipc:3223: created from rifx:00DD608C
	MOVAR	_c_a
	MOVRA	_ram0
_00106_DS_
;	.line	67; "type_short.c"	if (uc_a > 0) ram0 = c_a + 1;    	// true
	MOVAR	_uc_a
	ORAR	(_uc_a + 1)
	JBCLR	PFLAG,0
	GOTO	_00108_DS_
	JZAR	r0x100B
	NOP	
	MOVRA	_ram0
;;swapping arguments (AOP_TYPEs 1/3)
;;signed compare: left >= lit(0xFFFFFFFE=-2), size=2, mask=ffff
_00108_DS_
;	.line	69; "type_short.c"	if (c_b > -3) ram0 = c_a + 2;	   	// false
	MOVAR	(_c_b + 1)
	ADDAI	0x80
	ADDAI	0x81
	JBSET	PFLAG,0
	GOTO	_00129_DS_
	MOVAI	0xfe
	XCH	_c_b
	ASUBRA	_c_b
	XCH	_c_b
_00129_DS_
	JBSET	PFLAG,2
	GOTO	_00110_DS_
;;genSkipc:3223: created from rifx:00DD608C
	MOVAI	0x02
	ADDAR	r0x100B
	MOVRA	_ram0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xFFFE=65534), size=2
_00110_DS_
;	.line	70; "type_short.c"	if (uc_b > -3) ram0 = c_a + 3;   	// false
	MOVAI	0xff
	XCH	(_uc_b + 1)
	ASUBRA	(_uc_b + 1)
	XCH	(_uc_b + 1)
	JBSET	PFLAG,0
	GOTO	_00130_DS_
	MOVAI	0xfe
	XCH	_uc_b
	ASUBRA	_uc_b
	XCH	_uc_b
_00130_DS_
	JBSET	PFLAG,2
	GOTO	_00114_DS_
;;genSkipc:3223: created from rifx:00DD608C
	MOVAI	0x03
	ADDAR	r0x100B
	MOVRA	_ram0
_00114_DS_
;	.line	72; "type_short.c"	while(1);
	GOTO	_00114_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	  338+    0 =   338 instructions (  676 byte)

	end
