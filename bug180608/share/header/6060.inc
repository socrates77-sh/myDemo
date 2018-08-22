		LIST
;mc30p6080.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __30P6080
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
P0        		EQU		H'0005'
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
DDR0      		EQU		H'0045'
DDR1      		EQU		H'0046'
PWMCR     		EQU		H'0048'
T1DAT1    		EQU		H'0049'
T1DAT2    		EQU		H'004A'
TM0CR     		EQU		H'004B'
T1CR      		EQU		H'004C'
T1CNT     		EQU		H'004D'
T1LOAD    		EQU		H'004E'
T1DAT0    		EQU		H'004F'

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

;----- P0 Bits ---------------------------------------------------

#define 	P00D      	P0,0
#define 	P01D      	P0,1
#define 	P02D      	P0,2
#define 	P03D      	P0,3

;----- P1 Bits ---------------------------------------------------

#define 	P10D      	P1,0
#define 	P11D      	P1,1
#define 	P12D      	P1,2
#define 	P13D      	P1,3
#define 	P14D      	P1,4
#define 	P15D      	P1,5
#define 	P16D      	P1,6
#define 	P17D      	P1,7

;----- MCR Bits ---------------------------------------------------

#define 	LVDEN     	MCR,0
#define 	LVDSEL0   	MCR,1
#define 	LVDSEL1   	MCR,2
#define 	LVDSEL2   	MCR,3
#define 	LVDSEL3   	MCR,4
#define 	LVDF      	MCR,5
#define 	EIS       	MCR,6
#define 	WDTEN     	MCR,7

;----- KBIM Bits ---------------------------------------------------

#define 	KBIM0     	KBIM,0
#define 	KBIM1     	KBIM,1
#define 	KBIM2     	KBIM,2
#define 	KBIM3     	KBIM,3
#define 	KBIM4     	KBIM,4
#define 	KBIM5     	KBIM,5
#define 	KBIM6     	KBIM,6
#define 	KBIM7     	KBIM,7

;----- PCLATH Bits ---------------------------------------------------

#define 	PCH0      	PCLATH,0
#define 	PCH1      	PCLATH,1

;----- PDCON Bits ---------------------------------------------------

#define 	P00PD     	PDCON,0
#define 	P01PD     	PDCON,1
#define 	P02PD     	PDCON,2
#define 	P03PD     	PDCON,3
#define 	P10PD     	PDCON,4
#define 	P11PD     	PDCON,5
#define 	P12PD     	PDCON,6

;----- ODCON Bits ---------------------------------------------------

#define 	P10OD     	ODCON,0
#define 	P11OD     	ODCON,1
#define 	P12OD     	ODCON,2
#define 	P14OD     	ODCON,4
#define 	P15OD     	ODCON,5
#define 	P16OD     	ODCON,6
#define 	P17OD     	ODCON,7

;----- PUCON Bits ---------------------------------------------------

#define 	P10PU     	PUCON,0
#define 	P11PU     	PUCON,1
#define 	P12PU     	PUCON,2
#define 	P13PU     	PUCON,3
#define 	P14PU     	PUCON,4
#define 	P15PU     	PUCON,5
#define 	P16PU     	PUCON,6
#define 	P17PU     	PUCON,7

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

;----- DDR0 Bits ---------------------------------------------------

#define 	DDR00     	DDR0,0
#define 	DDR01     	DDR0,1
#define 	DDR02     	DDR0,2
#define 	DDR03     	DDR0,3

;----- DDR1 Bits ---------------------------------------------------

#define 	DDR10     	DDR1,0
#define 	DDR11     	DDR1,1
#define 	DDR12     	DDR1,2
#define 	DDR13     	DDR1,3
#define 	DDR14     	DDR1,4
#define 	DDR15     	DDR1,5
#define 	DDR16     	DDR1,6
#define 	DDR17     	DDR1,7

;----- PWMCR Bits ---------------------------------------------------

#define 	PWM2E     	PWMCR,0
#define 	PMW1E     	PWMCR,1
#define 	PWMINV    	PWMCR,2
#define 	PWMMD     	PWMCR,3
#define 	DBLCK     	PWMCR,4
#define 	PWM2OE    	PWMCR,5
#define 	PWM1OE    	PWMCR,6
#define 	PMW0OE    	PWMCR,7

;----- T1DAT1 Bits ---------------------------------------------------

#define 	T1DAT10   	T1DAT1,0
#define 	T1DAT11   	T1DAT1,1
#define 	T1DAT12   	T1DAT1,2
#define 	T1DAT13   	T1DAT1,3
#define 	T1DAT14   	T1DAT1,4
#define 	T1DAT15   	T1DAT1,5
#define 	T1DAT16   	T1DAT1,6
#define 	T1DAT17   	T1DAT1,7

;----- T1DAT2 Bits ---------------------------------------------------

#define 	T1DAT20   	T1DAT2,0
#define 	T1DAT21   	T1DAT2,1
#define 	T1DAT22   	T1DAT2,2
#define 	T1DAT23   	T1DAT2,3
#define 	T1DAT24   	T1DAT2,4
#define 	T1DAT25   	T1DAT2,5
#define 	T1DAT26   	T1DAT2,6
#define 	T1DAT27   	T1DAT2,7

;----- TM0CR Bits ---------------------------------------------------

#define 	T1IF      	TM0CR,0
#define 	T1IE      	TM0CR,1
#define 	TBS       	TM0CR,7

;----- T1CR Bits ---------------------------------------------------

#define 	T1PR0     	T1CR,0
#define 	T1PR1     	T1CR,1
#define 	T1PR2     	T1CR,2
#define 	T1PTS0    	T1CR,3
#define 	T1PTS1    	T1CR,4
#define 	BUZE      	T1CR,5
#define 	PWM0E     	T1CR,6
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

;----- T1DAT0 Bits ---------------------------------------------------

#define 	T1DAT00   	T1DAT0,0
#define 	T1DAT01   	T1DAT0,1
#define 	T1DAT02   	T1DAT0,2
#define 	T1DAT03   	T1DAT0,3
#define 	T1DAT04   	T1DAT0,4
#define 	T1DAT05   	T1DAT0,5
#define 	T1DAT06   	T1DAT0,6
#define 	T1DAT07   	T1DAT0,7

;==========================================================================
;
;	RAM Definition
;
;==========================================================================

	__MAXRAM H'4F'
	__BADRAM H'40'
	__BADRAM H'42'-H'44'
	__BADRAM H'47'


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
