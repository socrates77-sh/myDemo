		LIST
;mc32p5232.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P5232
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
LVDCR     		EQU		H'01BD'
MTPADH    		EQU		H'01C0'
MTPADL    		EQU		H'01C1'
MTPDB     		EQU		H'01C2'
MTPMD     		EQU		H'01C3'
MTPCTR    		EQU		H'01C4'
IOP1      		EQU		H'01C8'
OEP1      		EQU		H'01C9'
PUP1      		EQU		H'01CA'
DKWP1     		EQU		H'01CE'
IOP2      		EQU		H'01D0'
OEP2      		EQU		H'01D1'
PUP2      		EQU		H'01D2'
DKWP2     		EQU		H'01D6'
T0CR      		EQU		H'01D8'
T0LOADH   		EQU		H'01D9'
T0LOADL   		EQU		H'01DA'
T0LATRH   		EQU		H'01DB'
T0LATRL   		EQU		H'01DC'
T0LATFH   		EQU		H'01DD'
T0LATFL   		EQU		H'01DE'
T1CR      		EQU		H'01E0'
T1DATA    		EQU		H'01E1'
T1LOAD    		EQU		H'01E2'
OPCR0     		EQU		H'01E4'
DKW0      		EQU		H'01E6'

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

#define 	MINTS0    	MCR,0
#define 	MINTS1    	MCR,1
#define 	MINTT0    	MCR,2
#define 	MINTT1    	MCR,3
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
#define 	INTSIE    	INTE,2
#define 	INTTIE    	INTE,3

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INTSIF    	INTF,2
#define 	INTTIF    	INTF,3
#define 	T0RF      	INTF,6

;----- OSCM Bits ---------------------------------------------------

#define 	LFEN      	OSCM,1

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	VLVDS     	LVDCR,3
#define 	LVDEN     	LVDCR,7

;----- MTPADH Bits ---------------------------------------------------

#define 	MTPAD4    	MTPADH,0
#define 	MTPAD5    	MTPADH,1
#define 	MTPAD6    	MTPADH,2
#define 	MTPAD7    	MTPADH,3

;----- MTPADL Bits ---------------------------------------------------

#define 	MTPAD0    	MTPADL,0
#define 	MTPAD1    	MTPADL,1
#define 	MTPAD2    	MTPADL,2
#define 	MTPAD3    	MTPADL,3

;----- MTPDB Bits ---------------------------------------------------

#define 	MTPDB0    	MTPDB,0
#define 	MTPDB1    	MTPDB,1
#define 	MTPDB2    	MTPDB,2
#define 	MTPDB3    	MTPDB,3
#define 	MTPDB4    	MTPDB,4
#define 	MTPDB5    	MTPDB,5
#define 	MTPDB6    	MTPDB,6
#define 	MTPDB7    	MTPDB,7

;----- MTPMD Bits ---------------------------------------------------

#define 	BYTERD    	MTPMD,0
#define 	BYTEWR    	MTPMD,1
#define 	PAGEWR    	MTPMD,2
#define 	PAGEERS   	MTPMD,3
#define 	CHIPERS   	MTPMD,4
#define 	MTPEN     	MTPMD,7

;----- MTPCTR Bits ---------------------------------------------------

#define 	MTPRD     	MTPCTR,0
#define 	MTPWR     	MTPCTR,1
#define 	MTPLD     	MTPCTR,2
#define 	MTPTOUT   	MTPCTR,6
#define 	MTPBUSY   	MTPCTR,7

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

;----- DKWP1 Bits ---------------------------------------------------

#define 	P10DKW    	DKWP1,0
#define 	P11DKW    	DKWP1,1
#define 	P12DKW    	DKWP1,2
#define 	P13DKW    	DKWP1,3
#define 	P14DKW    	DKWP1,4
#define 	P15DKW    	DKWP1,5
#define 	P16DKW    	DKWP1,6

;----- IOP2 Bits ---------------------------------------------------

#define 	P21D      	IOP2,1
#define 	P22D      	IOP2,2
#define 	P24D      	IOP2,4
#define 	P25D      	IOP2,5
#define 	P26D      	IOP2,6
#define 	P27D      	IOP2,7

;----- OEP2 Bits ---------------------------------------------------

#define 	P21OE     	OEP2,1
#define 	P22OE     	OEP2,2
#define 	P24OE     	OEP2,4
#define 	P25OE     	OEP2,5
#define 	P26OE     	OEP2,6
#define 	P27OE     	OEP2,7

;----- PUP2 Bits ---------------------------------------------------

#define 	P21PU     	PUP2,1
#define 	P22PU     	PUP2,2
#define 	P24PU     	PUP2,4
#define 	P25PU     	PUP2,5
#define 	P26PU     	PUP2,6
#define 	P27PU     	PUP2,7

;----- DKWP2 Bits ---------------------------------------------------

#define 	P21DKW    	DKWP2,1
#define 	P22DKW    	DKWP2,2
#define 	P24DKW    	DKWP2,4
#define 	P25DKW    	DKWP2,5
#define 	P26DKW    	DKWP2,6
#define 	P27DKW    	DKWP2,7

;----- T0CR Bits ---------------------------------------------------

#define 	T0PRS0    	T0CR,0
#define 	T0PRS1    	T0CR,1
#define 	T0PRS2    	T0CR,2
#define 	T0CKS0    	T0CR,3
#define 	T0CKS1    	T0CR,4
#define 	T0MOD0    	T0CR,5
#define 	T0MOD1    	T0CR,6
#define 	T0EN      	T0CR,7

;----- T0LOADH Bits ---------------------------------------------------

#define 	T0LOAD8   	T0LOADH,0
#define 	T0LOAD9   	T0LOADH,1
#define 	T0LOAD10  	T0LOADH,2
#define 	T0LOAD11  	T0LOADH,3
#define 	T0LOAD12  	T0LOADH,4
#define 	T0LOAD13  	T0LOADH,5
#define 	T0LOAD14  	T0LOADH,6
#define 	T0LOAD15  	T0LOADH,7

;----- T0LOADL Bits ---------------------------------------------------

#define 	T0LOAD0   	T0LOADL,0
#define 	T0LOAD1   	T0LOADL,1
#define 	T0LOAD2   	T0LOADL,2
#define 	T0LOAD3   	T0LOADL,3
#define 	T0LOAD4   	T0LOADL,4
#define 	T0LOAD5   	T0LOADL,5
#define 	T0LOAD6   	T0LOADL,6
#define 	T0LOAD7   	T0LOADL,7

;----- T0LATRH Bits ---------------------------------------------------

#define 	T0LATR8   	T0LATRH,0
#define 	T0LATR9   	T0LATRH,1
#define 	T0LATR10  	T0LATRH,2
#define 	T0LATR11  	T0LATRH,3
#define 	T0LATR12  	T0LATRH,4
#define 	T0LATR13  	T0LATRH,5
#define 	T0LATR14  	T0LATRH,6
#define 	T0LATR15  	T0LATRH,7

;----- T0LATRL Bits ---------------------------------------------------

#define 	T0LATR0   	T0LATRL,0
#define 	T0LATR1   	T0LATRL,1
#define 	T0LATR2   	T0LATRL,2
#define 	T0LATR3   	T0LATRL,3
#define 	T0LATR4   	T0LATRL,4
#define 	T0LATR5   	T0LATRL,5
#define 	T0LATR6   	T0LATRL,6
#define 	T0LATR7   	T0LATRL,7

;----- T0LATFH Bits ---------------------------------------------------

#define 	T0LATF8   	T0LATFH,0
#define 	T0LATF9   	T0LATFH,1
#define 	T0LATF10  	T0LATFH,2
#define 	T0LATF11  	T0LATFH,3
#define 	T0LATF12  	T0LATFH,4
#define 	T0LATF13  	T0LATFH,5
#define 	T0LATF14  	T0LATFH,6
#define 	T0LATF15  	T0LATFH,7

;----- T0LATFL Bits ---------------------------------------------------

#define 	T0LATF0   	T0LATFL,0
#define 	T0LATF1   	T0LATFL,1
#define 	T0LATF2   	T0LATFL,2
#define 	T0LATF3   	T0LATFL,3
#define 	T0LATF4   	T0LATFL,4
#define 	T0LATF5   	T0LATFL,5
#define 	T0LATF6   	T0LATFL,6
#define 	T0LATF7   	T0LATFL,7

;----- T1CR Bits ---------------------------------------------------

#define 	T1PRS0    	T1CR,0
#define 	T1PRS1    	T1CR,1
#define 	T1PRS2    	T1CR,2
#define 	T1CKS0    	T1CR,3
#define 	T1CKS1    	T1CR,4
#define 	T1MOD0    	T1CR,5
#define 	T1MOD1    	T1CR,6
#define 	T1EN      	T1CR,7

;----- T1DATA Bits ---------------------------------------------------

#define 	T1DATA0   	T1DATA,0
#define 	T1DATA1   	T1DATA,1
#define 	T1DATA2   	T1DATA,2
#define 	T1DATA3   	T1DATA,3
#define 	T1DATA4   	T1DATA,4
#define 	T1DATA5   	T1DATA,5
#define 	T1DATA6   	T1DATA,6
#define 	T1DATA7   	T1DATA,7

;----- T1LOAD Bits ---------------------------------------------------

#define 	T1LOAD0   	T1LOAD,0
#define 	T1LOAD1   	T1LOAD,1
#define 	T1LOAD2   	T1LOAD,2
#define 	T1LOAD3   	T1LOAD,3
#define 	T1LOAD4   	T1LOAD,4
#define 	T1LOAD5   	T1LOAD,5
#define 	T1LOAD6   	T1LOAD,6
#define 	T1LOAD7   	T1LOAD,7

;----- OPCR0 Bits ---------------------------------------------------

#define 	OPAE      	OPCR0,7

;----- DKW0 Bits ---------------------------------------------------

#define 	IROS      	DKW0,6
#define 	DKWE      	DKW0,7

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
