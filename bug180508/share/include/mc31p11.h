#ifndef MC31P11_H
#define MC31P11_H

#include <mc32-common.h>

//
// Register addresses.
//
#define INDF_ADDR       	0x0000
#define FSR_ADDR        	0x0001
#define PCL_ADDR        	0x0002
#define PFLAG_ADDR      	0x0003
#define MCR_ADDR        	0x0004
#define INTE_ADDR       	0x0005
#define INTF_ADDR       	0x0006
#define IOP0_ADDR       	0x0007
#define OEP0_ADDR       	0x0008
#define PUP0_ADDR       	0x0009
#define DKWP0_ADDR      	0x000A
#define IOP1_ADDR       	0x000B
#define OEP1_ADDR       	0x000C
#define PUP1_ADDR       	0x000D
#define DKWP1_ADDR      	0x000E
#define DKW_ADDR        	0x000F

//----- Register Files -----------------------------------------------------

extern __sfr __at (INDF_ADDR)     	INDF;
extern __sfr __at (FSR_ADDR)      	FSR;
extern __sfr __at (PCL_ADDR)      	PCL;
extern __sfr __at (PFLAG_ADDR)    	PFLAG;
extern __sfr __at (MCR_ADDR)      	MCR;
extern __sfr __at (INTE_ADDR)     	INTE;
extern __sfr __at (INTF_ADDR)     	INTF;
extern __sfr __at (IOP0_ADDR)     	IOP0;
extern __sfr __at (OEP0_ADDR)     	OEP0;
extern __sfr __at (PUP0_ADDR)     	PUP0;
extern __sfr __at (DKWP0_ADDR)    	DKWP0;
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (DKWP1_ADDR)    	DKWP1;
extern __sfr __at (DKW_ADDR)      	DKW;

//==========================================================================
//
//	Configuration Bits
//
//==========================================================================

//OPBIT1

//OPBIT0

// ----- INDF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INDF0:1;
		unsigned char INDF1:1;
		unsigned char INDF2:1;
		unsigned char INDF3:1;
		unsigned char INDF4:1;
		unsigned char INDF5:1;
		unsigned char INDF6:1;
		unsigned char INDF7:1;
	};
} __INDFbits_t;
extern volatile __INDFbits_t __at(INDF_ADDR) INDFbits;

#define INDF0     	INDFbits.INDF0      	/* bit 0 */
#define INDF1     	INDFbits.INDF1      	/* bit 1 */
#define INDF2     	INDFbits.INDF2      	/* bit 2 */
#define INDF3     	INDFbits.INDF3      	/* bit 3 */
#define INDF4     	INDFbits.INDF4      	/* bit 4 */
#define INDF5     	INDFbits.INDF5      	/* bit 5 */
#define INDF6     	INDFbits.INDF6      	/* bit 6 */
#define INDF7     	INDFbits.INDF7      	/* bit 7 */

// ----- FSR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char FSR0:1;
		unsigned char FSR1:1;
		unsigned char FSR2:1;
		unsigned char FSR3:1;
		unsigned char FSR4:1;
		unsigned char FSR5:1;
		unsigned char FSR6:1;
		unsigned char FSR7:1;
	};
} __FSRbits_t;
extern volatile __FSRbits_t __at(FSR_ADDR) FSRbits;

#define FSR0      	FSRbits.FSR0        	/* bit 0 */
#define FSR1      	FSRbits.FSR1        	/* bit 1 */
#define FSR2      	FSRbits.FSR2        	/* bit 2 */
#define FSR3      	FSRbits.FSR3        	/* bit 3 */
#define FSR4      	FSRbits.FSR4        	/* bit 4 */
#define FSR5      	FSRbits.FSR5        	/* bit 5 */
#define FSR6      	FSRbits.FSR6        	/* bit 6 */
#define FSR7      	FSRbits.FSR7        	/* bit 7 */

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

// ----- INTE Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char INT0IE:1;
		unsigned char INT1IE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */

// ----- IOP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00D:1;
		unsigned char P01D:1;
		unsigned char P02D:1;
		unsigned char P03D:1;
		unsigned char P04D:1;
		unsigned char P05D:1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP0bits_t;
extern volatile __IOP0bits_t __at(IOP0_ADDR) IOP0bits;

#define P00D      	IOP0bits.P00D       	/* bit 0 */
#define P01D      	IOP0bits.P01D       	/* bit 1 */
#define P02D      	IOP0bits.P02D       	/* bit 2 */
#define P03D      	IOP0bits.P03D       	/* bit 3 */
#define P04D      	IOP0bits.P04D       	/* bit 4 */
#define P05D      	IOP0bits.P05D       	/* bit 5 */

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
		unsigned char :1;
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
		unsigned char :1;
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

// ----- DKWP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00DKW:1;
		unsigned char P01DKW:1;
		unsigned char P02DKW:1;
		unsigned char P03DKW:1;
		unsigned char P04DKW:1;
		unsigned char P05DKW:1;
		unsigned char :1;
		unsigned char :1;
	};
} __DKWP0bits_t;
extern volatile __DKWP0bits_t __at(DKWP0_ADDR) DKWP0bits;

#define P00DKW    	DKWP0bits.P00DKW    	/* bit 0 */
#define P01DKW    	DKWP0bits.P01DKW    	/* bit 1 */
#define P02DKW    	DKWP0bits.P02DKW    	/* bit 2 */
#define P03DKW    	DKWP0bits.P03DKW    	/* bit 3 */
#define P04DKW    	DKWP0bits.P04DKW    	/* bit 4 */
#define P05DKW    	DKWP0bits.P05DKW    	/* bit 5 */

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
#define P16D      	IOP1bits.P16D       	/* bit 6 */

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
#define P16OE     	OEP1bits.P16OE      	/* bit 6 */

// ----- PUP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10PU:1;
		unsigned char P11PU:1;
		unsigned char P12PU:1;
		unsigned char P13PU:1;
		unsigned char P14PU:1;
		unsigned char P15PU:1;
		unsigned char P16PU:1;
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
#define P16PU     	PUP1bits.P16PU      	/* bit 6 */

// ----- DKWP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10DKW:1;
		unsigned char P11DKW:1;
		unsigned char P12DKW:1;
		unsigned char P13DKW:1;
		unsigned char P14DKW:1;
		unsigned char P15DKW:1;
		unsigned char P16DKW:1;
		unsigned char :1;
	};
} __DKWP1bits_t;
extern volatile __DKWP1bits_t __at(DKWP1_ADDR) DKWP1bits;

#define P10DKW    	DKWP1bits.P10DKW    	/* bit 0 */
#define P11DKW    	DKWP1bits.P11DKW    	/* bit 1 */
#define P12DKW    	DKWP1bits.P12DKW    	/* bit 2 */
#define P13DKW    	DKWP1bits.P13DKW    	/* bit 3 */
#define P14DKW    	DKWP1bits.P14DKW    	/* bit 4 */
#define P15DKW    	DKWP1bits.P15DKW    	/* bit 5 */
#define P16DKW    	DKWP1bits.P16DKW    	/* bit 6 */

// ----- DKW Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char DSEL0:1;
		unsigned char DSEL1:1;
		unsigned char WSEL0:1;
		unsigned char WSEL1:1;
		unsigned char LSEL0:1;
		unsigned char LSEL1:1;
		unsigned char RSEL:1;
		unsigned char DKWE:1;
	};
} __DKWbits_t;
extern volatile __DKWbits_t __at(DKW_ADDR) DKWbits;

#define DSEL0     	DKWbits.DSEL0       	/* bit 0 */
#define DSEL1     	DKWbits.DSEL1       	/* bit 1 */
#define WSEL0     	DKWbits.WSEL0       	/* bit 2 */
#define WSEL1     	DKWbits.WSEL1       	/* bit 3 */
#define LSEL0     	DKWbits.LSEL0       	/* bit 4 */
#define LSEL1     	DKWbits.LSEL1       	/* bit 5 */
#define RSEL      	DKWbits.RSEL        	/* bit 6 */
#define DKWE      	DKWbits.DKWE        	/* bit 7 */

#endif
