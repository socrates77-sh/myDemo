;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.3 (May 29 2018) (MINGW32)
; This file was generated Fri Jun 08 08:45:19 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"FSR_TEST.c"
	list	p=7511
	radix dec
	include "7511.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_INDF0bits
	extern	_INDF1bits
	extern	_INDF2bits
	extern	_HIBYTEbits
	extern	_FSR0bits
	extern	_FSR1bits
	extern	_PCLbits
	extern	_PFLAGbits
	extern	_MCRbits
	extern	_INDF3bits
	extern	_INTEbits
	extern	_INTFbits
	extern	_OSCMbits
	extern	_INTE1bits
	extern	_INTF1bits
	extern	_KBCRbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_PDP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_PDP1bits
	extern	_IOP2bits
	extern	_OEP2bits
	extern	_PUP2bits
	extern	_PDP2bits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T0LOADbits
	extern	_T0DATAbits
	extern	_T1CRbits
	extern	_T1CNTHbits
	extern	_T1CNTLbits
	extern	_T1LOADHbits
	extern	_T1LOADLbits
	extern	_T1DATAHbits
	extern	_T1DATALbits
	extern	_IICCRbits
	extern	_IICSRbits
	extern	_IICDRbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADRHbits
	extern	_ADRLbits
	extern	_ADIOS0bits
	extern	_ADIOS1bits
	extern	_OSADJCRbits
	extern	_T2CRbits
	extern	_T2CNTHbits
	extern	_T2CNTLbits
	extern	_T2LOADHbits
	extern	_T2LOADLbits
	extern	_T3CRbits
	extern	_T3CNTbits
	extern	_T3LOADbits
	extern	_SCONbits
	extern	_SBUFbits
	extern	_SADDRbits
	extern	_SADENbits
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_PFLAG
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_OSCM
	extern	_INTE1
	extern	_INTF1
	extern	_KBCR
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_PDP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_PDP1
	extern	_IOP2
	extern	_OEP2
	extern	_PUP2
	extern	_PDP2
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNTH
	extern	_T1CNTL
	extern	_T1LOADH
	extern	_T1LOADL
	extern	_T1DATAH
	extern	_T1DATAL
	extern	_IICCR
	extern	_IICSR
	extern	_IICDR
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_ADIOS0
	extern	_ADIOS1
	extern	_OSADJCR
	extern	_T2CR
	extern	_T2CNTH
	extern	_T2CNTL
	extern	_T2LOADH
	extern	_T2LOADL
	extern	_T3CR
	extern	_T3CNT
	extern	_T3LOAD
	extern	_SCON
	extern	_SBUF
	extern	_SADDR
	extern	_SADEN
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
;@adc_initial INDF0bits                 Allocated to registers ;size:1
;@adc_initial INDF1bits                 Allocated to registers ;size:1
;@adc_initial INDF2bits                 Allocated to registers ;size:1
;@adc_initial HIBYTEbits                Allocated to registers ;size:1
;@adc_initial FSR0bits                  Allocated to registers ;size:1
;@adc_initial FSR1bits                  Allocated to registers ;size:1
;@adc_initial PCLbits                   Allocated to registers ;size:1
;@adc_initial PFLAGbits                 Allocated to registers ;size:1
;@adc_initial MCRbits                   Allocated to registers ;size:1
;@adc_initial INDF3bits                 Allocated to registers ;size:1
;@adc_initial INTEbits                  Allocated to registers ;size:1
;@adc_initial INTFbits                  Allocated to registers ;size:1
;@adc_initial OSCMbits                  Allocated to registers ;size:1
;@adc_initial INTE1bits                 Allocated to registers ;size:1
;@adc_initial INTF1bits                 Allocated to registers ;size:1
;@adc_initial KBCRbits                  Allocated to registers ;size:1
;@adc_initial IOP0bits                  Allocated to registers ;size:1
;@adc_initial OEP0bits                  Allocated to registers ;size:1
;@adc_initial PUP0bits                  Allocated to registers ;size:1
;@adc_initial PDP0bits                  Allocated to registers ;size:1
;@adc_initial IOP1bits                  Allocated to registers ;size:1
;@adc_initial OEP1bits                  Allocated to registers ;size:1
;@adc_initial PUP1bits                  Allocated to registers ;size:1
;@adc_initial PDP1bits                  Allocated to registers ;size:1
;@adc_initial IOP2bits                  Allocated to registers ;size:1
;@adc_initial OEP2bits                  Allocated to registers ;size:1
;@adc_initial PUP2bits                  Allocated to registers ;size:1
;@adc_initial PDP2bits                  Allocated to registers ;size:1
;@adc_initial T0CRbits                  Allocated to registers ;size:1
;@adc_initial T0CNTbits                 Allocated to registers ;size:1
;@adc_initial T0LOADbits                Allocated to registers ;size:1
;@adc_initial T0DATAbits                Allocated to registers ;size:1
;@adc_initial T1CRbits                  Allocated to registers ;size:1
;@adc_initial T1CNTHbits                Allocated to registers ;size:1
;@adc_initial T1CNTLbits                Allocated to registers ;size:1
;@adc_initial T1LOADHbits               Allocated to registers ;size:1
;@adc_initial T1LOADLbits               Allocated to registers ;size:1
;@adc_initial T1DATAHbits               Allocated to registers ;size:1
;@adc_initial T1DATALbits               Allocated to registers ;size:1
;@adc_initial IICCRbits                 Allocated to registers ;size:1
;@adc_initial IICSRbits                 Allocated to registers ;size:1
;@adc_initial IICDRbits                 Allocated to registers ;size:1
;@adc_initial ADCR0bits                 Allocated to registers ;size:1
;@adc_initial ADCR1bits                 Allocated to registers ;size:1
;@adc_initial ADRHbits                  Allocated to registers ;size:1
;@adc_initial ADRLbits                  Allocated to registers ;size:1
;@adc_initial ADIOS0bits                Allocated to registers ;size:1
;@adc_initial ADIOS1bits                Allocated to registers ;size:1
;@adc_initial OSADJCRbits               Allocated to registers ;size:1
;@adc_initial T2CRbits                  Allocated to registers ;size:1
;@adc_initial T2CNTHbits                Allocated to registers ;size:1
;@adc_initial T2CNTLbits                Allocated to registers ;size:1
;@adc_initial T2LOADHbits               Allocated to registers ;size:1
;@adc_initial T2LOADLbits               Allocated to registers ;size:1
;@adc_initial T3CRbits                  Allocated to registers ;size:1
;@adc_initial T3CNTbits                 Allocated to registers ;size:1
;@adc_initial T3LOADbits                Allocated to registers ;size:1
;@adc_initial SCONbits                  Allocated to registers ;size:1
;@adc_initial SBUFbits                  Allocated to registers ;size:1
;@adc_initial SADDRbits                 Allocated to registers ;size:1
;@adc_initial SADENbits                 Allocated to registers ;size:1
;@adc_initial _ad_ch                    Allocated to registers ;size:10
;@adc_initial _adc                      Allocated to registers ;size:22
;@adc_initial i                         Allocated to registers r0x1022 ;size:1
;@adc_initial ad_value                  Allocated to registers ;size:2
;@adc_initial INDF0                     Allocated to registers ;size:1
;@adc_initial INDF1                     Allocated to registers ;size:1
;@adc_initial INDF2                     Allocated to registers ;size:1
;@adc_initial HIBYTE                    Allocated to registers ;size:1
;@adc_initial FSR0                      Allocated to registers ;size:1
;@adc_initial FSR1                      Allocated to registers ;size:1
;@adc_initial PCL                       Allocated to registers ;size:1
;@adc_initial PFLAG                     Allocated to registers ;size:1
;@adc_initial MCR                       Allocated to registers ;size:1
;@adc_initial INDF3                     Allocated to registers ;size:1
;@adc_initial INTE                      Allocated to registers ;size:1
;@adc_initial INTF                      Allocated to registers ;size:1
;@adc_initial OSCM                      Allocated to registers ;size:1
;@adc_initial INTE1                     Allocated to registers ;size:1
;@adc_initial INTF1                     Allocated to registers ;size:1
;@adc_initial KBCR                      Allocated to registers ;size:1
;@adc_initial IOP0                      Allocated to registers ;size:1
;@adc_initial OEP0                      Allocated to registers ;size:1
;@adc_initial PUP0                      Allocated to registers ;size:1
;@adc_initial PDP0                      Allocated to registers ;size:1
;@adc_initial IOP1                      Allocated to registers ;size:1
;@adc_initial OEP1                      Allocated to registers ;size:1
;@adc_initial PUP1                      Allocated to registers ;size:1
;@adc_initial PDP1                      Allocated to registers ;size:1
;@adc_initial IOP2                      Allocated to registers ;size:1
;@adc_initial OEP2                      Allocated to registers ;size:1
;@adc_initial PUP2                      Allocated to registers ;size:1
;@adc_initial PDP2                      Allocated to registers ;size:1
;@adc_initial T0CR                      Allocated to registers ;size:1
;@adc_initial T0CNT                     Allocated to registers ;size:1
;@adc_initial T0LOAD                    Allocated to registers ;size:1
;@adc_initial T0DATA                    Allocated to registers ;size:1
;@adc_initial T1CR                      Allocated to registers ;size:1
;@adc_initial T1CNTH                    Allocated to registers ;size:1
;@adc_initial T1CNTL                    Allocated to registers ;size:1
;@adc_initial T1LOADH                   Allocated to registers ;size:1
;@adc_initial T1LOADL                   Allocated to registers ;size:1
;@adc_initial T1DATAH                   Allocated to registers ;size:1
;@adc_initial T1DATAL                   Allocated to registers ;size:1
;@adc_initial IICCR                     Allocated to registers ;size:1
;@adc_initial IICSR                     Allocated to registers ;size:1
;@adc_initial IICDR                     Allocated to registers ;size:1
;@adc_initial ADCR0                     Allocated to registers ;size:1
;@adc_initial ADCR1                     Allocated to registers ;size:1
;@adc_initial ADRH                      Allocated to registers ;size:1
;@adc_initial ADRL                      Allocated to registers ;size:1
;@adc_initial ADIOS0                    Allocated to registers ;size:1
;@adc_initial ADIOS1                    Allocated to registers ;size:1
;@adc_initial OSADJCR                   Allocated to registers ;size:1
;@adc_initial T2CR                      Allocated to registers ;size:1
;@adc_initial T2CNTH                    Allocated to registers ;size:1
;@adc_initial T2CNTL                    Allocated to registers ;size:1
;@adc_initial T2LOADH                   Allocated to registers ;size:1
;@adc_initial T2LOADL                   Allocated to registers ;size:1
;@adc_initial T3CR                      Allocated to registers ;size:1
;@adc_initial T3CNT                     Allocated to registers ;size:1
;@adc_initial T3LOAD                    Allocated to registers ;size:1
;@adc_initial SCON                      Allocated to registers ;size:1
;@adc_initial SBUF                      Allocated to registers ;size:1
;@adc_initial SADDR                     Allocated to registers ;size:1
;@adc_initial SADEN                     Allocated to registers ;size:1
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
	RSUBAR	r0x1022
	JBCLR	PFLAG,0
	GOTO	_00108_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	44; "FSR_TEST.c"	_ad_ch[i]=_ad_ch_code[i];
	MOVAR	r0x1022
	ADDAI	(__ad_ch + 0)
	MOVRA	r0x1023
	MOVAI	high (__ad_ch + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1024
	MOVAR	r0x1022
	ADDAI	(__ad_ch_code + 0)
	MOVRA	r0x1025
	MOVAI	high (__ad_ch_code + 0)
	JBCLR	PFLAG,0
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
	MOVRA	INDF2
;	.line	42; "FSR_TEST.c"	for(i=0;i<LENGTH;i++)
	INCR	r0x1022
	GOTO	_00105_DS_
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
_00108_DS_
;	.line	46; "FSR_TEST.c"	_adc.ch=0;
	CLRR	(__adc + 0)
;	.line	48; "FSR_TEST.c"	_adc.ad_data.ad_array[_adc.ch]=ad_value & 0xffc0;
	MOVAR	(__adc + 0)
	MOVRA	r0x1022
	BCLR	PFLAG,0
	RLAR	r0x1022
	MOVRA	r0x1023
	MOVAR	r0x1023
	ADDAI	(__adc + 2)
	MOVRA	r0x1022
	MOVAI	high (__adc + 2)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1024
	MOVAI	0xc0
	ANDAR	_adc_initial_ad_value_1_1
	MOVRA	r0x1023
;;100	MOVAR	(_adc_initial_ad_value_1_1 + 1)
	MOVAR	r0x1022
	MOVRA	FSR0
	MOVAR	r0x1024
	MOVRA	FSR1
	MOVAR	r0x1023
	MOVRA	INDF2
	INCR	FSR
;;99	MOVAR	r0x1025
	MOVAR	(_adc_initial_ad_value_1_1 + 1)
	MOVRA	r0x1025
	MOVRA	INDF2
	RETURN	
; exit point of _adc_initial


;	code size estimation:
;	   70+    0 =    70 instructions (  140 byte)

	end
