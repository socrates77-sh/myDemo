;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 18:31:21 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"CtrlSbr.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_TMCRbits
	extern	_T1CRbits
	extern	_KeyCnt
	extern	_T1s
	extern	_TRedCnt
	extern	_TRed
	extern	_TGreen
	extern	_TBlue
	extern	_TRedbak
	extern	_TGreenbak
	extern	_TBluebak
	extern	_IRTmr
	extern	_KeyCode
	extern	_Custom
	extern	_CustomRev
	extern	_IRCode1
	extern	_IRCodeRev1
	extern	_BitCnt
	extern	_LongIRCnt
	extern	_IRCnt
	extern	_Color
	extern	_Mode1Cnt
	extern	_delay
	extern	_Tmr
	extern	_TStop
	extern	_Step
	extern	_T40ms
	extern	_Dly100ms
	extern	_Mode2Cnt2
	extern	_Mode2Cnt3
	extern	_delay05ms
	extern	_Flag1
	extern	_Flag2
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
	extern	_TMCR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	__gptrget1

	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_ColorSbr
	global	_MColorSbr
	global	_Mode2Sbr
	global	_BlueTbl
	global	_GreenTbl
	global	_RedTbl

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_CtrlSbr_0	udata
r0x1009	res	1
r0x100A	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_CtrlSbr_0	code
_BlueTbl
	retai 0xff
	retai 0xff
	retai 0x0e
	retai 0xfc
	retai 0xf7
	retai 0x26
	retai 0xff
	retai 0xae
	retai 0xd6
	retai 0x23
	retai 0xd6
	retai 0x75


ID_CtrlSbr_1	code
_GreenTbl
	retai 0xff
	retai 0x0e
	retai 0xff
	retai 0x8b
	retai 0x18
	retai 0xf7
	retai 0x26
	retai 0x1f
	retai 0x26
	retai 0x58
	retai 0xf7
	retai 0xdd


ID_CtrlSbr_2	code
_RedTbl
	retai 0x0e
	retai 0xff
	retai 0xff
	retai 0x1a
	retai 0xa0
	retai 0xe3
	retai 0x00
	retai 0xae
	retai 0x31
	retai 0xe3
	retai 0x27
	retai 0xae


;@Allocation info for local variables in function 'ColorSbr'
;@ColorSbr ColorSbr                  Allocated to registers ;size:2
;@ColorSbr STATUSbits                Allocated to registers ;size:1
;@ColorSbr P0bits                    Allocated to registers ;size:1
;@ColorSbr P1bits                    Allocated to registers ;size:1
;@ColorSbr MCRbits                   Allocated to registers ;size:1
;@ColorSbr KBIMbits                  Allocated to registers ;size:1
;@ColorSbr PDCONbits                 Allocated to registers ;size:1
;@ColorSbr ODCONbits                 Allocated to registers ;size:1
;@ColorSbr PUCONbits                 Allocated to registers ;size:1
;@ColorSbr INTECONbits               Allocated to registers ;size:1
;@ColorSbr INTFLAGbits               Allocated to registers ;size:1
;@ColorSbr T0CRbits                  Allocated to registers ;size:1
;@ColorSbr DDR0bits                  Allocated to registers ;size:1
;@ColorSbr DDR1bits                  Allocated to registers ;size:1
;@ColorSbr TMCRbits                  Allocated to registers ;size:1
;@ColorSbr T1CRbits                  Allocated to registers ;size:1
;@ColorSbr KeyCnt                    Allocated to registers ;size:1
;@ColorSbr T1s                       Allocated to registers ;size:1
;@ColorSbr TRedCnt                   Allocated to registers ;size:1
;@ColorSbr TRed                      Allocated to registers ;size:1
;@ColorSbr TGreen                    Allocated to registers ;size:1
;@ColorSbr TBlue                     Allocated to registers ;size:1
;@ColorSbr TRedbak                   Allocated to registers ;size:1
;@ColorSbr TGreenbak                 Allocated to registers ;size:1
;@ColorSbr TBluebak                  Allocated to registers ;size:1
;@ColorSbr IRTmr                     Allocated to registers ;size:1
;@ColorSbr KeyCode                   Allocated to registers ;size:1
;@ColorSbr Custom                    Allocated to registers ;size:1
;@ColorSbr CustomRev                 Allocated to registers ;size:1
;@ColorSbr IRCode1                   Allocated to registers ;size:1
;@ColorSbr IRCodeRev1                Allocated to registers ;size:1
;@ColorSbr BitCnt                    Allocated to registers ;size:1
;@ColorSbr LongIRCnt                 Allocated to registers ;size:1
;@ColorSbr IRCnt                     Allocated to registers ;size:1
;@ColorSbr Color                     Allocated to registers ;size:1
;@ColorSbr Mode1Cnt                  Allocated to registers ;size:1
;@ColorSbr delay                     Allocated to registers ;size:1
;@ColorSbr Tmr                       Allocated to registers ;size:2
;@ColorSbr TStop                     Allocated to registers ;size:1
;@ColorSbr Step                      Allocated to registers ;size:1
;@ColorSbr T40ms                     Allocated to registers ;size:1
;@ColorSbr Dly100ms                  Allocated to registers ;size:1
;@ColorSbr Mode2Cnt2                 Allocated to registers ;size:1
;@ColorSbr Mode2Cnt3                 Allocated to registers ;size:1
;@ColorSbr delay05ms                 Allocated to registers ;size:1
;@ColorSbr Flag1                     Allocated to registers ;size:1
;@ColorSbr Flag2                     Allocated to registers ;size:1
;@ColorSbr INDF                      Allocated to registers ;size:1
;@ColorSbr T0CNT                     Allocated to registers ;size:1
;@ColorSbr PCL                       Allocated to registers ;size:1
;@ColorSbr STATUS                    Allocated to registers ;size:1
;@ColorSbr FSR                       Allocated to registers ;size:1
;@ColorSbr P0                        Allocated to registers ;size:1
;@ColorSbr P1                        Allocated to registers ;size:1
;@ColorSbr MCR                       Allocated to registers ;size:1
;@ColorSbr KBIM                      Allocated to registers ;size:1
;@ColorSbr PCLATH                    Allocated to registers ;size:1
;@ColorSbr PDCON                     Allocated to registers ;size:1
;@ColorSbr ODCON                     Allocated to registers ;size:1
;@ColorSbr PUCON                     Allocated to registers ;size:1
;@ColorSbr INTECON                   Allocated to registers ;size:1
;@ColorSbr INTFLAG                   Allocated to registers ;size:1
;@ColorSbr T0CR                      Allocated to registers ;size:1
;@ColorSbr DDR0                      Allocated to registers ;size:1
;@ColorSbr DDR1                      Allocated to registers ;size:1
;@ColorSbr TMCR                      Allocated to registers ;size:1
;@ColorSbr T1CR                      Allocated to registers ;size:1
;@ColorSbr T1CNT                     Allocated to registers ;size:1
;@ColorSbr T1LOAD                    Allocated to registers ;size:1
;@ColorSbr T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'ColorSbr';
;@Allocation info for local variables in function 'MColorSbr'
;@end Allocation info for local variables in function 'MColorSbr';
;@Allocation info for local variables in function 'Mode2Sbr'
;@end Allocation info for local variables in function 'Mode2Sbr';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_CtrlSbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _Mode2Sbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Mode2Sbr	;Function start
; 2 exit points
;	.line	75; "CtrlSbr.c"	if (Mode2Cnt2 >= Mode2Cnt3)
	MOVAR	_Mode2Cnt3
	RSUBAR	_Mode2Cnt2
	JBSET	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3251: created from rifx:0022609C
;	.line	77; "CtrlSbr.c"	pBlueC = 1;
	BSET	_DDR1bits,2
;	.line	78; "CtrlSbr.c"	pRedC = 1;
	BSET	_DDR1bits,0
;	.line	79; "CtrlSbr.c"	pGreenC = 1;
	BSET	_DDR1bits,1
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x33=51), size=1
;	.line	80; "CtrlSbr.c"	if (Mode2Cnt2 > 50) Mode2Cnt2 = 0;
	MOVAI	0x33
	RSUBAR	_Mode2Cnt2
	JBSET	STATUS,0
	GOTO	_00137_DS_
;;genSkipc:3251: created from rifx:0022609C
	CLRR	_Mode2Cnt2
	GOTO	_00137_DS_
_00135_DS_
;	.line	84; "CtrlSbr.c"	pBlueC = 0;
	BCLR	_DDR1bits,2
;	.line	85; "CtrlSbr.c"	pRedC = 0;
	BCLR	_DDR1bits,0
;	.line	86; "CtrlSbr.c"	pGreenC = 0;
	BCLR	_DDR1bits,1
_00137_DS_
	RETURN	
; exit point of _Mode2Sbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _MColorSbr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_MColorSbr	;Function start
; 2 exit points
;	.line	22; "CtrlSbr.c"	if (++delay >= 4) 
	INCR	_delay
;;unsigned compare: left < lit(0x4=4), size=1
	MOVAI	0x04
	RSUBAR	_delay
	JBSET	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3251: created from rifx:0022609C
;	.line	24; "CtrlSbr.c"	delay = 0;
	CLRR	_delay
;	.line	25; "CtrlSbr.c"	if (--Mode1Cnt == 0)
	DECR	_Mode1Cnt
	MOVAI	0x00
	ORAR	_Mode1Cnt
	JBSET	STATUS,2
	GOTO	_00112_DS_
;	.line	27; "CtrlSbr.c"	TGreen = TColor;
	MOVAI	0x7f
	MOVRA	_TGreen
;	.line	28; "CtrlSbr.c"	TRed = TColor;
	MOVAI	0x7f
	MOVRA	_TRed
;	.line	29; "CtrlSbr.c"	TBlue = TColor;
	MOVAI	0x7f
	MOVRA	_TBlue
;	.line	30; "CtrlSbr.c"	if (++Step > 5) Step = 0;
	INCR	_Step
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_Step
	JBSET	STATUS,0
	GOTO	_00110_DS_
;;genSkipc:3251: created from rifx:0022609C
	CLRR	_Step
_00110_DS_
;	.line	31; "CtrlSbr.c"	Mode1Cnt = TSteplengh;
	MOVAI	0x7f
	MOVRA	_Mode1Cnt
_00112_DS_
;	.line	33; "CtrlSbr.c"	if (Step == 0) {++TGreen;--TBlue;return;}
	MOVAI	0x00
	ORAR	_Step
	JBSET	STATUS,2
	GOTO	_00114_DS_
	INCR	_TGreen
	DECR	_TBlue
	GOTO	_00127_DS_
_00114_DS_
;	.line	34; "CtrlSbr.c"	if (Step == 1) {--TGreen;++TBlue;return;}
	MOVAR	_Step
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00116_DS_
	DECR	_TGreen
	INCR	_TBlue
	GOTO	_00127_DS_
_00116_DS_
;	.line	35; "CtrlSbr.c"	if (Step == 2) {++TRed;--TBlue;return;}
	MOVAR	_Step
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00118_DS_
	INCR	_TRed
	DECR	_TBlue
	GOTO	_00127_DS_
_00118_DS_
;	.line	36; "CtrlSbr.c"	if (Step == 3) {--TRed;++TBlue;return;}
	MOVAR	_Step
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00120_DS_
	DECR	_TRed
	INCR	_TBlue
	GOTO	_00127_DS_
_00120_DS_
;	.line	37; "CtrlSbr.c"	if (Step == 4) {++TRed;--TGreen;return;}
	MOVAR	_Step
	XORAI	0x04
	JBSET	STATUS,2
	GOTO	_00122_DS_
	INCR	_TRed
	DECR	_TGreen
	GOTO	_00127_DS_
_00122_DS_
;	.line	38; "CtrlSbr.c"	if (Step == 5) {--TRed;++TGreen;return;}
	MOVAR	_Step
	XORAI	0x05
	JBSET	STATUS,2
	GOTO	_00127_DS_
	DECR	_TRed
	INCR	_TGreen
_00127_DS_
	RETURN	
; exit point of _MColorSbr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _ColorSbr	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;4 compiler assigned registers:
;   r0x1009
;   r0x100A
;   STK01
;   STK00
;; Starting pCode block
_ColorSbr	;Function start
; 2 exit points
;	.line	13; "CtrlSbr.c"	TRed = RedTbl[Color];
	MOVAR	_Color
	ADDAI	(_RedTbl + 0)
	MOVRA	r0x1009
	MOVAI	high (_RedTbl + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x100A
	MOVAR	r0x1009
	MOVRA	STK01
	MOVAR	r0x100A
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_TRed
;	.line	14; "CtrlSbr.c"	TGreen = GreenTbl[Color];
	MOVAR	_Color
	ADDAI	(_GreenTbl + 0)
	MOVRA	r0x1009
	MOVAI	high (_GreenTbl + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x100A
	MOVAR	r0x1009
	MOVRA	STK01
	MOVAR	r0x100A
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_TGreen
;	.line	15; "CtrlSbr.c"	TBlue = BlueTbl[Color];
	MOVAR	_Color
	ADDAI	(_BlueTbl + 0)
	MOVRA	r0x1009
	MOVAI	high (_BlueTbl + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x100A
	MOVAR	r0x1009
	MOVRA	STK01
	MOVAR	r0x100A
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_TBlue
	RETURN	
; exit point of _ColorSbr


;	code size estimation:
;	  127+    0 =   127 instructions (  254 byte)

	end
