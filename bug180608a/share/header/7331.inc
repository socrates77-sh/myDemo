		LIST
;mc32p7331.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P7331
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
DRVCR     		EQU		H'018C'
KBCR      		EQU		H'018E'
IOP0      		EQU		H'0190'
OEP0      		EQU		H'0191'
PUP0      		EQU		H'0192'
PDP0      		EQU		H'0193'
IOP1      		EQU		H'0194'
OEP1      		EQU		H'0195'
PUP1      		EQU		H'0196'
PDP1      		EQU		H'0197'
T0CR      		EQU		H'0198'
T0CNT     		EQU		H'0199'
T0LOAD    		EQU		H'019A'
T0DATA    		EQU		H'019B'
T1CR      		EQU		H'019C'
T1CNT     		EQU		H'019D'
T1LOAD    		EQU		H'019E'
T1DATA    		EQU		H'019F'
T2CR      		EQU		H'01A0'
T2CNT     		EQU		H'01A1'
T2LOAD    		EQU		H'01A2'
T2DATA    		EQU		H'01A3'
T3CR      		EQU		H'01A4'
T3CNT     		EQU		H'01A5'
T3LOAD    		EQU		H'01A6'
T0EFR     		EQU		H'01A8'
T1EFR     		EQU		H'01A9'
T2EFR     		EQU		H'01AA'
PWMCR0    		EQU		H'01AC'
PWMCR1    		EQU		H'01AD'
OSCM      		EQU		H'01AE'
LVDCR     		EQU		H'01AF'
ADCR0     		EQU		H'01B0'
ADCR1     		EQU		H'01B1'
ADCR2     		EQU		H'01B2'
ADRH      		EQU		H'01B4'
ADRL      		EQU		H'01B5'
ADIOS0    		EQU		H'01B6'
ADIOS1    		EQU		H'01B7'
IOP2      		EQU		H'01B8'
OEP2      		EQU		H'01B9'
PUP2      		EQU		H'01BA'
PDP2      		EQU		H'01BB'
PMOD      		EQU		H'01BC'
PWMCR3    		EQU		H'01BD'
PWMCR2    		EQU		H'01BE'
HIRCCR    		EQU		H'01BF'
OSCCALH   		EQU		H'01FB'
OSCCALL   		EQU		H'01FC'

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
#define 	T2IE      	INTE,5
#define 	ADIE      	INTE,6
#define 	T3IE      	INTE,7

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	KBIF      	INTF,4
#define 	T2IF      	INTF,5
#define 	ADIF      	INTF,6
#define 	T3IF      	INTF,7

;----- DRVCR Bits ---------------------------------------------------

#define 	PDRVS0    	DRVCR,4
#define 	PDRVS1    	DRVCR,5
#define 	LDRVS     	DRVCR,6
#define 	CDRVS     	DRVCR,7

;----- KBCR Bits ---------------------------------------------------

#define 	KBCR0     	KBCR,0
#define 	KBCR1     	KBCR,1
#define 	KBCR2     	KBCR,2
#define 	KBCR3     	KBCR,3
#define 	KBCR4     	KBCR,4
#define 	KBCR5     	KBCR,5
#define 	KBCR6     	KBCR,6
#define 	KBCR7     	KBCR,7

;----- IOP0 Bits ---------------------------------------------------

#define 	P00D      	IOP0,0
#define 	P01D      	IOP0,1
#define 	P02D      	IOP0,2
#define 	P03D      	IOP0,3
#define 	P04D      	IOP0,4
#define 	P05D      	IOP0,5

;----- OEP0 Bits ---------------------------------------------------

#define 	P00OE     	OEP0,0
#define 	P01OE     	OEP0,1
#define 	P02OE     	OEP0,2
#define 	P03OE     	OEP0,3
#define 	P04OE     	OEP0,4
#define 	P05OE     	OEP0,5

;----- PUP0 Bits ---------------------------------------------------

#define 	P00PU     	PUP0,0
#define 	P01PU     	PUP0,1
#define 	P02PU     	PUP0,2
#define 	P03PU     	PUP0,3
#define 	P04PU     	PUP0,4
#define 	P05PU     	PUP0,5

;----- PDP0 Bits ---------------------------------------------------

#define 	P00PD     	PDP0,0
#define 	P01PD     	PDP0,1
#define 	P02PD     	PDP0,2
#define 	P03PD     	PDP0,3
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

#define 	P10PU     	PUP1,0
#define 	P11PU     	PUP1,1
#define 	P12PU     	PUP1,2
#define 	P13PU     	PUP1,3
#define 	P14PU     	PUP1,4
#define 	P15PU     	PUP1,5
#define 	P16PU     	PUP1,6
#define 	P17PU     	PUP1,7

;----- PDP1 Bits ---------------------------------------------------

#define 	P10PD     	PDP1,0
#define 	P11PD     	PDP1,1
#define 	P12PD     	PDP1,2
#define 	P13PD     	PDP1,3
#define 	P14PD     	PDP1,4
#define 	P15PD     	PDP1,5
#define 	P16PD     	PDP1,6
#define 	P17PD     	PDP1,7

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
#define 	PWM1OE    	T1CR,6
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

;----- T2CR Bits ---------------------------------------------------

#define 	T2PRS0    	T2CR,0
#define 	T2PRS1    	T2CR,1
#define 	T2PRS2    	T2CR,2
#define 	T2CKS0    	T2CR,3
#define 	T2CKS1    	T2CR,4
#define 	BUZ2OE    	T2CR,5
#define 	PWM2OE    	T2CR,6
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

;----- T2DATA Bits ---------------------------------------------------

#define 	T2DATA0   	T2DATA,0
#define 	T2DATA1   	T2DATA,1
#define 	T2DATA2   	T2DATA,2
#define 	T2DATA3   	T2DATA,3
#define 	T2DATA4   	T2DATA,4
#define 	T2DATA5   	T2DATA,5
#define 	T2DATA6   	T2DATA,6
#define 	T2DATA7   	T2DATA,7

;----- T3CR Bits ---------------------------------------------------

#define 	T3PRS0    	T3CR,0
#define 	T3PRS1    	T3CR,1
#define 	T3PRS2    	T3CR,2
#define 	T3CKS0    	T3CR,3
#define 	T3CKS1    	T3CR,4
#define 	T3EN      	T3CR,7

;----- T3CNT Bits ---------------------------------------------------

#define 	T3CNT0    	T3CNT,0
#define 	T3CNT1    	T3CNT,1
#define 	T3CNT2    	T3CNT,2
#define 	T3CNT3    	T3CNT,3
#define 	T3CNT4    	T3CNT,4
#define 	T3CNT5    	T3CNT,5
#define 	T3CNT6    	T3CNT,6
#define 	T3CNT7    	T3CNT,7

;----- T3LOAD Bits ---------------------------------------------------

#define 	T3LOAD0   	T3LOAD,0
#define 	T3LOAD1   	T3LOAD,1
#define 	T3LOAD2   	T3LOAD,2
#define 	T3LOAD3   	T3LOAD,3
#define 	T3LOAD4   	T3LOAD,4
#define 	T3LOAD5   	T3LOAD,5
#define 	T3LOAD6   	T3LOAD,6
#define 	T3LOAD7   	T3LOAD,7

;----- T0EFR Bits ---------------------------------------------------

#define 	PWM0D0    	T0EFR,0
#define 	PWM0D1    	T0EFR,1
#define 	PWM0D2    	T0EFR,2

;----- T1EFR Bits ---------------------------------------------------

#define 	PWM1D0    	T1EFR,0
#define 	PWM1D1    	T1EFR,1
#define 	PWM1D2    	T1EFR,2

;----- T2EFR Bits ---------------------------------------------------

#define 	PWM2D0    	T2EFR,0
#define 	PWM2D1    	T2EFR,1
#define 	PWM2D2    	T2EFR,2

;----- PWMCR0 Bits ---------------------------------------------------

#define 	FPWM1F0   	PWMCR0,0
#define 	FPWM1F1   	PWMCR0,1
#define 	FPWM1R0   	PWMCR0,2
#define 	FPWM1R1   	PWMCR0,3
#define 	PWM0NV    	PWMCR0,4
#define 	FPWM1NV   	PWMCR0,5
#define 	PWM2NV    	PWMCR0,6
#define 	FPWM1OE   	PWMCR0,7

;----- PWMCR1 Bits ---------------------------------------------------

#define 	PWM0MD    	PWMCR1,0
#define 	PWM1MD    	PWMCR1,1
#define 	PWM2MD    	PWMCR1,2
#define 	TMRCKS0   	PWMCR1,3
#define 	TMRCKS1   	PWMCR1,4

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	VLVDS0    	LVDCR,3
#define 	VLVDS1    	LVDCR,4
#define 	VLVDS2    	LVDCR,5
#define 	VLVDS3    	LVDCR,6
#define 	LVDEN     	LVDCR,7

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADEN      	ADCR0,0
#define 	ADEOC     	ADCR0,1
#define 	ADRSEL    	ADCR0,3
#define 	ADCHS0    	ADCR0,4
#define 	ADCHS1    	ADCR0,5
#define 	ADCHS2    	ADCR0,6
#define 	ADCHS3    	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	ADVRS0    	ADCR1,0
#define 	ADVRS1    	ADCR1,1
#define 	ADVRS2    	ADCR1,2
#define 	RESS0     	ADCR1,3
#define 	ADTST     	ADCR1,4
#define 	ADCKS0    	ADCR1,5
#define 	ADCKS1    	ADCR1,6
#define 	ADCKS2    	ADCR1,7

;----- ADCR2 Bits ---------------------------------------------------

#define 	ADSPS0    	ADCR2,0
#define 	ADSPS1    	ADCR2,1
#define 	ADSPS2    	ADCR2,2
#define 	ADSPS3    	ADCR2,3

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

;----- ADIOS0 Bits ---------------------------------------------------

#define 	P00ADS    	ADIOS0,0
#define 	P02ADS    	ADIOS0,1
#define 	P03ADS    	ADIOS0,2
#define 	P04ADS    	ADIOS0,3
#define 	P05ADS    	ADIOS0,4
#define 	P10ADS    	ADIOS0,5
#define 	P11ADS    	ADIOS0,6
#define 	P12ADS    	ADIOS0,7

;----- ADIOS1 Bits ---------------------------------------------------

#define 	P14ADS    	ADIOS1,0
#define 	P15ADS    	ADIOS1,1

;----- IOP2 Bits ---------------------------------------------------

#define 	P20D      	IOP2,0

;----- OEP2 Bits ---------------------------------------------------

#define 	P20OE     	OEP2,0

;----- PUP2 Bits ---------------------------------------------------

#define 	P20PU     	PUP2,0

;----- PDP2 Bits ---------------------------------------------------

#define 	P20PD     	PDP2,0

;----- PMOD Bits ---------------------------------------------------

#define 	P00OM     	PMOD,0
#define 	P01OM     	PMOD,1
#define 	P20ST     	PMOD,4
#define 	P01ADS    	PMOD,5
#define 	P13ADS    	PMOD,6
#define 	P17ADS    	PMOD,7

;----- PWMCR3 Bits ---------------------------------------------------

#define 	PWM0OS    	PWMCR3,2
#define 	PWM2OS    	PWMCR3,3
#define 	NFPWM2OE  	PWMCR3,4
#define 	NPWM2OE   	PWMCR3,5
#define 	FPWM2OE   	PWMCR3,6
#define 	FPWM2NV   	PWMCR3,7

;----- PWMCR2 Bits ---------------------------------------------------

#define 	FPWM2D0   	PWMCR2,0
#define 	FPWM2D1   	PWMCR2,1
#define 	FPWM2D2   	PWMCR2,2
#define 	FPWM2D3   	PWMCR2,3
#define 	FPWM2D4   	PWMCR2,4
#define 	FPWM2D5   	PWMCR2,5

;----- HIRCCR Bits ---------------------------------------------------

#define 	HIRCAM    	HIRCCR,0

;----- OSCCALH Bits ---------------------------------------------------

#define 	OSCCAL8   	OSCCALH,0
#define 	OSCCAL9   	OSCCALH,1
#define 	OSCCAL10  	OSCCALH,2

;----- OSCCALL Bits ---------------------------------------------------

#define 	OSCCAL0   	OSCCALL,0
#define 	OSCCAL1   	OSCCALL,1
#define 	OSCCAL2   	OSCCALL,2
#define 	OSCCAL3   	OSCCALL,3
#define 	OSCCAL4   	OSCCALL,4
#define 	OSCCAL5   	OSCCALL,5
#define 	OSCCAL6   	OSCCALL,6
#define 	OSCCAL7   	OSCCALL,7

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
