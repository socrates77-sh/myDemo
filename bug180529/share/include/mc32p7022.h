#ifndef MC32P7022_H
#define MC32P7022_H

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
#define PDP0_ADDR       	0x0193
#define KBCR_ADDR       	0x0197
#define T0CR0_ADDR      	0x01A0
#define T0CNT_ADDR      	0x01A1
#define T0LOAD_ADDR     	0x01A2
#define T00DATA_ADDR    	0x01A3
#define T1CR_ADDR       	0x01A4
#define T1CNT_ADDR      	0x01A5
#define T1LOAD_ADDR     	0x01A6
#define T1DATA_ADDR     	0x01A7
#define T0CR1_ADDR      	0x01A8
#define T01DATA_ADDR    	0x01A9
#define LXTCR_ADDR      	0x01AC
#define LVDCR_ADDR      	0x01AD
#define OSCM_ADDR       	0x01AE
#define ADCR0_ADDR      	0x01B0
#define ADCR1_ADDR      	0x01B1
#define ADCR2_ADDR      	0x01B2
#define ADIOS_ADDR      	0x01B3
#define ADRH_ADDR       	0x01B8
#define ADRL_ADDR       	0x01B9
#define KEYCR0_ADDR     	0x01BC
#define KEYCR1_ADDR     	0x01BD

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
extern __sfr __at (PDP0_ADDR)     	PDP0;
extern __sfr __at (KBCR_ADDR)     	KBCR;
extern __sfr __at (T0CR0_ADDR)    	T0CR0;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T0LOAD_ADDR)   	T0LOAD;
extern __sfr __at (T00DATA_ADDR)  	T00DATA;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNT_ADDR)    	T1CNT;
extern __sfr __at (T1LOAD_ADDR)   	T1LOAD;
extern __sfr __at (T1DATA_ADDR)   	T1DATA;
extern __sfr __at (T0CR1_ADDR)    	T0CR1;
extern __sfr __at (T01DATA_ADDR)  	T01DATA;
extern __sfr __at (LXTCR_ADDR)    	LXTCR;
extern __sfr __at (LVDCR_ADDR)    	LVDCR;
extern __sfr __at (OSCM_ADDR)     	OSCM;
extern __sfr __at (ADCR0_ADDR)    	ADCR0;
extern __sfr __at (ADCR1_ADDR)    	ADCR1;
extern __sfr __at (ADCR2_ADDR)    	ADCR2;
extern __sfr __at (ADIOS_ADDR)    	ADIOS;
extern __sfr __at (ADRH_ADDR)     	ADRH;
extern __sfr __at (ADRL_ADDR)     	ADRL;
extern __sfr __at (KEYCR0_ADDR)   	KEYCR0;
extern __sfr __at (KEYCR1_ADDR)   	KEYCR1;

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
		unsigned char KBIE:1;
		unsigned char LVDIE:1;
		unsigned char ADIE:1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define KBIE      	INTEbits.KBIE       	/* bit 4 */
#define LVDIE     	INTEbits.LVDIE      	/* bit 5 */
#define ADIE      	INTEbits.ADIE       	/* bit 6 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char KBIF:1;
		unsigned char LVDIF:1;
		unsigned char ADIF:1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define KBIF      	INTFbits.KBIF       	/* bit 4 */
#define LVDIF     	INTFbits.LVDIF      	/* bit 5 */
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

// ----- PDP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00PD:1;
		unsigned char P01PD:1;
		unsigned char P02PD:1;
		unsigned char P03PD:1;
		unsigned char P04PD:1;
		unsigned char P05PD:1;
		unsigned char P06PD:1;
		unsigned char :1;
	};
} __PDP0bits_t;
extern volatile __PDP0bits_t __at(PDP0_ADDR) PDP0bits;

#define P00PD     	PDP0bits.P00PD      	/* bit 0 */
#define P01PD     	PDP0bits.P01PD      	/* bit 1 */
#define P02PD     	PDP0bits.P02PD      	/* bit 2 */
#define P03PD     	PDP0bits.P03PD      	/* bit 3 */
#define P04PD     	PDP0bits.P04PD      	/* bit 4 */
#define P05PD     	PDP0bits.P05PD      	/* bit 5 */
#define P06PD     	PDP0bits.P06PD      	/* bit 6 */

// ----- KBCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char KBCR0:1;
		unsigned char KBCR1:1;
		unsigned char KBCR2:1;
		unsigned char KBCR3:1;
		unsigned char KBCR4:1;
		unsigned char KBCR5:1;
		unsigned char KBCR6:1;
		unsigned char KBCR7:1;
	};
} __KBCRbits_t;
extern volatile __KBCRbits_t __at(KBCR_ADDR) KBCRbits;

#define KBCR0     	KBCRbits.KBCR0      	/* bit 0 */
#define KBCR1     	KBCRbits.KBCR1      	/* bit 1 */
#define KBCR2     	KBCRbits.KBCR2      	/* bit 2 */
#define KBCR3     	KBCRbits.KBCR3      	/* bit 3 */
#define KBCR4     	KBCRbits.KBCR4      	/* bit 4 */
#define KBCR5     	KBCRbits.KBCR5      	/* bit 5 */
#define KBCR6     	KBCRbits.KBCR6      	/* bit 6 */
#define KBCR7     	KBCRbits.KBCR7      	/* bit 7 */

// ----- T0CR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0PR0:1;
		unsigned char T0PR1:1;
		unsigned char T0PR2:1;
		unsigned char T0PTS0:1;
		unsigned char T0PTS1:1;
		unsigned char BUZ00OE:1;
		unsigned char PWM00OE:1;
		unsigned char TC0EN:1;
	};
} __T0CR0bits_t;
extern volatile __T0CR0bits_t __at(T0CR0_ADDR) T0CR0bits;

#define T0PR0     	T0CR0bits.T0PR0     	/* bit 0 */
#define T0PR1     	T0CR0bits.T0PR1     	/* bit 1 */
#define T0PR2     	T0CR0bits.T0PR2     	/* bit 2 */
#define T0PTS0    	T0CR0bits.T0PTS0    	/* bit 3 */
#define T0PTS1    	T0CR0bits.T0PTS1    	/* bit 4 */
#define BUZ00OE   	T0CR0bits.BUZ00OE   	/* bit 5 */
#define PWM00OE   	T0CR0bits.PWM00OE   	/* bit 6 */
#define TC0EN     	T0CR0bits.TC0EN     	/* bit 7 */

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

// ----- T00DATA Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T00DATA0:1;
		unsigned char T00DATA1:1;
		unsigned char T00DATA2:1;
		unsigned char T00DATA3:1;
		unsigned char T00DATA4:1;
		unsigned char T00DATA5:1;
		unsigned char T00DATA6:1;
		unsigned char T00DATA7:1;
	};
} __T00DATAbits_t;
extern volatile __T00DATAbits_t __at(T00DATA_ADDR) T00DATAbits;

#define T00DATA0  	T00DATAbits.T00DATA0	/* bit 0 */
#define T00DATA1  	T00DATAbits.T00DATA1	/* bit 1 */
#define T00DATA2  	T00DATAbits.T00DATA2	/* bit 2 */
#define T00DATA3  	T00DATAbits.T00DATA3	/* bit 3 */
#define T00DATA4  	T00DATAbits.T00DATA4	/* bit 4 */
#define T00DATA5  	T00DATAbits.T00DATA5	/* bit 5 */
#define T00DATA6  	T00DATAbits.T00DATA6	/* bit 6 */
#define T00DATA7  	T00DATAbits.T00DATA7	/* bit 7 */

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

// ----- T0CR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char BUZ01OE:1;
		unsigned char PWM01OE:1;
		unsigned char :1;
	};
} __T0CR1bits_t;
extern volatile __T0CR1bits_t __at(T0CR1_ADDR) T0CR1bits;

#define BUZ01OE   	T0CR1bits.BUZ01OE   	/* bit 5 */
#define PWM01OE   	T0CR1bits.PWM01OE   	/* bit 6 */

// ----- T01DATA Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T01DATA0:1;
		unsigned char T01DATA1:1;
		unsigned char T01DATA2:1;
		unsigned char T01DATA3:1;
		unsigned char T01DATA4:1;
		unsigned char T01DATA5:1;
		unsigned char T01DATA6:1;
		unsigned char T01DATA7:1;
	};
} __T01DATAbits_t;
extern volatile __T01DATAbits_t __at(T01DATA_ADDR) T01DATAbits;

#define T01DATA0  	T01DATAbits.T01DATA0	/* bit 0 */
#define T01DATA1  	T01DATAbits.T01DATA1	/* bit 1 */
#define T01DATA2  	T01DATAbits.T01DATA2	/* bit 2 */
#define T01DATA3  	T01DATAbits.T01DATA3	/* bit 3 */
#define T01DATA4  	T01DATAbits.T01DATA4	/* bit 4 */
#define T01DATA5  	T01DATAbits.T01DATA5	/* bit 5 */
#define T01DATA6  	T01DATAbits.T01DATA6	/* bit 6 */
#define T01DATA7  	T01DATAbits.T01DATA7	/* bit 7 */

// ----- LXTCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LPEN0:1;
		unsigned char LPEN1:1;
		unsigned char LPEN2:1;
		unsigned char FILS:1;
		unsigned char VDLSEL:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LXTCRbits_t;
extern volatile __LXTCRbits_t __at(LXTCR_ADDR) LXTCRbits;

#define LPEN0     	LXTCRbits.LPEN0     	/* bit 0 */
#define LPEN1     	LXTCRbits.LPEN1     	/* bit 1 */
#define LPEN2     	LXTCRbits.LPEN2     	/* bit 2 */
#define FILS      	LXTCRbits.FILS      	/* bit 3 */
#define VDLSEL    	LXTCRbits.VDLSEL    	/* bit 4 */

// ----- LVDCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LVDF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char LVDS0:1;
		unsigned char LVDS1:1;
		unsigned char LVDS2:1;
		unsigned char LVDS3:1;
		unsigned char LVDEN:1;
	};
} __LVDCRbits_t;
extern volatile __LVDCRbits_t __at(LVDCR_ADDR) LVDCRbits;

#define LVDF      	LVDCRbits.LVDF      	/* bit 0 */
#define LVDS0     	LVDCRbits.LVDS0     	/* bit 3 */
#define LVDS1     	LVDCRbits.LVDS1     	/* bit 4 */
#define LVDS2     	LVDCRbits.LVDS2     	/* bit 5 */
#define LVDS3     	LVDCRbits.LVDS3     	/* bit 6 */
#define LVDEN     	LVDCRbits.LVDEN     	/* bit 7 */

// ----- OSCM Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char HFEN:1;
		unsigned char LFEN:1;
		unsigned char CLKS:1;
		unsigned char :1;
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
#define STBH      	OSCMbits.STBH       	/* bit 4 */
#define STBL      	OSCMbits.STBL       	/* bit 5 */

// ----- ADCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADON:1;
		unsigned char ADEOC:1;
		unsigned char :1;
		unsigned char ADCHS0:1;
		unsigned char ADCHS1:1;
		unsigned char ADCHS2:1;
		unsigned char ADCHS3:1;
		unsigned char :1;
	};
} __ADCR0bits_t;
extern volatile __ADCR0bits_t __at(ADCR0_ADDR) ADCR0bits;

#define ADON      	ADCR0bits.ADON      	/* bit 0 */
#define ADEOC     	ADCR0bits.ADEOC     	/* bit 1 */
#define ADST     	ADCR0bits.ADEOC     	/* bit 1 */
#define ADCHS0    	ADCR0bits.ADCHS0    	/* bit 3 */
#define ADCHS1    	ADCR0bits.ADCHS1    	/* bit 4 */
#define ADCHS2    	ADCR0bits.ADCHS2    	/* bit 5 */
#define ADCHS3    	ADCR0bits.ADCHS3    	/* bit 6 */

// ----- ADCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char ADCKS0:1;
		unsigned char ADCKS1:1;
		unsigned char ADREF0:1;
		unsigned char ADREF1:1;
		unsigned char ADREF2:1;
		unsigned char ADREF3:1;
		unsigned char ADTEN:1;
	};
} __ADCR1bits_t;
extern volatile __ADCR1bits_t __at(ADCR1_ADDR) ADCR1bits;

#define ADCKS0    	ADCR1bits.ADCKS0    	/* bit 1 */
#define ADCKS1    	ADCR1bits.ADCKS1    	/* bit 2 */
#define ADREF0    	ADCR1bits.ADREF0    	/* bit 3 */
#define ADREF1    	ADCR1bits.ADREF1    	/* bit 4 */
#define ADREF2    	ADCR1bits.ADREF2    	/* bit 5 */
#define ADREF3    	ADCR1bits.ADREF3    	/* bit 6 */
#define ADTEN     	ADCR1bits.ADTEN     	/* bit 7 */

// ----- ADCR2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADSMP0:1;
		unsigned char ADSMP1:1;
		unsigned char ADSMP2:1;
		unsigned char ADSMP3:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __ADCR2bits_t;
extern volatile __ADCR2bits_t __at(ADCR2_ADDR) ADCR2bits;

#define ADSMP0    	ADCR2bits.ADSMP0    	/* bit 0 */
#define ADSMP1    	ADCR2bits.ADSMP1    	/* bit 1 */
#define ADSMP2    	ADCR2bits.ADSMP2    	/* bit 2 */
#define ADSMP3    	ADCR2bits.ADSMP3    	/* bit 3 */

// ----- ADIOS Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADIOS0:1;
		unsigned char ADIOS1:1;
		unsigned char ADIOS2:1;
		unsigned char ADIOS3:1;
		unsigned char ADIOS4:1;
		unsigned char ADIOS5:1;
		unsigned char ADIOS6:1;
		unsigned char :1;
	};
} __ADIOSbits_t;
extern volatile __ADIOSbits_t __at(ADIOS_ADDR) ADIOSbits;

#define ADIOS0    	ADIOSbits.ADIOS0    	/* bit 0 */
#define ADIOS1    	ADIOSbits.ADIOS1    	/* bit 1 */
#define ADIOS2    	ADIOSbits.ADIOS2    	/* bit 2 */
#define ADIOS3    	ADIOSbits.ADIOS3    	/* bit 3 */
#define ADIOS4    	ADIOSbits.ADIOS4    	/* bit 4 */
#define ADIOS5    	ADIOSbits.ADIOS5    	/* bit 5 */
#define ADIOS6    	ADIOSbits.ADIOS6    	/* bit 6 */

// ----- ADRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADR4:1;
		unsigned char ADR5:1;
		unsigned char ADR6:1;
		unsigned char ADR7:1;
		unsigned char ADR8:1;
		unsigned char ADR9:1;
		unsigned char ADR10:1;
		unsigned char ADR11:1;
	};
} __ADRHbits_t;
extern volatile __ADRHbits_t __at(ADRH_ADDR) ADRHbits;

#define ADR4      	ADRHbits.ADR4       	/* bit 0 */
#define ADR5      	ADRHbits.ADR5       	/* bit 1 */
#define ADR6      	ADRHbits.ADR6       	/* bit 2 */
#define ADR7      	ADRHbits.ADR7       	/* bit 3 */
#define ADR8      	ADRHbits.ADR8       	/* bit 4 */
#define ADR9      	ADRHbits.ADR9       	/* bit 5 */
#define ADR10     	ADRHbits.ADR10      	/* bit 6 */
#define ADR11     	ADRHbits.ADR11      	/* bit 7 */

// ----- ADRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADR0:1;
		unsigned char ADR1:1;
		unsigned char ADR2:1;
		unsigned char ADR3:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __ADRLbits_t;
extern volatile __ADRLbits_t __at(ADRL_ADDR) ADRLbits;

#define ADR0      	ADRLbits.ADR0       	/* bit 0 */
#define ADR1      	ADRLbits.ADR1       	/* bit 1 */
#define ADR2      	ADRLbits.ADR2       	/* bit 2 */
#define ADR3      	ADRLbits.ADR3       	/* bit 3 */

// ----- KEYCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char KEYEN:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char MOSDIS:1;
	};
} __KEYCR0bits_t;
extern volatile __KEYCR0bits_t __at(KEYCR0_ADDR) KEYCR0bits;

#define KEYEN     	KEYCR0bits.KEYEN    	/* bit 0 */
#define MOSDIS    	KEYCR0bits.MOSDIS   	/* bit 7 */

// ----- KEYCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char KEYFLG:1;
		unsigned char DFILS0:1;
		unsigned char DFILS1:1;
		unsigned char KEYVS0:1;
		unsigned char KEYVS1:1;
		unsigned char CMPVS0:1;
		unsigned char CMPVS1:1;
	};
} __KEYCR1bits_t;
extern volatile __KEYCR1bits_t __at(KEYCR1_ADDR) KEYCR1bits;

#define KEYFLG    	KEYCR1bits.KEYFLG   	/* bit 1 */
#define CMPHYS    	KEYCR1bits.KEYFLG   	/* bit 1 */
#define DFILS0    	KEYCR1bits.DFILS0   	/* bit 2 */
#define DFILS1    	KEYCR1bits.DFILS1   	/* bit 3 */
#define KEYVS0    	KEYCR1bits.KEYVS0   	/* bit 4 */
#define KEYVS1    	KEYCR1bits.KEYVS1   	/* bit 5 */
#define CMPVS0    	KEYCR1bits.CMPVS0   	/* bit 6 */
#define CMPVS1    	KEYCR1bits.CMPVS1   	/* bit 7 */

#endif
