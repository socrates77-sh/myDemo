		LIST
;mc32p7212.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P7212
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
IOP1      		EQU		H'0194'
OEP1      		EQU		H'0195'
PUP1      		EQU		H'0196'
IOP2      		EQU		H'0198'
OEP2      		EQU		H'0199'
PUP2      		EQU		H'019A'
IOP3      		EQU		H'019C'
OEP3      		EQU		H'019D'
PUP3      		EQU		H'019E'
T0CR      		EQU		H'01A0'
T0CNT     		EQU		H'01A1'
T0LOAD    		EQU		H'01A2'
T0DATA    		EQU		H'01A3'
T1CR      		EQU		H'01A4'
T1CNT     		EQU		H'01A5'
T1LOAD    		EQU		H'01A6'
T1DATA    		EQU		H'01A7'
LXTCR     		EQU		H'01A8'
PUMP      		EQU		H'01AD'
OSCM      		EQU		H'01AE'
LVDCR     		EQU		H'01AF'
ADCR0     		EQU		H'01B0'
ADCR1     		EQU		H'01B1'
ADCR2     		EQU		H'01B2'
TPSC      		EQU		H'01B3'
ADRH      		EQU		H'01B4'
ADRM      		EQU		H'01B5'
ADRL      		EQU		H'01B6'
LCDCR0    		EQU		H'01B8'
LCDCR1    		EQU		H'01B9'
LCDIOS1   		EQU		H'01BA'
LCDIOS2   		EQU		H'01BB'
LCDDS2    		EQU		H'01C0'
LCDDS3    		EQU		H'01C1'
LCDDS4    		EQU		H'01C2'
LCDDS5    		EQU		H'01C3'
LCDDS6    		EQU		H'01C4'
LCDDS7    		EQU		H'01C5'
LCDDS8    		EQU		H'01C6'
LCDDS9    		EQU		H'01C7'
LCDDS10   		EQU		H'01C8'
LCDDS11   		EQU		H'01C9'
LCDDS12   		EQU		H'01CA'
LCDDS13   		EQU		H'01CB'

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
#define 	ADIE      	INTE,6

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	ADIF      	INTF,6

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

;----- IOP1 Bits ---------------------------------------------------

#define 	P10D      	IOP1,0
#define 	P11D      	IOP1,1
#define 	P12D      	IOP1,2
#define 	P13D      	IOP1,3
#define 	P14D      	IOP1,4
#define 	P15D      	IOP1,5

;----- OEP1 Bits ---------------------------------------------------

#define 	P10OE     	OEP1,0
#define 	P11OE     	OEP1,1
#define 	P12OE     	OEP1,2
#define 	P13OE     	OEP1,3
#define 	P14OE     	OEP1,4
#define 	P15OE     	OEP1,5

;----- PUP1 Bits ---------------------------------------------------

#define 	P10PU     	PUP1,0
#define 	P11PU     	PUP1,1
#define 	P12PU     	PUP1,2
#define 	P13PU     	PUP1,3
#define 	P14PU     	PUP1,4
#define 	P15PU     	PUP1,5

;----- IOP2 Bits ---------------------------------------------------

#define 	P20D      	IOP2,0
#define 	P21D      	IOP2,1
#define 	P22D      	IOP2,2
#define 	P23D      	IOP2,3
#define 	P24D      	IOP2,4
#define 	P25D      	IOP2,5
#define 	P26D      	IOP2,6
#define 	P27D      	IOP2,7

;----- OEP2 Bits ---------------------------------------------------

#define 	P20OE     	OEP2,0
#define 	P21OE     	OEP2,1
#define 	P22OE     	OEP2,2
#define 	P23OE     	OEP2,3
#define 	P24OE     	OEP2,4
#define 	P25OE     	OEP2,5
#define 	P26OE     	OEP2,6
#define 	P27OE     	OEP2,7

;----- PUP2 Bits ---------------------------------------------------

#define 	P20PU     	PUP2,0
#define 	P21PU     	PUP2,1
#define 	P22PU     	PUP2,2
#define 	P23PU     	PUP2,3
#define 	P24PU     	PUP2,4
#define 	P25PU     	PUP2,5
#define 	P26PU     	PUP2,6
#define 	P27PU     	PUP2,7

;----- IOP3 Bits ---------------------------------------------------

#define 	P30D      	IOP3,0
#define 	P31D      	IOP3,1
#define 	P32D      	IOP3,2
#define 	P33D      	IOP3,3

;----- OEP3 Bits ---------------------------------------------------

#define 	P30OE     	OEP3,0
#define 	P31OE     	OEP3,1
#define 	P32OE     	OEP3,2
#define 	P33OE     	OEP3,3

;----- PUP3 Bits ---------------------------------------------------

#define 	P30PU     	PUP3,0
#define 	P31PU     	PUP3,1
#define 	P32PU     	PUP3,2
#define 	P33PU     	PUP3,3

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

;----- LXTCR Bits ---------------------------------------------------

#define 	LPEN0     	LXTCR,0
#define 	LPEN1     	LXTCR,1
#define 	LPEN2     	LXTCR,2
#define 	FILS      	LXTCR,3
#define 	VDLSEL    	LXTCR,4
#define 	RSEL      	LXTCR,5
#define 	LDOLPEN   	LXTCR,6

;----- PUMP Bits ---------------------------------------------------

#define 	VLCDX0    	PUMP,0
#define 	VLCDX1    	PUMP,1
#define 	CHP_VPP   	PUMP,2
#define 	PGMTIME   	PUMP,3
#define 	VCP_CAL   	PUMP,4
#define 	CPCKS     	PUMP,5
#define 	PUMPEN    	PUMP,6
#define 	ERV       	PUMP,7

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	HIRCOUTEN 	OSCM,3
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	VBGSEL    	LVDCR,2
#define 	LVDS0     	LVDCR,3
#define 	LVDS1     	LVDCR,4
#define 	LVDS2     	LVDCR,5
#define 	LVDS3     	LVDCR,6
#define 	LVDEN     	LVDCR,7

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADCHS0    	ADCR0,0
#define 	ADCHS1    	ADCR0,1
#define 	ADCKS0    	ADCR0,2
#define 	ADCKS1    	ADCR0,3
#define 	VREF_ICTL 	ADCR0,4
#define 	PGA_EN    	ADCR0,5
#define 	CHOP_EN   	ADCR0,6
#define 	ADEN      	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	PGS0      	ADCR1,0
#define 	PGS1      	ADCR1,1
#define 	PGS2      	ADCR1,2
#define 	PGS3      	ADCR1,3
#define 	ADHS0     	ADCR1,4
#define 	ADHS1     	ADCR1,5
#define 	ADHS2     	ADCR1,6
#define 	ADHS3     	ADCR1,7

;----- ADCR2 Bits ---------------------------------------------------

#define 	ADC_ICTL0 	ADCR2,0
#define 	ADC_ICTL1 	ADCR2,1
#define 	ADC_ICTL2 	ADCR2,2
#define 	ADC_ICTL3 	ADCR2,3
#define 	ADC_ICTL4 	ADCR2,4
#define 	ADC_ICTL5 	ADCR2,5
#define 	T_PGA_OUT_ENB	ADCR2,6
#define 	T_ADC_IN_ENB	ADCR2,7

;----- TPSC Bits ---------------------------------------------------

#define 	TPS_TST0  	TPSC,0
#define 	TPS_TST1  	TPSC,1
#define 	PT_TS     	TPSC,2
#define 	VBGEN     	TPSC,3
#define 	VLDOEN    	TPSC,4
#define 	VLDOSL1   	TPSC,5
#define 	VLDOSL0   	TPSC,6
#define 	ADC_T     	TPSC,7

;----- ADRH Bits ---------------------------------------------------

#define 	ADR16     	ADRH,0
#define 	ADR17     	ADRH,1
#define 	ADR18     	ADRH,2
#define 	ADR19     	ADRH,3
#define 	ADR20     	ADRH,4
#define 	ADR21     	ADRH,5
#define 	ADR22     	ADRH,6
#define 	ADR23     	ADRH,7

;----- ADRM Bits ---------------------------------------------------

#define 	ADR8      	ADRM,0
#define 	ADR9      	ADRM,1
#define 	ADR10     	ADRM,2
#define 	ADR11     	ADRM,3
#define 	ADR12     	ADRM,4
#define 	ADR13     	ADRM,5
#define 	ADR14     	ADRM,6
#define 	ADR15     	ADRM,7

;----- ADRL Bits ---------------------------------------------------

#define 	ADR0      	ADRL,0
#define 	ADR1      	ADRL,1
#define 	ADR2      	ADRL,2
#define 	ADR3      	ADRL,3
#define 	ADR4      	ADRL,4
#define 	ADR5      	ADRL,5
#define 	ADR6      	ADRL,6
#define 	ADR7      	ADRL,7

;----- LCDCR0 Bits ---------------------------------------------------

#define 	LCDRS0    	LCDCR0,0
#define 	LCDRS1    	LCDCR0,1
#define 	LCDSPEED  	LCDCR0,2
#define 	LCDSP0    	LCDCR0,5
#define 	LCDSP1    	LCDCR0,6
#define 	LCDEN     	LCDCR0,7

;----- LCDCR1 Bits ---------------------------------------------------

#define 	FLCD0     	LCDCR1,0
#define 	FLCD1     	LCDCR1,1
#define 	LCDCKS    	LCDCR1,2
#define 	LCDM      	LCDCR1,3
#define 	BEN       	LCDCR1,4
#define 	LCDDUTY0  	LCDCR1,5
#define 	LCDDUTY1  	LCDCR1,6

;----- LCDIOS1 Bits ---------------------------------------------------

#define 	SEGIOS2   	LCDIOS1,0
#define 	SEGIOS3   	LCDIOS1,1
#define 	SEGIOS4   	LCDIOS1,2
#define 	SEGIOS5   	LCDIOS1,3
#define 	SEGIOS6   	LCDIOS1,4
#define 	SEGIOS7   	LCDIOS1,5
#define 	SEGIOS8   	LCDIOS1,6
#define 	SEGIOS9   	LCDIOS1,7

;----- LCDIOS2 Bits ---------------------------------------------------

#define 	SEGIOS10  	LCDIOS2,0
#define 	SEGIOS11  	LCDIOS2,1
#define 	SEGIOS12  	LCDIOS2,2
#define 	SEGIOS13  	LCDIOS2,3

;----- LCDDS2 Bits ---------------------------------------------------

#define 	COM0SEG2  	LCDDS2,0
#define 	COM1SEG2  	LCDDS2,1
#define 	COM2SEG2  	LCDDS2,2
#define 	COM3SEG2  	LCDDS2,3

;----- LCDDS3 Bits ---------------------------------------------------

#define 	COM0SEG3  	LCDDS3,0
#define 	COM1SEG3  	LCDDS3,1
#define 	COM2SEG3  	LCDDS3,2
#define 	COM3SEG3  	LCDDS3,3

;----- LCDDS4 Bits ---------------------------------------------------

#define 	COM0SEG4  	LCDDS4,0
#define 	COM1SEG4  	LCDDS4,1
#define 	COM2SEG4  	LCDDS4,2
#define 	COM3SEG4  	LCDDS4,3

;----- LCDDS5 Bits ---------------------------------------------------

#define 	COM0SEG5  	LCDDS5,0
#define 	COM1SEG5  	LCDDS5,1
#define 	COM2SEG5  	LCDDS5,2
#define 	COM3SEG5  	LCDDS5,3

;----- LCDDS6 Bits ---------------------------------------------------

#define 	COM0SEG6  	LCDDS6,0
#define 	COM1SEG6  	LCDDS6,1
#define 	COM2SEG6  	LCDDS6,2
#define 	COM3SEG6  	LCDDS6,3

;----- LCDDS7 Bits ---------------------------------------------------

#define 	COM0SEG7  	LCDDS7,0
#define 	COM1SEG7  	LCDDS7,1
#define 	COM2SEG7  	LCDDS7,2
#define 	COM3SEG7  	LCDDS7,3

;----- LCDDS8 Bits ---------------------------------------------------

#define 	COM0SEG8  	LCDDS8,0
#define 	COM1SEG8  	LCDDS8,1
#define 	COM2SEG8  	LCDDS8,2
#define 	COM3SEG8  	LCDDS8,3

;----- LCDDS9 Bits ---------------------------------------------------

#define 	COM0SEG9  	LCDDS9,0
#define 	COM1SEG9  	LCDDS9,1
#define 	COM2SEG9  	LCDDS9,2
#define 	COM3SEG9  	LCDDS9,3

;----- LCDDS10 Bits ---------------------------------------------------

#define 	COM0SEG10 	LCDDS10,0
#define 	COM1SEG10 	LCDDS10,1
#define 	COM2SEG10 	LCDDS10,2
#define 	COM3SEG10 	LCDDS10,3

;----- LCDDS11 Bits ---------------------------------------------------

#define 	COM0SEG11 	LCDDS11,0
#define 	COM1SEG11 	LCDDS11,1
#define 	COM2SEG11 	LCDDS11,2
#define 	COM3SEG11 	LCDDS11,3

;----- LCDDS12 Bits ---------------------------------------------------

#define 	COM0SEG12 	LCDDS12,0
#define 	COM1SEG12 	LCDDS12,1
#define 	COM2SEG12 	LCDDS12,2
#define 	COM3SEG12 	LCDDS12,3

;----- LCDDS13 Bits ---------------------------------------------------

#define 	COM0SEG13 	LCDDS13,0
#define 	COM1SEG13 	LCDDS13,1
#define 	COM2SEG13 	LCDDS13,2
#define 	COM3SEG13 	LCDDS13,3

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
