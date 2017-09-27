;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 27 2017) (MINGW32)
; This file was generated Wed Sep 27 18:16:36 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"switch.c"
	list	p=3221
	radix dec
	include "3221.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_ANSELbits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_KBIMbits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_LVDCRbits
	extern	_OSCMbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_STATUS
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
	extern	_KBIM
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_LVDCR
	extern	_OSCM
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_OSCAL
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_fun1
	global	_main
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
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_switch_0	udata
r0x1001	res	1
r0x1000	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_switch_0	code
_rom
	retai 0x01
	retai 0x02
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00


;@Allocation info for local variables in function 'fun1'
;@fun1 fun1                      Allocated to registers ;size:2
;@fun1 STATUSbits                Allocated to registers ;size:1
;@fun1 MCRbits                   Allocated to registers ;size:1
;@fun1 INTEbits                  Allocated to registers ;size:1
;@fun1 INTFbits                  Allocated to registers ;size:1
;@fun1 IOP0bits                  Allocated to registers ;size:1
;@fun1 OEP0bits                  Allocated to registers ;size:1
;@fun1 PUP0bits                  Allocated to registers ;size:1
;@fun1 ANSELbits                 Allocated to registers ;size:1
;@fun1 IOP1bits                  Allocated to registers ;size:1
;@fun1 OEP1bits                  Allocated to registers ;size:1
;@fun1 PUP1bits                  Allocated to registers ;size:1
;@fun1 KBIMbits                  Allocated to registers ;size:1
;@fun1 T0CRbits                  Allocated to registers ;size:1
;@fun1 T1CRbits                  Allocated to registers ;size:1
;@fun1 LVDCRbits                 Allocated to registers ;size:1
;@fun1 OSCMbits                  Allocated to registers ;size:1
;@fun1 ADCR0bits                 Allocated to registers ;size:1
;@fun1 ADCR1bits                 Allocated to registers ;size:1
;@fun1 n                         Allocated to registers r0x1001 r0x1000 ;size:2
;@fun1 INDF                      Allocated to registers ;size:1
;@fun1 INDF0                     Allocated to registers ;size:1
;@fun1 INDF1                     Allocated to registers ;size:1
;@fun1 INDF2                     Allocated to registers ;size:1
;@fun1 HIBYTE                    Allocated to registers ;size:1
;@fun1 FSR                       Allocated to registers ;size:1
;@fun1 FSR0                      Allocated to registers ;size:1
;@fun1 FSR1                      Allocated to registers ;size:1
;@fun1 PCL                       Allocated to registers ;size:1
;@fun1 STATUS                    Allocated to registers ;size:1
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
;@fun1 KBIM                      Allocated to registers ;size:1
;@fun1 T0CR                      Allocated to registers ;size:1
;@fun1 T0CNT                     Allocated to registers ;size:1
;@fun1 T0LOAD                    Allocated to registers ;size:1
;@fun1 T0DATA                    Allocated to registers ;size:1
;@fun1 T1CR                      Allocated to registers ;size:1
;@fun1 T1CNT                     Allocated to registers ;size:1
;@fun1 T1LOAD                    Allocated to registers ;size:1
;@fun1 T1DATA                    Allocated to registers ;size:1
;@fun1 LVDCR                     Allocated to registers ;size:1
;@fun1 OSCM                      Allocated to registers ;size:1
;@fun1 ADCR0                     Allocated to registers ;size:1
;@fun1 ADCR1                     Allocated to registers ;size:1
;@fun1 ADRH                      Allocated to registers ;size:1
;@fun1 ADRL                      Allocated to registers ;size:1
;@fun1 OSCAL                     Allocated to registers ;size:1
;@end Allocation info for local variables in function 'fun1';
;@Allocation info for local variables in function 'main'
;@main i                         Allocated to registers ;size:2
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
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	31; "switch.c"	fun1(i);
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	_fun1
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
;	.line	5; "switch.c"	void fun1(unsigned int n)
	MOVRA	r0x1000
	MOVAR	STK00
	MOVRA	r0x1001
;	.line	7; "switch.c"	switch(n)
	MOVAR	r0x1001
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00121_DS_
	MOVAR	r0x1000
	XORAI	0x00
	JBSET	STATUS,2
	GOTO	_00121_DS_
	GOTO	_00105_DS_
_00121_DS_
	MOVAR	r0x1001
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00122_DS_
	MOVAR	r0x1000
	XORAI	0x00
	JBSET	STATUS,2
	GOTO	_00122_DS_
	GOTO	_00106_DS_
_00122_DS_
	MOVAR	r0x1001
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00123_DS_
	MOVAR	r0x1000
	XORAI	0x00
	JBSET	STATUS,2
	GOTO	_00123_DS_
	GOTO	_00107_DS_
_00123_DS_
	MOVAR	r0x1001
	XORAI	0x05
	JBSET	STATUS,2
	GOTO	_00124_DS_
	MOVAR	r0x1000
	XORAI	0x00
	JBSET	STATUS,2
	GOTO	_00124_DS_
	GOTO	_00108_DS_
_00124_DS_
	GOTO	_00111_DS_
_00105_DS_
;	.line	10; "switch.c"	IOP0=1;
	MOVAI	0x01
	MOVRA	_IOP0
;	.line	11; "switch.c"	break;  	   	
	GOTO	_00111_DS_
_00106_DS_
;	.line	13; "switch.c"	IOP0=0;  	
	CLRR	_IOP0
;	.line	14; "switch.c"	break;   	
	GOTO	_00111_DS_
_00107_DS_
;	.line	16; "switch.c"	IOP1=1;
	MOVAI	0x01
	MOVRA	_IOP1
;	.line	17; "switch.c"	break;
	GOTO	_00111_DS_
_00108_DS_
;	.line	19; "switch.c"	IOP1=0;
	CLRR	_IOP1
_00111_DS_
;	.line	23; "switch.c"	}
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   55+    0 =    55 instructions (  110 byte)

	end
