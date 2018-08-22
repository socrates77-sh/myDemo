		LIST
;mc32p7031.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P7031
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

HIBYTE    		EQU		H'0082'
FSR0      		EQU		H'0083'
FSR1      		EQU		H'0084'
PFLAG     		EQU		H'0086'
ANSEL     		EQU		H'00AE'
VREF      		EQU		H'00AF'
ADCR      		EQU		H'00B1'
ADRH      		EQU		H'00B2'
ADRL      		EQU		H'00B3'
OEP0      		EQU		H'00B8'
PEDGE     		EQU		H'00BF'
OEP4      		EQU		H'00C4'
OEP5      		EQU		H'00C5'
INTF      		EQU		H'00C8'
INTE      		EQU		H'00C9'
OSCM      		EQU		H'00CA'
WDTR      		EQU		H'00CC'
T0D       		EQU		H'00CD'
PCL       		EQU		H'00CE'
PCH       		EQU		H'00CF'
IOP0      		EQU		H'00D0'
IOP4      		EQU		H'00D4'
IOP5      		EQU		H'00D5'
TXCR      		EQU		H'00D8'
T0CR      		EQU		H'00DA'
T0C       		EQU		H'00DB'
T1CR      		EQU		H'00DC'
T1C       		EQU		H'00DD'
T1D       		EQU		H'00DE'
STKP      		EQU		H'00DF'
PUP0      		EQU		H'00E0'
PUP4      		EQU		H'00E4'
PUP5      		EQU		H'00E5'
INDF      		EQU		H'00E7'
T2CR      		EQU		H'00EC'
T2C       		EQU		H'00ED'
T2D       		EQU		H'00EE'
STK3L     		EQU		H'00F8'
STK3H     		EQU		H'00F9'
STK2L     		EQU		H'00FA'
STK2H     		EQU		H'00FB'
STK1L     		EQU		H'00FC'
STK1H     		EQU		H'00FD'
STK0L     		EQU		H'00FE'
STK0H     		EQU		H'00FF'

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

;----- PFLAG Bits ---------------------------------------------------

#define 	Z         	PFLAG,0
#define 	DC        	PFLAG,1
#define 	C         	PFLAG,2
#define 	LVD24     	PFLAG,4
#define 	LVD36     	PFLAG,5
#define 	NPD       	PFLAG,6
#define 	NT0       	PFLAG,7

;----- ANSEL Bits ---------------------------------------------------

#define 	P40ANS    	ANSEL,0
#define 	P41ANS    	ANSEL,1
#define 	P42ANS    	ANSEL,2
#define 	P43ANS    	ANSEL,3
#define 	P44ANS    	ANSEL,4
#define 	P45ANS    	ANSEL,5

;----- VREF Bits ---------------------------------------------------

#define 	VRS0      	VREF,0
#define 	VRS1      	VREF,1
#define 	VREFS     	VREF,7

;----- ADCR Bits ---------------------------------------------------

#define 	ADCHS0    	ADCR,0
#define 	ADCHS1    	ADCR,1
#define 	ADCHS2    	ADCR,2
#define 	GCHS      	ADCR,4
#define 	ADEOC     	ADCR,5
#define 	ADST      	ADCR,6
#define 	ADON      	ADCR,7

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
#define 	ADCKS0    	ADRL,4
#define 	ADLEN     	ADRL,5
#define 	ADCKS1    	ADRL,6

;----- OEP0 Bits ---------------------------------------------------

#define 	P00OE     	OEP0,0
#define 	P01OE     	OEP0,1
#define 	P02OE     	OEP0,2
#define 	P03OE     	OEP0,3
#define 	P04OE     	OEP0,4

;----- PEDGE Bits ---------------------------------------------------

#define 	MINT00    	PEDGE,3
#define 	MINT01    	PEDGE,4

;----- OEP4 Bits ---------------------------------------------------

#define 	P40OE     	OEP4,0
#define 	P41OE     	OEP4,1
#define 	P42OE     	OEP4,2
#define 	P43OE     	OEP4,3
#define 	P44OE     	OEP4,4
#define 	P45OE     	OEP4,5

;----- OEP5 Bits ---------------------------------------------------

#define 	P52OE     	OEP5,2
#define 	P53OE     	OEP5,3
#define 	P54OE     	OEP5,4

;----- INTF Bits ---------------------------------------------------

#define 	INT0IF    	INTF,0
#define 	INT1IF    	INTF,1
#define 	T2IF      	INTF,4
#define 	T0IF      	INTF,5
#define 	T1IF      	INTF,6
#define 	ADIF      	INTF,7

;----- INTE Bits ---------------------------------------------------

#define 	INT0IE    	INTE,0
#define 	INT1IE    	INTE,1
#define 	T2IE      	INTE,4
#define 	T0IE      	INTE,5
#define 	T1IE      	INTE,6
#define 	ADIE      	INTE,7

;----- OSCM Bits ---------------------------------------------------

#define 	HOFF      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	CPUM0     	OSCM,3
#define 	CPUM1     	OSCM,4

;----- WDTR Bits ---------------------------------------------------

#define 	WDTR0     	WDTR,0
#define 	WDTR1     	WDTR,1
#define 	WDTR2     	WDTR,2
#define 	WDTR3     	WDTR,3
#define 	WDTR4     	WDTR,4
#define 	WDTR5     	WDTR,5
#define 	WDTR6     	WDTR,6
#define 	WDTR7     	WDTR,7

;----- T0D Bits ---------------------------------------------------

#define 	T0D0      	T0D,0
#define 	T0D1      	T0D,1
#define 	T0D2      	T0D,2
#define 	T0D3      	T0D,3
#define 	T0D4      	T0D,4
#define 	T0D5      	T0D,5
#define 	T0D6      	T0D,6
#define 	T0D7      	T0D,7

;----- PCL Bits ---------------------------------------------------

#define 	PC0       	PCL,0
#define 	PC1       	PCL,1
#define 	PC2       	PCL,2
#define 	PC3       	PCL,3
#define 	PC4       	PCL,4
#define 	PC5       	PCL,5
#define 	PC6       	PCL,6
#define 	PC7       	PCL,7

;----- PCH Bits ---------------------------------------------------

#define 	PC8       	PCH,0
#define 	PC9       	PCH,1
#define 	PC10      	PCH,2

;----- IOP0 Bits ---------------------------------------------------

#define 	P00D      	IOP0,0
#define 	P01D      	IOP0,1
#define 	P02D      	IOP0,2
#define 	P03D      	IOP0,3
#define 	P04D      	IOP0,4

;----- IOP4 Bits ---------------------------------------------------

#define 	P40D      	IOP4,0
#define 	P41D      	IOP4,1
#define 	P42D      	IOP4,2
#define 	P43D      	IOP4,3
#define 	P44D      	IOP4,4
#define 	P45D      	IOP4,5

;----- IOP5 Bits ---------------------------------------------------

#define 	P52D      	IOP5,2
#define 	P53D      	IOP5,3
#define 	P54D      	IOP5,4

;----- TXCR Bits ---------------------------------------------------

#define 	T0GE      	TXCR,1
#define 	T0PTSX    	TXCR,2
#define 	T1PTSX    	TXCR,3
#define 	T2PTSX    	TXCR,4

;----- T0CR Bits ---------------------------------------------------

#define 	PWM0OE    	T0CR,0
#define 	BUZ0OE    	T0CR,1
#define 	T0ALOAD   	T0CR,2
#define 	T0PTS     	T0CR,3
#define 	T0PR0     	T0CR,4
#define 	T0PR1     	T0CR,5
#define 	T0PR2     	T0CR,6
#define 	TC0EN     	T0CR,7

;----- T0C Bits ---------------------------------------------------

#define 	T0C0      	T0C,0
#define 	T0C1      	T0C,1
#define 	T0C2      	T0C,2
#define 	T0C3      	T0C,3
#define 	T0C4      	T0C,4
#define 	T0C5      	T0C,5
#define 	T0C6      	T0C,6
#define 	T0C7      	T0C,7

;----- T1CR Bits ---------------------------------------------------

#define 	PWM1OE    	T1CR,0
#define 	BUZ1OE    	T1CR,1
#define 	T1ALOAD   	T1CR,2
#define 	T1PTS     	T1CR,3
#define 	T1PR0     	T1CR,4
#define 	T1PR1     	T1CR,5
#define 	T1PR2     	T1CR,6
#define 	TC1EN     	T1CR,7

;----- T1C Bits ---------------------------------------------------

#define 	T1C0      	T1C,0
#define 	T1C1      	T1C,1
#define 	T1C2      	T1C,2
#define 	T1C3      	T1C,3
#define 	T1C4      	T1C,4
#define 	T1C5      	T1C,5
#define 	T1C6      	T1C,6
#define 	T1C7      	T1C,7

;----- T1D Bits ---------------------------------------------------

#define 	T1D0      	T1D,0
#define 	T1D1      	T1D,1
#define 	T1D2      	T1D,2
#define 	T1D3      	T1D,3
#define 	T1D4      	T1D,4
#define 	T1D5      	T1D,5
#define 	T1D6      	T1D,6
#define 	T1D7      	T1D,7

;----- STKP Bits ---------------------------------------------------

#define 	STKP0     	STKP,0
#define 	STKP1     	STKP,1
#define 	STKP2     	STKP,2
#define 	GIE       	STKP,7

;----- PUP0 Bits ---------------------------------------------------

#define 	P00PU     	PUP0,0
#define 	P01PU     	PUP0,1
#define 	P02PU     	PUP0,2
#define 	P03PU     	PUP0,3
#define 	P04PU     	PUP0,4

;----- PUP4 Bits ---------------------------------------------------

#define 	P40PU     	PUP4,0
#define 	P41PU     	PUP4,1
#define 	P42PU     	PUP4,2
#define 	P43PU     	PUP4,3
#define 	P44PU     	PUP4,4
#define 	P45PU     	PUP4,5

;----- PUP5 Bits ---------------------------------------------------

#define 	P52PU     	PUP5,2
#define 	P53PU     	PUP5,3
#define 	P54PU     	PUP5,4

;----- INDF Bits ---------------------------------------------------

#define 	INDF0     	INDF,0
#define 	INDF1     	INDF,1
#define 	INDF2     	INDF,2
#define 	INDF3     	INDF,3
#define 	INDF4     	INDF,4
#define 	INDF5     	INDF,5
#define 	INDF6     	INDF,6
#define 	INDF7     	INDF,7

;----- T2CR Bits ---------------------------------------------------

#define 	PWM2OE    	T2CR,0
#define 	BUZ2OE    	T2CR,1
#define 	T2ALOAD   	T2CR,2
#define 	T2PTS     	T2CR,3
#define 	T2PR0     	T2CR,4
#define 	T2PR1     	T2CR,5
#define 	T2PR2     	T2CR,6
#define 	TC2EN     	T2CR,7

;----- T2C Bits ---------------------------------------------------

#define 	T2C0      	T2C,0
#define 	T2C1      	T2C,1
#define 	T2C2      	T2C,2
#define 	T2C3      	T2C,3
#define 	T2C4      	T2C,4
#define 	T2C5      	T2C,5
#define 	T2C6      	T2C,6
#define 	T2C7      	T2C,7

;----- T2D Bits ---------------------------------------------------

#define 	T2D0      	T2D,0
#define 	T2D1      	T2D,1
#define 	T2D2      	T2D,2
#define 	T2D3      	T2D,3
#define 	T2D4      	T2D,4
#define 	T2D5      	T2D,5
#define 	T2D6      	T2D,6
#define 	T2D7      	T2D,7

;==========================================================================
;
;	RAM Definition
;
;==========================================================================

	__MAXRAM H'FF'
	__BADRAM H'80'-H'81'
	__BADRAM H'85'
	__BADRAM H'87'-H'AD'
	__BADRAM H'B0'
	__BADRAM H'B4'-H'B7'
	__BADRAM H'B9'-H'BE'
	__BADRAM H'C0'-H'C3'
	__BADRAM H'C6'-H'C7'
	__BADRAM H'CB'
	__BADRAM H'D1'-H'D3'
	__BADRAM H'D6'-H'D7'
	__BADRAM H'D9'
	__BADRAM H'E1'-H'E3'
	__BADRAM H'E6'
	__BADRAM H'E8'-H'EB'
	__BADRAM H'E7'-H'F7'


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
