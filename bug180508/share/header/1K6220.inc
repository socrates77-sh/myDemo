		LIST
;mc30p6220.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __30P6220
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

INDF      		EQU		H'0000'
T0CNT     		EQU		H'0001'
PCL       		EQU		H'0002'
STATUS    		EQU		H'0003'
FSR       		EQU		H'0004'
P1        		EQU		H'0006'
MCR       		EQU		H'0008'
KBIM      		EQU		H'0009'
PCLATH    		EQU		H'000A'
PDCON     		EQU		H'000B'
ODCON     		EQU		H'000C'
PUCON     		EQU		H'000D'
INTECON   		EQU		H'000E'
INTFLAG   		EQU		H'000F'
T0CR      		EQU		H'0041'
DDR1      		EQU		H'0046'
TM0CR     		EQU		H'004B'

;----- INDF Bits ---------------------------------------------------

#define 	INDF0     	INDF,0
#define 	INDF1     	INDF,1
#define 	INDF2     	INDF,2
#define 	INDF3     	INDF,3
#define 	INDF4     	INDF,4
#define 	INDF5     	INDF,5
#define 	INDF6     	INDF,6
#define 	INDF7     	INDF,7

;----- T0CNT Bits ---------------------------------------------------

#define 	T0C0      	T0CNT,0
#define 	T0C1      	T0CNT,1
#define 	T0C2      	T0CNT,2
#define 	T0C3      	T0CNT,3
#define 	T0C4      	T0CNT,4
#define 	T0C5      	T0CNT,5
#define 	T0C6      	T0CNT,6
#define 	T0C7      	T0CNT,7

;----- PCL Bits ---------------------------------------------------

#define 	PC0       	PCL,0
#define 	PC1       	PCL,1
#define 	PC2       	PCL,2
#define 	PC3       	PCL,3
#define 	PC4       	PCL,4
#define 	PC5       	PCL,5
#define 	PC6       	PCL,6
#define 	PC7       	PCL,7

;----- STATUS Bits ---------------------------------------------------

#define 	C         	STATUS,0
#define 	DC        	STATUS,1
#define 	Z         	STATUS,2
#define 	PD        	STATUS,3
#define 	TO        	STATUS,4
#define 	RST       	STATUS,7

;----- FSR Bits ---------------------------------------------------

#define 	FSR0      	FSR,0
#define 	FSR1      	FSR,1
#define 	FSR2      	FSR,2
#define 	FSR3      	FSR,3
#define 	FSR4      	FSR,4
#define 	FSR5      	FSR,5

;----- P1 Bits ---------------------------------------------------

#define 	P10D      	P1,0
#define 	P11D      	P1,1
#define 	P12D      	P1,2
#define 	P13D      	P1,3
#define 	P14D      	P1,4
#define 	P15D      	P1,5

;----- MCR Bits ---------------------------------------------------

#define 	EIS       	MCR,6
#define 	WDTEN     	MCR,7

;----- KBIM Bits ---------------------------------------------------

#define 	KBIM0     	KBIM,0
#define 	KBIM1     	KBIM,1
#define 	KBIM2     	KBIM,2
#define 	KBIM3     	KBIM,3
#define 	KBIM4     	KBIM,4
#define 	KBIM5     	KBIM,5

;----- PCLATH Bits ---------------------------------------------------

#define 	PCH0      	PCLATH,0
#define 	PCH1      	PCLATH,1

;----- PDCON Bits ---------------------------------------------------

#define 	P10PD     	PDCON,4
#define 	P11PD     	PDCON,5
#define 	P12PD     	PDCON,6

;----- ODCON Bits ---------------------------------------------------

#define 	P10OD     	ODCON,0
#define 	P11OD     	ODCON,1
#define 	P12OD     	ODCON,2
#define 	P14OD     	ODCON,4
#define 	P15OD     	ODCON,5

;----- PUCON Bits ---------------------------------------------------

#define 	P10PU     	PUCON,0
#define 	P11PU     	PUCON,1
#define 	P12PU     	PUCON,2
#define 	P13PU     	PUCON,3
#define 	P14PU     	PUCON,4
#define 	P15PU     	PUCON,5

;----- INTECON Bits ---------------------------------------------------

#define 	T0IE      	INTECON,0
#define 	KBIE      	INTECON,1
#define 	INTIE     	INTECON,2
#define 	GIE       	INTECON,7

;----- INTFLAG Bits ---------------------------------------------------

#define 	T0IF      	INTFLAG,0
#define 	KBIF      	INTFLAG,1
#define 	INTIF     	INTFLAG,2

;----- T0CR Bits ---------------------------------------------------

#define 	T0PR0     	T0CR,0
#define 	T0PR1     	T0CR,1
#define 	T0PR2     	T0CR,2
#define 	T0PTA     	T0CR,3
#define 	T0SE      	T0CR,4
#define 	T0PTS     	T0CR,5
#define 	INTOM     	T0CR,6

;----- DDR1 Bits ---------------------------------------------------

#define 	DDR10     	DDR1,0
#define 	DDR11     	DDR1,1
#define 	DDR12     	DDR1,2
#define 	DDR13     	DDR1,3
#define 	DDR14     	DDR1,4
#define 	DDR15     	DDR1,5

;----- TM0CR Bits ---------------------------------------------------

#define 	TBIS      	TM0CR,6

;==========================================================================
;
;	RAM Definition
;
;==========================================================================

	__MAXRAM H'4F'
	__BADRAM H'40'
	__BADRAM H'42'-H'45'
	__BADRAM H'47'-H'4A'


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
