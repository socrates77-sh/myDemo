;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Fri Jan 19 15:42:13 2018
;--------------------------------------------------------
; MC30 port for the RISC core
;--------------------------------------------------------
;	.file	"try.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_INDFbits
	extern	_T0CNTbits
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
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_PWMCRbits
	extern	_T1DAT1bits
	extern	_T1DAT2bits
	extern	_TM0CRbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DAT0bits
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
	extern	_T1DAT1
	extern	_T1DAT2
	extern	_TM0CR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DAT0
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
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
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main INDFbits                  Allocated to registers ;size:1
;@main T0CNTbits                 Allocated to registers ;size:1
;@main PCLbits                   Allocated to registers ;size:1
;@main STATUSbits                Allocated to registers ;size:1
;@main FSRbits                   Allocated to registers ;size:1
;@main P0bits                    Allocated to registers ;size:1
;@main P1bits                    Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main PCLATHbits                Allocated to registers ;size:1
;@main PDCONbits                 Allocated to registers ;size:1
;@main ODCONbits                 Allocated to registers ;size:1
;@main PUCONbits                 Allocated to registers ;size:1
;@main INTECONbits               Allocated to registers ;size:1
;@main INTFLAGbits               Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main DDR0bits                  Allocated to registers ;size:1
;@main DDR1bits                  Allocated to registers ;size:1
;@main PWMCRbits                 Allocated to registers ;size:1
;@main T1DAT1bits                Allocated to registers ;size:1
;@main T1DAT2bits                Allocated to registers ;size:1
;@main TM0CRbits                 Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T1CNTbits                 Allocated to registers ;size:1
;@main T1LOADbits                Allocated to registers ;size:1
;@main T1DAT0bits                Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main P0                        Allocated to registers ;size:1
;@main P1                        Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main PCLATH                    Allocated to registers ;size:1
;@main PDCON                     Allocated to registers ;size:1
;@main ODCON                     Allocated to registers ;size:1
;@main PUCON                     Allocated to registers ;size:1
;@main INTECON                   Allocated to registers ;size:1
;@main INTFLAG                   Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main DDR0                      Allocated to registers ;size:1
;@main DDR1                      Allocated to registers ;size:1
;@main PWMCR                     Allocated to registers ;size:1
;@main T1DAT1                    Allocated to registers ;size:1
;@main T1DAT2                    Allocated to registers ;size:1
;@main TM0CR                     Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DAT0                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x03ff
	goto	_main
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_try	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	5; "try.c"	LVDEN=1;
	BSET	_MCRbits,0
;	.line	8; "try.c"	if(LVDEN==0);
	MOVAI	(_MCRbits + 0)
	MOVRA	FSR
	BCLR	STATUS,7
	JBCLR	(_MCRbits+1),0
	BSET	STATUS,7
	MOVAR	INDF
	ANDAI	0x01
	JBSET	STATUS,2
;	.line	10; "try.c"	GIE=1;
	BSET	_INTECONbits,7
_00106_DS_
;	.line	12; "try.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   12+    0 =    12 instructions (   24 byte)

	end
