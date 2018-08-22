#ifndef MC32P7212_H
#define MC32P7212_H

#include <mc32-common.h>

//
// Register addresses.
//
#define INDF0_ADDR      	0x0180
#define INDF1_ADDR      	0x0181
#define INDF2_ADDR      	0x0182
#define HIBYTE_ADDR     	0x0183
#define FSR0_ADDR       	0x0184
#define FSR1_ADDR       	0x0185
#define PCL_ADDR        	0x0186
#define PFLAG_ADDR      	0x0187
#define MCR_ADDR        	0x0188
#define INDF3_ADDR      	0x0189
#define INTE_ADDR       	0x018A
#define INTF_ADDR       	0x018B
#define IOP0_ADDR       	0x0190
#define OEP0_ADDR       	0x0191
#define PUP0_ADDR       	0x0192
#define IOP1_ADDR       	0x0194
#define OEP1_ADDR       	0x0195
#define PUP1_ADDR       	0x0196
#define IOP2_ADDR       	0x0198
#define OEP2_ADDR       	0x0199
#define PUP2_ADDR       	0x019A
#define IOP3_ADDR       	0x019C
#define OEP3_ADDR       	0x019D
#define PUP3_ADDR       	0x019E
#define T0CR_ADDR       	0x01A0
#define T0CNT_ADDR      	0x01A1
#define T0LOAD_ADDR     	0x01A2
#define T0DATA_ADDR     	0x01A3
#define T1CR_ADDR       	0x01A4
#define T1CNT_ADDR      	0x01A5
#define T1LOAD_ADDR     	0x01A6
#define T1DATA_ADDR     	0x01A7
#define LXTCR_ADDR      	0x01A8
#define PUMP_ADDR       	0x01AD
#define OSCM_ADDR       	0x01AE
#define LVDCR_ADDR      	0x01AF
#define ADCR0_ADDR      	0x01B0
#define ADCR1_ADDR      	0x01B1
#define ADCR2_ADDR      	0x01B2
#define TPSC_ADDR       	0x01B3
#define ADRH_ADDR       	0x01B4
#define ADRM_ADDR       	0x01B5
#define ADRL_ADDR       	0x01B6
#define LCDCR0_ADDR     	0x01B8
#define LCDCR1_ADDR     	0x01B9
#define LCDIOS1_ADDR    	0x01BA
#define LCDIOS2_ADDR    	0x01BB
#define LCDDS2_ADDR     	0x01C0
#define LCDDS3_ADDR     	0x01C1
#define LCDDS4_ADDR     	0x01C2
#define LCDDS5_ADDR     	0x01C3
#define LCDDS6_ADDR     	0x01C4
#define LCDDS7_ADDR     	0x01C5
#define LCDDS8_ADDR     	0x01C6
#define LCDDS9_ADDR     	0x01C7
#define LCDDS10_ADDR    	0x01C8
#define LCDDS11_ADDR    	0x01C9
#define LCDDS12_ADDR    	0x01CA
#define LCDDS13_ADDR    	0x01CB

//----- Register Files -----------------------------------------------------

extern __sfr __at (INDF0_ADDR)    	INDF0;
extern __sfr __at (INDF1_ADDR)    	INDF1;
extern __sfr __at (INDF2_ADDR)    	INDF2;
extern __sfr __at (HIBYTE_ADDR)   	HIBYTE;
extern __sfr __at (FSR0_ADDR)     	FSR0;
extern __sfr __at (FSR1_ADDR)     	FSR1;
extern __sfr __at (PCL_ADDR)      	PCL;
extern __sfr __at (PFLAG_ADDR)    	PFLAG;
extern __sfr __at (MCR_ADDR)      	MCR;
extern __sfr __at (INDF3_ADDR)    	INDF3;
extern __sfr __at (INTE_ADDR)     	INTE;
extern __sfr __at (INTF_ADDR)     	INTF;
extern __sfr __at (IOP0_ADDR)     	IOP0;
extern __sfr __at (OEP0_ADDR)     	OEP0;
extern __sfr __at (PUP0_ADDR)     	PUP0;
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (IOP2_ADDR)     	IOP2;
extern __sfr __at (OEP2_ADDR)     	OEP2;
extern __sfr __at (PUP2_ADDR)     	PUP2;
extern __sfr __at (IOP3_ADDR)     	IOP3;
extern __sfr __at (OEP3_ADDR)     	OEP3;
extern __sfr __at (PUP3_ADDR)     	PUP3;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T0LOAD_ADDR)   	T0LOAD;
extern __sfr __at (T0DATA_ADDR)   	T0DATA;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNT_ADDR)    	T1CNT;
extern __sfr __at (T1LOAD_ADDR)   	T1LOAD;
extern __sfr __at (T1DATA_ADDR)   	T1DATA;
extern __sfr __at (LXTCR_ADDR)    	LXTCR;
extern __sfr __at (PUMP_ADDR)     	PUMP;
extern __sfr __at (OSCM_ADDR)     	OSCM;
extern __sfr __at (LVDCR_ADDR)    	LVDCR;
extern __sfr __at (ADCR0_ADDR)    	ADCR0;
extern __sfr __at (ADCR1_ADDR)    	ADCR1;
extern __sfr __at (ADCR2_ADDR)    	ADCR2;
extern __sfr __at (TPSC_ADDR)     	TPSC;
extern __sfr __at (ADRH_ADDR)     	ADRH;
extern __sfr __at (ADRM_ADDR)     	ADRM;
extern __sfr __at (ADRL_ADDR)     	ADRL;
extern __sfr __at (LCDCR0_ADDR)   	LCDCR0;
extern __sfr __at (LCDCR1_ADDR)   	LCDCR1;
extern __sfr __at (LCDIOS1_ADDR)  	LCDIOS1;
extern __sfr __at (LCDIOS2_ADDR)  	LCDIOS2;
extern __sfr __at (LCDDS2_ADDR)   	LCDDS2;
extern __sfr __at (LCDDS3_ADDR)   	LCDDS3;
extern __sfr __at (LCDDS4_ADDR)   	LCDDS4;
extern __sfr __at (LCDDS5_ADDR)   	LCDDS5;
extern __sfr __at (LCDDS6_ADDR)   	LCDDS6;
extern __sfr __at (LCDDS7_ADDR)   	LCDDS7;
extern __sfr __at (LCDDS8_ADDR)   	LCDDS8;
extern __sfr __at (LCDDS9_ADDR)   	LCDDS9;
extern __sfr __at (LCDDS10_ADDR)  	LCDDS10;
extern __sfr __at (LCDDS11_ADDR)  	LCDDS11;
extern __sfr __at (LCDDS12_ADDR)  	LCDDS12;
extern __sfr __at (LCDDS13_ADDR)  	LCDDS13;

//==========================================================================
//
//	Configuration Bits
//
//==========================================================================

//OPBIT1

//OPBIT0

// ----- INDF0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INDF00:1;
		unsigned char INDF01:1;
		unsigned char INDF02:1;
		unsigned char INDF03:1;
		unsigned char INDF04:1;
		unsigned char INDF05:1;
		unsigned char INDF06:1;
		unsigned char INDF07:1;
	};
} __INDF0bits_t;
extern volatile __INDF0bits_t __at(INDF0_ADDR) INDF0bits;

#define INDF00    	INDF0bits.INDF00    	/* bit 0 */
#define INDF01    	INDF0bits.INDF01    	/* bit 1 */
#define INDF02    	INDF0bits.INDF02    	/* bit 2 */
#define INDF03    	INDF0bits.INDF03    	/* bit 3 */
#define INDF04    	INDF0bits.INDF04    	/* bit 4 */
#define INDF05    	INDF0bits.INDF05    	/* bit 5 */
#define INDF06    	INDF0bits.INDF06    	/* bit 6 */
#define INDF07    	INDF0bits.INDF07    	/* bit 7 */

// ----- INDF1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INDF10:1;
		unsigned char INDF11:1;
		unsigned char INDF12:1;
		unsigned char INDF13:1;
		unsigned char INDF14:1;
		unsigned char INDF15:1;
		unsigned char INDF16:1;
		unsigned char INDF17:1;
	};
} __INDF1bits_t;
extern volatile __INDF1bits_t __at(INDF1_ADDR) INDF1bits;

#define INDF10    	INDF1bits.INDF10    	/* bit 0 */
#define INDF11    	INDF1bits.INDF11    	/* bit 1 */
#define INDF12    	INDF1bits.INDF12    	/* bit 2 */
#define INDF13    	INDF1bits.INDF13    	/* bit 3 */
#define INDF14    	INDF1bits.INDF14    	/* bit 4 */
#define INDF15    	INDF1bits.INDF15    	/* bit 5 */
#define INDF16    	INDF1bits.INDF16    	/* bit 6 */
#define INDF17    	INDF1bits.INDF17    	/* bit 7 */

// ----- INDF2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INDF20:1;
		unsigned char INDF21:1;
		unsigned char INDF22:1;
		unsigned char INDF23:1;
		unsigned char INDF24:1;
		unsigned char INDF25:1;
		unsigned char INDF26:1;
		unsigned char INDF27:1;
	};
} __INDF2bits_t;
extern volatile __INDF2bits_t __at(INDF2_ADDR) INDF2bits;

#define INDF20    	INDF2bits.INDF20    	/* bit 0 */
#define INDF21    	INDF2bits.INDF21    	/* bit 1 */
#define INDF22    	INDF2bits.INDF22    	/* bit 2 */
#define INDF23    	INDF2bits.INDF23    	/* bit 3 */
#define INDF24    	INDF2bits.INDF24    	/* bit 4 */
#define INDF25    	INDF2bits.INDF25    	/* bit 5 */
#define INDF26    	INDF2bits.INDF26    	/* bit 6 */
#define INDF27    	INDF2bits.INDF27    	/* bit 7 */

// ----- HIBYTE Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char HIBYTE0:1;
		unsigned char HIBYTE1:1;
		unsigned char HIBYTE2:1;
		unsigned char HIBYTE3:1;
		unsigned char HIBYTE4:1;
		unsigned char HIBYTE5:1;
		unsigned char HIBYTE6:1;
		unsigned char HIBYTE7:1;
	};
} __HIBYTEbits_t;
extern volatile __HIBYTEbits_t __at(HIBYTE_ADDR) HIBYTEbits;

#define HIBYTE0   	HIBYTEbits.HIBYTE0  	/* bit 0 */
#define HIBYTE1   	HIBYTEbits.HIBYTE1  	/* bit 1 */
#define HIBYTE2   	HIBYTEbits.HIBYTE2  	/* bit 2 */
#define HIBYTE3   	HIBYTEbits.HIBYTE3  	/* bit 3 */
#define HIBYTE4   	HIBYTEbits.HIBYTE4  	/* bit 4 */
#define HIBYTE5   	HIBYTEbits.HIBYTE5  	/* bit 5 */
#define HIBYTE6   	HIBYTEbits.HIBYTE6  	/* bit 6 */
#define HIBYTE7   	HIBYTEbits.HIBYTE7  	/* bit 7 */

// ----- FSR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char FSR00:1;
		unsigned char FSR01:1;
		unsigned char FSR02:1;
		unsigned char FSR03:1;
		unsigned char FSR04:1;
		unsigned char FSR05:1;
		unsigned char FSR06:1;
		unsigned char FSR07:1;
	};
} __FSR0bits_t;
extern volatile __FSR0bits_t __at(FSR0_ADDR) FSR0bits;

#define FSR00     	FSR0bits.FSR00      	/* bit 0 */
#define FSR01     	FSR0bits.FSR01      	/* bit 1 */
#define FSR02     	FSR0bits.FSR02      	/* bit 2 */
#define FSR03     	FSR0bits.FSR03      	/* bit 3 */
#define FSR04     	FSR0bits.FSR04      	/* bit 4 */
#define FSR05     	FSR0bits.FSR05      	/* bit 5 */
#define FSR06     	FSR0bits.FSR06      	/* bit 6 */
#define FSR07     	FSR0bits.FSR07      	/* bit 7 */

// ----- FSR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char FSR10:1;
		unsigned char FSR11:1;
		unsigned char FSR12:1;
		unsigned char FSR13:1;
		unsigned char FSR14:1;
		unsigned char FSR15:1;
		unsigned char FSR16:1;
		unsigned char FSR17:1;
	};
} __FSR1bits_t;
extern volatile __FSR1bits_t __at(FSR1_ADDR) FSR1bits;

#define FSR10     	FSR1bits.FSR10      	/* bit 0 */
#define FSR11     	FSR1bits.FSR11      	/* bit 1 */
#define FSR12     	FSR1bits.FSR12      	/* bit 2 */
#define FSR13     	FSR1bits.FSR13      	/* bit 3 */
#define FSR14     	FSR1bits.FSR14      	/* bit 4 */
#define FSR15     	FSR1bits.FSR15      	/* bit 5 */
#define FSR16     	FSR1bits.FSR16      	/* bit 6 */
#define FSR17     	FSR1bits.FSR17      	/* bit 7 */

// ----- PCL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PC0:1;
		unsigned char PC1:1;
		unsigned char PC2:1;
		unsigned char PC3:1;
		unsigned char PC4:1;
		unsigned char PC5:1;
		unsigned char PC6:1;
		unsigned char PC7:1;
	};
} __PCLbits_t;
extern volatile __PCLbits_t __at(PCL_ADDR) PCLbits;

#define PC0       	PCLbits.PC0         	/* bit 0 */
#define PC1       	PCLbits.PC1         	/* bit 1 */
#define PC2       	PCLbits.PC2         	/* bit 2 */
#define PC3       	PCLbits.PC3         	/* bit 3 */
#define PC4       	PCLbits.PC4         	/* bit 4 */
#define PC5       	PCLbits.PC5         	/* bit 5 */
#define PC6       	PCLbits.PC6         	/* bit 6 */
#define PC7       	PCLbits.PC7         	/* bit 7 */

// ----- PFLAG Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char C:1;
		unsigned char DC:1;
		unsigned char Z:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PFLAGbits_t;
extern volatile __PFLAGbits_t __at(PFLAG_ADDR) PFLAGbits;

#define C         	PFLAGbits.C         	/* bit 0 */
#define DC        	PFLAGbits.DC        	/* bit 1 */
#define Z         	PFLAGbits.Z         	/* bit 2 */

// ----- MCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char MINT00:1;
		unsigned char MINT01:1;
		unsigned char MINT10:1;
		unsigned char MINT11:1;
		unsigned char PD:1;
		unsigned char TO:1;
		unsigned char :1;
		unsigned char GIE:1;
	};
} __MCRbits_t;
extern volatile __MCRbits_t __at(MCR_ADDR) MCRbits;

#define MINT00    	MCRbits.MINT00      	/* bit 0 */
#define MINT01    	MCRbits.MINT01      	/* bit 1 */
#define MINT10    	MCRbits.MINT10      	/* bit 2 */
#define MINT11    	MCRbits.MINT11      	/* bit 3 */
#define PD        	MCRbits.PD          	/* bit 4 */
#define TO        	MCRbits.TO          	/* bit 5 */
#define GIE       	MCRbits.GIE         	/* bit 7 */

// ----- INDF3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INDF30:1;
		unsigned char INDF31:1;
		unsigned char INDF32:1;
		unsigned char INDF33:1;
		unsigned char INDF34:1;
		unsigned char INDF35:1;
		unsigned char INDF36:1;
		unsigned char INDF37:1;
	};
} __INDF3bits_t;
extern volatile __INDF3bits_t __at(INDF3_ADDR) INDF3bits;

#define INDF30    	INDF3bits.INDF30    	/* bit 0 */
#define INDF31    	INDF3bits.INDF31    	/* bit 1 */
#define INDF32    	INDF3bits.INDF32    	/* bit 2 */
#define INDF33    	INDF3bits.INDF33    	/* bit 3 */
#define INDF34    	INDF3bits.INDF34    	/* bit 4 */
#define INDF35    	INDF3bits.INDF35    	/* bit 5 */
#define INDF36    	INDF3bits.INDF36    	/* bit 6 */
#define INDF37    	INDF3bits.INDF37    	/* bit 7 */

// ----- INTE Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IE:1;
		unsigned char T1IE:1;
		unsigned char INT0IE:1;
		unsigned char INT1IE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char ADIE:1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define ADIE      	INTEbits.ADIE       	/* bit 6 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char ADIF:1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define ADIF      	INTFbits.ADIF       	/* bit 6 */

// ----- IOP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00D:1;
		unsigned char P01D:1;
		unsigned char P02D:1;
		unsigned char P03D:1;
		unsigned char P04D:1;
		unsigned char P05D:1;
		unsigned char P06D:1;
		unsigned char P07D:1;
	};
} __IOP0bits_t;
extern volatile __IOP0bits_t __at(IOP0_ADDR) IOP0bits;

#define P00D      	IOP0bits.P00D       	/* bit 0 */
#define P01D      	IOP0bits.P01D       	/* bit 1 */
#define P02D      	IOP0bits.P02D       	/* bit 2 */
#define P03D      	IOP0bits.P03D       	/* bit 3 */
#define P04D      	IOP0bits.P04D       	/* bit 4 */
#define P05D      	IOP0bits.P05D       	/* bit 5 */
#define P06D      	IOP0bits.P06D       	/* bit 6 */
#define P07D      	IOP0bits.P07D       	/* bit 7 */

// ----- OEP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00OE:1;
		unsigned char P01OE:1;
		unsigned char P02OE:1;
		unsigned char P03OE:1;
		unsigned char P04OE:1;
		unsigned char P05OE:1;
		unsigned char P06OE:1;
		unsigned char P07OE:1;
	};
} __OEP0bits_t;
extern volatile __OEP0bits_t __at(OEP0_ADDR) OEP0bits;

#define P00OE     	OEP0bits.P00OE      	/* bit 0 */
#define P01OE     	OEP0bits.P01OE      	/* bit 1 */
#define P02OE     	OEP0bits.P02OE      	/* bit 2 */
#define P03OE     	OEP0bits.P03OE      	/* bit 3 */
#define P04OE     	OEP0bits.P04OE      	/* bit 4 */
#define P05OE     	OEP0bits.P05OE      	/* bit 5 */
#define P06OE     	OEP0bits.P06OE      	/* bit 6 */
#define P07OE     	OEP0bits.P07OE      	/* bit 7 */

// ----- PUP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00PU:1;
		unsigned char P01PU:1;
		unsigned char P02PU:1;
		unsigned char P03PU:1;
		unsigned char P04PU:1;
		unsigned char P05PU:1;
		unsigned char P06PU:1;
		unsigned char P07PU:1;
	};
} __PUP0bits_t;
extern volatile __PUP0bits_t __at(PUP0_ADDR) PUP0bits;

#define P00PU     	PUP0bits.P00PU      	/* bit 0 */
#define P01PU     	PUP0bits.P01PU      	/* bit 1 */
#define P02PU     	PUP0bits.P02PU      	/* bit 2 */
#define P03PU     	PUP0bits.P03PU      	/* bit 3 */
#define P04PU     	PUP0bits.P04PU      	/* bit 4 */
#define P05PU     	PUP0bits.P05PU      	/* bit 5 */
#define P06PU     	PUP0bits.P06PU      	/* bit 6 */
#define P07PU     	PUP0bits.P07PU      	/* bit 7 */

// ----- IOP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10D:1;
		unsigned char P11D:1;
		unsigned char P12D:1;
		unsigned char P13D:1;
		unsigned char P14D:1;
		unsigned char P15D:1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP1bits_t;
extern volatile __IOP1bits_t __at(IOP1_ADDR) IOP1bits;

#define P10D      	IOP1bits.P10D       	/* bit 0 */
#define P11D      	IOP1bits.P11D       	/* bit 1 */
#define P12D      	IOP1bits.P12D       	/* bit 2 */
#define P13D      	IOP1bits.P13D       	/* bit 3 */
#define P14D      	IOP1bits.P14D       	/* bit 4 */
#define P15D      	IOP1bits.P15D       	/* bit 5 */

// ----- OEP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10OE:1;
		unsigned char P11OE:1;
		unsigned char P12OE:1;
		unsigned char P13OE:1;
		unsigned char P14OE:1;
		unsigned char P15OE:1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP1bits_t;
extern volatile __OEP1bits_t __at(OEP1_ADDR) OEP1bits;

#define P10OE     	OEP1bits.P10OE      	/* bit 0 */
#define P11OE     	OEP1bits.P11OE      	/* bit 1 */
#define P12OE     	OEP1bits.P12OE      	/* bit 2 */
#define P13OE     	OEP1bits.P13OE      	/* bit 3 */
#define P14OE     	OEP1bits.P14OE      	/* bit 4 */
#define P15OE     	OEP1bits.P15OE      	/* bit 5 */

// ----- PUP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10PU:1;
		unsigned char P11PU:1;
		unsigned char P12PU:1;
		unsigned char P13PU:1;
		unsigned char P14PU:1;
		unsigned char P15PU:1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP1bits_t;
extern volatile __PUP1bits_t __at(PUP1_ADDR) PUP1bits;

#define P10PU     	PUP1bits.P10PU      	/* bit 0 */
#define P11PU     	PUP1bits.P11PU      	/* bit 1 */
#define P12PU     	PUP1bits.P12PU      	/* bit 2 */
#define P13PU     	PUP1bits.P13PU      	/* bit 3 */
#define P14PU     	PUP1bits.P14PU      	/* bit 4 */
#define P15PU     	PUP1bits.P15PU      	/* bit 5 */

// ----- IOP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20D:1;
		unsigned char P21D:1;
		unsigned char P22D:1;
		unsigned char P23D:1;
		unsigned char P24D:1;
		unsigned char P25D:1;
		unsigned char P26D:1;
		unsigned char P27D:1;
	};
} __IOP2bits_t;
extern volatile __IOP2bits_t __at(IOP2_ADDR) IOP2bits;

#define P20D      	IOP2bits.P20D       	/* bit 0 */
#define P21D      	IOP2bits.P21D       	/* bit 1 */
#define P22D      	IOP2bits.P22D       	/* bit 2 */
#define P23D      	IOP2bits.P23D       	/* bit 3 */
#define P24D      	IOP2bits.P24D       	/* bit 4 */
#define P25D      	IOP2bits.P25D       	/* bit 5 */
#define P26D      	IOP2bits.P26D       	/* bit 6 */
#define P27D      	IOP2bits.P27D       	/* bit 7 */

// ----- OEP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20OE:1;
		unsigned char P21OE:1;
		unsigned char P22OE:1;
		unsigned char P23OE:1;
		unsigned char P24OE:1;
		unsigned char P25OE:1;
		unsigned char P26OE:1;
		unsigned char P27OE:1;
	};
} __OEP2bits_t;
extern volatile __OEP2bits_t __at(OEP2_ADDR) OEP2bits;

#define P20OE     	OEP2bits.P20OE      	/* bit 0 */
#define P21OE     	OEP2bits.P21OE      	/* bit 1 */
#define P22OE     	OEP2bits.P22OE      	/* bit 2 */
#define P23OE     	OEP2bits.P23OE      	/* bit 3 */
#define P24OE     	OEP2bits.P24OE      	/* bit 4 */
#define P25OE     	OEP2bits.P25OE      	/* bit 5 */
#define P26OE     	OEP2bits.P26OE      	/* bit 6 */
#define P27OE     	OEP2bits.P27OE      	/* bit 7 */

// ----- PUP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20PU:1;
		unsigned char P21PU:1;
		unsigned char P22PU:1;
		unsigned char P23PU:1;
		unsigned char P24PU:1;
		unsigned char P25PU:1;
		unsigned char P26PU:1;
		unsigned char P27PU:1;
	};
} __PUP2bits_t;
extern volatile __PUP2bits_t __at(PUP2_ADDR) PUP2bits;

#define P20PU     	PUP2bits.P20PU      	/* bit 0 */
#define P21PU     	PUP2bits.P21PU      	/* bit 1 */
#define P22PU     	PUP2bits.P22PU      	/* bit 2 */
#define P23PU     	PUP2bits.P23PU      	/* bit 3 */
#define P24PU     	PUP2bits.P24PU      	/* bit 4 */
#define P25PU     	PUP2bits.P25PU      	/* bit 5 */
#define P26PU     	PUP2bits.P26PU      	/* bit 6 */
#define P27PU     	PUP2bits.P27PU      	/* bit 7 */

// ----- IOP3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P30D:1;
		unsigned char P31D:1;
		unsigned char P32D:1;
		unsigned char P33D:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP3bits_t;
extern volatile __IOP3bits_t __at(IOP3_ADDR) IOP3bits;

#define P30D      	IOP3bits.P30D       	/* bit 0 */
#define P31D      	IOP3bits.P31D       	/* bit 1 */
#define P32D      	IOP3bits.P32D       	/* bit 2 */
#define P33D      	IOP3bits.P33D       	/* bit 3 */

// ----- OEP3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P30OE:1;
		unsigned char P31OE:1;
		unsigned char P32OE:1;
		unsigned char P33OE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP3bits_t;
extern volatile __OEP3bits_t __at(OEP3_ADDR) OEP3bits;

#define P30OE     	OEP3bits.P30OE      	/* bit 0 */
#define P31OE     	OEP3bits.P31OE      	/* bit 1 */
#define P32OE     	OEP3bits.P32OE      	/* bit 2 */
#define P33OE     	OEP3bits.P33OE      	/* bit 3 */

// ----- PUP3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P30PU:1;
		unsigned char P31PU:1;
		unsigned char P32PU:1;
		unsigned char P33PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP3bits_t;
extern volatile __PUP3bits_t __at(PUP3_ADDR) PUP3bits;

#define P30PU     	PUP3bits.P30PU      	/* bit 0 */
#define P31PU     	PUP3bits.P31PU      	/* bit 1 */
#define P32PU     	PUP3bits.P32PU      	/* bit 2 */
#define P33PU     	PUP3bits.P33PU      	/* bit 3 */

// ----- T0CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0PR0:1;
		unsigned char T0PR1:1;
		unsigned char T0PR2:1;
		unsigned char T0PTS0:1;
		unsigned char T0PTS1:1;
		unsigned char BUZ0OE:1;
		unsigned char PWM0OE:1;
		unsigned char TC0EN:1;
	};
} __T0CRbits_t;
extern volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;

#define T0PR0     	T0CRbits.T0PR0      	/* bit 0 */
#define T0PR1     	T0CRbits.T0PR1      	/* bit 1 */
#define T0PR2     	T0CRbits.T0PR2      	/* bit 2 */
#define T0PTS0    	T0CRbits.T0PTS0     	/* bit 3 */
#define T0PTS1    	T0CRbits.T0PTS1     	/* bit 4 */
#define BUZ0OE    	T0CRbits.BUZ0OE     	/* bit 5 */
#define PWM0OE    	T0CRbits.PWM0OE     	/* bit 6 */
#define TC0EN     	T0CRbits.TC0EN      	/* bit 7 */

// ----- T0CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0C0:1;
		unsigned char T0C1:1;
		unsigned char T0C2:1;
		unsigned char T0C3:1;
		unsigned char T0C4:1;
		unsigned char T0C5:1;
		unsigned char T0C6:1;
		unsigned char T0C7:1;
	};
} __T0CNTbits_t;
extern volatile __T0CNTbits_t __at(T0CNT_ADDR) T0CNTbits;

#define T0C0      	T0CNTbits.T0C0      	/* bit 0 */
#define T0C1      	T0CNTbits.T0C1      	/* bit 1 */
#define T0C2      	T0CNTbits.T0C2      	/* bit 2 */
#define T0C3      	T0CNTbits.T0C3      	/* bit 3 */
#define T0C4      	T0CNTbits.T0C4      	/* bit 4 */
#define T0C5      	T0CNTbits.T0C5      	/* bit 5 */
#define T0C6      	T0CNTbits.T0C6      	/* bit 6 */
#define T0C7      	T0CNTbits.T0C7      	/* bit 7 */

// ----- T0LOAD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LOAD0:1;
		unsigned char T0LOAD1:1;
		unsigned char T0LOAD2:1;
		unsigned char T0LOAD3:1;
		unsigned char T0LOAD4:1;
		unsigned char T0LOAD5:1;
		unsigned char T0LOAD6:1;
		unsigned char T0LOAD7:1;
	};
} __T0LOADbits_t;
extern volatile __T0LOADbits_t __at(T0LOAD_ADDR) T0LOADbits;

#define T0LOAD0   	T0LOADbits.T0LOAD0  	/* bit 0 */
#define T0LOAD1   	T0LOADbits.T0LOAD1  	/* bit 1 */
#define T0LOAD2   	T0LOADbits.T0LOAD2  	/* bit 2 */
#define T0LOAD3   	T0LOADbits.T0LOAD3  	/* bit 3 */
#define T0LOAD4   	T0LOADbits.T0LOAD4  	/* bit 4 */
#define T0LOAD5   	T0LOADbits.T0LOAD5  	/* bit 5 */
#define T0LOAD6   	T0LOADbits.T0LOAD6  	/* bit 6 */
#define T0LOAD7   	T0LOADbits.T0LOAD7  	/* bit 7 */

// ----- T0DATA Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0DATA0:1;
		unsigned char T0DATA1:1;
		unsigned char T0DATA2:1;
		unsigned char T0DATA3:1;
		unsigned char T0DATA4:1;
		unsigned char T0DATA5:1;
		unsigned char T0DATA6:1;
		unsigned char T0DATA7:1;
	};
} __T0DATAbits_t;
extern volatile __T0DATAbits_t __at(T0DATA_ADDR) T0DATAbits;

#define T0DATA0   	T0DATAbits.T0DATA0  	/* bit 0 */
#define T0DATA1   	T0DATAbits.T0DATA1  	/* bit 1 */
#define T0DATA2   	T0DATAbits.T0DATA2  	/* bit 2 */
#define T0DATA3   	T0DATAbits.T0DATA3  	/* bit 3 */
#define T0DATA4   	T0DATAbits.T0DATA4  	/* bit 4 */
#define T0DATA5   	T0DATAbits.T0DATA5  	/* bit 5 */
#define T0DATA6   	T0DATAbits.T0DATA6  	/* bit 6 */
#define T0DATA7   	T0DATAbits.T0DATA7  	/* bit 7 */

// ----- T1CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1PR0:1;
		unsigned char T1PR1:1;
		unsigned char T1PR2:1;
		unsigned char T1PTS0:1;
		unsigned char T1PTS1:1;
		unsigned char BUZ1OE:1;
		unsigned char PWM1OE:1;
		unsigned char TC1EN:1;
	};
} __T1CRbits_t;
extern volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#define T1PR0     	T1CRbits.T1PR0      	/* bit 0 */
#define T1PR1     	T1CRbits.T1PR1      	/* bit 1 */
#define T1PR2     	T1CRbits.T1PR2      	/* bit 2 */
#define T1PTS0    	T1CRbits.T1PTS0     	/* bit 3 */
#define T1PTS1    	T1CRbits.T1PTS1     	/* bit 4 */
#define BUZ1OE    	T1CRbits.BUZ1OE     	/* bit 5 */
#define PWM1OE    	T1CRbits.PWM1OE     	/* bit 6 */
#define TC1EN     	T1CRbits.TC1EN      	/* bit 7 */

// ----- T1CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1C0:1;
		unsigned char T1C1:1;
		unsigned char T1C2:1;
		unsigned char T1C3:1;
		unsigned char T1C4:1;
		unsigned char T1C5:1;
		unsigned char T1C6:1;
		unsigned char T1C7:1;
	};
} __T1CNTbits_t;
extern volatile __T1CNTbits_t __at(T1CNT_ADDR) T1CNTbits;

#define T1C0      	T1CNTbits.T1C0      	/* bit 0 */
#define T1C1      	T1CNTbits.T1C1      	/* bit 1 */
#define T1C2      	T1CNTbits.T1C2      	/* bit 2 */
#define T1C3      	T1CNTbits.T1C3      	/* bit 3 */
#define T1C4      	T1CNTbits.T1C4      	/* bit 4 */
#define T1C5      	T1CNTbits.T1C5      	/* bit 5 */
#define T1C6      	T1CNTbits.T1C6      	/* bit 6 */
#define T1C7      	T1CNTbits.T1C7      	/* bit 7 */

// ----- T1LOAD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1LOAD0:1;
		unsigned char T1LOAD1:1;
		unsigned char T1LOAD2:1;
		unsigned char T1LOAD3:1;
		unsigned char T1LOAD4:1;
		unsigned char T1LOAD5:1;
		unsigned char T1LOAD6:1;
		unsigned char T1LOAD7:1;
	};
} __T1LOADbits_t;
extern volatile __T1LOADbits_t __at(T1LOAD_ADDR) T1LOADbits;

#define T1LOAD0   	T1LOADbits.T1LOAD0  	/* bit 0 */
#define T1LOAD1   	T1LOADbits.T1LOAD1  	/* bit 1 */
#define T1LOAD2   	T1LOADbits.T1LOAD2  	/* bit 2 */
#define T1LOAD3   	T1LOADbits.T1LOAD3  	/* bit 3 */
#define T1LOAD4   	T1LOADbits.T1LOAD4  	/* bit 4 */
#define T1LOAD5   	T1LOADbits.T1LOAD5  	/* bit 5 */
#define T1LOAD6   	T1LOADbits.T1LOAD6  	/* bit 6 */
#define T1LOAD7   	T1LOADbits.T1LOAD7  	/* bit 7 */

// ----- T1DATA Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1DATA0:1;
		unsigned char T1DATA1:1;
		unsigned char T1DATA2:1;
		unsigned char T1DATA3:1;
		unsigned char T1DATA4:1;
		unsigned char T1DATA5:1;
		unsigned char T1DATA6:1;
		unsigned char T1DATA7:1;
	};
} __T1DATAbits_t;
extern volatile __T1DATAbits_t __at(T1DATA_ADDR) T1DATAbits;

#define T1DATA0   	T1DATAbits.T1DATA0  	/* bit 0 */
#define T1DATA1   	T1DATAbits.T1DATA1  	/* bit 1 */
#define T1DATA2   	T1DATAbits.T1DATA2  	/* bit 2 */
#define T1DATA3   	T1DATAbits.T1DATA3  	/* bit 3 */
#define T1DATA4   	T1DATAbits.T1DATA4  	/* bit 4 */
#define T1DATA5   	T1DATAbits.T1DATA5  	/* bit 5 */
#define T1DATA6   	T1DATAbits.T1DATA6  	/* bit 6 */
#define T1DATA7   	T1DATAbits.T1DATA7  	/* bit 7 */

// ----- LXTCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LPEN0:1;
		unsigned char LPEN1:1;
		unsigned char LPEN2:1;
		unsigned char FILS:1;
		unsigned char VDLSEL:1;
		unsigned char RSEL:1;
		unsigned char LDOLPEN:1;
		unsigned char :1;
	};
} __LXTCRbits_t;
extern volatile __LXTCRbits_t __at(LXTCR_ADDR) LXTCRbits;

#define LPEN0     	LXTCRbits.LPEN0     	/* bit 0 */
#define LPEN1     	LXTCRbits.LPEN1     	/* bit 1 */
#define LPEN2     	LXTCRbits.LPEN2     	/* bit 2 */
#define FILS      	LXTCRbits.FILS      	/* bit 3 */
#define VDLSEL    	LXTCRbits.VDLSEL    	/* bit 4 */
#define RSEL      	LXTCRbits.RSEL      	/* bit 5 */
#define LDOLPEN   	LXTCRbits.LDOLPEN   	/* bit 6 */

// ----- PUMP Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char VLCDX0:1;
		unsigned char VLCDX1:1;
		unsigned char CHP_VPP:1;
		unsigned char PGMTIME:1;
		unsigned char VCP_CAL:1;
		unsigned char CPCKS:1;
		unsigned char PUMPEN:1;
		unsigned char ERV:1;
	};
} __PUMPbits_t;
extern volatile __PUMPbits_t __at(PUMP_ADDR) PUMPbits;

#define VLCDX0    	PUMPbits.VLCDX0     	/* bit 0 */
#define VLCDX1    	PUMPbits.VLCDX1     	/* bit 1 */
#define CHP_VPP   	PUMPbits.CHP_VPP    	/* bit 2 */
#define PGMTIME   	PUMPbits.PGMTIME    	/* bit 3 */
#define VCP_CAL   	PUMPbits.VCP_CAL    	/* bit 4 */
#define CPCKS     	PUMPbits.CPCKS      	/* bit 5 */
#define PUMPEN    	PUMPbits.PUMPEN     	/* bit 6 */
#define ERV       	PUMPbits.ERV        	/* bit 7 */

// ----- OSCM Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char HFEN:1;
		unsigned char LFEN:1;
		unsigned char CLKS:1;
		unsigned char HIRCOUTEN:1;
		unsigned char STBH:1;
		unsigned char STBL:1;
		unsigned char :1;
		unsigned char :1;
	};
} __OSCMbits_t;
extern volatile __OSCMbits_t __at(OSCM_ADDR) OSCMbits;

#define HFEN      	OSCMbits.HFEN       	/* bit 0 */
#define LFEN      	OSCMbits.LFEN       	/* bit 1 */
#define CLKS      	OSCMbits.CLKS       	/* bit 2 */
#define HIRCOUTEN 	OSCMbits.HIRCOUTEN  	/* bit 3 */
#define STBH      	OSCMbits.STBH       	/* bit 4 */
#define STBL      	OSCMbits.STBL       	/* bit 5 */

// ----- LVDCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LVDF:1;
		unsigned char :1;
		unsigned char VBGSEL:1;
		unsigned char LVDS0:1;
		unsigned char LVDS1:1;
		unsigned char LVDS2:1;
		unsigned char LVDS3:1;
		unsigned char LVDEN:1;
	};
} __LVDCRbits_t;
extern volatile __LVDCRbits_t __at(LVDCR_ADDR) LVDCRbits;

#define LVDF      	LVDCRbits.LVDF      	/* bit 0 */
#define VBGSEL    	LVDCRbits.VBGSEL    	/* bit 2 */
#define LVDS0     	LVDCRbits.LVDS0     	/* bit 3 */
#define LVDS1     	LVDCRbits.LVDS1     	/* bit 4 */
#define LVDS2     	LVDCRbits.LVDS2     	/* bit 5 */
#define LVDS3     	LVDCRbits.LVDS3     	/* bit 6 */
#define LVDEN     	LVDCRbits.LVDEN     	/* bit 7 */

// ----- ADCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADCHS0:1;
		unsigned char ADCHS1:1;
		unsigned char ADCKS0:1;
		unsigned char ADCKS1:1;
		unsigned char VREF_ICTL:1;
		unsigned char PGA_EN:1;
		unsigned char CHOP_EN:1;
		unsigned char ADEN:1;
	};
} __ADCR0bits_t;
extern volatile __ADCR0bits_t __at(ADCR0_ADDR) ADCR0bits;

#define ADCHS0    	ADCR0bits.ADCHS0    	/* bit 0 */
#define ADCHS1    	ADCR0bits.ADCHS1    	/* bit 1 */
#define ADCKS0    	ADCR0bits.ADCKS0    	/* bit 2 */
#define ADCKS1    	ADCR0bits.ADCKS1    	/* bit 3 */
#define VREF_ICTL 	ADCR0bits.VREF_ICTL 	/* bit 4 */
#define PGA_EN    	ADCR0bits.PGA_EN    	/* bit 5 */
#define CHOP_EN   	ADCR0bits.CHOP_EN   	/* bit 6 */
#define ADEN      	ADCR0bits.ADEN      	/* bit 7 */

// ----- ADCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PGS0:1;
		unsigned char PGS1:1;
		unsigned char PGS2:1;
		unsigned char PGS3:1;
		unsigned char ADHS0:1;
		unsigned char ADHS1:1;
		unsigned char ADHS2:1;
		unsigned char ADHS3:1;
	};
} __ADCR1bits_t;
extern volatile __ADCR1bits_t __at(ADCR1_ADDR) ADCR1bits;

#define PGS0      	ADCR1bits.PGS0      	/* bit 0 */
#define PGS1      	ADCR1bits.PGS1      	/* bit 1 */
#define PGS2      	ADCR1bits.PGS2      	/* bit 2 */
#define PGS3      	ADCR1bits.PGS3      	/* bit 3 */
#define ADHS0     	ADCR1bits.ADHS0     	/* bit 4 */
#define ADHS1     	ADCR1bits.ADHS1     	/* bit 5 */
#define ADHS2     	ADCR1bits.ADHS2     	/* bit 6 */
#define ADHS3     	ADCR1bits.ADHS3     	/* bit 7 */

// ----- ADCR2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADC_ICTL0:1;
		unsigned char ADC_ICTL1:1;
		unsigned char ADC_ICTL2:1;
		unsigned char ADC_ICTL3:1;
		unsigned char ADC_ICTL4:1;
		unsigned char ADC_ICTL5:1;
		unsigned char T_PGA_OUT_ENB:1;
		unsigned char T_ADC_IN_ENB:1;
	};
} __ADCR2bits_t;
extern volatile __ADCR2bits_t __at(ADCR2_ADDR) ADCR2bits;

#define ADC_ICTL0 	ADCR2bits.ADC_ICTL0 	/* bit 0 */
#define ADC_ICTL1 	ADCR2bits.ADC_ICTL1 	/* bit 1 */
#define ADC_ICTL2 	ADCR2bits.ADC_ICTL2 	/* bit 2 */
#define ADC_ICTL3 	ADCR2bits.ADC_ICTL3 	/* bit 3 */
#define ADC_ICTL4 	ADCR2bits.ADC_ICTL4 	/* bit 4 */
#define ADC_ICTL5 	ADCR2bits.ADC_ICTL5 	/* bit 5 */
#define T_PGA_OUT_ENB	ADCR2bits.T_PGA_OUT_ENB	/* bit 6 */
#define T_ADC_IN_ENB	ADCR2bits.T_ADC_IN_ENB	/* bit 7 */

// ----- TPSC Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TPS_TST0:1;
		unsigned char TPS_TST1:1;
		unsigned char PT_TS:1;
		unsigned char VBGEN:1;
		unsigned char VLDOEN:1;
		unsigned char VLDOSL1:1;
		unsigned char VLDOSL0:1;
		unsigned char ADC_T:1;
	};
} __TPSCbits_t;
extern volatile __TPSCbits_t __at(TPSC_ADDR) TPSCbits;

#define TPS_TST0  	TPSCbits.TPS_TST0   	/* bit 0 */
#define TPS_TST1  	TPSCbits.TPS_TST1   	/* bit 1 */
#define PT_TS     	TPSCbits.PT_TS      	/* bit 2 */
#define VBGEN     	TPSCbits.VBGEN      	/* bit 3 */
#define VLDOEN    	TPSCbits.VLDOEN     	/* bit 4 */
#define VLDOSL1   	TPSCbits.VLDOSL1    	/* bit 5 */
#define VLDOSL0   	TPSCbits.VLDOSL0    	/* bit 6 */
#define ADC_T     	TPSCbits.ADC_T      	/* bit 7 */

// ----- ADRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADR16:1;
		unsigned char ADR17:1;
		unsigned char ADR18:1;
		unsigned char ADR19:1;
		unsigned char ADR20:1;
		unsigned char ADR21:1;
		unsigned char ADR22:1;
		unsigned char ADR23:1;
	};
} __ADRHbits_t;
extern volatile __ADRHbits_t __at(ADRH_ADDR) ADRHbits;

#define ADR16     	ADRHbits.ADR16      	/* bit 0 */
#define ADR17     	ADRHbits.ADR17      	/* bit 1 */
#define ADR18     	ADRHbits.ADR18      	/* bit 2 */
#define ADR19     	ADRHbits.ADR19      	/* bit 3 */
#define ADR20     	ADRHbits.ADR20      	/* bit 4 */
#define ADR21     	ADRHbits.ADR21      	/* bit 5 */
#define ADR22     	ADRHbits.ADR22      	/* bit 6 */
#define ADR23     	ADRHbits.ADR23      	/* bit 7 */

// ----- ADRM Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADR8:1;
		unsigned char ADR9:1;
		unsigned char ADR10:1;
		unsigned char ADR11:1;
		unsigned char ADR12:1;
		unsigned char ADR13:1;
		unsigned char ADR14:1;
		unsigned char ADR15:1;
	};
} __ADRMbits_t;
extern volatile __ADRMbits_t __at(ADRM_ADDR) ADRMbits;

#define ADR8      	ADRMbits.ADR8       	/* bit 0 */
#define ADR9      	ADRMbits.ADR9       	/* bit 1 */
#define ADR10     	ADRMbits.ADR10      	/* bit 2 */
#define ADR11     	ADRMbits.ADR11      	/* bit 3 */
#define ADR12     	ADRMbits.ADR12      	/* bit 4 */
#define ADR13     	ADRMbits.ADR13      	/* bit 5 */
#define ADR14     	ADRMbits.ADR14      	/* bit 6 */
#define ADR15     	ADRMbits.ADR15      	/* bit 7 */

// ----- ADRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADR0:1;
		unsigned char ADR1:1;
		unsigned char ADR2:1;
		unsigned char ADR3:1;
		unsigned char ADR4:1;
		unsigned char ADR5:1;
		unsigned char ADR6:1;
		unsigned char ADR7:1;
	};
} __ADRLbits_t;
extern volatile __ADRLbits_t __at(ADRL_ADDR) ADRLbits;

#define ADR0      	ADRLbits.ADR0       	/* bit 0 */
#define ADR1      	ADRLbits.ADR1       	/* bit 1 */
#define ADR2      	ADRLbits.ADR2       	/* bit 2 */
#define ADR3      	ADRLbits.ADR3       	/* bit 3 */
#define ADR4      	ADRLbits.ADR4       	/* bit 4 */
#define ADR5      	ADRLbits.ADR5       	/* bit 5 */
#define ADR6      	ADRLbits.ADR6       	/* bit 6 */
#define ADR7      	ADRLbits.ADR7       	/* bit 7 */

// ----- LCDCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LCDRS0:1;
		unsigned char LCDRS1:1;
		unsigned char LCDSPEED:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char LCDSP0:1;
		unsigned char LCDSP1:1;
		unsigned char LCDEN:1;
	};
} __LCDCR0bits_t;
extern volatile __LCDCR0bits_t __at(LCDCR0_ADDR) LCDCR0bits;

#define LCDRS0    	LCDCR0bits.LCDRS0   	/* bit 0 */
#define LCDRS1    	LCDCR0bits.LCDRS1   	/* bit 1 */
#define LCDSPEED  	LCDCR0bits.LCDSPEED 	/* bit 2 */
#define LCDSP0    	LCDCR0bits.LCDSP0   	/* bit 5 */
#define LCDSP1    	LCDCR0bits.LCDSP1   	/* bit 6 */
#define LCDEN     	LCDCR0bits.LCDEN    	/* bit 7 */

// ----- LCDCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char FLCD0:1;
		unsigned char FLCD1:1;
		unsigned char LCDCKS:1;
		unsigned char LCDM:1;
		unsigned char BEN:1;
		unsigned char LCDDUTY0:1;
		unsigned char LCDDUTY1:1;
		unsigned char :1;
	};
} __LCDCR1bits_t;
extern volatile __LCDCR1bits_t __at(LCDCR1_ADDR) LCDCR1bits;

#define FLCD0     	LCDCR1bits.FLCD0    	/* bit 0 */
#define FLCD1     	LCDCR1bits.FLCD1    	/* bit 1 */
#define LCDCKS    	LCDCR1bits.LCDCKS   	/* bit 2 */
#define LCDM      	LCDCR1bits.LCDM     	/* bit 3 */
#define BEN       	LCDCR1bits.BEN      	/* bit 4 */
#define LCDDUTY0  	LCDCR1bits.LCDDUTY0 	/* bit 5 */
#define LCDDUTY1  	LCDCR1bits.LCDDUTY1 	/* bit 6 */

// ----- LCDIOS1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char SEGIOS2:1;
		unsigned char SEGIOS3:1;
		unsigned char SEGIOS4:1;
		unsigned char SEGIOS5:1;
		unsigned char SEGIOS6:1;
		unsigned char SEGIOS7:1;
		unsigned char SEGIOS8:1;
		unsigned char SEGIOS9:1;
	};
} __LCDIOS1bits_t;
extern volatile __LCDIOS1bits_t __at(LCDIOS1_ADDR) LCDIOS1bits;

#define SEGIOS2   	LCDIOS1bits.SEGIOS2 	/* bit 0 */
#define SEGIOS3   	LCDIOS1bits.SEGIOS3 	/* bit 1 */
#define SEGIOS4   	LCDIOS1bits.SEGIOS4 	/* bit 2 */
#define SEGIOS5   	LCDIOS1bits.SEGIOS5 	/* bit 3 */
#define SEGIOS6   	LCDIOS1bits.SEGIOS6 	/* bit 4 */
#define SEGIOS7   	LCDIOS1bits.SEGIOS7 	/* bit 5 */
#define SEGIOS8   	LCDIOS1bits.SEGIOS8 	/* bit 6 */
#define SEGIOS9   	LCDIOS1bits.SEGIOS9 	/* bit 7 */

// ----- LCDIOS2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char SEGIOS10:1;
		unsigned char SEGIOS11:1;
		unsigned char SEGIOS12:1;
		unsigned char SEGIOS13:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDIOS2bits_t;
extern volatile __LCDIOS2bits_t __at(LCDIOS2_ADDR) LCDIOS2bits;

#define SEGIOS10  	LCDIOS2bits.SEGIOS10	/* bit 0 */
#define SEGIOS11  	LCDIOS2bits.SEGIOS11	/* bit 1 */
#define SEGIOS12  	LCDIOS2bits.SEGIOS12	/* bit 2 */
#define SEGIOS13  	LCDIOS2bits.SEGIOS13	/* bit 3 */

// ----- LCDDS2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG2:1;
		unsigned char COM1SEG2:1;
		unsigned char COM2SEG2:1;
		unsigned char COM3SEG2:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS2bits_t;
extern volatile __LCDDS2bits_t __at(LCDDS2_ADDR) LCDDS2bits;

#define COM0SEG2  	LCDDS2bits.COM0SEG2 	/* bit 0 */
#define COM1SEG2  	LCDDS2bits.COM1SEG2 	/* bit 1 */
#define COM2SEG2  	LCDDS2bits.COM2SEG2 	/* bit 2 */
#define COM3SEG2  	LCDDS2bits.COM3SEG2 	/* bit 3 */

// ----- LCDDS3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG3:1;
		unsigned char COM1SEG3:1;
		unsigned char COM2SEG3:1;
		unsigned char COM3SEG3:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS3bits_t;
extern volatile __LCDDS3bits_t __at(LCDDS3_ADDR) LCDDS3bits;

#define COM0SEG3  	LCDDS3bits.COM0SEG3 	/* bit 0 */
#define COM1SEG3  	LCDDS3bits.COM1SEG3 	/* bit 1 */
#define COM2SEG3  	LCDDS3bits.COM2SEG3 	/* bit 2 */
#define COM3SEG3  	LCDDS3bits.COM3SEG3 	/* bit 3 */

// ----- LCDDS4 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG4:1;
		unsigned char COM1SEG4:1;
		unsigned char COM2SEG4:1;
		unsigned char COM3SEG4:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS4bits_t;
extern volatile __LCDDS4bits_t __at(LCDDS4_ADDR) LCDDS4bits;

#define COM0SEG4  	LCDDS4bits.COM0SEG4 	/* bit 0 */
#define COM1SEG4  	LCDDS4bits.COM1SEG4 	/* bit 1 */
#define COM2SEG4  	LCDDS4bits.COM2SEG4 	/* bit 2 */
#define COM3SEG4  	LCDDS4bits.COM3SEG4 	/* bit 3 */

// ----- LCDDS5 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG5:1;
		unsigned char COM1SEG5:1;
		unsigned char COM2SEG5:1;
		unsigned char COM3SEG5:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS5bits_t;
extern volatile __LCDDS5bits_t __at(LCDDS5_ADDR) LCDDS5bits;

#define COM0SEG5  	LCDDS5bits.COM0SEG5 	/* bit 0 */
#define COM1SEG5  	LCDDS5bits.COM1SEG5 	/* bit 1 */
#define COM2SEG5  	LCDDS5bits.COM2SEG5 	/* bit 2 */
#define COM3SEG5  	LCDDS5bits.COM3SEG5 	/* bit 3 */

// ----- LCDDS6 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG6:1;
		unsigned char COM1SEG6:1;
		unsigned char COM2SEG6:1;
		unsigned char COM3SEG6:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS6bits_t;
extern volatile __LCDDS6bits_t __at(LCDDS6_ADDR) LCDDS6bits;

#define COM0SEG6  	LCDDS6bits.COM0SEG6 	/* bit 0 */
#define COM1SEG6  	LCDDS6bits.COM1SEG6 	/* bit 1 */
#define COM2SEG6  	LCDDS6bits.COM2SEG6 	/* bit 2 */
#define COM3SEG6  	LCDDS6bits.COM3SEG6 	/* bit 3 */

// ----- LCDDS7 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG7:1;
		unsigned char COM1SEG7:1;
		unsigned char COM2SEG7:1;
		unsigned char COM3SEG7:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS7bits_t;
extern volatile __LCDDS7bits_t __at(LCDDS7_ADDR) LCDDS7bits;

#define COM0SEG7  	LCDDS7bits.COM0SEG7 	/* bit 0 */
#define COM1SEG7  	LCDDS7bits.COM1SEG7 	/* bit 1 */
#define COM2SEG7  	LCDDS7bits.COM2SEG7 	/* bit 2 */
#define COM3SEG7  	LCDDS7bits.COM3SEG7 	/* bit 3 */

// ----- LCDDS8 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG8:1;
		unsigned char COM1SEG8:1;
		unsigned char COM2SEG8:1;
		unsigned char COM3SEG8:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS8bits_t;
extern volatile __LCDDS8bits_t __at(LCDDS8_ADDR) LCDDS8bits;

#define COM0SEG8  	LCDDS8bits.COM0SEG8 	/* bit 0 */
#define COM1SEG8  	LCDDS8bits.COM1SEG8 	/* bit 1 */
#define COM2SEG8  	LCDDS8bits.COM2SEG8 	/* bit 2 */
#define COM3SEG8  	LCDDS8bits.COM3SEG8 	/* bit 3 */

// ----- LCDDS9 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG9:1;
		unsigned char COM1SEG9:1;
		unsigned char COM2SEG9:1;
		unsigned char COM3SEG9:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS9bits_t;
extern volatile __LCDDS9bits_t __at(LCDDS9_ADDR) LCDDS9bits;

#define COM0SEG9  	LCDDS9bits.COM0SEG9 	/* bit 0 */
#define COM1SEG9  	LCDDS9bits.COM1SEG9 	/* bit 1 */
#define COM2SEG9  	LCDDS9bits.COM2SEG9 	/* bit 2 */
#define COM3SEG9  	LCDDS9bits.COM3SEG9 	/* bit 3 */

// ----- LCDDS10 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG10:1;
		unsigned char COM1SEG10:1;
		unsigned char COM2SEG10:1;
		unsigned char COM3SEG10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS10bits_t;
extern volatile __LCDDS10bits_t __at(LCDDS10_ADDR) LCDDS10bits;

#define COM0SEG10 	LCDDS10bits.COM0SEG10	/* bit 0 */
#define COM1SEG10 	LCDDS10bits.COM1SEG10	/* bit 1 */
#define COM2SEG10 	LCDDS10bits.COM2SEG10	/* bit 2 */
#define COM3SEG10 	LCDDS10bits.COM3SEG10	/* bit 3 */

// ----- LCDDS11 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG11:1;
		unsigned char COM1SEG11:1;
		unsigned char COM2SEG11:1;
		unsigned char COM3SEG11:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS11bits_t;
extern volatile __LCDDS11bits_t __at(LCDDS11_ADDR) LCDDS11bits;

#define COM0SEG11 	LCDDS11bits.COM0SEG11	/* bit 0 */
#define COM1SEG11 	LCDDS11bits.COM1SEG11	/* bit 1 */
#define COM2SEG11 	LCDDS11bits.COM2SEG11	/* bit 2 */
#define COM3SEG11 	LCDDS11bits.COM3SEG11	/* bit 3 */

// ----- LCDDS12 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG12:1;
		unsigned char COM1SEG12:1;
		unsigned char COM2SEG12:1;
		unsigned char COM3SEG12:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS12bits_t;
extern volatile __LCDDS12bits_t __at(LCDDS12_ADDR) LCDDS12bits;

#define COM0SEG12 	LCDDS12bits.COM0SEG12	/* bit 0 */
#define COM1SEG12 	LCDDS12bits.COM1SEG12	/* bit 1 */
#define COM2SEG12 	LCDDS12bits.COM2SEG12	/* bit 2 */
#define COM3SEG12 	LCDDS12bits.COM3SEG12	/* bit 3 */

// ----- LCDDS13 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG13:1;
		unsigned char COM1SEG13:1;
		unsigned char COM2SEG13:1;
		unsigned char COM3SEG13:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS13bits_t;
extern volatile __LCDDS13bits_t __at(LCDDS13_ADDR) LCDDS13bits;

#define COM0SEG13 	LCDDS13bits.COM0SEG13	/* bit 0 */
#define COM1SEG13 	LCDDS13bits.COM1SEG13	/* bit 1 */
#define COM2SEG13 	LCDDS13bits.COM2SEG13	/* bit 2 */
#define COM3SEG13 	LCDDS13bits.COM3SEG13	/* bit 3 */

#endif
