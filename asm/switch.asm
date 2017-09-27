;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 11 2017) (MINGW32)
; This file was generated Mon Sep 25 14:11:03 2017
;--------------------------------------------------------
; MC30/MC32 port for the RISC core
;--------------------------------------------------------
;  	.file  	"switch.c"
   	list   	p=3221
   	radix dec
   	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
   	
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
;      	global 	_fun1
;      	global 	_main
;      	global 	_rom
;




;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_switch_0   	udata
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
;@fun1 n                         Allocated to registers r0x1000 ;size:1
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
;@main i                         Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;  	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
   	goto   	_main
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_switch	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main 	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fun1
;   _fun1
;; Starting pCode block
_main  	;Function start
; 2 exit points
;  	.line  	31; "switch.c" 	fun1(i);
   	MOVAI  	0x03
   	CALL   	_fun1
   	RETURN 	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1 	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1000
;; Starting pCode block
_fun1  	;Function start
; 2 exit points
;  	.line  	5; "switch.c"  	void fun1(unsigned char n)
   	MOVRA  	r0x1000
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;  	.line  	7; "switch.c"  	switch(n)
   	MOVAI  	0x04
   	RSUBAR 	r0x1000
   	JBCLR  	STATUS,0
   	GOTO   	_00111_DS_
;;genSkipc:3194: created from rifx:00CC608C
   	MOVAI  	_00116_DS_
   	ADDAR  	r0x1000
   	MOVRA  	PCL
_00116_DS_
   	GOTO   	_00105_DS_
   	GOTO   	_00106_DS_
   	GOTO   	_00107_DS_
   	GOTO   	_00108_DS_
_00105_DS_
;  	.line  	10; "switch.c" 	IOP0=1;
   	MOVAI  	0x01
   	MOVRA  	IOP0
;  	.line  	11; "switch.c" 	break;     	   	
   	GOTO   	_00111_DS_
_00106_DS_
;  	.line  	13; "switch.c" 	IOP0=0;    	
   	CLRR   	IOP0
;  	.line  	14; "switch.c" 	break;     	
   	GOTO   	_00111_DS_
_00107_DS_
;  	.line  	16; "switch.c" 	IOP1=1;
   	MOVAI  	0x01
   	MOVRA  	IOP1
;  	.line  	17; "switch.c" 	break;
   	GOTO   	_00111_DS_
_00108_DS_
;  	.line  	19; "switch.c" 	IOP1=0;
   	CLRR   	IOP1
_00111_DS_
;  	.line  	23; "switch.c" 	}
   	RETURN 	
; exit point of _fun1


;  	code size estimation:
;  	   25+    0 =    25 instructions (   50 byte)

   	end
