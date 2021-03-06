		LIST
;mc32f7122.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P7122
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
OSCM      		EQU		H'018C'
INTE1     		EQU		H'018D'
INTF1     		EQU		H'018E'
LVDCR     		EQU		H'018F'
IOP0      		EQU		H'0190'
OEP0      		EQU		H'0191'
PUP0      		EQU		H'0192'
PDP0      		EQU		H'0193'
IOP1      		EQU		H'0194'
OEP1      		EQU		H'0195'
PUP1      		EQU		H'0196'
PDP1      		EQU		H'0197'
IOP2      		EQU		H'0198'
OEP2      		EQU		H'0199'
PUP2      		EQU		H'019A'
PDP2      		EQU		H'019B'
T0CR      		EQU		H'01A0'
T0CNT     		EQU		H'01A1'
T0LOAD    		EQU		H'01A2'
T0DATA    		EQU		H'01A3'
T0EFR     		EQU		H'01A4'
T1CR      		EQU		H'01A5'
T1CNT     		EQU		H'01A6'
T1LOAD    		EQU		H'01A7'
T2CR      		EQU		H'01A8'
T2CNT     		EQU		H'01A9'
T2LOAD    		EQU		H'01AA'
T2EFR     		EQU		H'01AC'
T3CR      		EQU		H'01AD'
T3CNT     		EQU		H'01AE'
T3LOAD    		EQU		H'01AF'
IICCR     		EQU		H'01B0'
IICAR     		EQU		H'01B1'
IICDR     		EQU		H'01B2'
EECR      		EQU		H'01B4'
EEMASK    		EQU		H'01B5'
EEAR      		EQU		H'01B6'
EEDR      		EQU		H'01B7'
ADCR0     		EQU		H'01B8'
ADCR1     		EQU		H'01B9'
ADRH      		EQU		H'01BA'
ADRL      		EQU		H'01BB'
ADIOS0    		EQU		H'01BC'
ADIOS1    		EQU		H'01BD'
OSADJCR   		EQU		H'01BE'
PPGCR     		EQU		H'01C0'
PPGLDH    		EQU		H'01C1'
PPGLDL    		EQU		H'01C2'
PPGTDL    		EQU		H'01C3'
PPGTDB    		EQU		H'01C4'
OPACR     		EQU		H'01C5'
OPACLR    		EQU		H'01C6'
CPCR      		EQU		H'01C8'
CPSR      		EQU		H'01C9'
CPVR0     		EQU		H'01CA'
CPVR1     		EQU		H'01CB'
CP0CLR    		EQU		H'01CC'
CP1CLR    		EQU		H'01CD'
CP2CLR    		EQU		H'01CE'
CP3CLR    		EQU		H'01CF'

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
#define 	LVDIE     	INTE,4
#define 	IICIE     	INTE,5
#define 	ADIE      	INTE,6
#define 	PPGTIE    	INTE,7

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	LVDIF     	INTF,4
#define 	IICIF     	INTF,5
#define 	ADIF      	INTF,6
#define 	PPGTIF    	INTF,7

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- INTE1 Bits ---------------------------------------------------

#define 	T2IE      	INTE1,0
#define 	T3IE      	INTE1,1
#define 	CP1IE     	INTE1,5
#define 	CP2IE     	INTE1,6
#define 	CP3IE     	INTE1,7

;----- INTF1 Bits ---------------------------------------------------

#define 	T2IF      	INTF1,0
#define 	T3IF      	INTF1,1
#define 	CP1IF     	INTF1,5
#define 	CP2IF     	INTF1,6
#define 	CP3IF     	INTF1,7

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	VLVDS     	LVDCR,4
#define 	LVDEN     	LVDCR,7

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

#define 	P00PU     	PUP0,0
#define 	P01PU     	PUP0,1
#define 	P02PU     	PUP0,2
#define 	P03PU     	PUP0,3
#define 	P04PU     	PUP0,4
#define 	P05PU     	PUP0,5
#define 	P06PU     	PUP0,6
#define 	P07PU     	PUP0,7

;----- PDP0 Bits ---------------------------------------------------

#define 	P00PD     	PDP0,0
#define 	P01PD     	PDP0,1
#define 	P02PD     	PDP0,2
#define 	P03PD     	PDP0,3
#define 	P04PD     	PDP0,4
#define 	P05PD     	PDP0,5
#define 	P06PD     	PDP0,6
#define 	P07PD     	PDP0,7

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

;----- IOP2 Bits ---------------------------------------------------

#define 	P20D      	IOP2,0
#define 	P21D      	IOP2,1

;----- OEP2 Bits ---------------------------------------------------

#define 	P20OE     	OEP2,0
#define 	P21OE     	OEP2,1

;----- PUP2 Bits ---------------------------------------------------

#define 	P20PU     	PUP2,0
#define 	P21PU     	PUP2,1

;----- PDP2 Bits ---------------------------------------------------

#define 	P20PD     	PDP2,0
#define 	P21PD     	PDP2,1

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

;----- T0EFR Bits ---------------------------------------------------

#define 	PWM0D0    	T0EFR,0
#define 	PWM0D1    	T0EFR,1
#define 	PWM0D2    	T0EFR,2

;----- T1CR Bits ---------------------------------------------------

#define 	T1PRS0    	T1CR,0
#define 	T1PRS1    	T1CR,1
#define 	T1PRS2    	T1CR,2
#define 	T1CKS0    	T1CR,3
#define 	T1CKS1    	T1CR,4
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

;----- T2CR Bits ---------------------------------------------------

#define 	T2PRS0    	T2CR,0
#define 	T2PRS1    	T2CR,1
#define 	T2PRS2    	T2CR,2
#define 	T2CKS0    	T2CR,3
#define 	T2CKS1    	T2CR,4
#define 	T2MOD     	T2CR,6
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

;----- T2EFR Bits ---------------------------------------------------

#define 	T2PLS     	T2EFR,0
#define 	T2PIS     	T2EFR,1

;----- T3CR Bits ---------------------------------------------------

#define 	T3PRS0    	T3CR,0
#define 	T3PRS1    	T3CR,1
#define 	T3PRS2    	T3CR,2
#define 	T3CKS0    	T3CR,3
#define 	T3CKS1    	T3CR,4
#define 	T3MOD     	T3CR,6
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

;----- IICCR Bits ---------------------------------------------------

#define 	RACK      	IICCR,0
#define 	IICEN     	IICCR,1
#define 	MSTCMD    	IICCR,2
#define 	SACK      	IICCR,3
#define 	IICMOD    	IICCR,4
#define 	IICBUSY   	IICCR,5
#define 	IICAAS    	IICCR,6
#define 	IICEOF    	IICCR,7

;----- IICAR Bits ---------------------------------------------------

#define 	IICAD0    	IICAR,1
#define 	IICAD1    	IICAR,2
#define 	IICAD2    	IICAR,3
#define 	IICAD3    	IICAR,4
#define 	IICAD4    	IICAR,5
#define 	IICAD5    	IICAR,6
#define 	IICAD6    	IICAR,7

;----- IICDR Bits ---------------------------------------------------

#define 	IICDT0    	IICDR,0
#define 	IICDT1    	IICDR,1
#define 	IICDT2    	IICDR,2
#define 	IICDT3    	IICDR,3
#define 	IICDT4    	IICDR,4
#define 	IICDT5    	IICDR,5
#define 	IICDT6    	IICDR,6
#define 	IICDT7    	IICDR,7

;----- EECR Bits ---------------------------------------------------

#define 	EERW      	EECR,6
#define 	EETRIG    	EECR,7

;----- EEMASK Bits ---------------------------------------------------

#define 	EEMASK0   	EEMASK,0
#define 	EEMASK1   	EEMASK,1
#define 	EEMASK2   	EEMASK,2
#define 	EEMASK3   	EEMASK,3
#define 	EEMASK4   	EEMASK,4
#define 	EEMASK5   	EEMASK,5
#define 	EEMASK6   	EEMASK,6
#define 	EEMASK7   	EEMASK,7

;----- EEAR Bits ---------------------------------------------------

#define 	EEA0      	EEAR,0
#define 	EEA1      	EEAR,1
#define 	EEA2      	EEAR,2
#define 	EEA3      	EEAR,3
#define 	EEA4      	EEAR,4
#define 	EEA5      	EEAR,5

;----- EEDR Bits ---------------------------------------------------

#define 	EED0      	EEDR,0
#define 	EED1      	EEDR,1
#define 	EED2      	EEDR,2
#define 	EED3      	EEDR,3
#define 	EED4      	EEDR,4
#define 	EED5      	EEDR,5
#define 	EED6      	EEDR,6
#define 	EED7      	EEDR,7

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADEN      	ADCR0,0
#define 	ADEOC     	ADCR0,1
#define 	CPVIREN   	ADCR0,3
#define 	ADCHS0    	ADCR0,4
#define 	ADCHS1    	ADCR0,5
#define 	ADCHS2    	ADCR0,6
#define 	ADCHS3    	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	ADSPS0    	ADCR1,0
#define 	ADSPS1    	ADCR1,1
#define 	ADCKS0    	ADCR1,4
#define 	ADCKS1    	ADCR1,5
#define 	ADCKS2    	ADCR1,6
#define 	ADRSEL    	ADCR1,7

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
#define 	P01ADS    	ADIOS0,1
#define 	P02ADS    	ADIOS0,2
#define 	P03ADS    	ADIOS0,3
#define 	P04ADS    	ADIOS0,4
#define 	P05ADS    	ADIOS0,5
#define 	P06ADS    	ADIOS0,6
#define 	P07ADS    	ADIOS0,7

;----- ADIOS1 Bits ---------------------------------------------------

#define 	P10ADS    	ADIOS1,0
#define 	P11ADS    	ADIOS1,1
#define 	P12ADS    	ADIOS1,2
#define 	P13ADS    	ADIOS1,3
#define 	P14ADS    	ADIOS1,4
#define 	P15ADS    	ADIOS1,5
#define 	P16ADS    	ADIOS1,6
#define 	P17ADS    	ADIOS1,7

;----- OSADJCR Bits ---------------------------------------------------

#define 	OSADJTR0  	OSADJCR,0
#define 	OSADJTR1  	OSADJCR,1
#define 	OSADJTR2  	OSADJCR,2
#define 	OSADJTR3  	OSADJCR,3
#define 	OSADJTR4  	OSADJCR,4
#define 	OSADJTR5  	OSADJCR,5
#define 	OSADJEN   	OSADJCR,7

;----- PPGCR Bits ---------------------------------------------------

#define 	PPGPRS0   	PPGCR,0
#define 	PPGPRS1   	PPGCR,1
#define 	PPGSTR    	PPGCR,2
#define 	TRIGSYN   	PPGCR,3
#define 	PSTPEN    	PPGCR,4
#define 	PSTREN    	PPGCR,5
#define 	POLEV     	PPGCR,6
#define 	PPGEN     	PPGCR,7

;----- PPGLDH Bits ---------------------------------------------------

#define 	PGLOAD8   	PPGLDH,0
#define 	PGLOAD9   	PPGLDH,1

;----- PPGLDL Bits ---------------------------------------------------

#define 	PGLOAD0   	PPGLDL,0
#define 	PGLOAD1   	PPGLDL,1
#define 	PGLOAD2   	PPGLDL,2
#define 	PGLOAD3   	PPGLDL,3
#define 	PGLOAD4   	PPGLDL,4
#define 	PGLOAD5   	PPGLDL,5
#define 	PGLOAD6   	PPGLDL,6
#define 	PGLOAD7   	PPGLDL,7

;----- PPGTDL Bits ---------------------------------------------------

#define 	PPGTDL0   	PPGTDL,0
#define 	PPGTDL1   	PPGTDL,1
#define 	PPGTDL2   	PPGTDL,2
#define 	PPGTDL3   	PPGTDL,3
#define 	PPGTDL4   	PPGTDL,4
#define 	PPGTDL5   	PPGTDL,5

;----- PPGTDB Bits ---------------------------------------------------

#define 	PPGTDB0   	PPGTDB,0
#define 	PPGTDB1   	PPGTDB,1
#define 	PPGTDB2   	PPGTDB,2
#define 	PPGTDB3   	PPGTDB,3
#define 	PPGTDB4   	PPGTDB,4
#define 	PPGTDB5   	PPGTDB,5
#define 	PPGTEG    	PPGTDB,6
#define 	PPGTIS    	PPGTDB,7

;----- OPACR Bits ---------------------------------------------------

#define 	OPAPS0    	OPACR,0
#define 	OPAPS1    	OPACR,1
#define 	OPAOS0    	OPACR,2
#define 	OPAOS1    	OPACR,3
#define 	OPAOP     	OPACR,6
#define 	OPAEN     	OPACR,7

;----- OPACLR Bits ---------------------------------------------------

#define 	OPACLR0   	OPACLR,0
#define 	OPACLR1   	OPACLR,1
#define 	OPACLR2   	OPACLR,2
#define 	OPACLR3   	OPACLR,3
#define 	OPACLR4   	OPACLR,4
#define 	OPACLR5   	OPACLR,5
#define 	OPACLRS   	OPACLR,6
#define 	OPAMOD    	OPACLR,7

;----- CPCR Bits ---------------------------------------------------

#define 	CP0EN     	CPCR,0
#define 	CP1EN     	CPCR,1
#define 	CP2EN     	CPCR,2
#define 	CP3EN     	CPCR,3
#define 	CP1NS     	CPCR,4
#define 	CP3NS0    	CPCR,5
#define 	CP3NS1    	CPCR,6

;----- CPSR Bits ---------------------------------------------------

#define 	CP0OP     	CPSR,0
#define 	CP1OP     	CPSR,1
#define 	CP2OP     	CPSR,2
#define 	CP3OP     	CPSR,3

;----- CPVR0 Bits ---------------------------------------------------

#define 	CP1VS0    	CPVR0,0
#define 	CP1VS1    	CPVR0,1
#define 	CP1VS2    	CPVR0,2
#define 	CP1VS3    	CPVR0,3
#define 	CP2VS0    	CPVR0,4
#define 	CP2VS1    	CPVR0,5
#define 	CP2VS2    	CPVR0,6
#define 	CPVRS     	CPVR0,7

;----- CPVR1 Bits ---------------------------------------------------

#define 	CP3VS0    	CPVR1,0
#define 	CP3VS1    	CPVR1,1
#define 	CP3VS2    	CPVR1,2
#define 	CP3VS3    	CPVR1,3
#define 	CP3VS4    	CPVR1,4

;----- CP0CLR Bits ---------------------------------------------------

#define 	CP0CLR0   	CP0CLR,0
#define 	CP0CLR1   	CP0CLR,1
#define 	CP0CLR2   	CP0CLR,2
#define 	CP0CLR3   	CP0CLR,3
#define 	CP0CLR4   	CP0CLR,4
#define 	CP0CLR5   	CP0CLR,5
#define 	CP0CLRS   	CP0CLR,6
#define 	CP0MOD    	CP0CLR,7

;----- CP1CLR Bits ---------------------------------------------------

#define 	CP1CLR0   	CP1CLR,0
#define 	CP1CLR1   	CP1CLR,1
#define 	CP1CLR2   	CP1CLR,2
#define 	CP1CLR3   	CP1CLR,3
#define 	CP1CLR4   	CP1CLR,4
#define 	CP1CLR5   	CP1CLR,5
#define 	CP1CLRS   	CP1CLR,6
#define 	CP1MOD    	CP1CLR,7

;----- CP2CLR Bits ---------------------------------------------------

#define 	CP2CLR0   	CP2CLR,0
#define 	CP2CLR1   	CP2CLR,1
#define 	CP2CLR2   	CP2CLR,2
#define 	CP2CLR3   	CP2CLR,3
#define 	CP2CLR4   	CP2CLR,4
#define 	CP2CLR5   	CP2CLR,5
#define 	CP2CLRS   	CP2CLR,6
#define 	CP2MOD    	CP2CLR,7

;----- CP3CLR Bits ---------------------------------------------------

#define 	CP3CLR0   	CP3CLR,0
#define 	CP3CLR1   	CP3CLR,1
#define 	CP3CLR2   	CP3CLR,2
#define 	CP3CLR3   	CP3CLR,3
#define 	CP3CLR4   	CP3CLR,4
#define 	CP3CLR5   	CP3CLR,5
#define 	CP3CLRS   	CP3CLR,6
#define 	CP3MOD    	CP3CLR,7

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
