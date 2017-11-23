;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 28 2017) (MINGW32)
; This file was generated Tue Nov 21 09:14:37 2017
;--------------------------------------------------------
; MC30/MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"tbl.c"
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
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
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
UD_abs_tbl_20	udata_ovr	0x0020
_ram0
	res	1
UD_abs_tbl_21	udata_ovr	0x0021
_ram1
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_tbl_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_tbl_0	code
_rom
	retai 0x00
	retai 0x01
	retai 0x02
	retai 0x03
	retai 0x04
	retai 0x05
	retai 0x06
	retai 0x07
	retai 0x08
	retai 0x09


;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main ANSELbits                 Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main LVDCRbits                 Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ram1                      Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
;@main i                         Allocated to registers r0x1000 r0x1001 ;size:2
;@main INDF                      Allocated to registers ;size:1
;@main INDF0                     Allocated to registers ;size:1
;@main INDF1                     Allocated to registers ;size:1
;@main INDF2                     Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main ANSEL                     Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@main LVDCR                     Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main OSCAL                     Allocated to registers ;size:1
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
code_tbl	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;7 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;   STK01
;   STK00
;   r0x1004
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	13; "tbl.c"	ram0 = 0xfe;
	MOVAI	0xfe
	MOVRA	_ram0
;	.line	14; "tbl.c"	ram1 = 0;
	CLRR	_ram1
;	.line	15; "tbl.c"	for(i=0; i<10; i++)
	CLRR	r0x1000
	CLRR	r0x1001
;;signed compare: left < lit(0xA=10), size=2, mask=ffff
_00108_DS_
	MOVAR	r0x1001
	ADDAI	0x80
	ADDAI	0x80
	JBSET	STATUS,2
	GOTO	_00121_DS_
	MOVAI	0x0a
	RSUBAR	r0x1000
_00121_DS_
	JBCLR	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3194: created from rifx:00D5608C
;	.line	17; "tbl.c"	ram0 = rom[i];
	MOVAR	r0x1000
	ADDAI	(_rom + 0)
	MOVRA	r0x1002
	MOVAI	high (_rom + 0)
	MOVRA	r0x1003
	MOVAR	r0x1001
	JBCLR	STATUS,0
	JZAR	r0x1001
	ADDRA	r0x1003
	MOVAR	r0x1002
	MOVRA	STK01
	MOVAR	r0x1003
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1004
	MOVAR	r0x1004
	MOVRA	_ram0
;	.line	18; "tbl.c"	ram1 += rom[i];	   	// ram1 = 0x2d
	MOVAR	r0x1004
	ADDRA	_ram1
;	.line	15; "tbl.c"	for(i=0; i<10; i++)
	INCR	r0x1000
	JBCLR	STATUS,2
	INCR	r0x1001
	GOTO	_00108_DS_
_00106_DS_
;	.line	22; "tbl.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   40+    0 =    40 instructions (   80 byte)

	end
