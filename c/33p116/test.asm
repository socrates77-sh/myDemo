;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.5 (Jun 22 2017) (MINGW32)
; This file was generated Thu Aug 03 15:49:32 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"test.c"
	list	p=3316
	radix dec
	include "3316.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__modsint
	extern	_INDF0bits
	extern	_INDF1bits
	extern	_INDF2bits
	extern	_HIBYTEbits
	extern	_FSR0bits
	extern	_FSR1bits
	extern	_PCLbits
	extern	_STATUSbits
	extern	_MCRbits
	extern	_INDF3bits
	extern	_INTEbits
	extern	_INTFbits
	extern	_OSCMbits
	extern	_LVDCRbits
	extern	_LXTCRbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_DKWP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_LCDIOSP1bits
	extern	_IOP2bits
	extern	_OEP2bits
	extern	_PUP2bits
	extern	_LCDIOSP2bits
	extern	_IOP3bits
	extern	_OEP3bits
	extern	_PUP3bits
	extern	_LCDIOSP3bits
	extern	_IOP4bits
	extern	_OEP4bits
	extern	_PUP4bits
	extern	_LCDIOSP4bits
	extern	_IOP5bits
	extern	_OEP5bits
	extern	_PUP5bits
	extern	_LCDIOSP5bits
	extern	_T0CR0bits
	extern	_T0CR1bits
	extern	_T0LOADHbits
	extern	_T0LOADLbits
	extern	_T0DATAHbits
	extern	_T0DATALbits
	extern	_T0LATRHbits
	extern	_T0LATRLbits
	extern	_T0LATFHbits
	extern	_T0LATFLbits
	extern	_T1CRbits
	extern	_T1DATAbits
	extern	_T1LOADbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADCR2bits
	extern	_ADDRHbits
	extern	_ADDRLbits
	extern	_OPCR0bits
	extern	_OPCR1bits
	extern	_LCDCR0bits
	extern	_LCDCR1bits
	extern	_DKWbits
	extern	_KBCRbits
	extern	_LCDDRVbits
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_PFLAG
	extern	_STATUS
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_OSCM
	extern	_LVDCR
	extern	_LXTCR
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_DKWP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_LCDIOSP1
	extern	_IOP2
	extern	_OEP2
	extern	_PUP2
	extern	_LCDIOSP2
	extern	_IOP3
	extern	_OEP3
	extern	_PUP3
	extern	_LCDIOSP3
	extern	_IOP4
	extern	_OEP4
	extern	_PUP4
	extern	_LCDIOSP4
	extern	_IOP5
	extern	_OEP5
	extern	_PUP5
	extern	_LCDIOSP5
	extern	_T0CR0
	extern	_T0CR1
	extern	_T0LOADH
	extern	_T0LOADL
	extern	_T0DATAH
	extern	_T0DATAL
	extern	_T0LATRH
	extern	_T0LATRL
	extern	_T0LATFH
	extern	_T0LATFL
	extern	_T1CR
	extern	_T1DATA
	extern	_T1LOAD
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADCR2
	extern	_ADDRH
	extern	_ADDRL
	extern	_OPCR0
	extern	_OPCR1
	extern	_LCDCR0
	extern	_LCDCR1
	extern	_DKW
	extern	_KBCR
	extern	_LCDDRV
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
UDL_test_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1003	res	1
r0x1002	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_test	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __modsint
;   __modsint
;7 compiler assigned registers:
;   r0x1000
;   r0x1001
;   STK02
;   STK01
;   STK00
;   r0x1002
;   r0x1003
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	8; "test.c"	while(1)
	CLRR	r0x1000
	CLRR	r0x1001
_00108_DS_
;	.line	10; "test.c"	if(i%2==0)
	MOVAI	0x02
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1000
	MOVRA	STK00
	MOVAR	r0x1001
	CALL	__modsint
	MOVRA	r0x1002
	MOVAR	STK00
	MOVRA	r0x1003
	MOVAR	r0x1003
	ORAR	r0x1002
	JBSET	STATUS,2
	GOTO	_00106_DS_
;	.line	12; "test.c"	IOP1=0x00;
	CLRR	_IOP1
;	.line	13; "test.c"	IOP1=0x01;
	MOVAI	0x01
	MOVRA	_IOP1
_00106_DS_
;	.line	15; "test.c"	i+=1;
	INCR	r0x1000
	JBCLR	STATUS,2
	INCR	r0x1001
	GOTO	_00108_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   25+    0 =    25 instructions (   50 byte)

	end
