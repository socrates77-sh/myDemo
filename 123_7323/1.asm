;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Mon Mar 19 12:13:43 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"1.c"
	list	p=4K7323
	radix dec
	include "4K7323.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_PFLAGbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_OSCMbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_IOP2bits
	extern	_OEP2bits
	extern	_PUP2bits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_T2CRbits
	extern	_T3CRbits
	extern	_PWMCR0bits
	extern	_PWMCR1bits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ANSELbits
	extern	_LEDCR0bits
	extern	_LEDCR1bits
	extern	_LCDCR0bits
	extern	_LCDCR1bits
	extern	_LCDIOS0bits
	extern	_LCDIOS1bits
	extern	_LCDIOS2bits
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
	extern	_PFLAG
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_OSCM
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_IOP2
	extern	_OEP2
	extern	_PUP2
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_T2CR
	extern	_T2CNT
	extern	_T2LOAD
	extern	_T2DATA
	extern	_T3CR
	extern	_T3CNT
	extern	_T3LOAD
	extern	_PWM0DE
	extern	_PWM1DE
	extern	_PWM2DE
	extern	_PWMCR0
	extern	_PWMCR1
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_ANSEL
	extern	_LEDCR0
	extern	_LEDCR1
	extern	_LCDCR0
	extern	_LCDCR1
	extern	_LCDIOS0
	extern	_LCDIOS1
	extern	_LCDIOS2
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_Sub_IoInitial

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
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main Sub_IoInitial             Allocated to registers ;size:2
;@main PFLAGbits                 Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main IOP2bits                  Allocated to registers ;size:1
;@main OEP2bits                  Allocated to registers ;size:1
;@main PUP2bits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T2CRbits                  Allocated to registers ;size:1
;@main T3CRbits                  Allocated to registers ;size:1
;@main PWMCR0bits                Allocated to registers ;size:1
;@main PWMCR1bits                Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ANSELbits                 Allocated to registers ;size:1
;@main LEDCR0bits                Allocated to registers ;size:1
;@main LEDCR1bits                Allocated to registers ;size:1
;@main LCDCR0bits                Allocated to registers ;size:1
;@main LCDCR1bits                Allocated to registers ;size:1
;@main LCDIOS0bits               Allocated to registers ;size:1
;@main LCDIOS1bits               Allocated to registers ;size:1
;@main LCDIOS2bits               Allocated to registers ;size:1
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
;@main PFLAG                     Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main IOP2                      Allocated to registers ;size:1
;@main OEP2                      Allocated to registers ;size:1
;@main PUP2                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@main T2CR                      Allocated to registers ;size:1
;@main T2CNT                     Allocated to registers ;size:1
;@main T2LOAD                    Allocated to registers ;size:1
;@main T2DATA                    Allocated to registers ;size:1
;@main T3CR                      Allocated to registers ;size:1
;@main T3CNT                     Allocated to registers ;size:1
;@main T3LOAD                    Allocated to registers ;size:1
;@main PWM0DE                    Allocated to registers ;size:1
;@main PWM1DE                    Allocated to registers ;size:1
;@main PWM2DE                    Allocated to registers ;size:1
;@main PWMCR0                    Allocated to registers ;size:1
;@main PWMCR1                    Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main ANSEL                     Allocated to registers ;size:1
;@main LEDCR0                    Allocated to registers ;size:1
;@main LEDCR1                    Allocated to registers ;size:1
;@main LCDCR0                    Allocated to registers ;size:1
;@main LCDCR1                    Allocated to registers ;size:1
;@main LCDIOS0                   Allocated to registers ;size:1
;@main LCDIOS1                   Allocated to registers ;size:1
;@main LCDIOS2                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'Sub_IoInitial'
;@end Allocation info for local variables in function 'Sub_IoInitial';

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
;   _Sub_IoInitial
;   _Sub_IoInitial
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	5; "1.c"	Sub_IoInitial();
	CALL	_Sub_IoInitial
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_IoInitial	;Function start
; 2 exit points
;has an exit
;functions called:
;   _DisableBuzzer
;   _DisableBuzzer
;; Starting pCode block
_Sub_IoInitial	;Function start
; 2 exit points
;	.line	12; "1.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	13; "1.c"	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
	CLRR	_OEP0
;	.line	14; "1.c"	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
	MOVAI	0xff
	MOVRA	_PUP0
;	.line	15; "1.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	17; "1.c"	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	18; "1.c"	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
	MOVAI	0xbc
	MOVRA	_OEP1
;	.line	19; "1.c"	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
	MOVAI	0x43
	MOVRA	_PUP1
;	.line	20; "1.c"	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	22; "1.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	23; "1.c"	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
	MOVAI	0x0a
	MOVRA	_OEP2
;	.line	24; "1.c"	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
	MOVAI	0xf5
	MOVRA	_PUP2
;	.line	25; "1.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	32; "1.c"	DisableBuzzer();
	CALL	_DisableBuzzer
	RETURN	
; exit point of _Sub_IoInitial


;	code size estimation:
;	   27+    0 =    27 instructions (   54 byte)

	end
