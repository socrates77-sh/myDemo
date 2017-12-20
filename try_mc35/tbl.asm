;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Tue Dec 19 16:03:20 2017
;--------------------------------------------------------
; MC35 port for the RISC core
;--------------------------------------------------------
;	.file	"tbl.c"
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
	extern	__gptrget1
	extern	__gptrget2
	extern	__gptrget4
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_ram0
	global	_ram1
	global	_iram0
	global	_iram1
	global	_lram0
	global	_lram1
	global	_rom
	global	_irom
	global	_lrom

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
UD_abs_tbl_22	udata_ovr	0x0022
_iram0
	res	2
UD_abs_tbl_24	udata_ovr	0x0024
_iram1
	res	2
UD_abs_tbl_26	udata_ovr	0x0026
_lram0
	res	4
UD_abs_tbl_2a	udata_ovr	0x002a
_lram1
	res	4
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_tbl_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1007	res	1
r0x1006	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_tbl_0	code
_rom
	dw 0x00
	dw 0x01
	dw 0x02
	dw 0x03
	dw 0x04
	dw 0x05
	dw 0x06
	dw 0x07
	dw 0x08
	dw 0x09


ID_tbl_1	code
_irom
	dw 0x01
	dw 0x01
	dw 0x02
	dw 0x02
	dw 0x03
	dw 0x03
	dw 0x04
	dw 0x04


ID_tbl_2	code
_lrom
	dw 0x01
	dw 0x01
	dw 0x01
	dw 0x01
	dw 0x02
	dw 0x02
	dw 0x02
	dw 0x02
	dw 0x03
	dw 0x03
	dw 0x03
	dw 0x03
	dw 0x04
	dw 0x04
	dw 0x04
	dw 0x04


;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main HIBYTEbits                Allocated to registers ;size:1
;@main FSR0bits                  Allocated to registers ;size:1
;@main FSR1bits                  Allocated to registers ;size:1
;@main PFLAGbits                 Allocated to registers ;size:1
;@main ZEROTRbits                Allocated to registers ;size:1
;@main OSCCALbits                Allocated to registers ;size:1
;@main WKCR0bits                 Allocated to registers ;size:1
;@main WKCR5bits                 Allocated to registers ;size:1
;@main ADIOS0bits                Allocated to registers ;size:1
;@main ADIOS1bits                Allocated to registers ;size:1
;@main ADIOS2bits                Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ADCR2bits                 Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main EINTCRbits                Allocated to registers ;size:1
;@main OEP4bits                  Allocated to registers ;size:1
;@main OEP5bits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main WDTCRbits                 Allocated to registers ;size:1
;@main T1LDRbits                 Allocated to registers ;size:1
;@main PCLbits                   Allocated to registers ;size:1
;@main PCHbits                   Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main IOP4bits                  Allocated to registers ;size:1
;@main IOP5bits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T0CNTbits                 Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T1CNTbits                 Allocated to registers ;size:1
;@main BUZCRbits                 Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main PUP4bits                  Allocated to registers ;size:1
;@main PUP5bits                  Allocated to registers ;size:1
;@main INDFbits                  Allocated to registers ;size:1
;@main PWMCR0bits                Allocated to registers ;size:1
;@main PWMCR1bits                Allocated to registers ;size:1
;@main PWMCNTbits                Allocated to registers ;size:1
;@main PWMADTbits                Allocated to registers ;size:1
;@main PWMBDTbits                Allocated to registers ;size:1
;@main PWMCDTbits                Allocated to registers ;size:1
;@main PWMPDbits                 Allocated to registers ;size:1
;@main ram0                      Allocated to registers ;size:1
;@main ram1                      Allocated to registers ;size:1
;@main iram0                     Allocated to registers ;size:2
;@main iram1                     Allocated to registers ;size:2
;@main lram0                     Allocated to registers ;size:4
;@main lram1                     Allocated to registers ;size:4
;@main i                         Allocated to registers r0x1000 r0x1001 ;size:2
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PFLAG                     Allocated to registers ;size:1
;@main ZEROTR                    Allocated to registers ;size:1
;@main OSCCAL                    Allocated to registers ;size:1
;@main WKCR0                     Allocated to registers ;size:1
;@main WKCR5                     Allocated to registers ;size:1
;@main ADIOS0                    Allocated to registers ;size:1
;@main ADIOS1                    Allocated to registers ;size:1
;@main ADIOS2                    Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main ADCR2                     Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main EINTCR                    Allocated to registers ;size:1
;@main OEP4                      Allocated to registers ;size:1
;@main OEP5                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main WDTCR                     Allocated to registers ;size:1
;@main T1LDR                     Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main PCH                       Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main IOP4                      Allocated to registers ;size:1
;@main IOP5                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main BUZCR                     Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main PUP4                      Allocated to registers ;size:1
;@main PUP5                      Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main PWMCR0                    Allocated to registers ;size:1
;@main PWMCR1                    Allocated to registers ;size:1
;@main PWMCNT                    Allocated to registers ;size:1
;@main PWMADT                    Allocated to registers ;size:1
;@main PWMBDT                    Allocated to registers ;size:1
;@main PWMCDT                    Allocated to registers ;size:1
;@main PWMPD                     Allocated to registers ;size:1
;@main STKR0L                    Allocated to registers ;size:1
;@main STKR0H                    Allocated to registers ;size:1
;@main STKR1L                    Allocated to registers ;size:1
;@main STKR1H                    Allocated to registers ;size:1
;@main STKR2L                    Allocated to registers ;size:1
;@main STKR2H                    Allocated to registers ;size:1
;@main STKR3L                    Allocated to registers ;size:1
;@main STKR3H                    Allocated to registers ;size:1
;@main STKR4L                    Allocated to registers ;size:1
;@main STKR4H                    Allocated to registers ;size:1
;@main STKR5L                    Allocated to registers ;size:1
;@main STKR5H                    Allocated to registers ;size:1
;@main STKR6L                    Allocated to registers ;size:1
;@main STKR6H                    Allocated to registers ;size:1
;@main STKR7L                    Allocated to registers ;size:1
;@main STKR7H                    Allocated to registers ;size:1
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
;   __gptrget2
;   __gptrget4
;   __gptrget1
;   __gptrget2
;   __gptrget4
;11 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;   STK01
;   STK00
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   STK02
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	19; "tbl.c"	ram0 = 0xfe;
	MOVAI	0xfe
	MOVRA	_ram0
;	.line	20; "tbl.c"	ram1 = 0;
	CLRR	_ram1
;	.line	21; "tbl.c"	iram1 = 0;
	CLRR	_iram1
	CLRR	(_iram1 + 1)
;	.line	22; "tbl.c"	lram1 = 0;
	CLRR	_lram1
	CLRR	(_lram1 + 1)
	CLRR	(_lram1 + 2)
	CLRR	(_lram1 + 3)
;	.line	24; "tbl.c"	for(i=0; i<10; i++)
	CLRR	r0x1000
	CLRR	r0x1001
;;signed compare: left < lit(0xA=10), size=2, mask=ffff
_00108_DS_
	MOVAR	r0x1001
	ADDAI	0x80
	ADDAI	0x80
	JBSET	PFLAG,0
	GOTO	_00139_DS_
	MOVAI	0x0a
	XCH	r0x1000
	ASUBRA	r0x1000
	XCH	r0x1000
_00139_DS_
	JBCLR	PFLAG,2
	GOTO	_00111_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	26; "tbl.c"	ram0 = rom[i];
	MOVAR	r0x1000
	ADDAI	(_rom + 0)
	MOVRA	r0x1002
	MOVAI	high (_rom + 0)
	MOVRA	r0x1003
	MOVAR	r0x1001
	JBCLR	PFLAG,2
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
;	.line	27; "tbl.c"	ram1 += rom[i];	   	// ram1 = 0x2d
	MOVAR	r0x1004
	ADDRA	_ram1
;	.line	24; "tbl.c"	for(i=0; i<10; i++)
	MOVAI	0x01
	ADDRA	r0x1000
	JBCLR	PFLAG,0
	ADDRA	r0x1001
	GOTO	_00108_DS_
_00111_DS_
;	.line	30; "tbl.c"	for(i=0; i<4; i++)
	CLRR	r0x1000
	CLRR	r0x1001
;;signed compare: left < lit(0x4=4), size=2, mask=ffff
_00112_DS_
	MOVAR	r0x1001
	ADDAI	0x80
	ADDAI	0x80
	JBSET	PFLAG,0
	GOTO	_00140_DS_
	MOVAI	0x04
	XCH	r0x1000
	ASUBRA	r0x1000
	XCH	r0x1000
_00140_DS_
	JBCLR	PFLAG,2
	GOTO	_00115_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	32; "tbl.c"	iram0 = irom[i];
	BCLR	PFLAG,2
	RLAR	r0x1000
	MOVRA	r0x1002
	RLAR	r0x1001
	MOVRA	r0x1003
	MOVAR	r0x1002
	ADDAI	(_irom + 0)
	MOVRA	r0x1002
	MOVAR	r0x1003
	JBCLR	PFLAG,2
	JZAR	r0x1003
	ADDAI	high (_irom + 0)
	MOVRA	r0x1003
	MOVAR	r0x1002
	MOVRA	STK01
	MOVAR	r0x1003
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget2
	MOVRA	r0x1005
	MOVAR	STK00
	MOVRA	r0x1004
	MOVAR	r0x1004
	MOVRA	_iram0
	MOVAR	r0x1005
	MOVRA	(_iram0 + 1)
;	.line	33; "tbl.c"	iram1 += irom[i];	   	// iram1 = 0x0a0a
	MOVAR	r0x1004
	ADDRA	_iram1
	MOVAR	r0x1005
	JBCLR	PFLAG,2
	JZAR	r0x1005
	ADDRA	(_iram1 + 1)
;	.line	30; "tbl.c"	for(i=0; i<4; i++)
	MOVAI	0x01
	ADDRA	r0x1000
	JBCLR	PFLAG,0
	ADDRA	r0x1001
	GOTO	_00112_DS_
_00115_DS_
;	.line	36; "tbl.c"	for(i=0; i<4; i++)
	CLRR	r0x1000
	CLRR	r0x1001
;;signed compare: left < lit(0x4=4), size=2, mask=ffff
_00116_DS_
	MOVAR	r0x1001
	ADDAI	0x80
	ADDAI	0x80
	JBSET	PFLAG,0
	GOTO	_00141_DS_
	MOVAI	0x04
	XCH	r0x1000
	ASUBRA	r0x1000
	XCH	r0x1000
_00141_DS_
	JBCLR	PFLAG,2
	GOTO	_00106_DS_
;;genSkipc:3223: created from rifx:00DD608C
;	.line	38; "tbl.c"	lram0 = lrom[i];
	BCLR	PFLAG,2
	RLAR	r0x1000
	MOVRA	r0x1002
	RLAR	r0x1001
	MOVRA	r0x1003
	BCLR	PFLAG,2
	RLR	r0x1002
	RLR	r0x1003
	MOVAR	r0x1002
	ADDAI	(_lrom + 0)
	MOVRA	r0x1002
	MOVAR	r0x1003
	JBCLR	PFLAG,2
	JZAR	r0x1003
	ADDAI	high (_lrom + 0)
	MOVRA	r0x1003
	MOVAR	r0x1002
	MOVRA	STK01
	MOVAR	r0x1003
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget4
	MOVRA	r0x1006
	MOVAR	STK00
	MOVRA	r0x1007
	MOVAR	STK01
	MOVRA	r0x1005
	MOVAR	STK02
	MOVRA	r0x1004
	MOVAR	r0x1004
	MOVRA	_lram0
	MOVAR	r0x1005
	MOVRA	(_lram0 + 1)
	MOVAR	r0x1007
	MOVRA	(_lram0 + 2)
	MOVAR	r0x1006
	MOVRA	(_lram0 + 3)
;	.line	39; "tbl.c"	lram1 += lrom[i];  	   	// lram1 = 0x0a0a0a0a0a
	MOVAR	r0x1004
	ADDRA	_lram1
	MOVAR	r0x1005
	JBCLR	PFLAG,2
	JZAR	r0x1005
	ADDRA	(_lram1 + 1)
	MOVAR	r0x1007
	JBCLR	PFLAG,2
	JZAR	r0x1007
	ADDRA	(_lram1 + 2)
	MOVAR	r0x1006
	JBCLR	PFLAG,2
	JZAR	r0x1006
	ADDRA	(_lram1 + 3)
;	.line	36; "tbl.c"	for(i=0; i<4; i++)
	MOVAI	0x01
	ADDRA	r0x1000
	JBCLR	PFLAG,0
	ADDRA	r0x1001
	GOTO	_00116_DS_
_00106_DS_
;	.line	43; "tbl.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	  168+    0 =   168 instructions (  336 byte)

	end
