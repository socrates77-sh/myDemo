;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:52:56 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"fun.c"
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
	global	_fun1
	global	_fun2
	global	_main
	global	_global_a
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
UD_fun_0	udata
_global_a	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_fun_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_fun_21	udata_ovr	0x0021
_ram1
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fun_0	udata
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'fun1'
;@fun1 fun1                      Allocated to registers ;size:2
;@fun1 HIBYTEbits                Allocated to registers ;size:1
;@fun1 FSR0bits                  Allocated to registers ;size:1
;@fun1 FSR1bits                  Allocated to registers ;size:1
;@fun1 PFLAGbits                 Allocated to registers ;size:1
;@fun1 ZEROTRbits                Allocated to registers ;size:1
;@fun1 OSCCALbits                Allocated to registers ;size:1
;@fun1 WKCR0bits                 Allocated to registers ;size:1
;@fun1 WKCR5bits                 Allocated to registers ;size:1
;@fun1 ADIOS0bits                Allocated to registers ;size:1
;@fun1 ADIOS1bits                Allocated to registers ;size:1
;@fun1 ADIOS2bits                Allocated to registers ;size:1
;@fun1 ADCR0bits                 Allocated to registers ;size:1
;@fun1 ADCR1bits                 Allocated to registers ;size:1
;@fun1 ADCR2bits                 Allocated to registers ;size:1
;@fun1 OEP0bits                  Allocated to registers ;size:1
;@fun1 EINTCRbits                Allocated to registers ;size:1
;@fun1 OEP4bits                  Allocated to registers ;size:1
;@fun1 OEP5bits                  Allocated to registers ;size:1
;@fun1 INTFbits                  Allocated to registers ;size:1
;@fun1 INTEbits                  Allocated to registers ;size:1
;@fun1 OSCMbits                  Allocated to registers ;size:1
;@fun1 WDTCRbits                 Allocated to registers ;size:1
;@fun1 T1LDRbits                 Allocated to registers ;size:1
;@fun1 PCLbits                   Allocated to registers ;size:1
;@fun1 PCHbits                   Allocated to registers ;size:1
;@fun1 IOP0bits                  Allocated to registers ;size:1
;@fun1 IOP4bits                  Allocated to registers ;size:1
;@fun1 IOP5bits                  Allocated to registers ;size:1
;@fun1 T0CRbits                  Allocated to registers ;size:1
;@fun1 T0CNTbits                 Allocated to registers ;size:1
;@fun1 T1CRbits                  Allocated to registers ;size:1
;@fun1 T1CNTbits                 Allocated to registers ;size:1
;@fun1 BUZCRbits                 Allocated to registers ;size:1
;@fun1 MCRbits                   Allocated to registers ;size:1
;@fun1 PUP0bits                  Allocated to registers ;size:1
;@fun1 PUP4bits                  Allocated to registers ;size:1
;@fun1 PUP5bits                  Allocated to registers ;size:1
;@fun1 INDFbits                  Allocated to registers ;size:1
;@fun1 PWMCR0bits                Allocated to registers ;size:1
;@fun1 PWMCR1bits                Allocated to registers ;size:1
;@fun1 PWMCNTbits                Allocated to registers ;size:1
;@fun1 PWMADTbits                Allocated to registers ;size:1
;@fun1 PWMBDTbits                Allocated to registers ;size:1
;@fun1 PWMCDTbits                Allocated to registers ;size:1
;@fun1 PWMPDbits                 Allocated to registers ;size:1
;@fun1 global_a                  Allocated to registers ;size:1
;@fun1 ram1                      Allocated to registers ;size:1
;@fun1 ram0                      Allocated to registers ;size:1
;@fun1 b                         Allocated to registers ;size:1
;@fun1 a                         Allocated to registers r0x1001 ;size:1
;@fun1 i                         Allocated to registers r0x1003 ;size:1
;@fun1 b0                        Allocated to registers r0x1002 ;size:1
;@fun1 HIBYTE                    Allocated to registers ;size:1
;@fun1 FSR0                      Allocated to registers ;size:1
;@fun1 FSR1                      Allocated to registers ;size:1
;@fun1 PFLAG                     Allocated to registers ;size:1
;@fun1 ZEROTR                    Allocated to registers ;size:1
;@fun1 OSCCAL                    Allocated to registers ;size:1
;@fun1 WKCR0                     Allocated to registers ;size:1
;@fun1 WKCR5                     Allocated to registers ;size:1
;@fun1 ADIOS0                    Allocated to registers ;size:1
;@fun1 ADIOS1                    Allocated to registers ;size:1
;@fun1 ADIOS2                    Allocated to registers ;size:1
;@fun1 ADCR0                     Allocated to registers ;size:1
;@fun1 ADCR1                     Allocated to registers ;size:1
;@fun1 ADRH                      Allocated to registers ;size:1
;@fun1 ADRL                      Allocated to registers ;size:1
;@fun1 ADCR2                     Allocated to registers ;size:1
;@fun1 OEP0                      Allocated to registers ;size:1
;@fun1 EINTCR                    Allocated to registers ;size:1
;@fun1 OEP4                      Allocated to registers ;size:1
;@fun1 OEP5                      Allocated to registers ;size:1
;@fun1 INTF                      Allocated to registers ;size:1
;@fun1 INTE                      Allocated to registers ;size:1
;@fun1 OSCM                      Allocated to registers ;size:1
;@fun1 WDTCR                     Allocated to registers ;size:1
;@fun1 T1LDR                     Allocated to registers ;size:1
;@fun1 PCL                       Allocated to registers ;size:1
;@fun1 PCH                       Allocated to registers ;size:1
;@fun1 IOP0                      Allocated to registers ;size:1
;@fun1 IOP4                      Allocated to registers ;size:1
;@fun1 IOP5                      Allocated to registers ;size:1
;@fun1 T0CR                      Allocated to registers ;size:1
;@fun1 T0CNT                     Allocated to registers ;size:1
;@fun1 T1CR                      Allocated to registers ;size:1
;@fun1 T1CNT                     Allocated to registers ;size:1
;@fun1 BUZCR                     Allocated to registers ;size:1
;@fun1 MCR                       Allocated to registers ;size:1
;@fun1 PUP0                      Allocated to registers ;size:1
;@fun1 PUP4                      Allocated to registers ;size:1
;@fun1 PUP5                      Allocated to registers ;size:1
;@fun1 INDF                      Allocated to registers ;size:1
;@fun1 PWMCR0                    Allocated to registers ;size:1
;@fun1 PWMCR1                    Allocated to registers ;size:1
;@fun1 PWMCNT                    Allocated to registers ;size:1
;@fun1 PWMADT                    Allocated to registers ;size:1
;@fun1 PWMBDT                    Allocated to registers ;size:1
;@fun1 PWMCDT                    Allocated to registers ;size:1
;@fun1 PWMPD                     Allocated to registers ;size:1
;@fun1 STKR0L                    Allocated to registers ;size:1
;@fun1 STKR0H                    Allocated to registers ;size:1
;@fun1 STKR1L                    Allocated to registers ;size:1
;@fun1 STKR1H                    Allocated to registers ;size:1
;@fun1 STKR2L                    Allocated to registers ;size:1
;@fun1 STKR2H                    Allocated to registers ;size:1
;@fun1 STKR3L                    Allocated to registers ;size:1
;@fun1 STKR3H                    Allocated to registers ;size:1
;@fun1 STKR4L                    Allocated to registers ;size:1
;@fun1 STKR4H                    Allocated to registers ;size:1
;@fun1 STKR5L                    Allocated to registers ;size:1
;@fun1 STKR5H                    Allocated to registers ;size:1
;@fun1 STKR6L                    Allocated to registers ;size:1
;@fun1 STKR6H                    Allocated to registers ;size:1
;@fun1 STKR7L                    Allocated to registers ;size:1
;@fun1 STKR7H                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'fun1';
;@Allocation info for local variables in function 'fun2'
;@fun2 b                         Allocated to registers ;size:1
;@fun2 a                         Allocated to registers r0x1001 ;size:1
;@fun2 i                         Allocated to registers r0x1003 ;size:1
;@fun2 b0                        Allocated to registers r0x1002 ;size:1
;@end Allocation info for local variables in function 'fun2';
;@Allocation info for local variables in function 'main'
;@main b                         Allocated to registers r0x1004 ;size:1
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
code_fun	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fun1
;   _fun2
;   _fun1
;   _fun2
;2 compiler assigned registers:
;   r0x1004
;   STK00
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	34; "fun.c"	ram0 = 3;
	MOVAI	0x03
	MOVRA	_ram0
;	.line	35; "fun.c"	ram1 = 0x5f;
	MOVAI	0x5f
	MOVRA	_ram1
;	.line	36; "fun.c"	global_a = ram0;
	MOVAR	_ram0
	MOVRA	_global_a
;	.line	37; "fun.c"	b = ram1;
	MOVAR	_ram1
	MOVRA	r0x1004
;	.line	39; "fun.c"	ram0 = fun1(global_a, b);  	// 0x68
	MOVAR	r0x1004
	MOVRA	STK00
	MOVAR	_global_a
	CALL	_fun1
	MOVRA	_ram0
;	.line	40; "fun.c"	ram1 = fun2(global_a, b);  	// 0x56
	MOVAR	r0x1004
	MOVRA	STK00
	MOVAR	_global_a
	CALL	_fun2
	MOVRA	_ram1
_00122_DS_
;	.line	42; "fun.c"	while(1);
	GOTO	_00122_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun2	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1001
;   STK00
;   r0x1002
;   r0x1003
;; Starting pCode block
_fun2	;Function start
; 2 exit points
;	.line	19; "fun.c"	uchar fun2(uchar a, uchar b)
	MOVRA	r0x1001
	MOVAR	STK00
	MOVRA	r0x1002
;	.line	24; "fun.c"	for(i=0; i<a; i++)
	CLRR	r0x1003
_00113_DS_
	MOVAR	r0x1001
	XCH	r0x1003
	ASUBRA	r0x1003
	XCH	r0x1003
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	25; "fun.c"	b0 -= a;
	MOVAR	r0x1001
	XCH	r0x1002
	ASUBAR	r0x1002
	XCH	r0x1002
;	.line	24; "fun.c"	for(i=0; i<a; i++)
	MOVAI	0x01
	ADDRA	r0x1003
	GOTO	_00113_DS_
_00116_DS_
;	.line	27; "fun.c"	return b0;
	MOVAR	r0x1002
	RETURN	
; exit point of _fun2

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1001
;   STK00
;   r0x1002
;   r0x1003
;; Starting pCode block
_fun1	;Function start
; 2 exit points
;	.line	8; "fun.c"	uchar fun1(uchar a, uchar b)
	MOVRA	r0x1001
	MOVAR	STK00
	MOVRA	r0x1002
;	.line	13; "fun.c"	for(i=0; i<a; i++)
	CLRR	r0x1003
_00105_DS_
	MOVAR	r0x1001
	XCH	r0x1003
	ASUBRA	r0x1003
	XCH	r0x1003
	JBCLR	PFLAG,2
	GOTO	_00108_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	14; "fun.c"	b0 += a;
	MOVAR	r0x1001
	ADDRA	r0x1002
;	.line	13; "fun.c"	for(i=0; i<a; i++)
	MOVAI	0x01
	ADDRA	r0x1003
	GOTO	_00105_DS_
_00108_DS_
;	.line	16; "fun.c"	return b0;
	MOVAR	r0x1002
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   56+    0 =    56 instructions (  112 byte)

	end
