		LIST
;mc32p5312.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P5312
;		MESSG "Processor-header file mismatch.  Verify selected processor."
;	ENDIF

;==========================================================================
;
;	Register Definitions
;
;==========================================================================

;----- Register Files ---------------------------------------------------

LCDDS00   		EQU		H'0100'
LCDDS01   		EQU		H'0101'
LCDDS02   		EQU		H'0102'
LCDDS03   		EQU		H'0103'
LCDDS04   		EQU		H'0104'
LCDDS05   		EQU		H'0105'
LCDDS06   		EQU		H'0106'
LCDDS07   		EQU		H'0107'
LCDDS08   		EQU		H'0108'
LCDDS09   		EQU		H'0109'
LCDDS10   		EQU		H'010A'
LCDDS11   		EQU		H'010B'
LCDDS12   		EQU		H'010C'
LCDDS13   		EQU		H'010D'
LCDDS14   		EQU		H'010E'
LCDDS15   		EQU		H'010F'
LCDDS16   		EQU		H'0110'
LCDDS17   		EQU		H'0111'
LCDDS18   		EQU		H'0112'
LCDDS19   		EQU		H'0113'
LCDDS20   		EQU		H'0114'
LCDDS21   		EQU		H'0115'
LCDDS22   		EQU		H'0116'
LCDDS23   		EQU		H'0117'
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
LXTCR     		EQU		H'01BE'
IOP0      		EQU		H'01C0'
OEP0      		EQU		H'01C1'
PUP0      		EQU		H'01C2'
DKWP0     		EQU		H'01C3'
IOP1      		EQU		H'01C4'
OEP1      		EQU		H'01C5'
PUP1      		EQU		H'01C6'
DKWP1     		EQU		H'01C7'
T0CR      		EQU		H'01C8'
T0CNT     		EQU		H'01C9'
T0LOAD    		EQU		H'01CA'
T0DATA    		EQU		H'01CB'
T1CR      		EQU		H'01CC'
T1CNT     		EQU		H'01CD'
T1LOAD    		EQU		H'01CE'
T1DATA    		EQU		H'01CF'
LCDCR0    		EQU		H'01D0'
LCDCR1    		EQU		H'01D1'
LCDSP0    		EQU		H'01D2'
LCDSP1    		EQU		H'01D3'
DKW       		EQU		H'01D4'

;----- LCDDS00 Bits ---------------------------------------------------

#define 	COM0SEG00 	LCDDS00,0
#define 	COM1SEG00 	LCDDS00,1
#define 	COM2SEG00 	LCDDS00,2
#define 	COM3SEG00 	LCDDS00,3

;----- LCDDS01 Bits ---------------------------------------------------

#define 	COM0SEG01 	LCDDS01,0
#define 	COM1SEG01 	LCDDS01,1
#define 	COM2SEG01 	LCDDS01,2
#define 	COM3SEG01 	LCDDS01,3

;----- LCDDS02 Bits ---------------------------------------------------

#define 	COM0SEG02 	LCDDS02,0
#define 	COM1SEG02 	LCDDS02,1
#define 	COM2SEG02 	LCDDS02,2
#define 	COM3SEG02 	LCDDS02,3

;----- LCDDS03 Bits ---------------------------------------------------

#define 	COM0SEG03 	LCDDS03,0
#define 	COM1SEG03 	LCDDS03,1
#define 	COM2SEG03 	LCDDS03,2
#define 	COM3SEG03 	LCDDS03,3

;----- LCDDS04 Bits ---------------------------------------------------

#define 	COM0SEG04 	LCDDS04,0
#define 	COM1SEG04 	LCDDS04,1
#define 	COM2SEG04 	LCDDS04,2
#define 	COM3SEG04 	LCDDS04,3

;----- LCDDS05 Bits ---------------------------------------------------

#define 	COM0SEG05 	LCDDS05,0
#define 	COM1SEG05 	LCDDS05,1
#define 	COM2SEG05 	LCDDS05,2
#define 	COM3SEG05 	LCDDS05,3

;----- LCDDS06 Bits ---------------------------------------------------

#define 	COM0SEG06 	LCDDS06,0
#define 	COM1SEG06 	LCDDS06,1
#define 	COM2SEG06 	LCDDS06,2
#define 	COM3SEG06 	LCDDS06,3

;----- LCDDS07 Bits ---------------------------------------------------

#define 	COM0SEG07 	LCDDS07,0
#define 	COM1SEG07 	LCDDS07,1
#define 	COM2SEG07 	LCDDS07,2
#define 	COM3SEG07 	LCDDS07,3

;----- LCDDS08 Bits ---------------------------------------------------

#define 	COM0SEG08 	LCDDS08,0
#define 	COM1SEG08 	LCDDS08,1
#define 	COM2SEG08 	LCDDS08,2
#define 	COM3SEG08 	LCDDS08,3

;----- LCDDS09 Bits ---------------------------------------------------

#define 	COM0SEG09 	LCDDS09,0
#define 	COM1SEG09 	LCDDS09,1
#define 	COM2SEG09 	LCDDS09,2
#define 	COM3SEG09 	LCDDS09,3

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

;----- LCDDS14 Bits ---------------------------------------------------

#define 	COM0SEG14 	LCDDS14,0
#define 	COM1SEG14 	LCDDS14,1
#define 	COM2SEG14 	LCDDS14,2
#define 	COM3SEG14 	LCDDS14,3

;----- LCDDS15 Bits ---------------------------------------------------

#define 	COM0SEG15 	LCDDS15,0
#define 	COM1SEG15 	LCDDS15,1
#define 	COM2SEG15 	LCDDS15,2
#define 	COM3SEG15 	LCDDS15,3

;----- LCDDS16 Bits ---------------------------------------------------

#define 	COM0SEG16 	LCDDS16,0
#define 	COM1SEG16 	LCDDS16,1
#define 	COM2SEG16 	LCDDS16,2
#define 	COM3SEG16 	LCDDS16,3

;----- LCDDS17 Bits ---------------------------------------------------

#define 	COM0SEG17 	LCDDS17,0
#define 	COM1SEG17 	LCDDS17,1
#define 	COM2SEG17 	LCDDS17,2
#define 	COM3SEG17 	LCDDS17,3

;----- LCDDS18 Bits ---------------------------------------------------

#define 	COM0SEG18 	LCDDS18,0
#define 	COM1SEG18 	LCDDS18,1
#define 	COM2SEG18 	LCDDS18,2
#define 	COM3SEG18 	LCDDS18,3

;----- LCDDS19 Bits ---------------------------------------------------

#define 	COM0SEG19 	LCDDS19,0
#define 	COM1SEG19 	LCDDS19,1
#define 	COM2SEG19 	LCDDS19,2
#define 	COM3SEG19 	LCDDS19,3

;----- LCDDS20 Bits ---------------------------------------------------

#define 	COM0SEG20 	LCDDS20,0
#define 	COM1SEG20 	LCDDS20,1
#define 	COM2SEG20 	LCDDS20,2
#define 	COM3SEG20 	LCDDS20,3

;----- LCDDS21 Bits ---------------------------------------------------

#define 	COM0SEG21 	LCDDS21,0
#define 	COM1SEG21 	LCDDS21,1
#define 	COM2SEG21 	LCDDS21,2
#define 	COM3SEG21 	LCDDS21,3

;----- LCDDS22 Bits ---------------------------------------------------

#define 	COM0SEG22 	LCDDS22,0
#define 	COM1SEG22 	LCDDS22,1
#define 	COM2SEG22 	LCDDS22,2
#define 	COM3SEG22 	LCDDS22,3

;----- LCDDS23 Bits ---------------------------------------------------

#define 	COM0SEG23 	LCDDS23,0
#define 	COM1SEG23 	LCDDS23,1
#define 	COM2SEG23 	LCDDS23,2
#define 	COM3SEG23 	LCDDS23,3

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
#define 	LVDIE     	INTE,5

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	LVDIF     	INTF,5

;----- OSCM Bits ---------------------------------------------------

#define 	HFEN      	OSCM,0
#define 	LFEN      	OSCM,1
#define 	CLKS      	OSCM,2
#define 	STBH      	OSCM,4
#define 	STBL      	OSCM,5

;----- LVDCR Bits ---------------------------------------------------

#define 	LVDF      	LVDCR,0
#define 	LVDS0     	LVDCR,3
#define 	LVDS1     	LVDCR,4
#define 	LVDS2     	LVDCR,5
#define 	LVDS3     	LVDCR,6
#define 	LVDEN     	LVDCR,7

;----- LXTCR Bits ---------------------------------------------------

#define 	LPEN0     	LXTCR,0
#define 	LPEN1     	LXTCR,1
#define 	LPEN2     	LXTCR,2
#define 	FILS      	LXTCR,3
#define 	VDLSEL    	LXTCR,4

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

;----- DKWP0 Bits ---------------------------------------------------

#define 	P00DKW    	DKWP0,0
#define 	P01DKW    	DKWP0,1
#define 	P02DKW    	DKWP0,2
#define 	P03DKW    	DKWP0,3
#define 	P04DKW    	DKWP0,4
#define 	P05DKW    	DKWP0,5
#define 	P06DKW    	DKWP0,6
#define 	P07DKW    	DKWP0,7

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
#define 	TPR2      	T1CR,2
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

;----- LCDCR0 Bits ---------------------------------------------------

#define 	LCDRS0    	LCDCR0,0
#define 	LCDRS1    	LCDCR0,1
#define 	LCDSPEED  	LCDCR0,2
#define 	LCDSP0    	LCDCR0,3
#define 	LCDSP1    	LCDCR0,4
#define 	LCDEN     	LCDCR0,5

;----- LCDCR1 Bits ---------------------------------------------------

#define 	FLCD0     	LCDCR1,0
#define 	FLCD1     	LCDCR1,1
#define 	LCDCKS    	LCDCR1,2
#define 	LCDM      	LCDCR1,3
#define 	LCDDRVP02 	LCDCR1,4

;----- LCDSP0 Bits ---------------------------------------------------

#define 	LCDSP03   	LCDSP0,3
#define 	LCDSP04   	LCDSP0,4

;----- LCDSP1 Bits ---------------------------------------------------

#define 	LCDSP10   	LCDSP1,0
#define 	LCDSP11   	LCDSP1,1
#define 	LCDSP12   	LCDSP1,2
#define 	LCDSP13   	LCDSP1,3
#define 	LCDSP14   	LCDSP1,4
#define 	LCDSP15   	LCDSP1,5
#define 	LCDSP16   	LCDSP1,6

;----- DKW Bits ---------------------------------------------------

#define 	IROUTS    	DKW,0
#define 	IROUTEN   	DKW,1
#define 	RSEL      	DKW,2
#define 	WSEL0     	DKW,3
#define 	WSEL1     	DKW,4
#define 	DKWE      	DKW,5

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
