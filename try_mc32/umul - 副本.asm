;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.0.0 (Sep 28 2017) (MINGW32)
; This file was generated Fri Oct 20 16:54:23 2017
;--------------------------------------------------------
; MC30/MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"umul.c"
	list	p=3221
	radix dec
	include "3221.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__mulint
	extern	__mullong
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
	extern	__mulchar
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_uc_a
	global	_uc_b
	global	_ui_a
	global	_ui_b
	global	_uram1
	global	_uram0
	global	_uiram0
	global	_uiram1
	global	_ulram0

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
UD_umul_0	udata
_uc_a	res	1

UD_umul_1	udata
_uc_b	res	1

UD_umul_2	udata
_ui_a	res	2

UD_umul_3	udata
_ui_b	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_umul_28	udata_ovr	0x0028
_uram0
	res	1
UD_abs_umul_29	udata_ovr	0x0029
_uram1
	res	1
UD_abs_umul_38	udata_ovr	0x0038
_uiram0
	res	2
UD_abs_umul_3a	udata_ovr	0x003a
_uiram1
	res	2
UD_abs_umul_48	udata_ovr	0x0048
_ulram0
	res	4
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_umul_0	udata
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100D	res	1
r0x100C	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main _mulint                   Allocated to registers ;size:2
;@main _mullong                  Allocated to registers ;size:2
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
;@main uc_a                      Allocated to registers ;size:1
;@main uc_b                      Allocated to registers ;size:1
;@main ui_a                      Allocated to registers ;size:2
;@main ui_b                      Allocated to registers ;size:2
;@main uram1                     Allocated to registers ;size:1
;@main uram0                     Allocated to registers ;size:1
;@main uiram0                    Allocated to registers ;size:2
;@main uiram1                    Allocated to registers ;size:2
;@main ulram0                    Allocated to registers ;size:4
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
code_umul	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   __mulchar
;   __mullong
;   __mulint
;   __mulint
;   __mulchar
;   __mullong
;   __mulint
;15 compiler assigned registers:
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   STK02
;   STK01
;   STK00
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   STK06
;   STK05
;   STK04
;   STK03
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	17; "umul.c"	uram0 = 0xad; 	// 0xad
	MOVAI	0xad
	MOVRA	_uram0
;	.line	18; "umul.c"	uram1 = 0x88; 	// 0x88
	MOVAI	0x88
	MOVRA	_uram1
;	.line	20; "umul.c"	uc_a = uram0;
	MOVAR	_uram0
	MOVRA	_uc_a
;	.line	21; "umul.c"	uc_b = uram1;
	MOVAR	_uram1
	MOVRA	_uc_b
;	.line	23; "umul.c"	uiram0 = (uint)uc_a * (uint)uc_b;      	// 0x26e8? (0x5b18)
	MOVAR	_uc_a
	MOVRA	r0x1006
	CLRR	r0x1007
	JBCLR	r0x1006,7
	DECR	r0x1007
	MOVAR	_uc_b
	MOVRA	r0x1008
	CLRR	r0x1009
	JBCLR	r0x1008,7
	DECR	r0x1009
	MOVAR	r0x1008
	MOVRA	STK02
	MOVAR	r0x1009
	MOVRA	STK01
	MOVAR	r0x1006
	MOVRA	STK00
	MOVAR	r0x1007
	CALL	__mulint
	MOVRA	(_uiram0 + 1)
	MOVAR	STK00
	MOVRA	_uiram0
;	.line	24; "umul.c"	uiram0 = uc_a * uc_b;      	   	   	   	// 0x00e8
	MOVAR	_uc_b
	MOVRA	STK00
	MOVAR	_uc_a
	CALL	__mulchar
	MOVRA	_uiram0
	CLRR	(_uiram0 + 1)
;	.line	26; "umul.c"	uiram0 = 0xfe53;
	MOVAI	0x53
	MOVRA	_uiram0
	MOVAI	0xfe
	MOVRA	(_uiram0 + 1)
;	.line	27; "umul.c"	uiram1 = 0x2b78;
	MOVAI	0x78
	MOVRA	_uiram1
	MOVAI	0x2b
	MOVRA	(_uiram1 + 1)
;	.line	29; "umul.c"	ui_a = uiram0;
	MOVAR	_uiram0
	MOVRA	_ui_a
	MOVAR	(_uiram0 + 1)
	MOVRA	(_ui_a + 1)
;	.line	30; "umul.c"	ui_b = uiram1;
	MOVAR	_uiram1
	MOVRA	_ui_b
	MOVAR	(_uiram1 + 1)
	MOVRA	(_ui_b + 1)
;	.line	32; "umul.c"	ulram0 = (ulong)ui_a * (ulong)ui_b;     	   	// 0xffb727e8? (0x2b2f27e8)
	MOVAR	_ui_a
	MOVRA	r0x1006
	MOVAR	(_ui_a + 1)
	MOVRA	r0x1007
	MOVAI	0x00
	JBCLR	r0x1007,7
	MOVAI	0xff
	MOVRA	r0x1009
	MOVRA	r0x1008
	MOVAR	_ui_b
	MOVRA	r0x100A
	MOVAR	(_ui_b + 1)
	MOVRA	r0x100B
	MOVAI	0x00
	JBCLR	r0x100B,7
	MOVAI	0xff
	MOVRA	r0x100C
	MOVRA	r0x100D
	MOVAR	r0x100A
	MOVRA	STK06
	MOVAR	r0x100B
	MOVRA	STK05
	MOVAR	r0x100D
	MOVRA	STK04
	MOVAR	r0x100C
	MOVRA	STK03
	MOVAR	r0x1006
	MOVRA	STK02
	MOVAR	r0x1007
	MOVRA	STK01
	MOVAR	r0x1008
	MOVRA	STK00
	MOVAR	r0x1009
	CALL	__mullong
	MOVRA	(_ulram0 + 3)
	MOVAR	STK00
	MOVRA	(_ulram0 + 2)
	MOVAR	STK01
	MOVRA	(_ulram0 + 1)
	MOVAR	STK02
	MOVRA	_ulram0
;	.line	33; "umul.c"	ulram0 = ui_a * ui_b;     	   	   	   		   	// 0x000027e8
	MOVAR	_ui_b
	MOVRA	STK02
	MOVAR	(_ui_b + 1)
	MOVRA	STK01
	MOVAR	_ui_a
	MOVRA	STK00
	MOVAR	(_ui_a + 1)
	CALL	__mulint
	MOVRA	r0x1007
	MOVAR	STK00
	MOVRA	r0x1006
	MOVAR	r0x1006
	MOVRA	_ulram0
	MOVAR	r0x1007
	MOVRA	(_ulram0 + 1)
	MOVAI	0x00
	JBCLR	(_ulram0 + 1),7
	MOVAI	0xff
	MOVRA	(_ulram0 + 3)
	MOVRA	(_ulram0 + 2)
_00106_DS_
;	.line	37; "umul.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	  114+    0 =   114 instructions (  228 byte)

	end
