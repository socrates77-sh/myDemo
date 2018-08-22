		LIST
;mc32p21.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P21
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

INDF0     		EQU		H'0180'
INDF1     		EQU		H'0181'
INDF2     		EQU		H'0182'
HIBYTE    		EQU		H'0183'
FSR0      		EQU		H'0184'
FSR1      		EQU		H'0185'
PCL       		EQU		H'0186'
PFLAG     		EQU		H'0187'
MCR       		EQU		H'0188'
INDF3     		EQU		H'0189'
INTE      		EQU		H'018A'
INTF      		EQU		H'018B'
IOP0      		EQU		H'0190'
OEP0      		EQU		H'0191'
PUP0      		EQU		H'0192'
ANSEL     		EQU		H'0193'
IOP1      		EQU		H'0194'
OEP1      		EQU		H'0195'
PUP1      		EQU		H'0196'
KBCR      		EQU		H'0197'
T0CR      		EQU		H'01A0'
T0CNT     		EQU		H'01A1'
T0LOAD    		EQU		H'01A2'
T0DATA    		EQU		H'01A3'
T1CR      		EQU		H'01A4'
T1CNT     		EQU		H'01A5'
T1LOAD    		EQU		H'01A6'
T1DATA    		EQU		H'01A7'
OSCM      		EQU		H'01AE'
LVDCR     		EQU		H'01AF'
ADCR0     		EQU		H'01B0'
ADCR1     		EQU		H'01B1'
ADRH      		EQU		H'01B4'
ADRL      		EQU		H'01B5'
OSCCAL    		EQU		H'01FB'

;----- INDF0 Bits ---------------------------------------------------

#define 	INDF00    	INDF0,0
#define 	INDF01    	INDF0,1
#define 	INDF02    	INDF0,2
#define 	INDF03    	INDF0,3
#define 	INDF04    	INDF0,4
#define 	INDF05    	INDF0,5
#define 	INDF06    	INDF0,6
#define 	INDF07    	INDF0,7

;----- INDF1 Bits ---------------------------------------------------

#define 	INDF10    	INDF1,0
#define 	INDF11    	INDF1,1
#define 	INDF12    	INDF1,2
#define 	INDF13    	INDF1,3
#define 	INDF14    	INDF1,4
#define 	INDF15    	INDF1,5
#define 	INDF16    	INDF1,6
#define 	INDF17    	INDF1,7

;----- INDF2 Bits ---------------------------------------------------

#define 	INDF20    	INDF2,0
#define 	INDF21    	INDF2,1
#define 	INDF22    	INDF2,2
#define 	INDF23    	INDF2,3
#define 	INDF24    	INDF2,4
#define 	INDF25    	INDF2,5
#define 	INDF26    	INDF2,6
#define 	INDF27    	INDF2,7

;----- HIBYTE Bits ---------------------------------------------------

#define 	HIBYTE0   	HIBYTE,0
#define 	HIBYTE1   	HIBYTE,1
#define 	HIBYTE2   	HIBYTE,2
#define 	HIBYTE3   	HIBYTE,3
#define 	HIBYTE4   	HIBYTE,4
#define 	HIBYTE5   	HIBYTE,5
#define 	HIBYTE6   	HIBYTE,6
#define 	HIBYTE7   	HIBYTE,7

;----- FSR0 Bits ---------------------------------------------------

#define 	FSR00     	FSR0,0
#define 	FSR01     	FSR0,1
#define 	FSR02     	FSR0,2
#define 	FSR03     	FSR0,3
#define 	FSR04     	FSR0,4
#define 	FSR05     	FSR0,5
#define 	FSR06     	FSR0,6
#define 	FSR07     	FSR0,7

;----- FSR1 Bits ---------------------------------------------------

#define 	FSR10     	FSR1,0
#define 	FSR11     	FSR1,1
#define 	FSR12     	FSR1,2
#define 	FSR13     	FSR1,3
#define 	FSR14     	FSR1,4
#define 	FSR15     	FSR1,5
#define 	FSR16     	FSR1,6
#define 	FSR17     	FSR1,7

;----- PCL Bits ---------------------------------------------------

#define 	PC0       	PCL,0
#define 	PC1       	PCL,1
#define 	PC2       	PCL,2
#define 	PC3       	PCL,3
#define 	PC4       	PCL,4
#define 	PC5       	PCL,5
#define 	PC6       	PCL,6
#define 	PC7       	PCL,7

;----- PFLAG Bits ---------------------------------------------------

#define 	C         	PFLAG,0
#define 	DC        	PFLAG,1
#define 	Z         	PFLAG,2

;----- MCR Bits ---------------------------------------------------

#define 	MINT00    	MCR,0
#define 	MINT01    	MCR,1
#define 	MINT10    	MCR,2
#define 	MINT11    	MCR,3
#define 	PD        	MCR,4
#define 	TO        	MCR,5
#define 	GIE       	MCR,7

;----- INDF3 Bits ---------------------------------------------------

#define 	INDF30    	INDF3,0
#define 	INDF31    	INDF3,1
#define 	INDF32    	INDF3,2
#define 	INDF33    	INDF3,3
#define 	INDF34    	INDF3,4
#define 	INDF35    	INDF3,5
#define 	INDF36    	INDF3,6
#define 	INDF37    	INDF3,7

;----- INTE Bits ---------------------------------------------------

#define 	T0IE      	INTE,0
#define 	T1IE      	INTE,1
#define 	INT0IE    	INTE,2
#define 	INT1IE    	INTE,3
#define 	KBIE      	INTE,4
#define 	ADIE      	INTE,6

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	KBIF      	INTF,4
#define 	ADIF      	INTF,6

;----- IOP0 Bits ---------------------------------------------------

#define 	P00D      	IOP0,0
#define 	P01D      	IOP0,1
#define 	P02D      	IOP0,2
#define 	P03D      	IOP0,3
#define 	P04D      	IOP0,4

;----- OEP0 Bits ---------------------------------------------------

#define 	P00OE     	OEP0,0
#define 	P01OE     	OEP0,1
#define 	P02OE     	OEP0,2
#define 	P03OE     	OEP0,3
#define 	P04OE     	OEP0,4

;----- PUP0 Bits ---------------------------------------------------

#define 	P00PU     	PUP0,0
#define 	P01PU     	PUP0,1
#define 	P02PU     	PUP0,2
#define 	P03PU     	PUP0,3
#define 	P04PU     	PUP0,4

;----- ANSEL Bits ---------------------------------------------------

#define 	P00ANS    	ANSEL,0
#define 	P01ANS    	ANSEL,1
#define 	P02ANS    	ANSEL,2
#define 	P03ANS    	ANSEL,3
#define 	P04ANS    	ANSEL,4
#define 	P12ANS    	ANSEL,5
#define 	P13ANS    	ANSEL,6

;----- IOP1 Bits ---------------------------------------------------

#define 	P10D      	IOP1,0
#define 	P11D      	IOP1,1
#define 	P12D      	IOP1,2
#define 	P13D      	IOP1,3
#define 	P14D      	IOP1,4
#define 	P15D      	IOP1,5
#define 	P16D      	IOP1,6

;----- OEP1 Bits ---------------------------------------------------

#define 	P10OE     	OEP1,0
#define 	P11OE     	OEP1,1
#define 	P12OE     	OEP1,2
#define 	P13OE     	OEP1,3
#define 	P14OE     	OEP1,4
#define 	P15OE     	OEP1,5
#define 	P16OE     	OEP1,6

;----- PUP1 Bits ---------------------------------------------------

#define 	P10PU     	PUP1,0
#define 	P11PU     	PUP1,1
#define 	P12PU     	PUP1,2
#define 	P13PU     	PUP1,3
#define 	P14PU     	PUP1,4
#define 	P15PU     	PUP1,5
#define 	P16PU     	PUP1,6

;----- KBCR Bits ---------------------------------------------------

#define 	KBCR0     	KBCR,0
#define 	KBCR1     	KBCR,1
#define 	KBCR2     	KBCR,2
#define 	KBCR3     	KBCR,3
#define 	KBCR4     	KBCR,4
#define 	KBCR5     	KBCR,5
#define 	KBCR6     	KBCR,6

;----- T0CR Bits ---------------------------------------------------

#define 	T0PR0     	T0CR,0
#define 	T0PR1     	T0CR,1
#define 	T0PR2     	T0CR,2
#define 	T0PTS0    	T0CR,3
#define 	T0PTS1    	T0CR,4
#define 	BUZ0OE    	T0CR,5
#define 	PWM0OE    	T0CR,6
#define 	TC0EN     	T0CR,7

;----- T0CNT Bits ---------------------------------------------------

#define 	T0C0      	T0CNT,0
#define 	T0C1      	T0CNT,1
#define 	T0C2      	T0CNT,2
#define 	T0C3      	T0CNT,3
#define 	T0C4      	T0CNT,4
#define 	T0C5      	T0CNT,5
#define 	T0C6      	T0CNT,6
#define 	T0C7      	T0CNT,7

;----- T0LOAD Bits ---------------------------------------------------

#define 	T0LOAD0   	T0LOAD,0
#define 	T0LOAD1   	T0LOAD,1
#define 	T0LOAD2   	T0LOAD,2
#define 	T0LOAD3   	T0LOAD,3
#define 	T0LOAD4   	T0LOAD,4
#define 	T0LOAD5   	T0LOAD,5
#define 	T0LOAD6   	T0LOAD,6
#define 	T0LOAD7   	T0LOAD,7

;----- T0DATA Bits ---------------------------------------------------

#define 	T0DATA0   	T0DATA,0
#define 	T0DATA1   	T0DATA,1
#define 	T0DATA2   	T0DATA,2
#define 	T0DATA3   	T0DATA,3
#define 	T0DATA4   	T0DATA,4
#define 	T0DATA5   	T0DATA,5
#define 	T0DATA6   	T0DATA,6
#define 	T0DATA7   	T0DATA,7

;----- T1CR Bits ---------------------------------------------------

#define 	T1PR0     	T1CR,0
#define 	T1PR1     	T1CR,1
#define 	T1PR2     	T1CR,2
#define 	T1PTS0    	T1CR,3
#define 	T1PTS1    	T1CR,4
#define 	BUZ1OE    	T1CR,5
#define 	PWM1OE    	T1CR,6
#define 	TC1EN     	T1CR,7

;----- T1CNT Bits ---------------------------------------------------

#define 	T1C0      	T1CNT,0
#define 	T1C1      	T1CNT,1
#define 	T1C2      	T1CNT,2
#define 	T1C3      	T1CNT,3
#define 	T1C4      	T1CNT,4
#define 	T1C5      	T1CNT,5
#define 	T1C6      	T1CNT,6
#define 	T1C7      	T1CNT,7

;----- T1LOAD Bits ---------------------------------------------------

#define 	T1LOAD0   	T1LOAD,0
#define 	T1LOAD1   	T1LOAD,1
#define 	T1LOAD2   	T1LOAD,2
#define 	T1LOAD3   	T1LOAD,3
#define 	T1LOAD4   	T1LOAD,4
#define 	T1LOAD5   	T1LOAD,5
#define 	T1LOAD6   	T1LOAD,6
#define 	T1LOAD7   	T1LOAD,7

;----- T1DATA Bits ---------------------------------------------------

#define 	T1DATA0   	T1DATA,0
#define 	T1DATA1   	T1DATA,1
#define 	T1DATA2   	T1DATA,2
#define 	T1DATA3   	T1DATA,3
#define 	T1DATA4   	T1DATA,4
#define 	T1DATA5   	T1DATA,5
#define 	T1DATA6   	T1DATA,6
#define 	T1DATA7   	T1DATA,7

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	LVDS0     	LVDCR,4
#define 	LVDS1     	LVDCR,5
#define 	LVDS2     	LVDCR,6
#define 	LVDEN     	LVDCR,7

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADON      	ADCR0,0
#define 	ADEOC     	ADCR0,1
#define 	ADCKS0    	ADCR0,2
#define 	ADCKS1    	ADCR0,3
#define 	ADCHS0    	ADCR0,4
#define 	ADCHS1    	ADCR0,5
#define 	ADCHS2    	ADCR0,6
#define 	ADCHS3    	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	VRS0      	ADCR1,0
#define 	VRS1      	ADCR1,1
#define 	VRS2      	ADCR1,2

;----- ADRH Bits ---------------------------------------------------

#define 	ADR4      	ADRH,0
#define 	ADR5      	ADRH,1
#define 	ADR6      	ADRH,2
#define 	ADR7      	ADRH,3
#define 	ADR8      	ADRH,4
#define 	ADR9      	ADRH,5
#define 	ADR10     	ADRH,6
#define 	ADR11     	ADRH,7

;----- ADRL Bits ---------------------------------------------------

#define 	ADR0      	ADRL,0
#define 	ADR1      	ADRL,1
#define 	ADR2      	ADRL,2
#define 	ADR3      	ADRL,3

;----- OSCCAL Bits ---------------------------------------------------

#define 	OSCCAL0   	OSCCAL,0
#define 	OSCCAL1   	OSCCAL,1
#define 	OSCCAL2   	OSCCAL,2
#define 	OSCCAL3   	OSCCAL,3
#define 	OSCCAL4   	OSCCAL,4
#define 	OSCCAL5   	OSCCAL,5
#define 	OSCCAL6   	OSCCAL,6
#define 	OSCCAL7   	OSCCAL,7

;==========================================================================
;
;	RAM Definition
;
;==========================================================================

	__MAXRAM H'FF'
	__BADRAM H'80'-H'81'
	__BADRAM H'85'


;==========================================================================
;
;	Configuration Bits
;
;==========================================================================

_CONFIG1  		EQU		H'8001'
_CONFIG0  		EQU		H'8000'

;OPBIT1

;OPBIT0

		LIST
