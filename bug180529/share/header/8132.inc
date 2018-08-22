		LIST
;mc32t8132.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P8132
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

INDF0     		EQU		H'01A0'
INDF1     		EQU		H'01A1'
INDF2     		EQU		H'01A2'
HIBYTE    		EQU		H'01A3'
FSR0      		EQU		H'01A4'
FSR1      		EQU		H'01A5'
PCL       		EQU		H'01A6'
PFLAG     		EQU		H'01A7'
MCR       		EQU		H'01A8'
INDF3     		EQU		H'01A9'
INTE      		EQU		H'01AA'
INTF      		EQU		H'01AB'
OSCM      		EQU		H'01AC'
CLKO      		EQU		H'01AD'
IOP0      		EQU		H'01B0'
OEP0      		EQU		H'01B1'
PUP0      		EQU		H'01B2'
PDP0      		EQU		H'01B3'
IOP1      		EQU		H'01B4'
OEP1      		EQU		H'01B5'
PUP1      		EQU		H'01B6'
PDP1      		EQU		H'01B7'
IOP2      		EQU		H'01B8'
OEP2      		EQU		H'01B9'
PUP2      		EQU		H'01BA'
PDP2      		EQU		H'01BB'
IOP3      		EQU		H'01BC'
OEP3      		EQU		H'01BD'
PUP3      		EQU		H'01BE'
PDP3      		EQU		H'01BF'
T0CR      		EQU		H'01C0'
T0CNT     		EQU		H'01C1'
T0LOAD    		EQU		H'01C2'
T0DATA    		EQU		H'01C3'
T1CR      		EQU		H'01C4'
T1CNT     		EQU		H'01C5'
T1LOAD    		EQU		H'01C6'
T1DATA    		EQU		H'01C7'
T2CR      		EQU		H'01C8'
T2CNTH    		EQU		H'01C9'
T2CNTL    		EQU		H'01CA'
T2LOADH   		EQU		H'01CB'
T2LOADL   		EQU		H'01CC'
TK0CR0    		EQU		H'01D0'
TK0CR1    		EQU		H'01D1'
TK0CR2    		EQU		H'01D2'
TK0CNTH   		EQU		H'01D3'
TK0CNTL   		EQU		H'01D4'
TK1CR0    		EQU		H'01D8'
TK1CR1    		EQU		H'01D9'
TK1CR2    		EQU		H'01DA'
TK1CNTH   		EQU		H'01DB'
TK1CNTL   		EQU		H'01DC'
ADCR0     		EQU		H'01E0'
ADCR1     		EQU		H'01E1'
ADCR2     		EQU		H'01E2'
ADIO0     		EQU		H'01E3'
ADIO1     		EQU		H'01E4'
ADRH      		EQU		H'01E5'
ADRL      		EQU		H'01E6'
LEDDS1    		EQU		H'01E8'
LEDDS2    		EQU		H'01E9'
LEDDS3    		EQU		H'01EA'
LEDDS4    		EQU		H'01EB'
LEDDS5    		EQU		H'01EC'
LEDDS6    		EQU		H'01ED'
LEDDS7    		EQU		H'01EE'
LEDDS8    		EQU		H'01EF'
LEDCR0    		EQU		H'01F0'
LEDCR1    		EQU		H'01F1'
LEDIOS0   		EQU		H'01F2'
LEDIOS1   		EQU		H'01F3'
LEDDRV    		EQU		H'01F4'

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
#define 	T2IE      	INTE,4
#define 	ADIE      	INTE,6

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	T2IF      	INTF,4
#define 	ADIF      	INTF,6

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- CLKO Bits ---------------------------------------------------

#define 	CLKOS0    	CLKO,0
#define 	CLKOS1    	CLKO,1
#define 	CLKOS2    	CLKO,2
#define 	CLKOEN    	CLKO,7

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

;----- OEP1 Bits ---------------------------------------------------

#define 	P10OE     	OEP1,0
#define 	P11OE     	OEP1,1
#define 	P12OE     	OEP1,2

;----- PUP1 Bits ---------------------------------------------------

#define 	P10PU     	PUP1,0
#define 	P11PU     	PUP1,1
#define 	P12PU     	PUP1,2

;----- PDP1 Bits ---------------------------------------------------

#define 	P10PD     	PDP1,0
#define 	P11PD     	PDP1,1
#define 	P12PD     	PDP1,2

;----- IOP2 Bits ---------------------------------------------------

#define 	P20D      	IOP2,0
#define 	P21D      	IOP2,1
#define 	P22D      	IOP2,2
#define 	P23D      	IOP2,3
#define 	P24D      	IOP2,4
#define 	P25D      	IOP2,5
#define 	P26D      	IOP2,6

;----- OEP2 Bits ---------------------------------------------------

#define 	P20OE     	OEP2,0
#define 	P21OE     	OEP2,1
#define 	P22OE     	OEP2,2
#define 	P23OE     	OEP2,3
#define 	P24OE     	OEP2,4
#define 	P25OE     	OEP2,5
#define 	P26OE     	OEP2,6

;----- PUP2 Bits ---------------------------------------------------

#define 	P20PU     	PUP2,0
#define 	P21PU     	PUP2,1
#define 	P22PU     	PUP2,2
#define 	P23PU     	PUP2,3
#define 	P24PU     	PUP2,4
#define 	P25PU     	PUP2,5
#define 	P26PU     	PUP2,6

;----- PDP2 Bits ---------------------------------------------------

#define 	P20PD     	PDP2,0
#define 	P21PD     	PDP2,1
#define 	P22PD     	PDP2,2
#define 	P23PD     	PDP2,3
#define 	P24PD     	PDP2,4
#define 	P25PD     	PDP2,5
#define 	P26PD     	PDP2,6

;----- IOP3 Bits ---------------------------------------------------

#define 	P30D      	IOP3,0
#define 	P31D      	IOP3,1
#define 	P32D      	IOP3,2
#define 	P33D      	IOP3,3
#define 	P34D      	IOP3,4
#define 	P35D      	IOP3,5
#define 	P36D      	IOP3,6
#define 	P37D      	IOP3,7

;----- OEP3 Bits ---------------------------------------------------

#define 	P30OE     	OEP3,0
#define 	P31OE     	OEP3,1
#define 	P32OE     	OEP3,2
#define 	P33OE     	OEP3,3
#define 	P34OE     	OEP3,4
#define 	P35OE     	OEP3,5
#define 	P36OE     	OEP3,6
#define 	P37OE     	OEP3,7

;----- PUP3 Bits ---------------------------------------------------

#define 	P30PU     	PUP3,0
#define 	P31PU     	PUP3,1
#define 	P32PU     	PUP3,2
#define 	P33PU     	PUP3,3
#define 	P34PU     	PUP3,4
#define 	P35PU     	PUP3,5
#define 	P36PU     	PUP3,6
#define 	P37PU     	PUP3,7

;----- PDP3 Bits ---------------------------------------------------

#define 	P30PD     	PDP3,0
#define 	P31PD     	PDP3,1
#define 	P32PD     	PDP3,2
#define 	P33PD     	PDP3,3
#define 	P34PD     	PDP3,4
#define 	P35PD     	PDP3,5
#define 	P36PD     	PDP3,6
#define 	P37PD     	PDP3,7

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

;----- T2CR Bits ---------------------------------------------------

#define 	T2PR0     	T2CR,0
#define 	T2PR1     	T2CR,1
#define 	T2PR2     	T2CR,2
#define 	T2PTS0    	T2CR,3
#define 	T2PTS1    	T2CR,4
#define 	T2MODE    	T2CR,5
#define 	TC2EN     	T2CR,7

;----- T2CNTH Bits ---------------------------------------------------

#define 	T2C8      	T2CNTH,0
#define 	T2C9      	T2CNTH,1
#define 	T2C10     	T2CNTH,2
#define 	T2C11     	T2CNTH,3
#define 	T2C12     	T2CNTH,4
#define 	T2C13     	T2CNTH,5
#define 	T2C14     	T2CNTH,6
#define 	T2C15     	T2CNTH,7

;----- T2CNTL Bits ---------------------------------------------------

#define 	T2C0      	T2CNTL,0
#define 	T2C1      	T2CNTL,1
#define 	T2C2      	T2CNTL,2
#define 	T2C3      	T2CNTL,3
#define 	T2C4      	T2CNTL,4
#define 	T2C5      	T2CNTL,5
#define 	T2C6      	T2CNTL,6
#define 	T2C7      	T2CNTL,7

;----- T2LOADH Bits ---------------------------------------------------

#define 	T2LOAD8   	T2LOADH,0
#define 	T2LOAD9   	T2LOADH,1
#define 	T2LOAD10  	T2LOADH,2
#define 	T2LOAD11  	T2LOADH,3
#define 	T2LOAD12  	T2LOADH,4
#define 	T2LOAD13  	T2LOADH,5
#define 	T2LOAD14  	T2LOADH,6
#define 	T2LOAD15  	T2LOADH,7

;----- T2LOADL Bits ---------------------------------------------------

#define 	T2LOAD0   	T2LOADL,0
#define 	T2LOAD1   	T2LOADL,1
#define 	T2LOAD2   	T2LOADL,2
#define 	T2LOAD3   	T2LOADL,3
#define 	T2LOAD4   	T2LOADL,4
#define 	T2LOAD5   	T2LOADL,5
#define 	T2LOAD6   	T2LOADL,6
#define 	T2LOAD7   	T2LOADL,7

;----- ADCR0 Bits ---------------------------------------------------

#define 	ADON      	ADCR0,0
#define 	ADEOC     	ADCR0,1
#define 	ADCHS0    	ADCR0,3
#define 	ADCHS1    	ADCR0,4
#define 	ADCHS2    	ADCR0,5
#define 	ADCHS3    	ADCR0,6
#define 	ADCHS4    	ADCR0,7

;----- ADCR1 Bits ---------------------------------------------------

#define 	VREFP_PHEN	ADCR1,0
#define 	ADCKS0    	ADCR1,1
#define 	ADCKS1    	ADCR1,2
#define 	ADREF0    	ADCR1,3
#define 	ADREF1    	ADCR1,4
#define 	ADREF2    	ADCR1,5
#define 	ADREF3    	ADCR1,6

;----- ADCR2 Bits ---------------------------------------------------

#define 	ADSMP0    	ADCR2,0
#define 	ADSMP1    	ADCR2,1
#define 	ADSMP2    	ADCR2,2
#define 	ADSMP3    	ADCR2,3

;----- ADIO0 Bits ---------------------------------------------------

#define 	ADIOS0    	ADIO0,0
#define 	ADIOS1    	ADIO0,1
#define 	ADIOS2    	ADIO0,2
#define 	ADIOS3    	ADIO0,3
#define 	ADIOS4    	ADIO0,4
#define 	ADIOS5    	ADIO0,5
#define 	ADIOS6    	ADIO0,6
#define 	ADIOS7    	ADIO0,7

;----- ADIO1 Bits ---------------------------------------------------

#define 	ADIOS8    	ADIO1,0
#define 	ADIOS9    	ADIO1,1
#define 	ADIOS10   	ADIO1,2
#define 	ADIOS11   	ADIO1,3
#define 	ADIOS12   	ADIO1,4
#define 	ADIOS13   	ADIO1,5
#define 	ADIOS14   	ADIO1,6
#define 	ADIOS15   	ADIO1,7

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

;----- LEDCR0 Bits ---------------------------------------------------

#define 	GYS0      	LEDCR0,0
#define 	GYS1      	LEDCR0,1
#define 	GYS2      	LEDCR0,2
#define 	DUTY      	LEDCR0,6
#define 	LEDEN     	LEDCR0,7

;----- LEDCR1 Bits ---------------------------------------------------

#define 	FLED0     	LEDCR1,0
#define 	FLED1     	LEDCR1,1
#define 	IREFEN    	LEDCR1,2
#define 	IBPS0     	LEDCR1,3
#define 	IBPS1     	LEDCR1,4
#define 	CLKS0     	LEDCR1,5
#define 	CLKS1     	LEDCR1,6

;----- LEDIOS0 Bits ---------------------------------------------------

#define 	COMIOS1   	LEDIOS0,0
#define 	COMIOS2   	LEDIOS0,1
#define 	COMIOS3   	LEDIOS0,2
#define 	COMIOS4   	LEDIOS0,3
#define 	COMIOS5   	LEDIOS0,4
#define 	COMIOS6   	LEDIOS0,5
#define 	COMIOS7   	LEDIOS0,6
#define 	COMIOS8   	LEDIOS0,7

;----- LEDIOS1 Bits ---------------------------------------------------

#define 	SEGIOS1   	LEDIOS1,0
#define 	SEGIOS2   	LEDIOS1,1
#define 	SEGIOS3   	LEDIOS1,2
#define 	SEGIOS4   	LEDIOS1,3
#define 	SEGIOS5   	LEDIOS1,4
#define 	SEGIOS6   	LEDIOS1,5
#define 	SEGIOS7   	LEDIOS1,6
#define 	SEGIOS8   	LEDIOS1,7

;----- LEDDRV Bits ---------------------------------------------------

#define 	COMDV1    	LEDDRV,0
#define 	COMDV2    	LEDDRV,1
#define 	COMDV3    	LEDDRV,2
#define 	COMDV4    	LEDDRV,3
#define 	COMDV5    	LEDDRV,4
#define 	COMDV6    	LEDDRV,5
#define 	COMDV7    	LEDDRV,6
#define 	COMDV8    	LEDDRV,7

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
