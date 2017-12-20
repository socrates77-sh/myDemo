;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:53:59 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"umul.c"
	list	p=2K7041
	radix dec
	include "2K7041.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__mulint
	extern	__mullong
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
	extern	__mulchar
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_uc_a
	global	_uc_b
	global	_ui_a
	global	_ui_b
	global	_uram1
	global	_uram0
	global	_uiram0
	global	_uiram1
	global	_ulram0

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
UD_umul_0	udata
_uc_a	res	1

UD_umul_1	udata
_uc_b	res	1

UD_umul_2	udata
_ui_a	res	2

UD_umul_3	udata
_ui_b	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_umul_28	udata_ovr	0x0028
_uram0
	res	1
UD_abs_umul_29	udata_ovr	0x0029
_uram1
	res	1
UD_abs_umul_38	udata_ovr	0x0038
_uiram0
	res	2
UD_abs_umul_3a	udata_ovr	0x003a
_uiram1
	res	2
UD_abs_umul_48	udata_ovr	0x0048
_ulram0
	res	4
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_umul_0	udata
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100D	res	1
r0x100C	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main _mulint                   Allocated to registers ;size:2
;@main _mullong                  Allocated to registers ;size:2
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
;@main uc_a                      Allocated to registers ;size:1
;@main uc_b                      Allocated to registers ;size:1
;@main ui_a                      Allocated to registers ;size:2
;@main ui_b                      Allocated to registers ;size:2
;@main uram1                     Allocated to registers ;size:1
;@main uram0                     Allocated to registers ;size:1
;@main uiram0                    Allocated to registers ;size:2
;@main uiram1                    Allocated to registers ;size:2
;@main ulram0                    Allocated to registers ;size:4
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
code_umul	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   __mulchar
;   __mullong
;   __mulint
;   __mulint
;   __mulchar
;   __mullong
;   __mulint
;15 compiler assigned registers:
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   STK02
;   STK01
;   STK00
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   STK06
;   STK05
;   STK04
;   STK03
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	17; "umul.c"	uram0 = 0xad; 	// 0xad
	MOVAI	0xad
	MOVRA	_uram0
;	.line	18; "umul.c"	uram1 = 0x88; 	// 0x88
	MOVAI	0x88
	MOVRA	_uram1
;	.line	20; "umul.c"	uc_a = uram0;
	MOVAR	_uram0
	MOVRA	_uc_a
;	.line	21; "umul.c"	uc_b = uram1;
	MOVAR	_uram1
	MOVRA	_uc_b
;	.line	23; "umul.c"	uiram0 = (uint)uc_a * (uint)uc_b;      	// 0x26e8? (0x5b18)
	MOVAR	_uc_a
	MOVRA	r0x1006
	CLRR	r0x1007
	JBCLR	r0x1006,7
	DJZR	r0x1007
	NOP	
	MOVAR	_uc_b
	MOVRA	r0x1008
	CLRR	r0x1009
	JBCLR	r0x1008,7
	DJZR	r0x1009
	NOP	
	MOVAR	r0x1008
	MOVRA	STK02
	MOVAR	r0x1009
	MOVRA	STK01
	MOVAR	r0x1006
	MOVRA	STK00
	MOVAR	r0x1007
	CALL	__mulint
	MOVRA	(_uiram0 + 1)
	MOVAR	STK00
	MOVRA	_uiram0
;	.line	24; "umul.c"	uiram0 = uc_a * uc_b;      	   	   	   	// 0x00e8
	MOVAR	_uc_b
	MOVRA	STK00
	MOVAR	_uc_a
	CALL	__mulchar
	MOVRA	_uiram0
	CLRR	(_uiram0 + 1)
;	.line	26; "umul.c"	uiram0 = 0xfe53;
	MOVAI	0x53
	MOVRA	_uiram0
	MOVAI	0xfe
	MOVRA	(_uiram0 + 1)
;	.line	27; "umul.c"	uiram1 = 0x2b78;
	MOVAI	0x78
	MOVRA	_uiram1
	MOVAI	0x2b
	MOVRA	(_uiram1 + 1)
;	.line	29; "umul.c"	ui_a = uiram0;
	MOVAR	_uiram0
	MOVRA	_ui_a
	MOVAR	(_uiram0 + 1)
	MOVRA	(_ui_a + 1)
;	.line	30; "umul.c"	ui_b = uiram1;
	MOVAR	_uiram1
	MOVRA	_ui_b
	MOVAR	(_uiram1 + 1)
	MOVRA	(_ui_b + 1)
;	.line	32; "umul.c"	ulram0 = (ulong)ui_a * (ulong)ui_b;     	   	// 0xffb727e8? (0x2b2f27e8)
	MOVAR	_ui_a
	MOVRA	r0x1006
	MOVAR	(_ui_a + 1)
	MOVRA	r0x1007
	MOVAI	0x00
	JBCLR	r0x1007,7
	MOVAI	0xff
	MOVRA	r0x1009
	MOVRA	r0x1008
	MOVAR	_ui_b
	MOVRA	r0x100A
	MOVAR	(_ui_b + 1)
	MOVRA	r0x100B
	MOVAI	0x00
	JBCLR	r0x100B,7
	MOVAI	0xff
	MOVRA	r0x100C
	MOVRA	r0x100D
	MOVAR	r0x100A
	MOVRA	STK06
	MOVAR	r0x100B
	MOVRA	STK05
	MOVAR	r0x100D
	MOVRA	STK04
	MOVAR	r0x100C
	MOVRA	STK03
	MOVAR	r0x1006
	MOVRA	STK02
	MOVAR	r0x1007
	MOVRA	STK01
	MOVAR	r0x1008
	MOVRA	STK00
	MOVAR	r0x1009
	CALL	__mullong
	MOVRA	(_ulram0 + 3)
	MOVAR	STK00
	MOVRA	(_ulram0 + 2)
	MOVAR	STK01
	MOVRA	(_ulram0 + 1)
	MOVAR	STK02
	MOVRA	_ulram0
;	.line	33; "umul.c"	ulram0 = ui_a * ui_b;     	   	   	   		   	// 0x000027e8
	MOVAR	_ui_b
	MOVRA	STK02
	MOVAR	(_ui_b + 1)
	MOVRA	STK01
	MOVAR	_ui_a
	MOVRA	STK00
	MOVAR	(_ui_a + 1)
	CALL	__mulint
	MOVRA	r0x1007
	MOVAR	STK00
	MOVRA	r0x1006
	MOVAR	r0x1006
	MOVRA	_ulram0
	MOVAR	r0x1007
	MOVRA	(_ulram0 + 1)
	MOVAI	0x00
	JBCLR	(_ulram0 + 1),7
	MOVAI	0xff
	MOVRA	(_ulram0 + 3)
	MOVRA	(_ulram0 + 2)
_00106_DS_
;	.line	35; "umul.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	  116+    0 =   116 instructions (  232 byte)

	end
