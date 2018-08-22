;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.3 (May 29 2018) (MINGW32)
; This file was generated Fri Jun 08 13:57:48 2018
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"FSR_TEST.c"
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
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_adc_initial
	global	_main
	global	__ad_ch
	global	__adc

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
UD_FSR_TEST_0	udata
__ad_ch	res	10

UD_FSR_TEST_1	udata
__adc	res	22

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_FSR_TEST_0	udata
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1025	res	1
r0x1026	res	1
r0x1027	res	1
_adc_initial_ad_value_1_1	res	2
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_FSR_TEST_0	code
__ad_ch_code
	dw 0x00
	dw 0x01
	dw 0x02
	dw 0x03
	dw 0x04
	dw 0x05
	dw 0x06
	dw 0x07
	dw 0x08
	dw 0x09


;@Allocation info for local variables in function 'adc_initial'
;@adc_initial adc_initial               Allocated to registers ;size:2
;@adc_initial HIBYTEbits                Allocated to registers ;size:1
;@adc_initial FSR0bits                  Allocated to registers ;size:1
;@adc_initial FSR1bits                  Allocated to registers ;size:1
;@adc_initial PFLAGbits                 Allocated to registers ;size:1
;@adc_initial ZEROTRbits                Allocated to registers ;size:1
;@adc_initial OSCCALbits                Allocated to registers ;size:1
;@adc_initial WKCR0bits                 Allocated to registers ;size:1
;@adc_initial WKCR5bits                 Allocated to registers ;size:1
;@adc_initial ADIOS0bits                Allocated to registers ;size:1
;@adc_initial ADIOS1bits                Allocated to registers ;size:1
;@adc_initial ADIOS2bits                Allocated to registers ;size:1
;@adc_initial ADCR0bits                 Allocated to registers ;size:1
;@adc_initial ADCR1bits                 Allocated to registers ;size:1
;@adc_initial ADCR2bits                 Allocated to registers ;size:1
;@adc_initial OEP0bits                  Allocated to registers ;size:1
;@adc_initial EINTCRbits                Allocated to registers ;size:1
;@adc_initial OEP4bits                  Allocated to registers ;size:1
;@adc_initial OEP5bits                  Allocated to registers ;size:1
;@adc_initial INTFbits                  Allocated to registers ;size:1
;@adc_initial INTEbits                  Allocated to registers ;size:1
;@adc_initial OSCMbits                  Allocated to registers ;size:1
;@adc_initial WDTCRbits                 Allocated to registers ;size:1
;@adc_initial T1LDRbits                 Allocated to registers ;size:1
;@adc_initial PCLbits                   Allocated to registers ;size:1
;@adc_initial PCHbits                   Allocated to registers ;size:1
;@adc_initial IOP0bits                  Allocated to registers ;size:1
;@adc_initial IOP4bits                  Allocated to registers ;size:1
;@adc_initial IOP5bits                  Allocated to registers ;size:1
;@adc_initial T0CRbits                  Allocated to registers ;size:1
;@adc_initial T0CNTbits                 Allocated to registers ;size:1
;@adc_initial T1CRbits                  Allocated to registers ;size:1
;@adc_initial T1CNTbits                 Allocated to registers ;size:1
;@adc_initial BUZCRbits                 Allocated to registers ;size:1
;@adc_initial MCRbits                   Allocated to registers ;size:1
;@adc_initial PUP0bits                  Allocated to registers ;size:1
;@adc_initial PUP4bits                  Allocated to registers ;size:1
;@adc_initial PUP5bits                  Allocated to registers ;size:1
;@adc_initial INDFbits                  Allocated to registers ;size:1
;@adc_initial PWMCR0bits                Allocated to registers ;size:1
;@adc_initial PWMCR1bits                Allocated to registers ;size:1
;@adc_initial PWMCNTbits                Allocated to registers ;size:1
;@adc_initial PWMADTbits                Allocated to registers ;size:1
;@adc_initial PWMBDTbits                Allocated to registers ;size:1
;@adc_initial PWMCDTbits                Allocated to registers ;size:1
;@adc_initial PWMPDbits                 Allocated to registers ;size:1
;@adc_initial _ad_ch                    Allocated to registers ;size:10
;@adc_initial _adc                      Allocated to registers ;size:22
;@adc_initial i                         Allocated to registers r0x1022 ;size:1
;@adc_initial ad_value                  Allocated to registers ;size:2
;@adc_initial HIBYTE                    Allocated to registers ;size:1
;@adc_initial FSR0                      Allocated to registers ;size:1
;@adc_initial FSR1                      Allocated to registers ;size:1
;@adc_initial PFLAG                     Allocated to registers ;size:1
;@adc_initial ZEROTR                    Allocated to registers ;size:1
;@adc_initial OSCCAL                    Allocated to registers ;size:1
;@adc_initial WKCR0                     Allocated to registers ;size:1
;@adc_initial WKCR5                     Allocated to registers ;size:1
;@adc_initial ADIOS0                    Allocated to registers ;size:1
;@adc_initial ADIOS1                    Allocated to registers ;size:1
;@adc_initial ADIOS2                    Allocated to registers ;size:1
;@adc_initial ADCR0                     Allocated to registers ;size:1
;@adc_initial ADCR1                     Allocated to registers ;size:1
;@adc_initial ADRH                      Allocated to registers ;size:1
;@adc_initial ADRL                      Allocated to registers ;size:1
;@adc_initial ADCR2                     Allocated to registers ;size:1
;@adc_initial OEP0                      Allocated to registers ;size:1
;@adc_initial EINTCR                    Allocated to registers ;size:1
;@adc_initial OEP4                      Allocated to registers ;size:1
;@adc_initial OEP5                      Allocated to registers ;size:1
;@adc_initial INTF                      Allocated to registers ;size:1
;@adc_initial INTE                      Allocated to registers ;size:1
;@adc_initial OSCM                      Allocated to registers ;size:1
;@adc_initial WDTCR                     Allocated to registers ;size:1
;@adc_initial T1LDR                     Allocated to registers ;size:1
;@adc_initial PCL                       Allocated to registers ;size:1
;@adc_initial PCH                       Allocated to registers ;size:1
;@adc_initial IOP0                      Allocated to registers ;size:1
;@adc_initial IOP4                      Allocated to registers ;size:1
;@adc_initial IOP5                      Allocated to registers ;size:1
;@adc_initial T0CR                      Allocated to registers ;size:1
;@adc_initial T0CNT                     Allocated to registers ;size:1
;@adc_initial T1CR                      Allocated to registers ;size:1
;@adc_initial T1CNT                     Allocated to registers ;size:1
;@adc_initial BUZCR                     Allocated to registers ;size:1
;@adc_initial MCR                       Allocated to registers ;size:1
;@adc_initial PUP0                      Allocated to registers ;size:1
;@adc_initial PUP4                      Allocated to registers ;size:1
;@adc_initial PUP5                      Allocated to registers ;size:1
;@adc_initial INDF                      Allocated to registers ;size:1
;@adc_initial PWMCR0                    Allocated to registers ;size:1
;@adc_initial PWMCR1                    Allocated to registers ;size:1
;@adc_initial PWMCNT                    Allocated to registers ;size:1
;@adc_initial PWMADT                    Allocated to registers ;size:1
;@adc_initial PWMBDT                    Allocated to registers ;size:1
;@adc_initial PWMCDT                    Allocated to registers ;size:1
;@adc_initial PWMPD                     Allocated to registers ;size:1
;@adc_initial STKR0L                    Allocated to registers ;size:1
;@adc_initial STKR0H                    Allocated to registers ;size:1
;@adc_initial STKR1L                    Allocated to registers ;size:1
;@adc_initial STKR1H                    Allocated to registers ;size:1
;@adc_initial STKR2L                    Allocated to registers ;size:1
;@adc_initial STKR2H                    Allocated to registers ;size:1
;@adc_initial STKR3L                    Allocated to registers ;size:1
;@adc_initial STKR3H                    Allocated to registers ;size:1
;@adc_initial STKR4L                    Allocated to registers ;size:1
;@adc_initial STKR4H                    Allocated to registers ;size:1
;@adc_initial STKR5L                    Allocated to registers ;size:1
;@adc_initial STKR5H                    Allocated to registers ;size:1
;@adc_initial STKR6L                    Allocated to registers ;size:1
;@adc_initial STKR6H                    Allocated to registers ;size:1
;@adc_initial STKR7L                    Allocated to registers ;size:1
;@adc_initial STKR7H                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'adc_initial';
;@Allocation info for local variables in function 'adc_initial'
;@adc_initial i                         Allocated to registers r0x1022 ;size:1
;@adc_initial ad_value                  Allocated to registers ;size:2
;@end Allocation info for local variables in function 'adc_initial';
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
code_FSR_TEST	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _adc_initial
;   _adc_initial
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	57; "FSR_TEST.c"	adc_initial();
	CALL	_adc_initial
_00114_DS_
;	.line	58; "FSR_TEST.c"	while(1);
	GOTO	_00114_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _adc_initial	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;8 compiler assigned registers:
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   STK01
;   STK00
;   r0x1027
;; Starting pCode block
_adc_initial	;Function start
; 2 exit points
;	.line	39; "FSR_TEST.c"	ADIOS0=0X38;
	MOVAI	0x38
	MOVRA	_ADIOS0
;	.line	40; "FSR_TEST.c"	ADIOS1=0X38;
	MOVAI	0x38
	MOVRA	_ADIOS1
;	.line	41; "FSR_TEST.c"	ADCR1=0X23;
	MOVAI	0x23
	MOVRA	_ADCR1
;	.line	42; "FSR_TEST.c"	for(i=0;i<LENGTH;i++)
	CLRR	r0x1022
;;unsigned compare: left < lit(0xA=10), size=1
_00105_DS_
	MOVAI	0x0a
	XCH	r0x1022
	ASUBRA	r0x1022
	XCH	r0x1022
	JBCLR	PFLAG,2
	GOTO	_00108_DS_
;;genSkipc:3223: created from rifx:00DE608C
;	.line	44; "FSR_TEST.c"	_ad_ch[i]=_ad_ch_code[i];
	MOVAR	r0x1022
	ADDAI	(__ad_ch + 0)
	MOVRA	r0x1023
	MOVAI	high (__ad_ch + 0)
	JBCLR	PFLAG,2
	ADDAI	0x01
	MOVRA	r0x1024
	MOVAR	r0x1022
	ADDAI	(__ad_ch_code + 0)
	MOVRA	r0x1025
	MOVAI	high (__ad_ch_code + 0)
	JBCLR	PFLAG,2
	ADDAI	0x01
	MOVRA	r0x1026
	MOVAR	r0x1025
	MOVRA	STK01
	MOVAR	r0x1026
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1027
	MOVAR	r0x1023
	MOVRA	FSR0
	MOVAR	r0x1024
	MOVRA	FSR1
	MOVAR	r0x1027
	MOVRA	INDF
;	.line	42; "FSR_TEST.c"	for(i=0;i<LENGTH;i++)
	MOVAI	0x01
	ADDRA	r0x1022
	GOTO	_00105_DS_
;;gen.c:6464: size=0/1, offset=0, AOP_TYPE(res)=8
_00108_DS_
;	.line	46; "FSR_TEST.c"	_adc.ch=0;
	CLRR	(__adc + 0)
;	.line	48; "FSR_TEST.c"	_adc.ad_data.ad_array[_adc.ch]=ad_value & 0xffc0;
	MOVAR	(__adc + 0)
	MOVRA	r0x1022
	BCLR	PFLAG,2
	RLAR	r0x1022
	MOVRA	r0x1023
	MOVAR	r0x1023
	ADDAI	(__adc + 2)
	MOVRA	r0x1022
	MOVAI	high (__adc + 2)
	JBCLR	PFLAG,2
	ADDAI	0x01
	MOVRA	r0x1024
	MOVAI	0xc0
	ANDAR	_adc_initial_ad_value_1_1
	MOVRA	r0x1023
	MOVAR	(_adc_initial_ad_value_1_1 + 1)
	MOVRA	r0x1025
	MOVAR	r0x1022
	MOVRA	FSR0
	MOVAR	r0x1024
	MOVRA	FSR1
	MOVAR	r0x1023
	MOVRA	INDF
	MOVAI	0x01
	ADDRA	FSR0
	JBCLR	PFLAG,0
	ADDRA	FSR1
	MOVAR	r0x1025
	MOVRA	INDF
	RETURN	
; exit point of _adc_initial


;	code size estimation:
;	   77+    0 =    77 instructions (  154 byte)

	end
