		LIST
;mc32p64.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P64
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

INDF0     		EQU		H'01B0'
INDF1     		EQU		H'01B1'
INDF2     		EQU		H'01B2'
HIBYTE    		EQU		H'01B3'
FSR0      		EQU		H'01B4'
FSR1      		EQU		H'01B5'
PCL       		EQU		H'01B6'
PFLAG     		EQU		H'01B7'
MCR       		EQU		H'01B8'
INDF3     		EQU		H'01B9'
INTE      		EQU		H'01BA'
INTF      		EQU		H'01BB'
OSCM      		EQU		H'01BC'
IOP0      		EQU		H'01C0'
OEP0      		EQU		H'01C1'
PUP0      		EQU		H'01C2'
IOP1      		EQU		H'01C4'
OEP1      		EQU		H'01C5'
PUP1      		EQU		H'01C6'
IOP2      		EQU		H'01C8'
OEP2      		EQU		H'01C9'
PUP2      		EQU		H'01CA'
IOP3      		EQU		H'01CC'
OEP3      		EQU		H'01CD'
PUP3      		EQU		H'01CE'
T0CR      		EQU		H'01D0'
T0CNT     		EQU		H'01D1'
T0LOAD    		EQU		H'01D2'
T0DATA    		EQU		H'01D3'
T1CR      		EQU		H'01D4'
T1CNT     		EQU		H'01D5'
T1LOAD    		EQU		H'01D6'
T1DATA    		EQU		H'01D7'
T2CR      		EQU		H'01D8'
T2CNTH    		EQU		H'01D9'
T2CNTL    		EQU		H'01DA'
T2LOADH   		EQU		H'01DB'
T2LOADL   		EQU		H'01DC'
TK0CRH    		EQU		H'01E0'
TK0CRL    		EQU		H'01E1'
TK0CNTH   		EQU		H'01E2'
TK0CNTL   		EQU		H'01E3'
TK1CRH    		EQU		H'01E4'
TK1CRL    		EQU		H'01E5'
TK1CNTH   		EQU		H'01E6'
TK1CNTL   		EQU		H'01E7'
TK2CRH    		EQU		H'01E8'
TK2CRL    		EQU		H'01E9'
TK2CNTH   		EQU		H'01EA'
TK2CNTL   		EQU		H'01EB'
ADCR0     		EQU		H'01EC'
ADCR1     		EQU		H'01ED'
ADRH      		EQU		H'01EE'
ADRL      		EQU		H'01EF'
I2CCR     		EQU		H'01F0'
I2CADDR   		EQU		H'01F1'
I2CDATA   		EQU		H'01F2'
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
#define 	T2IE      	INTE,4
#define 	I2CIE     	INTE,5
#define 	ADIE      	INTE,6

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	T2IF      	INTF,4
#define 	I2CIF     	INTF,5
#define 	ADIF      	INTF,6

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

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

;----- OEP3 Bits ---------------------------------------------------

#define 	P30OE     	OEP3,0
#define 	P31OE     	OEP3,1

;----- PUP3 Bits ---------------------------------------------------

#define 	P30PU     	PUP3,0
#define 	P31PU     	PUP3,1

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
#define 	TPR2      	T2CR,2
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

;----- TK0CRH Bits ---------------------------------------------------

#define 	TK0FQ0    	TK0CRH,0
#define 	TK0FQ1    	TK0CRH,1
#define 	TK0FQ2    	TK0CRH,2
#define 	TK0CLR    	TK0CRH,3
#define 	TK0RCE    	TK0CRH,4
#define 	TK0JE     	TK0CRH,5
#define 	TK0K0     	TK0CRH,6
#define 	TK0K1     	TK0CRH,7

;----- TK0CRL Bits ---------------------------------------------------

#define 	TK0IO0    	TK0CRL,0
#define 	TK0IO1    	TK0CRL,1
#define 	TK0IO2    	TK0CRL,2
#define 	TK0IO3    	TK0CRL,3
#define 	TK0FL0    	TK0CRL,4
#define 	TK0FL1    	TK0CRL,5
#define 	TK0IE     	TK0CRL,6
#define 	TK0IF     	TK0CRL,7

;----- TK0CNTH Bits ---------------------------------------------------

#define 	TK0C8     	TK0CNTH,0
#define 	TK0C9     	TK0CNTH,1
#define 	TK0C10    	TK0CNTH,2
#define 	TK0C11    	TK0CNTH,3
#define 	TK0C12    	TK0CNTH,4
#define 	TK0C13    	TK0CNTH,5
#define 	TK0C14    	TK0CNTH,6
#define 	TK0C15    	TK0CNTH,7

;----- TK0CNTL Bits ---------------------------------------------------

#define 	TK0C0     	TK0CNTL,0
#define 	TK0C1     	TK0CNTL,1
#define 	TK0C2     	TK0CNTL,2
#define 	TK0C3     	TK0CNTL,3
#define 	TK0C4     	TK0CNTL,4
#define 	TK0C5     	TK0CNTL,5
#define 	TK0C6     	TK0CNTL,6
#define 	TK0C7     	TK0CNTL,7

;----- TK1CRH Bits ---------------------------------------------------

#define 	TK1FQ0    	TK1CRH,0
#define 	TK1FQ1    	TK1CRH,1
#define 	TK1FQ2    	TK1CRH,2
#define 	TK1CLR    	TK1CRH,3
#define 	TK1RCE    	TK1CRH,4
#define 	TK1JE     	TK1CRH,5
#define 	TK1K0     	TK1CRH,6
#define 	TK1K1     	TK1CRH,7

;----- TK1CRL Bits ---------------------------------------------------

#define 	TK1IO0    	TK1CRL,0
#define 	TK1IO1    	TK1CRL,1
#define 	TK1IO2    	TK1CRL,2
#define 	TK1IO3    	TK1CRL,3
#define 	TK1FL0    	TK1CRL,4
#define 	TK1FL1    	TK1CRL,5
#define 	TK1IE     	TK1CRL,6
#define 	TK1IF     	TK1CRL,7

;----- TK1CNTH Bits ---------------------------------------------------

#define 	TK1C8     	TK1CNTH,0
#define 	TK1C9     	TK1CNTH,1
#define 	TK1C10    	TK1CNTH,2
#define 	TK1C11    	TK1CNTH,3
#define 	TK1C12    	TK1CNTH,4
#define 	TK1C13    	TK1CNTH,5
#define 	TK1C14    	TK1CNTH,6
#define 	TK1C15    	TK1CNTH,7

;----- TK1CNTL Bits ---------------------------------------------------

#define 	TK1C0     	TK1CNTL,0
#define 	TK1C1     	TK1CNTL,1
#define 	TK1C2     	TK1CNTL,2
#define 	TK1C3     	TK1CNTL,3
#define 	TK1C4     	TK1CNTL,4
#define 	TK1C5     	TK1CNTL,5
#define 	TK1C6     	TK1CNTL,6
#define 	TK1C7     	TK1CNTL,7

;----- TK2CRH Bits ---------------------------------------------------

#define 	TK2FQ0    	TK2CRH,0
#define 	TK2FQ1    	TK2CRH,1
#define 	TK2FQ2    	TK2CRH,2
#define 	TK2CLR    	TK2CRH,3
#define 	TK2RCE    	TK2CRH,4
#define 	TK2JE     	TK2CRH,5
#define 	TK2K0     	TK2CRH,6
#define 	TK2K1     	TK2CRH,7

;----- TK2CRL Bits ---------------------------------------------------

#define 	TK2IO0    	TK2CRL,0
#define 	TK2IO1    	TK2CRL,1
#define 	TK2IO2    	TK2CRL,2
#define 	TK2IO3    	TK2CRL,3
#define 	TK2FL0    	TK2CRL,4
#define 	TK2FL1    	TK2CRL,5
#define 	TK2IE     	TK2CRL,6
#define 	TK2IF     	TK2CRL,7

;----- TK2CNTH Bits ---------------------------------------------------

#define 	TK2C8     	TK2CNTH,0
#define 	TK2C9     	TK2CNTH,1
#define 	TK2C10    	TK2CNTH,2
#define 	TK2C11    	TK2CNTH,3
#define 	TK2C12    	TK2CNTH,4
#define 	TK2C13    	TK2CNTH,5
#define 	TK2C14    	TK2CNTH,6
#define 	TK2C15    	TK2CNTH,7

;----- TK2CNTL Bits ---------------------------------------------------

#define 	TK2C0     	TK2CNTL,0
#define 	TK2C1     	TK2CNTL,1
#define 	TK2C2     	TK2CNTL,2
#define 	TK2C3     	TK2CNTL,3
#define 	TK2C4     	TK2CNTL,4
#define 	TK2C5     	TK2CNTL,5
#define 	TK2C6     	TK2CNTL,6
#define 	TK2C7     	TK2CNTL,7

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

#define 	ADIOS0    	ADCR1,0
#define 	ADIOS1    	ADCR1,1
#define 	ADIOS2    	ADCR1,2
#define 	ADIOS3    	ADCR1,3
#define 	ADIOS4    	ADCR1,4
#define 	ADIOS5    	ADCR1,5
#define 	ADIOS6    	ADCR1,6
#define 	ADIOS7    	ADCR1,7

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

;----- I2CCR Bits ---------------------------------------------------

#define 	RXAK      	I2CCR,0
#define 	HEN       	I2CCR,1
#define 	SRW       	I2CCR,2
#define 	TXAK      	I2CCR,3
#define 	HTX       	I2CCR,4
#define 	HBB       	I2CCR,5
#define 	HAAS      	I2CCR,6
#define 	HCF       	I2CCR,7

;----- I2CADDR Bits ---------------------------------------------------

#define 	I2CAD1    	I2CADDR,1
#define 	I2CAD2    	I2CADDR,2
#define 	I2CAD3    	I2CADDR,3
#define 	I2CAD4    	I2CADDR,4
#define 	I2CAD5    	I2CADDR,5
#define 	I2CAD6    	I2CADDR,6
#define 	I2CAD7    	I2CADDR,7

;----- I2CDATA Bits ---------------------------------------------------

#define 	I2CDA0    	I2CDATA,0
#define 	I2CDA1    	I2CDATA,1
#define 	I2CDA2    	I2CDATA,2
#define 	I2CDA3    	I2CDATA,3
#define 	I2CDA4    	I2CDATA,4
#define 	I2CDA5    	I2CDATA,5
#define 	I2CDA6    	I2CDATA,6
#define 	I2CDA7    	I2CDATA,7

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
