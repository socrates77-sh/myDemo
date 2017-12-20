;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 11:53:25 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"switch.c"
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
	global	_main
	global	_ram1
	global	_ram0
	global	_rom

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
UD_abs_switch_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_switch_21	udata_ovr	0x0021
_ram1
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_switch_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1002	res	1
r0x1003	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_switch_0	code
_rom
	dw 0x01
	dw 0x02
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00
	dw 0x00


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
;@fun1 ram1                      Allocated to registers ;size:1
;@fun1 ram0                      Allocated to registers ;size:1
;@fun1 n                         Allocated to registers r0x1001 r0x1000 ;size:2
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
code_switch	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fun1
;   _fun1
;3 compiler assigned registers:
;   r0x1002
;   r0x1003
;   STK00
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	34; "switch.c"	ram0 = 0xfe;
	MOVAI	0xfe
	MOVRA	_ram0
;	.line	35; "switch.c"	for(ram1=0; ram1<6; ram1++)
	CLRR	_ram1
;;signed compare: left < lit(0x6=6), size=1, mask=ff
_00126_DS_
	MOVAR	_ram1
	ADDAI	0x80
	ADDAI	0x7a
	JBCLR	PFLAG,2
	GOTO	_00124_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	36; "switch.c"	fun1(ram1);
	MOVAR	_ram1
	MOVRA	r0x1002
	CLRR	r0x1003
	JBCLR	r0x1002,7
	DJZR	r0x1003
	NOP	
	MOVAR	r0x1002
	MOVRA	STK00
	MOVAR	r0x1003
	CALL	_fun1
;	.line	35; "switch.c"	for(ram1=0; ram1<6; ram1++)
	MOVAI	0x01
	ADDRA	_ram1
	GOTO	_00126_DS_
_00124_DS_
;	.line	38; "switch.c"	while(1);
	GOTO	_00124_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;; Starting pCode block
_fun1	;Function start
; 2 exit points
;	.line	8; "switch.c"	void fun1(unsigned int n)
	MOVRA	r0x1000
	MOVAR	STK00
	MOVRA	r0x1001
;;unsigned compare: left < lit(0x1=1), size=2
;	.line	10; "switch.c"	switch(n)
	MOVAI	0x00
	XCH	r0x1000
	ASUBRA	r0x1000
	XCH	r0x1000
	JBSET	PFLAG,0
	GOTO	_00117_DS_
	MOVAI	0x01
	XCH	r0x1001
	ASUBRA	r0x1001
	XCH	r0x1001
_00117_DS_
	JBSET	PFLAG,2
	GOTO	_00109_DS_
;;genSkipc:3223: created from rifx:00DD608C
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=2
	MOVAI	0x00
	XCH	r0x1000
	ASUBRA	r0x1000
	XCH	r0x1000
	JBSET	PFLAG,0
	GOTO	_00118_DS_
	MOVAI	0x05
	XCH	r0x1001
	ASUBRA	r0x1001
	XCH	r0x1001
_00118_DS_
	JBCLR	PFLAG,2
	GOTO	_00109_DS_
;;genSkipc:3223: created from rifx:00DD608C
	DJZAR	r0x1001
	NOP	
	MOVRA	r0x1001
	MOVAR	r0x1001
	ADDRA	PCL
	GOTO	_00105_DS_
	GOTO	_00106_DS_
	GOTO	_00107_DS_
	GOTO	_00108_DS_
_00105_DS_
;	.line	13; "switch.c"	ram0 = 1;
	MOVAI	0x01
	MOVRA	_ram0
;	.line	14; "switch.c"	break;     	   	
	GOTO	_00111_DS_
_00106_DS_
;	.line	16; "switch.c"	ram0 = 2;    	
	MOVAI	0x02
	MOVRA	_ram0
;	.line	17; "switch.c"	break;     	
	GOTO	_00111_DS_
_00107_DS_
;	.line	19; "switch.c"	ram0 = 3;
	MOVAI	0x03
	MOVRA	_ram0
;	.line	20; "switch.c"	break;
	GOTO	_00111_DS_
_00108_DS_
;	.line	22; "switch.c"	ram0 = 4;
	MOVAI	0x04
	MOVRA	_ram0
;	.line	23; "switch.c"	break;
	GOTO	_00111_DS_
_00109_DS_
;	.line	25; "switch.c"	ram0 = 100;
	MOVAI	0x64
	MOVRA	_ram0
_00111_DS_
;	.line	27; "switch.c"	}
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   74+    0 =    74 instructions (  148 byte)

	end
