;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.2 (May  8 2018) (MINGW32)
; This file was generated Wed May 23 15:03:46 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"fun.c"
	list	p=3221
	radix dec
	include "3221.inc"
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
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_ANSELbits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_KBCRbits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T0LOADbits
	extern	_T0DATAbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DATAbits
	extern	_OSCMbits
	extern	_LVDCRbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADRHbits
	extern	_ADRLbits
	extern	_OSCCALbits
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
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_ANSEL
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_KBCR
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_OSCM
	extern	_LVDCR
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_OSCCAL
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
;@fun1 INDF0bits                 Allocated to registers ;size:1
;@fun1 INDF1bits                 Allocated to registers ;size:1
;@fun1 INDF2bits                 Allocated to registers ;size:1
;@fun1 HIBYTEbits                Allocated to registers ;size:1
;@fun1 FSR0bits                  Allocated to registers ;size:1
;@fun1 FSR1bits                  Allocated to registers ;size:1
;@fun1 PCLbits                   Allocated to registers ;size:1
;@fun1 PFLAGbits                 Allocated to registers ;size:1
;@fun1 MCRbits                   Allocated to registers ;size:1
;@fun1 INDF3bits                 Allocated to registers ;size:1
;@fun1 INTEbits                  Allocated to registers ;size:1
;@fun1 INTFbits                  Allocated to registers ;size:1
;@fun1 IOP0bits                  Allocated to registers ;size:1
;@fun1 OEP0bits                  Allocated to registers ;size:1
;@fun1 PUP0bits                  Allocated to registers ;size:1
;@fun1 ANSELbits                 Allocated to registers ;size:1
;@fun1 IOP1bits                  Allocated to registers ;size:1
;@fun1 OEP1bits                  Allocated to registers ;size:1
;@fun1 PUP1bits                  Allocated to registers ;size:1
;@fun1 KBCRbits                  Allocated to registers ;size:1
;@fun1 T0CRbits                  Allocated to registers ;size:1
;@fun1 T0CNTbits                 Allocated to registers ;size:1
;@fun1 T0LOADbits                Allocated to registers ;size:1
;@fun1 T0DATAbits                Allocated to registers ;size:1
;@fun1 T1CRbits                  Allocated to registers ;size:1
;@fun1 T1CNTbits                 Allocated to registers ;size:1
;@fun1 T1LOADbits                Allocated to registers ;size:1
;@fun1 T1DATAbits                Allocated to registers ;size:1
;@fun1 OSCMbits                  Allocated to registers ;size:1
;@fun1 LVDCRbits                 Allocated to registers ;size:1
;@fun1 ADCR0bits                 Allocated to registers ;size:1
;@fun1 ADCR1bits                 Allocated to registers ;size:1
;@fun1 ADRHbits                  Allocated to registers ;size:1
;@fun1 ADRLbits                  Allocated to registers ;size:1
;@fun1 OSCCALbits                Allocated to registers ;size:1
;@fun1 global_a                  Allocated to registers ;size:1
;@fun1 ram1                      Allocated to registers ;size:1
;@fun1 ram0                      Allocated to registers ;size:1
;@fun1 b                         Allocated to registers ;size:1
;@fun1 a                         Allocated to registers r0x1001 ;size:1
;@fun1 i                         Allocated to registers r0x1003 ;size:1
;@fun1 b0                        Allocated to registers r0x1002 ;size:1
;@fun1 INDF0                     Allocated to registers ;size:1
;@fun1 INDF1                     Allocated to registers ;size:1
;@fun1 INDF2                     Allocated to registers ;size:1
;@fun1 HIBYTE                    Allocated to registers ;size:1
;@fun1 FSR0                      Allocated to registers ;size:1
;@fun1 FSR1                      Allocated to registers ;size:1
;@fun1 PCL                       Allocated to registers ;size:1
;@fun1 PFLAG                     Allocated to registers ;size:1
;@fun1 MCR                       Allocated to registers ;size:1
;@fun1 INDF3                     Allocated to registers ;size:1
;@fun1 INTE                      Allocated to registers ;size:1
;@fun1 INTF                      Allocated to registers ;size:1
;@fun1 IOP0                      Allocated to registers ;size:1
;@fun1 OEP0                      Allocated to registers ;size:1
;@fun1 PUP0                      Allocated to registers ;size:1
;@fun1 ANSEL                     Allocated to registers ;size:1
;@fun1 IOP1                      Allocated to registers ;size:1
;@fun1 OEP1                      Allocated to registers ;size:1
;@fun1 PUP1                      Allocated to registers ;size:1
;@fun1 KBCR                      Allocated to registers ;size:1
;@fun1 T0CR                      Allocated to registers ;size:1
;@fun1 T0CNT                     Allocated to registers ;size:1
;@fun1 T0LOAD                    Allocated to registers ;size:1
;@fun1 T0DATA                    Allocated to registers ;size:1
;@fun1 T1CR                      Allocated to registers ;size:1
;@fun1 T1CNT                     Allocated to registers ;size:1
;@fun1 T1LOAD                    Allocated to registers ;size:1
;@fun1 T1DATA                    Allocated to registers ;size:1
;@fun1 OSCM                      Allocated to registers ;size:1
;@fun1 LVDCR                     Allocated to registers ;size:1
;@fun1 ADCR0                     Allocated to registers ;size:1
;@fun1 ADCR1                     Allocated to registers ;size:1
;@fun1 ADRH                      Allocated to registers ;size:1
;@fun1 ADRL                      Allocated to registers ;size:1
;@fun1 OSCCAL                    Allocated to registers ;size:1
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
;	.line	33; "fun.c"	ram0 = (1<<1);
	MOVAI	0x02
	MOVRA	_ram0
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
	RSUBAR	r0x1003
	JBCLR	PFLAG,0
	GOTO	_00116_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	25; "fun.c"	b0 -= a;
	MOVAR	r0x1001
	RSUBRA	r0x1002
;	.line	24; "fun.c"	for(i=0; i<a; i++)
	INCR	r0x1003
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
	RSUBAR	r0x1003
	JBCLR	PFLAG,0
	GOTO	_00108_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	14; "fun.c"	b0 += a;
	MOVAR	r0x1001
	ADDRA	r0x1002
;	.line	13; "fun.c"	for(i=0; i<a; i++)
	INCR	r0x1003
	GOTO	_00105_DS_
_00108_DS_
;	.line	16; "fun.c"	return b0;
	MOVAR	r0x1002
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   50+    0 =    50 instructions (  100 byte)

	end
