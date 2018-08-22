		LIST
;mc31p11.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __31P11
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

INDF      		EQU		H'0000'
FSR       		EQU		H'0001'
PCL       		EQU		H'0002'
PFLAG     		EQU		H'0003'
MCR       		EQU		H'0004'
INTE      		EQU		H'0005'
INTF      		EQU		H'0006'
IOP0      		EQU		H'0007'
OEP0      		EQU		H'0008'
PUP0      		EQU		H'0009'
DKWP0     		EQU		H'000A'
IOP1      		EQU		H'000B'
OEP1      		EQU		H'000C'
PUP1      		EQU		H'000D'
DKWP1     		EQU		H'000E'
DKW       		EQU		H'000F'

;----- INDF Bits ---------------------------------------------------

#define 	INDF0     	INDF,0
#define 	INDF1     	INDF,1
#define 	INDF2     	INDF,2
#define 	INDF3     	INDF,3
#define 	INDF4     	INDF,4
#define 	INDF5     	INDF,5
#define 	INDF6     	INDF,6
#define 	INDF7     	INDF,7

;----- FSR Bits ---------------------------------------------------

#define 	FSR0      	FSR,0
#define 	FSR1      	FSR,1
#define 	FSR2      	FSR,2
#define 	FSR3      	FSR,3
#define 	FSR4      	FSR,4
#define 	FSR5      	FSR,5
#define 	FSR6      	FSR,6
#define 	FSR7      	FSR,7

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

;----- INTE Bits ---------------------------------------------------

#define 	INT0IE    	INTE,2
#define 	INT1IE    	INTE,3

;----- INTF Bits ---------------------------------------------------

#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3

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
#define 	P06OE     	OEP0,6

;----- PUP0 Bits ---------------------------------------------------

#define 	P00PU     	PUP0,0
#define 	P01PU     	PUP0,1
#define 	P02PU     	PUP0,2
#define 	P03PU     	PUP0,3
#define 	P04PU     	PUP0,4
#define 	P05PU     	PUP0,5
#define 	P06PU     	PUP0,6

;----- DKWP0 Bits ---------------------------------------------------

#define 	P00DKW    	DKWP0,0
#define 	P01DKW    	DKWP0,1
#define 	P02DKW    	DKWP0,2
#define 	P03DKW    	DKWP0,3
#define 	P04DKW    	DKWP0,4
#define 	P05DKW    	DKWP0,5

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

;----- DKWP1 Bits ---------------------------------------------------

#define 	P10DKW    	DKWP1,0
#define 	P11DKW    	DKWP1,1
#define 	P12DKW    	DKWP1,2
#define 	P13DKW    	DKWP1,3
#define 	P14DKW    	DKWP1,4
#define 	P15DKW    	DKWP1,5
#define 	P16DKW    	DKWP1,6

;----- DKW Bits ---------------------------------------------------

#define 	DSEL0     	DKW,0
#define 	DSEL1     	DKW,1
#define 	WSEL0     	DKW,2
#define 	WSEL1     	DKW,3
#define 	LSEL0     	DKW,4
#define 	LSEL1     	DKW,5
#define 	RSEL      	DKW,6
#define 	DKWE      	DKW,7

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
