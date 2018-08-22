;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (May  2 2018) (MINGW32)
; This file was generated Thu May 03 10:02:59 2018
;--------------------------------------------------------
; MC30 port for the RISC core
;--------------------------------------------------------
;	.file	"1.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_INDFbits
	extern	_PCLbits
	extern	_STATUSbits
	extern	_FSRbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PCLATHbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_TM0CRbits
	extern	_T0CNTbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_T1CRbits
	extern	_PWMCRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DATA0bits
	extern	_T1DATA1bits
	extern	_T1DATA2bits
	extern	_INDF
	extern	_T0CNT
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_P0
	extern	_P1
	extern	_MCR
	extern	_KBIM
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PUCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_T0CR
	extern	_DDR0
	extern	_DDR1
	extern	_PWMCR
	extern	_T1DATA1
	extern	_T1DATA2
	extern	_TM0CR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA0
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_func
	global	_main

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
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
UDL_1_0	udata
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'func'
;@func func                      Allocated to registers ;size:2
;@func INDFbits                  Allocated to registers ;size:1
;@func PCLbits                   Allocated to registers ;size:1
;@func STATUSbits                Allocated to registers ;size:1
;@func FSRbits                   Allocated to registers ;size:1
;@func P0bits                    Allocated to registers ;size:1
;@func P1bits                    Allocated to registers ;size:1
;@func MCRbits                   Allocated to registers ;size:1
;@func KBIMbits                  Allocated to registers ;size:1
;@func PCLATHbits                Allocated to registers ;size:1
;@func PDCONbits                 Allocated to registers ;size:1
;@func ODCONbits                 Allocated to registers ;size:1
;@func PUCONbits                 Allocated to registers ;size:1
;@func INTECONbits               Allocated to registers ;size:1
;@func INTFLAGbits               Allocated to registers ;size:1
;@func T0CRbits                  Allocated to registers ;size:1
;@func TM0CRbits                 Allocated to registers ;size:1
;@func T0CNTbits                 Allocated to registers ;size:1
;@func DDR0bits                  Allocated to registers ;size:1
;@func DDR1bits                  Allocated to registers ;size:1
;@func T1CRbits                  Allocated to registers ;size:1
;@func PWMCRbits                 Allocated to registers ;size:1
;@func T1CNTbits                 Allocated to registers ;size:1
;@func T1LOADbits                Allocated to registers ;size:1
;@func T1DATA0bits               Allocated to registers ;size:1
;@func T1DATA1bits               Allocated to registers ;size:1
;@func T1DATA2bits               Allocated to registers ;size:1
;@func t                         Allocated to registers ;size:2
;@func i                         Allocated to registers r0x1000 r0x1001 ;size:2
;@func INDF                      Allocated to registers ;size:1
;@func T0CNT                     Allocated to registers ;size:1
;@func PCL                       Allocated to registers ;size:1
;@func STATUS                    Allocated to registers ;size:1
;@func FSR                       Allocated to registers ;size:1
;@func P0                        Allocated to registers ;size:1
;@func P1                        Allocated to registers ;size:1
;@func MCR                       Allocated to registers ;size:1
;@func KBIM                      Allocated to registers ;size:1
;@func PCLATH                    Allocated to registers ;size:1
;@func PDCON                     Allocated to registers ;size:1
;@func ODCON                     Allocated to registers ;size:1
;@func PUCON                     Allocated to registers ;size:1
;@func INTECON                   Allocated to registers ;size:1
;@func INTFLAG                   Allocated to registers ;size:1
;@func T0CR                      Allocated to registers ;size:1
;@func DDR0                      Allocated to registers ;size:1
;@func DDR1                      Allocated to registers ;size:1
;@func PWMCR                     Allocated to registers ;size:1
;@func T1DATA1                   Allocated to registers ;size:1
;@func T1DATA2                   Allocated to registers ;size:1
;@func TM0CR                     Allocated to registers ;size:1
;@func T1CR                      Allocated to registers ;size:1
;@func T1CNT                     Allocated to registers ;size:1
;@func T1LOAD                    Allocated to registers ;size:1
;@func T1DATA0                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'func';
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
code_1	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _func
;   _func
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	13; "1.c"	func(1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_func
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _func	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1000
;   r0x1001
;; Starting pCode block
_func	;Function start
; 2 exit points
;	.line	7; "1.c"	for(i = 0; i<10; i++)
	CLRR	r0x1000
	CLRR	r0x1001
;;signed compare: left < lit(0xA=10), size=2, mask=ffff
_00105_DS_
	MOVAR	r0x1001
	ADDAI	0x80
	ADDAI	0x80
	JBSET	STATUS,2
	GOTO	_00116_DS_
	MOVAI	0x0a
	RSUBAR	r0x1000
_00116_DS_
	JBCLR	STATUS,0
	GOTO	_00109_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	8; "1.c"	T1CR = T1CR+1;
	INCR	_T1CR
;	.line	7; "1.c"	for(i = 0; i<10; i++)
	INCR	r0x1000
	JBCLR	STATUS,2
	INCR	r0x1001
	GOTO	_00105_DS_
_00109_DS_
	RETURN	
; exit point of _func


;	code size estimation:
;	   22+    0 =    22 instructions (   44 byte)

	end
