;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (May  2 2018) (MINGW32)
; This file was generated Thu May 03 11:33:17 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"switch.c"
	list	p=3316
	radix dec
	include "3316.inc"
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
r0x1000	res	1
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
;@fun1 ram1                      Allocated to registers ;size:1
;@fun1 ram0                      Allocated to registers ;size:1
;@fun1 n                         Allocated to registers r0x1000 ;size:1
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
	lgoto	_main
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
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	34; "switch.c"	ram0 = 0xfe;
	MOVAI	0xfe
	MOVRA	_ram0
;	.line	35; "switch.c"	for(ram1=0; ram1<6; ram1++)
	CLRR	_ram1
;;signed compare: left < lit(0x6=6), size=1, mask=ff
_00119_DS_
	MOVAR	_ram1
	ADDAI	0x80
	ADDAI	0x7a
	JBCLR	PFLAG,0
	LGOTO	_00117_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	36; "switch.c"	fun1(ram1);
	MOVAR	_ram1
	LCALL	_fun1
;	.line	35; "switch.c"	for(ram1=0; ram1<6; ram1++)
	INCR	_ram1
	LGOTO	_00119_DS_
_00117_DS_
;	.line	38; "switch.c"	while(1);
	LGOTO	_00117_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1000
;; Starting pCode block
_fun1	;Function start
; 2 exit points
;	.line	8; "switch.c"	void fun1(unsigned char n)
	MOVRA	r0x1000
;;unsigned compare: left < lit(0x2=2), size=1
;	.line	10; "switch.c"	switch(n)
	MOVAI	0x02
	RSUBAR	r0x1000
	JBSET	PFLAG,0
	LGOTO	_00109_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	r0x1000
	JBCLR	PFLAG,0
	LGOTO	_00109_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAI	0xfe
	ADDRA	r0x1000
	RLAR	r0x1000
	ADDRA	PCL
	LGOTO	_00105_DS_
	LGOTO	_00106_DS_
	LGOTO	_00107_DS_
	LGOTO	_00108_DS_
_00105_DS_
;	.line	13; "switch.c"	ram0 = 1;
	MOVAI	0x01
	MOVRA	_ram0
;	.line	14; "switch.c"	break;     	   	
	LGOTO	_00111_DS_
_00106_DS_
;	.line	16; "switch.c"	ram0 = 2;    	
	MOVAI	0x02
	MOVRA	_ram0
;	.line	17; "switch.c"	break;     	
	LGOTO	_00111_DS_
_00107_DS_
;	.line	19; "switch.c"	ram0 = 3;
	MOVAI	0x03
	MOVRA	_ram0
;	.line	20; "switch.c"	break;
	LGOTO	_00111_DS_
_00108_DS_
;	.line	22; "switch.c"	ram0 = 4;
	MOVAI	0x04
	MOVRA	_ram0
;	.line	23; "switch.c"	break;
	LGOTO	_00111_DS_
_00109_DS_
;	.line	25; "switch.c"	ram0 = 100;
	MOVAI	0x64
	MOVRA	_ram0
_00111_DS_
;	.line	27; "switch.c"	}
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   46+    0 =    46 instructions (   92 byte)

	end
