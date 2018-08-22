		LIST
;mc32p5314.inc    Standard Header File, Version 1.00 by Sinomcu
		NOLIST

;==========================================================================
;
;	Verify Processor
;
;==========================================================================

;	IFNDEF __32P5314
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
LCDDS24   		EQU		H'0118'
LCDDS25   		EQU		H'0119'
LCDDS26   		EQU		H'011A'
LCDDS27   		EQU		H'011B'
LCDDS28   		EQU		H'011C'
LCDDS29   		EQU		H'011D'
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
LCDIOSP1  		EQU		H'01C7'
IOP2      		EQU		H'01C8'
OEP2      		EQU		H'01C9'
PUP2      		EQU		H'01CA'
LCDIOSP2  		EQU		H'01CB'
IOP3      		EQU		H'01CC'
OEP3      		EQU		H'01CD'
PUP3      		EQU		H'01CE'
LCDIOSP3  		EQU		H'01CF'
IOP4      		EQU		H'01D0'
OEP4      		EQU		H'01D1'
PUP4      		EQU		H'01D2'
LCDIOSP4  		EQU		H'01D3'
IOP5      		EQU		H'01D4'
OEP5      		EQU		H'01D5'
PUP5      		EQU		H'01D6'
LCDIOSP5  		EQU		H'01D7'
T0CR0     		EQU		H'01D8'
T0CR1     		EQU		H'01D9'
T0LOADH   		EQU		H'01DC'
T0LOADL   		EQU		H'01DD'
T0DATAH   		EQU		H'01DE'
T0DATAL   		EQU		H'01DF'
T0LATRH   		EQU		H'01E0'
T0LATRL   		EQU		H'01E1'
T0LATFH   		EQU		H'01E2'
T0LATFL   		EQU		H'01E3'
T1CR      		EQU		H'01E4'
T1DATA    		EQU		H'01E5'
T1LOAD    		EQU		H'01E6'
ADCR0     		EQU		H'01E8'
ADCR1     		EQU		H'01E9'
ADCR2     		EQU		H'01EA'
ADRH      		EQU		H'01EC'
ADRL      		EQU		H'01ED'
OPCR0     		EQU		H'01F0'
OPCR1     		EQU		H'01F1'
LCDCR0    		EQU		H'01F2'
LCDCR1    		EQU		H'01F3'
DKW       		EQU		H'01F4'
KBCR      		EQU		H'01F5'
LCDDRV    		EQU		H'01F6'

;----- LCDDS00 Bits ---------------------------------------------------

#define 	COM0SEG00 	LCDDS00,0
#define 	COM1SEG00 	LCDDS00,1
#define 	COM2SEG00 	LCDDS00,2
#define 	COM3SEG00 	LCDDS00,3
#define 	COM4SEG00 	LCDDS00,4

;----- LCDDS01 Bits ---------------------------------------------------

#define 	COM0SEG01 	LCDDS01,0
#define 	COM1SEG01 	LCDDS01,1
#define 	COM2SEG01 	LCDDS01,2
#define 	COM3SEG01 	LCDDS01,3
#define 	COM4SEG01 	LCDDS01,4

;----- LCDDS02 Bits ---------------------------------------------------

#define 	COM0SEG02 	LCDDS02,0
#define 	COM1SEG02 	LCDDS02,1
#define 	COM2SEG02 	LCDDS02,2
#define 	COM3SEG02 	LCDDS02,3
#define 	COM4SEG02 	LCDDS02,4

;----- LCDDS03 Bits ---------------------------------------------------

#define 	COM0SEG03 	LCDDS03,0
#define 	COM1SEG03 	LCDDS03,1
#define 	COM2SEG03 	LCDDS03,2
#define 	COM3SEG03 	LCDDS03,3
#define 	COM4SEG03 	LCDDS03,4

;----- LCDDS04 Bits ---------------------------------------------------

#define 	COM0SEG04 	LCDDS04,0
#define 	COM1SEG04 	LCDDS04,1
#define 	COM2SEG04 	LCDDS04,2
#define 	COM3SEG04 	LCDDS04,3
#define 	COM4SEG04 	LCDDS04,4

;----- LCDDS05 Bits ---------------------------------------------------

#define 	COM0SEG05 	LCDDS05,0
#define 	COM1SEG05 	LCDDS05,1
#define 	COM2SEG05 	LCDDS05,2
#define 	COM3SEG05 	LCDDS05,3
#define 	COM4SEG05 	LCDDS05,4

;----- LCDDS06 Bits ---------------------------------------------------

#define 	COM0SEG06 	LCDDS06,0
#define 	COM1SEG06 	LCDDS06,1
#define 	COM2SEG06 	LCDDS06,2
#define 	COM3SEG06 	LCDDS06,3
#define 	COM4SEG06 	LCDDS06,4

;----- LCDDS07 Bits ---------------------------------------------------

#define 	COM0SEG07 	LCDDS07,0
#define 	COM1SEG07 	LCDDS07,1
#define 	COM2SEG07 	LCDDS07,2
#define 	COM3SEG07 	LCDDS07,3
#define 	COM4SEG07 	LCDDS07,4

;----- LCDDS08 Bits ---------------------------------------------------

#define 	COM0SEG08 	LCDDS08,0
#define 	COM1SEG08 	LCDDS08,1
#define 	COM2SEG08 	LCDDS08,2
#define 	COM3SEG08 	LCDDS08,3
#define 	COM4SEG08 	LCDDS08,4

;----- LCDDS09 Bits ---------------------------------------------------

#define 	COM0SEG09 	LCDDS09,0
#define 	COM1SEG09 	LCDDS09,1
#define 	COM2SEG09 	LCDDS09,2
#define 	COM3SEG09 	LCDDS09,3
#define 	COM4SEG09 	LCDDS09,4

;----- LCDDS10 Bits ---------------------------------------------------

#define 	COM0SEG10 	LCDDS10,0
#define 	COM1SEG10 	LCDDS10,1
#define 	COM2SEG10 	LCDDS10,2
#define 	COM3SEG10 	LCDDS10,3
#define 	COM4SEG10 	LCDDS10,4

;----- LCDDS11 Bits ---------------------------------------------------

#define 	COM0SEG11 	LCDDS11,0
#define 	COM1SEG11 	LCDDS11,1
#define 	COM2SEG11 	LCDDS11,2
#define 	COM3SEG11 	LCDDS11,3
#define 	COM4SEG11 	LCDDS11,4

;----- LCDDS12 Bits ---------------------------------------------------

#define 	COM0SEG12 	LCDDS12,0
#define 	COM1SEG12 	LCDDS12,1
#define 	COM2SEG12 	LCDDS12,2
#define 	COM3SEG12 	LCDDS12,3
#define 	COM4SEG12 	LCDDS12,4

;----- LCDDS13 Bits ---------------------------------------------------

#define 	COM0SEG13 	LCDDS13,0
#define 	COM1SEG13 	LCDDS13,1
#define 	COM2SEG13 	LCDDS13,2
#define 	COM3SEG13 	LCDDS13,3
#define 	COM4SEG13 	LCDDS13,4

;----- LCDDS14 Bits ---------------------------------------------------

#define 	COM0SEG14 	LCDDS14,0
#define 	COM1SEG14 	LCDDS14,1
#define 	COM2SEG14 	LCDDS14,2
#define 	COM3SEG14 	LCDDS14,3
#define 	COM4SEG14 	LCDDS14,4

;----- LCDDS15 Bits ---------------------------------------------------

#define 	COM0SEG15 	LCDDS15,0
#define 	COM1SEG15 	LCDDS15,1
#define 	COM2SEG15 	LCDDS15,2
#define 	COM3SEG15 	LCDDS15,3
#define 	COM4SEG15 	LCDDS15,4

;----- LCDDS16 Bits ---------------------------------------------------

#define 	COM0SEG16 	LCDDS16,0
#define 	COM1SEG16 	LCDDS16,1
#define 	COM2SEG16 	LCDDS16,2
#define 	COM3SEG16 	LCDDS16,3
#define 	COM4SEG16 	LCDDS16,4

;----- LCDDS17 Bits ---------------------------------------------------

#define 	COM0SEG17 	LCDDS17,0
#define 	COM1SEG17 	LCDDS17,1
#define 	COM2SEG17 	LCDDS17,2
#define 	COM3SEG17 	LCDDS17,3
#define 	COM4SEG17 	LCDDS17,4

;----- LCDDS18 Bits ---------------------------------------------------

#define 	COM0SEG18 	LCDDS18,0
#define 	COM1SEG18 	LCDDS18,1
#define 	COM2SEG18 	LCDDS18,2
#define 	COM3SEG18 	LCDDS18,3
#define 	COM4SEG18 	LCDDS18,4

;----- LCDDS19 Bits ---------------------------------------------------

#define 	COM0SEG19 	LCDDS19,0
#define 	COM1SEG19 	LCDDS19,1
#define 	COM2SEG19 	LCDDS19,2
#define 	COM3SEG19 	LCDDS19,3
#define 	COM4SEG19 	LCDDS19,4

;----- LCDDS20 Bits ---------------------------------------------------

#define 	COM0SEG20 	LCDDS20,0
#define 	COM1SEG20 	LCDDS20,1
#define 	COM2SEG20 	LCDDS20,2
#define 	COM3SEG20 	LCDDS20,3
#define 	COM4SEG20 	LCDDS20,4

;----- LCDDS21 Bits ---------------------------------------------------

#define 	COM0SEG21 	LCDDS21,0
#define 	COM1SEG21 	LCDDS21,1
#define 	COM2SEG21 	LCDDS21,2
#define 	COM3SEG21 	LCDDS21,3
#define 	COM4SEG21 	LCDDS21,4

;----- LCDDS22 Bits ---------------------------------------------------

#define 	COM0SEG22 	LCDDS22,0
#define 	COM1SEG22 	LCDDS22,1
#define 	COM2SEG22 	LCDDS22,2
#define 	COM3SEG22 	LCDDS22,3
#define 	COM4SEG22 	LCDDS22,4

;----- LCDDS23 Bits ---------------------------------------------------

#define 	COM0SEG23 	LCDDS23,0
#define 	COM1SEG23 	LCDDS23,1
#define 	COM2SEG23 	LCDDS23,2
#define 	COM3SEG23 	LCDDS23,3
#define 	COM4SEG23 	LCDDS23,4

;----- LCDDS24 Bits ---------------------------------------------------

#define 	COM0SEG24 	LCDDS24,0
#define 	COM1SEG24 	LCDDS24,1
#define 	COM2SEG24 	LCDDS24,2
#define 	COM3SEG24 	LCDDS24,3
#define 	COM4SEG24 	LCDDS24,4

;----- LCDDS25 Bits ---------------------------------------------------

#define 	COM0SEG25 	LCDDS25,0
#define 	COM1SEG25 	LCDDS25,1
#define 	COM2SEG25 	LCDDS25,2
#define 	COM3SEG25 	LCDDS25,3
#define 	COM4SEG25 	LCDDS25,4

;----- LCDDS26 Bits ---------------------------------------------------

#define 	COM0SEG26 	LCDDS26,0
#define 	COM1SEG26 	LCDDS26,1
#define 	COM2SEG26 	LCDDS26,2
#define 	COM3SEG26 	LCDDS26,3
#define 	COM4SEG26 	LCDDS26,4

;----- LCDDS27 Bits ---------------------------------------------------

#define 	COM0SEG27 	LCDDS27,0
#define 	COM1SEG27 	LCDDS27,1
#define 	COM2SEG27 	LCDDS27,2
#define 	COM3SEG27 	LCDDS27,3
#define 	COM4SEG27 	LCDDS27,4

;----- LCDDS28 Bits ---------------------------------------------------

#define 	COM0SEG28 	LCDDS28,0
#define 	COM1SEG28 	LCDDS28,1
#define 	COM2SEG28 	LCDDS28,2
#define 	COM3SEG28 	LCDDS28,3
#define 	COM4SEG28 	LCDDS28,4

;----- LCDDS29 Bits ---------------------------------------------------

#define 	COM0SEG29 	LCDDS29,0
#define 	COM1SEG29 	LCDDS29,1
#define 	COM2SEG29 	LCDDS29,2
#define 	COM3SEG29 	LCDDS29,3
#define 	COM4SEG29 	LCDDS29,4

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
#define 	KBIE      	INTE,4
#define 	LVDIE     	INTE,5
#define 	ADIE      	INTE,7

;----- INTF Bits ---------------------------------------------------

#define 	T0IF      	INTF,0
#define 	T1IF      	INTF,1
#define 	INT0IF    	INTF,2
#define 	INT1IF    	INTF,3
#define 	KBIF      	INTF,4
#define 	LVDIF     	INTF,5
#define 	T0RF      	INTF,6
#define 	ADIF      	INTF,7

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

;----- LCDIOSP1 Bits ---------------------------------------------------

#define 	LCDIOSP10 	LCDIOSP1,0
#define 	LCDIOSP11 	LCDIOSP1,1
#define 	LCDIOSP12 	LCDIOSP1,2
#define 	LCDIOSP13 	LCDIOSP1,3
#define 	LCDIOSP14 	LCDIOSP1,4
#define 	LCDIOSP15 	LCDIOSP1,5
#define 	LCDIOSP16 	LCDIOSP1,6
#define 	LCDIOSP17 	LCDIOSP1,7

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

;----- LCDIOSP2 Bits ---------------------------------------------------

#define 	LCDIOSP20 	LCDIOSP2,0
#define 	LCDIOSP21 	LCDIOSP2,1
#define 	LCDIOSP22 	LCDIOSP2,2
#define 	LCDIOSP23 	LCDIOSP2,3
#define 	LCDIOSP24 	LCDIOSP2,4
#define 	LCDIOSP25 	LCDIOSP2,5
#define 	LCDIOSP26 	LCDIOSP2,6
#define 	LCDIOSP27 	LCDIOSP2,7

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

;----- LCDIOSP3 Bits ---------------------------------------------------

#define 	LCDIOSP30 	LCDIOSP3,0
#define 	LCDIOSP31 	LCDIOSP3,1
#define 	LCDIOSP32 	LCDIOSP3,2
#define 	LCDIOSP33 	LCDIOSP3,3
#define 	LCDIOSP34 	LCDIOSP3,4
#define 	LCDIOSP35 	LCDIOSP3,5
#define 	LCDIOSP36 	LCDIOSP3,6
#define 	LCDIOSP37 	LCDIOSP3,7

;----- IOP4 Bits ---------------------------------------------------

#define 	P40D      	IOP4,0
#define 	P41D      	IOP4,1
#define 	P42D      	IOP4,2
#define 	P43D      	IOP4,3
#define 	P44D      	IOP4,4
#define 	P45D      	IOP4,5
#define 	P46D      	IOP4,6
#define 	P47D      	IOP4,7

;----- OEP4 Bits ---------------------------------------------------

#define 	P40OE     	OEP4,0
#define 	P41OE     	OEP4,1
#define 	P42OE     	OEP4,2
#define 	P43OE     	OEP4,3
#define 	P44OE     	OEP4,4
#define 	P45OE     	OEP4,5
#define 	P46OE     	OEP4,6
#define 	P47OE     	OEP4,7

;----- PUP4 Bits ---------------------------------------------------

#define 	P40PU     	PUP4,0
#define 	P41PU     	PUP4,1
#define 	P42PU     	PUP4,2
#define 	P43PU     	PUP4,3
#define 	P44PU     	PUP4,4
#define 	P45PU     	PUP4,5
#define 	P46PU     	PUP4,6
#define 	P47PU     	PUP4,7

;----- LCDIOSP4 Bits ---------------------------------------------------

#define 	LCDIOSP40 	LCDIOSP4,0
#define 	LCDIOSP41 	LCDIOSP4,1
#define 	LCDIOSP42 	LCDIOSP4,2
#define 	LCDIOSP43 	LCDIOSP4,3
#define 	LCDIOSP44 	LCDIOSP4,4
#define 	LCDIOSP45 	LCDIOSP4,5
#define 	LCDIOSP46 	LCDIOSP4,6
#define 	LCDIOSP47 	LCDIOSP4,7

;----- IOP5 Bits ---------------------------------------------------

#define 	P50D      	IOP5,0
#define 	P51D      	IOP5,1
#define 	P52D      	IOP5,2
#define 	P53D      	IOP5,3
#define 	P54D      	IOP5,4
#define 	P55D      	IOP5,5

;----- OEP5 Bits ---------------------------------------------------

#define 	P50OE     	OEP5,0
#define 	P51OE     	OEP5,1
#define 	P52OE     	OEP5,2
#define 	P53OE     	OEP5,3
#define 	P54OE     	OEP5,4
#define 	P55OE     	OEP5,5

;----- PUP5 Bits ---------------------------------------------------

#define 	P50PU     	PUP5,0
#define 	P51PU     	PUP5,1
#define 	P52PU     	PUP5,2
#define 	P53PU     	PUP5,3
#define 	P55PU     	PUP5,5

;----- LCDIOSP5 Bits ---------------------------------------------------

#define 	LCDIOSP50 	LCDIOSP5,0
#define 	LCDIOSP51 	LCDIOSP5,1

;----- T0CR0 Bits ---------------------------------------------------

#define 	T0PR0     	T0CR0,0
#define 	T0PR1     	T0CR0,1
#define 	T0PR2     	T0CR0,2
#define 	T0PTS0    	T0CR0,3
#define 	T0PTS1    	T0CR0,4
#define 	T0MOD0    	T0CR0,5
#define 	T0MOD1    	T0CR0,6
#define 	TC0EN     	T0CR0,7

;----- T0CR1 Bits ---------------------------------------------------

#define 	FPWMB0    	T0CR1,0
#define 	FPWMB1    	T0CR1,1
#define 	FPWMA0    	T0CR1,2
#define 	FPWMA1    	T0CR1,3
#define 	FPWMS     	T0CR1,4
#define 	PWMEN     	T0CR1,6
#define 	FPWMEN    	T0CR1,7

;----- T0LOADH Bits ---------------------------------------------------

#define 	T0LOADH0  	T0LOADH,0
#define 	T0LOADH1  	T0LOADH,1
#define 	T0LOADH2  	T0LOADH,2
#define 	T0LOADH3  	T0LOADH,3
#define 	T0LOADH4  	T0LOADH,4
#define 	T0LOADH5  	T0LOADH,5
#define 	T0LOADH6  	T0LOADH,6
#define 	T0LOADH7  	T0LOADH,7

;----- T0LOADL Bits ---------------------------------------------------

#define 	T0LOADL0  	T0LOADL,0
#define 	T0LOADL1  	T0LOADL,1
#define 	T0LOADL2  	T0LOADL,2
#define 	T0LOADL3  	T0LOADL,3
#define 	T0LOADL4  	T0LOADL,4
#define 	T0LOADL5  	T0LOADL,5
#define 	T0LOADL6  	T0LOADL,6
#define 	T0LOADL7  	T0LOADL,7

;----- T0DATAH Bits ---------------------------------------------------

#define 	T0DATAH0  	T0DATAH,0
#define 	T0DATAH1  	T0DATAH,1
#define 	T0DATAH2  	T0DATAH,2
#define 	T0DATAH3  	T0DATAH,3
#define 	T0DATAH4  	T0DATAH,4
#define 	T0DATAH5  	T0DATAH,5
#define 	T0DATAH6  	T0DATAH,6
#define 	T0DATAH7  	T0DATAH,7

;----- T0DATAL Bits ---------------------------------------------------

#define 	T0DATAL0  	T0DATAL,0
#define 	T0DATAL1  	T0DATAL,1
#define 	T0DATAL2  	T0DATAL,2
#define 	T0DATAL3  	T0DATAL,3
#define 	T0DATAL4  	T0DATAL,4
#define 	T0DATAL5  	T0DATAL,5
#define 	T0DATAL6  	T0DATAL,6
#define 	T0DATAL7  	T0DATAL,7

;----- T0LATRH Bits ---------------------------------------------------

#define 	T0LATRH0  	T0LATRH,0
#define 	T0LATRH1  	T0LATRH,1
#define 	T0LATRH2  	T0LATRH,2
#define 	T0LATRH3  	T0LATRH,3
#define 	T0LATRH4  	T0LATRH,4
#define 	T0LATRH5  	T0LATRH,5
#define 	T0LATRH6  	T0LATRH,6
#define 	T0LATRH7  	T0LATRH,7

;----- T0LATRL Bits ---------------------------------------------------

#define 	T0LATRL0  	T0LATRL,0
#define 	T0LATRL1  	T0LATRL,1
#define 	T0LATRL2  	T0LATRL,2
#define 	T0LATRL3  	T0LATRL,3
#define 	T0LATRL4  	T0LATRL,4
#define 	T0LATRL5  	T0LATRL,5
#define 	T0LATRL6  	T0LATRL,6
#define 	T0LATRL7  	T0LATRL,7

;----- T0LATFH Bits ---------------------------------------------------

#define 	T0LATFH0  	T0LATFH,0
#define 	T0LATFH1  	T0LATFH,1
#define 	T0LATFH2  	T0LATFH,2
#define 	T0LATFH3  	T0LATFH,3
#define 	T0LATFH4  	T0LATFH,4
#define 	T0LATFH5  	T0LATFH,5
#define 	T0LATFH6  	T0LATFH,6
#define 	T0LATFH7  	T0LATFH,7

;----- T0LATFL Bits ---------------------------------------------------

#define 	T0LATFL0  	T0LATFL,0
#define 	T0LATFL1  	T0LATFL,1
#define 	T0LATFL2  	T0LATFL,2
#define 	T0LATFL3  	T0LATFL,3
#define 	T0LATFL4  	T0LATFL,4
#define 	T0LATFL5  	T0LATFL,5
#define 	T0LATFL6  	T0LATFL,6
#define 	T0LATFL7  	T0LATFL,7

;----- T1CR Bits ---------------------------------------------------

#define 	T1PR0     	T1CR,0
#define 	T1PR1     	T1CR,1
#define 	T1PR2     	T1CR,2
#define 	T1PTS0    	T1CR,3
#define 	T1PTS1    	T1CR,4
#define 	T1MOD0    	T1CR,5
#define 	T1MOD1    	T1CR,6
#define 	TC1EN     	T1CR,7

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

;----- ADCR2 Bits ---------------------------------------------------

#define 	VREXT     	ADCR2,0
#define 	VREFRES   	ADCR2,1

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

;----- OPCR0 Bits ---------------------------------------------------

#define 	OPFC0     	OPCR0,0
#define 	OPFC1     	OPCR0,1
#define 	OPFC2     	OPCR0,2
#define 	OPFC3     	OPCR0,3
#define 	OPFC4     	OPCR0,4
#define 	OPFC5     	OPCR0,5
#define 	OPAM      	OPCR0,6
#define 	OPAE      	OPCR0,7

;----- OPCR1 Bits ---------------------------------------------------

#define 	CSEL0     	OPCR1,0
#define 	CSEL1     	OPCR1,1
#define 	FSEL0     	OPCR1,2
#define 	FSEL1     	OPCR1,3
#define 	VSEL      	OPCR1,6
#define 	IRIN      	OPCR1,7

;----- LCDCR0 Bits ---------------------------------------------------

#define 	LCDRS0    	LCDCR0,0
#define 	LCDRS1    	LCDCR0,1
#define 	LCDSPEED  	LCDCR0,2
#define 	VLCDS     	LCDCR0,3
#define 	LCDDUTY   	LCDCR0,4
#define 	LCDSP0    	LCDCR0,5
#define 	LCDSP1    	LCDCR0,6
#define 	LCDEN     	LCDCR0,7

;----- LCDCR1 Bits ---------------------------------------------------

#define 	FLCD0     	LCDCR1,0
#define 	FLCD1     	LCDCR1,1
#define 	LCDCKS    	LCDCR1,2
#define 	LCDM      	LCDCR1,3

;----- DKW Bits ---------------------------------------------------

#define 	DSELEN    	DKW,0
#define 	DRVS      	DKW,1
#define 	RSEL      	DKW,2
#define 	WSEL0     	DKW,3
#define 	WSEL1     	DKW,4
#define 	IROT      	DKW,5
#define 	IROS      	DKW,6
#define 	DKWE      	DKW,7

;----- KBCR Bits ---------------------------------------------------

#define 	KBCR0     	KBCR,0
#define 	KBCR1     	KBCR,1
#define 	KBCR2     	KBCR,2
#define 	KBCR3     	KBCR,3
#define 	KBCR4     	KBCR,4
#define 	KBCR5     	KBCR,5
#define 	KBCR6     	KBCR,6
#define 	KBCR7     	KBCR,7

;----- LCDDRV Bits ---------------------------------------------------

#define 	LCDDRVP06 	LCDDRV,0
#define 	LCDDRVP22 	LCDDRV,1
#define 	LCDDRVP23 	LCDDRV,2

;==========================================================================
;
;	RAM Definition
;
;==========================================================================

	__MAXRAM H'1FF'
	__BADRAM H'11E'-H'1AF'
	__BADRAM H'1BF'
	__BADRAM H'1DA'-H'1DB'
	__BADRAM H'1E7'
	__BADRAM H'1EB'
	__BADRAM H'1EE'-H'1EF'
	__BADRAM H'1F7'-H'1FF'


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
