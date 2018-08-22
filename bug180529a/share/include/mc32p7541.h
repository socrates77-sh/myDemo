#ifndef MC32P7541_H
#define MC32P7541_H

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
#define IOP1_ADDR       	0x0194
#define OEP1_ADDR       	0x0195
#define PUP1_ADDR       	0x0196
#define PDP1_ADDR       	0x0197
#define T0EFR_ADDR      	0x0198
#define T1EFR_ADDR      	0x0199
#define T2CR_ADDR       	0x019C
#define T2CNT_ADDR      	0x019D
#define T2LOAD_ADDR     	0x019E
#define T1DATB_ADDR     	0x019F
#define T0CR_ADDR       	0x01A0
#define T0CNT_ADDR      	0x01A1
#define T0LOAD_ADDR     	0x01A2
#define T0DATA_ADDR     	0x01A3
#define T1CR_ADDR       	0x01A4
#define T1CNT_ADDR      	0x01A5
#define T1LOAD_ADDR     	0x01A6
#define T1DATA_ADDR     	0x01A7
#define AUCR_ADDR       	0x01A8
#define RVOCR_ADDR      	0x01A9
#define VOP0_ADDR       	0x01AA
#define VOP1_ADDR       	0x01AB
#define OSCM_ADDR       	0x01AE
#define ADCR0_ADDR      	0x01B0
#define ADCR1_ADDR      	0x01B1
#define ADIOS0_ADDR     	0x01B2
#define ADIOS1_ADDR     	0x01B3
#define ADRH_ADDR       	0x01B4
#define ADRL_ADDR       	0x01B5

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
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (PDP1_ADDR)     	PDP1;
extern __sfr __at (T0EFR_ADDR)    	T0EFR;
extern __sfr __at (T1EFR_ADDR)    	T1EFR;
extern __sfr __at (T2CR_ADDR)     	T2CR;
extern __sfr __at (T2CNT_ADDR)    	T2CNT;
extern __sfr __at (T2LOAD_ADDR)   	T2LOAD;
extern __sfr __at (T1DATB_ADDR)   	T1DATB;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T0LOAD_ADDR)   	T0LOAD;
extern __sfr __at (T0DATA_ADDR)   	T0DATA;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNT_ADDR)    	T1CNT;
extern __sfr __at (T1LOAD_ADDR)   	T1LOAD;
extern __sfr __at (T1DATA_ADDR)   	T1DATA;
extern __sfr __at (AUCR_ADDR)     	AUCR;
extern __sfr __at (RVOCR_ADDR)    	RVOCR;
extern __sfr __at (VOP0_ADDR)     	VOP0;
extern __sfr __at (VOP1_ADDR)     	VOP1;
extern __sfr __at (OSCM_ADDR)     	OSCM;
extern __sfr __at (ADCR0_ADDR)    	ADCR0;
extern __sfr __at (ADCR1_ADDR)    	ADCR1;
extern __sfr __at (ADIOS0_ADDR)   	ADIOS0;
extern __sfr __at (ADIOS1_ADDR)   	ADIOS1;
extern __sfr __at (ADRH_ADDR)     	ADRH;
extern __sfr __at (ADRL_ADDR)     	ADRL;

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
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char GIE:1;
	};
} __MCRbits_t;
extern volatile __MCRbits_t __at(MCR_ADDR) MCRbits;

#define MINT00    	MCRbits.MINT00      	/* bit 0 */
#define MINT01    	MCRbits.MINT01      	/* bit 1 */
#define MINT10    	MCRbits.MINT10      	/* bit 2 */
#define MINT11    	MCRbits.MINT11      	/* bit 3 */
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
		unsigned char :1;
		unsigned char T2IE:1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define T2IE      	INTEbits.T2IE       	/* bit 7 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char T2IF:1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define T2IF      	INTFbits.T2IF       	/* bit 7 */

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
		unsigned char :1;
		unsigned char :1;
		unsigned char P02PU:1;
		unsigned char :1;
		unsigned char P04PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char P07PU:1;
	};
} __PUP0bits_t;
extern volatile __PUP0bits_t __at(PUP0_ADDR) PUP0bits;

#define P02PU     	PUP0bits.P02PU      	/* bit 2 */
#define P04PU     	PUP0bits.P04PU      	/* bit 4 */
#define P07PU     	PUP0bits.P07PU      	/* bit 7 */

// ----- PDP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char P02PD:1;
		unsigned char :1;
		unsigned char P04PD:1;
		unsigned char P05PD:1;
		unsigned char :1;
		unsigned char :1;
	};
} __PDP0bits_t;
extern volatile __PDP0bits_t __at(PDP0_ADDR) PDP0bits;

#define P02PD     	PDP0bits.P02PD      	/* bit 2 */
#define P04PD     	PDP0bits.P04PD      	/* bit 4 */
#define P05PD     	PDP0bits.P05PD      	/* bit 5 */

// ----- IOP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10D:1;
		unsigned char P11D:1;
		unsigned char P12D:1;
		unsigned char P13D:1;
		unsigned char P14D:1;
		unsigned char P15D:1;
		unsigned char P16D:1;
		unsigned char P17D:1;
	};
} __IOP1bits_t;
extern volatile __IOP1bits_t __at(IOP1_ADDR) IOP1bits;

#define P10D      	IOP1bits.P10D       	/* bit 0 */
#define P11D      	IOP1bits.P11D       	/* bit 1 */
#define P12D      	IOP1bits.P12D       	/* bit 2 */
#define P13D      	IOP1bits.P13D       	/* bit 3 */
#define P14D      	IOP1bits.P14D       	/* bit 4 */
#define P15D      	IOP1bits.P15D       	/* bit 5 */
#define P16D      	IOP1bits.P16D       	/* bit 6 */
#define P17D      	IOP1bits.P17D       	/* bit 7 */

// ----- OEP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10OE:1;
		unsigned char P11OE:1;
		unsigned char P12OE:1;
		unsigned char P13OE:1;
		unsigned char P14OE:1;
		unsigned char P15OE:1;
		unsigned char P16OE:1;
		unsigned char P17OE:1;
	};
} __OEP1bits_t;
extern volatile __OEP1bits_t __at(OEP1_ADDR) OEP1bits;

#define P10OE     	OEP1bits.P10OE      	/* bit 0 */
#define P11OE     	OEP1bits.P11OE      	/* bit 1 */
#define P12OE     	OEP1bits.P12OE      	/* bit 2 */
#define P13OE     	OEP1bits.P13OE      	/* bit 3 */
#define P14OE     	OEP1bits.P14OE      	/* bit 4 */
#define P15OE     	OEP1bits.P15OE      	/* bit 5 */
#define P16OE     	OEP1bits.P16OE      	/* bit 6 */
#define P17OE     	OEP1bits.P17OE      	/* bit 7 */

// ----- PUP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char P12PU:1;
		unsigned char :1;
		unsigned char P14PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char P17PU:1;
	};
} __PUP1bits_t;
extern volatile __PUP1bits_t __at(PUP1_ADDR) PUP1bits;

#define P12PU     	PUP1bits.P12PU      	/* bit 2 */
#define P14PU     	PUP1bits.P14PU      	/* bit 4 */
#define P17PU     	PUP1bits.P17PU      	/* bit 7 */

// ----- PDP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char P16PD:1;
		unsigned char :1;
	};
} __PDP1bits_t;
extern volatile __PDP1bits_t __at(PDP1_ADDR) PDP1bits;

#define P16PD     	PDP1bits.P16PD      	/* bit 6 */

// ----- T0EFR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWM0D0:1;
		unsigned char PWM0D1:1;
		unsigned char PWM0D2:1;
		unsigned char PWM0MD:1;
		unsigned char PWM0NV:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __T0EFRbits_t;
extern volatile __T0EFRbits_t __at(T0EFR_ADDR) T0EFRbits;

#define PWM0D0    	T0EFRbits.PWM0D0    	/* bit 0 */
#define PWM0D1    	T0EFRbits.PWM0D1    	/* bit 1 */
#define PWM0D2    	T0EFRbits.PWM0D2    	/* bit 2 */
#define PWM0MD    	T0EFRbits.PWM0MD    	/* bit 3 */
#define PWM0NV    	T0EFRbits.PWM0NV    	/* bit 4 */

// ----- T1EFR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char PWM1ANV:1;
		unsigned char PWM1BNV:1;
		unsigned char PWM1BOE:1;
		unsigned char :1;
	};
} __T1EFRbits_t;
extern volatile __T1EFRbits_t __at(T1EFR_ADDR) T1EFRbits;

#define PWM1ANV   	T1EFRbits.PWM1ANV   	/* bit 4 */
#define PWM1BNV   	T1EFRbits.PWM1BNV   	/* bit 5 */
#define PWM1BOE   	T1EFRbits.PWM1BOE   	/* bit 6 */

// ----- T2CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2PRS0:1;
		unsigned char T2PRS1:1;
		unsigned char T2PRS2:1;
		unsigned char T2CKS0:1;
		unsigned char T2CKS1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char T2EN:1;
	};
} __T2CRbits_t;
extern volatile __T2CRbits_t __at(T2CR_ADDR) T2CRbits;

#define T2PRS0    	T2CRbits.T2PRS0     	/* bit 0 */
#define T2PRS1    	T2CRbits.T2PRS1     	/* bit 1 */
#define T2PRS2    	T2CRbits.T2PRS2     	/* bit 2 */
#define T2CKS0    	T2CRbits.T2CKS0     	/* bit 3 */
#define T2CKS1    	T2CRbits.T2CKS1     	/* bit 4 */
#define T2EN      	T2CRbits.T2EN       	/* bit 7 */

// ----- T2CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2CNT0:1;
		unsigned char T2CNT1:1;
		unsigned char T2CNT2:1;
		unsigned char T2CNT3:1;
		unsigned char T2CNT4:1;
		unsigned char T2CNT5:1;
		unsigned char T2CNT6:1;
		unsigned char T2CNT7:1;
	};
} __T2CNTbits_t;
extern volatile __T2CNTbits_t __at(T2CNT_ADDR) T2CNTbits;

#define T2CNT0    	T2CNTbits.T2CNT0    	/* bit 0 */
#define T2CNT1    	T2CNTbits.T2CNT1    	/* bit 1 */
#define T2CNT2    	T2CNTbits.T2CNT2    	/* bit 2 */
#define T2CNT3    	T2CNTbits.T2CNT3    	/* bit 3 */
#define T2CNT4    	T2CNTbits.T2CNT4    	/* bit 4 */
#define T2CNT5    	T2CNTbits.T2CNT5    	/* bit 5 */
#define T2CNT6    	T2CNTbits.T2CNT6    	/* bit 6 */
#define T2CNT7    	T2CNTbits.T2CNT7    	/* bit 7 */

// ----- T2LOAD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2LOAD0:1;
		unsigned char T2LOAD1:1;
		unsigned char T2LOAD2:1;
		unsigned char T2LOAD3:1;
		unsigned char T2LOAD4:1;
		unsigned char T2LOAD5:1;
		unsigned char T2LOAD6:1;
		unsigned char T2LOAD7:1;
	};
} __T2LOADbits_t;
extern volatile __T2LOADbits_t __at(T2LOAD_ADDR) T2LOADbits;

#define T2LOAD0   	T2LOADbits.T2LOAD0  	/* bit 0 */
#define T2LOAD1   	T2LOADbits.T2LOAD1  	/* bit 1 */
#define T2LOAD2   	T2LOADbits.T2LOAD2  	/* bit 2 */
#define T2LOAD3   	T2LOADbits.T2LOAD3  	/* bit 3 */
#define T2LOAD4   	T2LOADbits.T2LOAD4  	/* bit 4 */
#define T2LOAD5   	T2LOADbits.T2LOAD5  	/* bit 5 */
#define T2LOAD6   	T2LOADbits.T2LOAD6  	/* bit 6 */
#define T2LOAD7   	T2LOADbits.T2LOAD7  	/* bit 7 */

// ----- T1DATB Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1DATB0:1;
		unsigned char T1DATB1:1;
		unsigned char T1DATB2:1;
		unsigned char T1DATB3:1;
		unsigned char T1DATB4:1;
		unsigned char T1DATB5:1;
		unsigned char T1DATB6:1;
		unsigned char T1DATB7:1;
	};
} __T1DATBbits_t;
extern volatile __T1DATBbits_t __at(T1DATB_ADDR) T1DATBbits;

#define T1DATB0   	T1DATBbits.T1DATB0  	/* bit 0 */
#define T1DATB1   	T1DATBbits.T1DATB1  	/* bit 1 */
#define T1DATB2   	T1DATBbits.T1DATB2  	/* bit 2 */
#define T1DATB3   	T1DATBbits.T1DATB3  	/* bit 3 */
#define T1DATB4   	T1DATBbits.T1DATB4  	/* bit 4 */
#define T1DATB5   	T1DATBbits.T1DATB5  	/* bit 5 */
#define T1DATB6   	T1DATBbits.T1DATB6  	/* bit 6 */
#define T1DATB7   	T1DATBbits.T1DATB7  	/* bit 7 */

// ----- T0CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0PRS0:1;
		unsigned char T0PRS1:1;
		unsigned char T0PRS2:1;
		unsigned char T0CKS0:1;
		unsigned char T0CKS1:1;
		unsigned char BUZ0OE:1;
		unsigned char PWM0OE:1;
		unsigned char T0EN:1;
	};
} __T0CRbits_t;
extern volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;

#define T0PRS0    	T0CRbits.T0PRS0     	/* bit 0 */
#define T0PRS1    	T0CRbits.T0PRS1     	/* bit 1 */
#define T0PRS2    	T0CRbits.T0PRS2     	/* bit 2 */
#define T0CKS0    	T0CRbits.T0CKS0     	/* bit 3 */
#define T0CKS1    	T0CRbits.T0CKS1     	/* bit 4 */
#define BUZ0OE    	T0CRbits.BUZ0OE     	/* bit 5 */
#define PWM0OE    	T0CRbits.PWM0OE     	/* bit 6 */
#define T0EN      	T0CRbits.T0EN       	/* bit 7 */

// ----- T0CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0CNT0:1;
		unsigned char T0CNT1:1;
		unsigned char T0CNT2:1;
		unsigned char T0CNT3:1;
		unsigned char T0CNT4:1;
		unsigned char T0CNT5:1;
		unsigned char T0CNT6:1;
		unsigned char T0CNT7:1;
	};
} __T0CNTbits_t;
extern volatile __T0CNTbits_t __at(T0CNT_ADDR) T0CNTbits;

#define T0CNT0    	T0CNTbits.T0CNT0    	/* bit 0 */
#define T0CNT1    	T0CNTbits.T0CNT1    	/* bit 1 */
#define T0CNT2    	T0CNTbits.T0CNT2    	/* bit 2 */
#define T0CNT3    	T0CNTbits.T0CNT3    	/* bit 3 */
#define T0CNT4    	T0CNTbits.T0CNT4    	/* bit 4 */
#define T0CNT5    	T0CNTbits.T0CNT5    	/* bit 5 */
#define T0CNT6    	T0CNTbits.T0CNT6    	/* bit 6 */
#define T0CNT7    	T0CNTbits.T0CNT7    	/* bit 7 */

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
		unsigned char T1PRS0:1;
		unsigned char T1PRS1:1;
		unsigned char T1PRS2:1;
		unsigned char T1CKS0:1;
		unsigned char T1CKS1:1;
		unsigned char BUZ1OE:1;
		unsigned char PWM1AOE:1;
		unsigned char T1EN:1;
	};
} __T1CRbits_t;
extern volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#define T1PRS0    	T1CRbits.T1PRS0     	/* bit 0 */
#define T1PRS1    	T1CRbits.T1PRS1     	/* bit 1 */
#define T1PRS2    	T1CRbits.T1PRS2     	/* bit 2 */
#define T1CKS0    	T1CRbits.T1CKS0     	/* bit 3 */
#define T1CKS1    	T1CRbits.T1CKS1     	/* bit 4 */
#define BUZ1OE    	T1CRbits.BUZ1OE     	/* bit 5 */
#define PWM1AOE   	T1CRbits.PWM1AOE    	/* bit 6 */
#define T1EN      	T1CRbits.T1EN       	/* bit 7 */

// ----- T1CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1CNT0:1;
		unsigned char T1CNT1:1;
		unsigned char T1CNT2:1;
		unsigned char T1CNT3:1;
		unsigned char T1CNT4:1;
		unsigned char T1CNT5:1;
		unsigned char T1CNT6:1;
		unsigned char T1CNT7:1;
	};
} __T1CNTbits_t;
extern volatile __T1CNTbits_t __at(T1CNT_ADDR) T1CNTbits;

#define T1CNT0    	T1CNTbits.T1CNT0    	/* bit 0 */
#define T1CNT1    	T1CNTbits.T1CNT1    	/* bit 1 */
#define T1CNT2    	T1CNTbits.T1CNT2    	/* bit 2 */
#define T1CNT3    	T1CNTbits.T1CNT3    	/* bit 3 */
#define T1CNT4    	T1CNTbits.T1CNT4    	/* bit 4 */
#define T1CNT5    	T1CNTbits.T1CNT5    	/* bit 5 */
#define T1CNT6    	T1CNTbits.T1CNT6    	/* bit 6 */
#define T1CNT7    	T1CNTbits.T1CNT7    	/* bit 7 */

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

// ----- AUCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char NMOS0ON:1;
		unsigned char PMOS1ON:1;
		unsigned char P11DV:1;
		unsigned char P01DV:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char VEEOS:1;
		unsigned char :1;
	};
} __AUCRbits_t;
extern volatile __AUCRbits_t __at(AUCR_ADDR) AUCRbits;

#define NMOS0ON   	AUCRbits.NMOS0ON    	/* bit 0 */
#define PMOS1ON   	AUCRbits.PMOS1ON    	/* bit 1 */
#define P11DV     	AUCRbits.P11DV      	/* bit 2 */
#define P01DV     	AUCRbits.P01DV      	/* bit 3 */
#define VEEOS     	AUCRbits.VEEOS      	/* bit 6 */

// ----- RVOCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char RVORS0:1;
		unsigned char RVORS1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __RVOCRbits_t;
extern volatile __RVOCRbits_t __at(RVOCR_ADDR) RVOCRbits;

#define RVORS0    	RVOCRbits.RVORS0    	/* bit 0 */
#define RVORS1    	RVOCRbits.RVORS1    	/* bit 1 */

// ----- VOP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00VO:1;
		unsigned char P01VO:1;
		unsigned char P02VO:1;
		unsigned char P03VO:1;
		unsigned char P04VO:1;
		unsigned char P05VO:1;
		unsigned char P06VO:1;
		unsigned char P07VO:1;
	};
} __VOP0bits_t;
extern volatile __VOP0bits_t __at(VOP0_ADDR) VOP0bits;

#define P00VO     	VOP0bits.P00VO      	/* bit 0 */
#define P01VO     	VOP0bits.P01VO      	/* bit 1 */
#define P02VO     	VOP0bits.P02VO      	/* bit 2 */
#define P03VO     	VOP0bits.P03VO      	/* bit 3 */
#define P04VO     	VOP0bits.P04VO      	/* bit 4 */
#define P05VO     	VOP0bits.P05VO      	/* bit 5 */
#define P06VO     	VOP0bits.P06VO      	/* bit 6 */
#define P07VO     	VOP0bits.P07VO      	/* bit 7 */

// ----- VOP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10VO:1;
		unsigned char P11VO:1;
		unsigned char P12VO:1;
		unsigned char P13VO:1;
		unsigned char :1;
		unsigned char P15VO:1;
		unsigned char :1;
		unsigned char P17VO:1;
	};
} __VOP1bits_t;
extern volatile __VOP1bits_t __at(VOP1_ADDR) VOP1bits;

#define P10VO     	VOP1bits.P10VO      	/* bit 0 */
#define P11VO     	VOP1bits.P11VO      	/* bit 1 */
#define P12VO     	VOP1bits.P12VO      	/* bit 2 */
#define P13VO     	VOP1bits.P13VO      	/* bit 3 */
#define P15VO     	VOP1bits.P15VO      	/* bit 5 */
#define P17VO     	VOP1bits.P17VO      	/* bit 7 */

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
		unsigned char ADEN:1;
		unsigned char ADEOC:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char ADCHS0:1;
		unsigned char ADCHS1:1;
		unsigned char ADCHS2:1;
		unsigned char ADCHS3:1;
	};
} __ADCR0bits_t;
extern volatile __ADCR0bits_t __at(ADCR0_ADDR) ADCR0bits;

#define ADEN      	ADCR0bits.ADEN      	/* bit 0 */
#define ADEOC     	ADCR0bits.ADEOC     	/* bit 1 */
#define ADCHS0    	ADCR0bits.ADCHS0    	/* bit 4 */
#define ADCHS1    	ADCR0bits.ADCHS1    	/* bit 5 */
#define ADCHS2    	ADCR0bits.ADCHS2    	/* bit 6 */
#define ADCHS3    	ADCR0bits.ADCHS3    	/* bit 7 */

// ----- ADCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADVRS0:1;
		unsigned char ADVRS1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __ADCR1bits_t;
extern volatile __ADCR1bits_t __at(ADCR1_ADDR) ADCR1bits;

#define ADVRS0    	ADCR1bits.ADVRS0    	/* bit 0 */
#define ADVRS1    	ADCR1bits.ADVRS1    	/* bit 1 */

// ----- ADIOS0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char P02ADS:1;
		unsigned char P03ADS:1;
		unsigned char P04ADS:1;
		unsigned char :1;
		unsigned char P06ADS:1;
		unsigned char :1;
	};
} __ADIOS0bits_t;
extern volatile __ADIOS0bits_t __at(ADIOS0_ADDR) ADIOS0bits;

#define P02ADS    	ADIOS0bits.P02ADS   	/* bit 2 */
#define P03ADS    	ADIOS0bits.P03ADS   	/* bit 3 */
#define P04ADS    	ADIOS0bits.P04ADS   	/* bit 4 */
#define P06ADS    	ADIOS0bits.P06ADS   	/* bit 6 */

// ----- ADIOS1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char P11ADS:1;
		unsigned char P12ADS:1;
		unsigned char P13ADS:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char P16ADS:1;
		unsigned char :1;
	};
} __ADIOS1bits_t;
extern volatile __ADIOS1bits_t __at(ADIOS1_ADDR) ADIOS1bits;

#define P11ADS    	ADIOS1bits.P11ADS   	/* bit 1 */
#define P12ADS    	ADIOS1bits.P12ADS   	/* bit 2 */
#define P13ADS    	ADIOS1bits.P13ADS   	/* bit 3 */
#define P16ADS    	ADIOS1bits.P16ADS   	/* bit 6 */

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

#endif
