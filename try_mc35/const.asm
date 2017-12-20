;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:52:47 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"const.c"
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
UD_abs_const_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_const_21	udata_ovr	0x0021
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
;@main ram1                      Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
;@main c_a                       Allocated to registers ;size:1
;@main c_b                       Allocated to registers ;size:1
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
code_const	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	16; "const.c"	ram0 = c_a + c_b;  	// 9b
	MOVAI	0x9b
	MOVRA	_ram0
;	.line	17; "const.c"	ram1 = c_a - c_b;  	// d3
	MOVAI	0xd3
	MOVRA	_ram1
;	.line	19; "const.c"	if (c_a > 0) ram0 = c_b;   	   	// true
	MOVAI	0x64
	MOVRA	_ram0
;	.line	21; "const.c"	if (c_a > -3) ram0 = c_b+1;	   	// true
	MOVAI	0x65
	MOVRA	_ram0
_00110_DS_
;	.line	23; "const.c"	while(1);
	GOTO	_00110_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   10+    0 =    10 instructions (   20 byte)

	end
