		LIST
;mc32p7541.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P7541
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
PDP0      		EQU		H'0193'
IOP1      		EQU		H'0194'
OEP1      		EQU		H'0195'
PUP1      		EQU		H'0196'
PDP1      		EQU		H'0197'
T0EFR     		EQU		H'0198'
T1EFR     		EQU		H'0199'
T2CR      		EQU		H'019C'
T2CNT     		EQU		H'019D'
T2LOAD    		EQU		H'019E'
T1DATB    		EQU		H'019F'
T0CR      		EQU		H'01A0'
T0CNT     		EQU		H'01A1'
T0LOAD    		EQU		H'01A2'
T0DATA    		EQU		H'01A3'
T1CR      		EQU		H'01A4'
T1CNT     		EQU		H'01A5'
T1LOAD    		EQU		H'01A6'
T1DATA    		EQU		H'01A7'
AUCR      		EQU		H'01A8'
RVOCR     		EQU		H'01A9'
VOP0      		EQU		H'01AA'
VOP1      		EQU		H'01AB'
OSCM      		EQU		H'01AE'
ADCR0     		EQU		H'01B0'
ADCR1     		EQU		H'01B1'
ADIOS0    		EQU		H'01B2'
ADIOS1    		EQU		H'01B3'
ADRH      		EQU		H'01B4'
ADRL      		EQU		H'01B5'

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
#define 	T2IE      	INTE,7

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	T2IF      	INTF,7

;----- IOP0 Bits ---------------------------------------------------

#define 	P00D      	IOP0,0
#define 	P01D      	IOP0,1
#define 	P02D      	IOP0,2
#define 	P03D      	IOP0,3
#define 	P04D      	IOP0,4
#define 	P05D      	IOP0,5
#define 	P06D      	IOP0,6
#define 	P07D      	IOP0,7

;----- OEP0 Bits ---------------------------------------------------

#define 	P00OE     	OEP0,0
#define 	P01OE     	OEP0,1
#define 	P02OE     	OEP0,2
#define 	P03OE     	OEP0,3
#define 	P04OE     	OEP0,4
#define 	P05OE     	OEP0,5
#define 	P06OE     	OEP0,6
#define 	P07OE     	OEP0,7

;----- PUP0 Bits ---------------------------------------------------

#define 	P02PU     	PUP0,2
#define 	P04PU     	PUP0,4
#define 	P07PU     	PUP0,7

;----- PDP0 Bits ---------------------------------------------------

#define 	P02PD     	PDP0,2
#define 	P04PD     	PDP0,4
#define 	P05PD     	PDP0,5

;----- IOP1 Bits ---------------------------------------------------

#define 	P10D      	IOP1,0
#define 	P11D      	IOP1,1
#define 	P12D      	IOP1,2
#define 	P13D      	IOP1,3
#define 	P14D      	IOP1,4
#define 	P15D      	IOP1,5
#define 	P16D      	IOP1,6
#define 	P17D      	IOP1,7

;----- OEP1 Bits ---------------------------------------------------

#define 	P10OE     	OEP1,0
#define 	P11OE     	OEP1,1
#define 	P12OE     	OEP1,2
#define 	P13OE     	OEP1,3
#define 	P14OE     	OEP1,4
#define 	P15OE     	OEP1,5
#define 	P16OE     	OEP1,6
#define 	P17OE     	OEP1,7

;----- PUP1 Bits ---------------------------------------------------

#define 	P12PU     	PUP1,2
#define 	P14PU     	PUP1,4
#define 	P17PU     	PUP1,7

;----- PDP1 Bits ---------------------------------------------------

#define 	P16PD     	PDP1,6

;----- T0EFR Bits ---------------------------------------------------

#define 	PWM0D0    	T0EFR,0
#define 	PWM0D1    	T0EFR,1
#define 	PWM0D2    	T0EFR,2
#define 	PWM0MD    	T0EFR,3
#define 	PWM0NV    	T0EFR,4

;----- T1EFR Bits ---------------------------------------------------

#define 	PWM1ANV   	T1EFR,4
#define 	PWM1BNV   	T1EFR,5
#define 	PWM1BOE   	T1EFR,6

;----- T2CR Bits ---------------------------------------------------

#define 	T2PRS0    	T2CR,0
#define 	T2PRS1    	T2CR,1
#define 	T2PRS2    	T2CR,2
#define 	T2CKS0    	T2CR,3
#define 	T2CKS1    	T2CR,4
#define 	T2EN      	T2CR,7

;----- T2CNT Bits ---------------------------------------------------

#define 	T2CNT0    	T2CNT,0
#define 	T2CNT1    	T2CNT,1
#define 	T2CNT2    	T2CNT,2
#define 	T2CNT3    	T2CNT,3
#define 	T2CNT4    	T2CNT,4
#define 	T2CNT5    	T2CNT,5
#define 	T2CNT6    	T2CNT,6
#define 	T2CNT7    	T2CNT,7

;----- T2LOAD Bits ---------------------------------------------------

#define 	T2LOAD0   	T2LOAD,0
#define 	T2LOAD1   	T2LOAD,1
#define 	T2LOAD2   	T2LOAD,2
#define 	T2LOAD3   	T2LOAD,3
#define 	T2LOAD4   	T2LOAD,4
#define 	T2LOAD5   	T2LOAD,5
#define 	T2LOAD6   	T2LOAD,6
#define 	T2LOAD7   	T2LOAD,7

;----- T1DATB Bits ---------------------------------------------------

#define 	T1DATB0   	T1DATB,0
#define 	T1DATB1   	T1DATB,1
#define 	T1DATB2   	T1DATB,2
#define 	T1DATB3   	T1DATB,3
#define 	T1DATB4   	T1DATB,4
#define 	T1DATB5   	T1DATB,5
#define 	T1DATB6   	T1DATB,6
#define 	T1DATB7   	T1DATB,7

;----- T0CR Bits ---------------------------------------------------

#define 	T0PRS0    	T0CR,0
#define 	T0PRS1    	T0CR,1
#define 	T0PRS2    	T0CR,2
#define 	T0CKS0    	T0CR,3
#define 	T0CKS1    	T0CR,4
#define 	BUZ0OE    	T0CR,5
#define 	PWM0OE    	T0CR,6
#define 	T0EN      	T0CR,7

;----- T0CNT Bits ---------------------------------------------------

#define 	T0CNT0    	T0CNT,0
#define 	T0CNT1    	T0CNT,1
#define 	T0CNT2    	T0CNT,2
#define 	T0CNT3    	T0CNT,3
#define 	T0CNT4    	T0CNT,4
#define 	T0CNT5    	T0CNT,5
#define 	T0CNT6    	T0CNT,6
#define 	T0CNT7    	T0CNT,7

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

#define 	T1PRS0    	T1CR,0
#define 	T1PRS1    	T1CR,1
#define 	T1PRS2    	T1CR,2
#define 	T1CKS0    	T1CR,3
#define 	T1CKS1    	T1CR,4
#define 	BUZ1OE    	T1CR,5
#define 	PWM1AOE   	T1CR,6
#define 	T1EN      	T1CR,7

;----- T1CNT Bits ---------------------------------------------------

#define 	T1CNT0    	T1CNT,0
#define 	T1CNT1    	T1CNT,1
#define 	T1CNT2    	T1CNT,2
#define 	T1CNT3    	T1CNT,3
#define 	T1CNT4    	T1CNT,4
#define 	T1CNT5    	T1CNT,5
#define 	T1CNT6    	T1CNT,6
#define 	T1CNT7    	T1CNT,7

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

;----- AUCR Bits ---------------------------------------------------

#define 	NMOS0ON   	AUCR,0
#define 	PMOS1ON   	AUCR,1
#define 	P11DV     	AUCR,2
#define 	P01DV     	AUCR,3
#define 	VEEOS     	AUCR,6

;----- RVOCR Bits ---------------------------------------------------

#define 	RVORS0    	RVOCR,0
#define 	RVORS1    	RVOCR,1

;----- VOP0 Bits ---------------------------------------------------

#define 	P00VO     	VOP0,0
#define 	P01VO     	VOP0,1
#define 	P02VO     	VOP0,2
#define 	P03VO     	VOP0,3
#define 	P04VO     	VOP0,4
#define 	P05VO     	VOP0,5
#define 	P06VO     	VOP0,6
#define 	P07VO     	VOP0,7

;----- VOP1 Bits ---------------------------------------------------

#define 	P10VO     	VOP1,0
#define 	P11VO     	VOP1,1
#define 	P12VO     	VOP1,2
#define 	P13VO     	VOP1,3
#define 	P15VO     	VOP1,5
#define 	P17VO     	VOP1,7

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADEN      	ADCR0,0
#define 	ADEOC     	ADCR0,1
#define 	ADCHS0    	ADCR0,4
#define 	ADCHS1    	ADCR0,5
#define 	ADCHS2    	ADCR0,6
#define 	ADCHS3    	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	ADVRS0    	ADCR1,0
#define 	ADVRS1    	ADCR1,1

;----- ADIOS0 Bits ---------------------------------------------------

#define 	P02ADS    	ADIOS0,2
#define 	P03ADS    	ADIOS0,3
#define 	P04ADS    	ADIOS0,4
#define 	P06ADS    	ADIOS0,6

;----- ADIOS1 Bits ---------------------------------------------------

#define 	P11ADS    	ADIOS1,1
#define 	P12ADS    	ADIOS1,2
#define 	P13ADS    	ADIOS1,3
#define 	P16ADS    	ADIOS1,6

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
