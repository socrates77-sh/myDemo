#ifndef MC32P5232_H
#define MC32P5232_H

#include <mc32-common.h>

//
// Register addresses.
//
#define INDF0_ADDR      	0x01B0
#define INDF1_ADDR      	0x01B1
#define INDF2_ADDR      	0x01B2
#define HIBYTE_ADDR     	0x01B3
#define FSR0_ADDR       	0x01B4
#define FSR1_ADDR       	0x01B5
#define PCL_ADDR        	0x01B6
#define PFLAG_ADDR      	0x01B7
#define MCR_ADDR        	0x01B8
#define INDF3_ADDR      	0x01B9
#define INTE_ADDR       	0x01BA
#define INTF_ADDR       	0x01BB
#define OSCM_ADDR       	0x01BC
#define LVDCR_ADDR      	0x01BD
#define MTPADH_ADDR     	0x01C0
#define MTPADL_ADDR     	0x01C1
#define MTPDB_ADDR      	0x01C2
#define MTPMD_ADDR      	0x01C3
#define MTPCTR_ADDR     	0x01C4
#define IOP1_ADDR       	0x01C8
#define OEP1_ADDR       	0x01C9
#define PUP1_ADDR       	0x01CA
#define DKWP1_ADDR      	0x01CE
#define IOP2_ADDR       	0x01D0
#define OEP2_ADDR       	0x01D1
#define PUP2_ADDR       	0x01D2
#define DKWP2_ADDR      	0x01D6
#define T0CR_ADDR       	0x01D8
#define T0LOADH_ADDR    	0x01D9
#define T0LOADL_ADDR    	0x01DA
#define T0LATRH_ADDR    	0x01DB
#define T0LATRL_ADDR    	0x01DC
#define T0LATFH_ADDR    	0x01DD
#define T0LATFL_ADDR    	0x01DE
#define T1CR_ADDR       	0x01E0
#define T1DATA_ADDR     	0x01E1
#define T1LOAD_ADDR     	0x01E2
#define OPCR0_ADDR      	0x01E4
#define DKW0_ADDR       	0x01E6

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
extern __sfr __at (OSCM_ADDR)     	OSCM;
extern __sfr __at (LVDCR_ADDR)    	LVDCR;
extern __sfr __at (MTPADH_ADDR)   	MTPADH;
extern __sfr __at (MTPADL_ADDR)   	MTPADL;
extern __sfr __at (MTPDB_ADDR)    	MTPDB;
extern __sfr __at (MTPMD_ADDR)    	MTPMD;
extern __sfr __at (MTPCTR_ADDR)   	MTPCTR;
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (DKWP1_ADDR)    	DKWP1;
extern __sfr __at (IOP2_ADDR)     	IOP2;
extern __sfr __at (OEP2_ADDR)     	OEP2;
extern __sfr __at (PUP2_ADDR)     	PUP2;
extern __sfr __at (DKWP2_ADDR)    	DKWP2;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0LOADH_ADDR)  	T0LOADH;
extern __sfr __at (T0LOADL_ADDR)  	T0LOADL;
extern __sfr __at (T0LATRH_ADDR)  	T0LATRH;
extern __sfr __at (T0LATRL_ADDR)  	T0LATRL;
extern __sfr __at (T0LATFH_ADDR)  	T0LATFH;
extern __sfr __at (T0LATFL_ADDR)  	T0LATFL;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1DATA_ADDR)   	T1DATA;
extern __sfr __at (T1LOAD_ADDR)   	T1LOAD;
extern __sfr __at (OPCR0_ADDR)    	OPCR0;
extern __sfr __at (DKW0_ADDR)     	DKW0;

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
		unsigned char MINTS0:1;
		unsigned char MINTS1:1;
		unsigned char MINTT0:1;
		unsigned char MINTT1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char GIE:1;
	};
} __MCRbits_t;
extern volatile __MCRbits_t __at(MCR_ADDR) MCRbits;

#define MINTS0    	MCRbits.MINTS0      	/* bit 0 */
#define MINTS1    	MCRbits.MINTS1      	/* bit 1 */
#define MINTT0    	MCRbits.MINTT0      	/* bit 2 */
#define MINTT1    	MCRbits.MINTT1      	/* bit 3 */
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
		unsigned char INTSIE:1;
		unsigned char INTTIE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INTSIE    	INTEbits.INTSIE     	/* bit 2 */
#define INTTIE    	INTEbits.INTTIE     	/* bit 3 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INTSIF:1;
		unsigned char INTTIF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char T0RF:1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INTSIF    	INTFbits.INTSIF     	/* bit 2 */
#define INTTIF    	INTFbits.INTTIF     	/* bit 3 */
#define T0RF      	INTFbits.T0RF       	/* bit 6 */

// ----- OSCM Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char LFEN:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OSCMbits_t;
extern volatile __OSCMbits_t __at(OSCM_ADDR) OSCMbits;

#define LFEN      	OSCMbits.LFEN       	/* bit 1 */

// ----- LVDCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LVDF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char VLVDS:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char LVDEN:1;
	};
} __LVDCRbits_t;
extern volatile __LVDCRbits_t __at(LVDCR_ADDR) LVDCRbits;

#define LVDF      	LVDCRbits.LVDF      	/* bit 0 */
#define VLVDS     	LVDCRbits.VLVDS     	/* bit 3 */
#define LVDEN     	LVDCRbits.LVDEN     	/* bit 7 */

// ----- MTPADH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char MTPAD4:1;
		unsigned char MTPAD5:1;
		unsigned char MTPAD6:1;
		unsigned char MTPAD7:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __MTPADHbits_t;
extern volatile __MTPADHbits_t __at(MTPADH_ADDR) MTPADHbits;

#define MTPAD4    	MTPADHbits.MTPAD4   	/* bit 0 */
#define MTPAD5    	MTPADHbits.MTPAD5   	/* bit 1 */
#define MTPAD6    	MTPADHbits.MTPAD6   	/* bit 2 */
#define MTPAD7    	MTPADHbits.MTPAD7   	/* bit 3 */

// ----- MTPADL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char MTPAD0:1;
		unsigned char MTPAD1:1;
		unsigned char MTPAD2:1;
		unsigned char MTPAD3:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __MTPADLbits_t;
extern volatile __MTPADLbits_t __at(MTPADL_ADDR) MTPADLbits;

#define MTPAD0    	MTPADLbits.MTPAD0   	/* bit 0 */
#define MTPAD1    	MTPADLbits.MTPAD1   	/* bit 1 */
#define MTPAD2    	MTPADLbits.MTPAD2   	/* bit 2 */
#define MTPAD3    	MTPADLbits.MTPAD3   	/* bit 3 */

// ----- MTPDB Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char MTPDB0:1;
		unsigned char MTPDB1:1;
		unsigned char MTPDB2:1;
		unsigned char MTPDB3:1;
		unsigned char MTPDB4:1;
		unsigned char MTPDB5:1;
		unsigned char MTPDB6:1;
		unsigned char MTPDB7:1;
	};
} __MTPDBbits_t;
extern volatile __MTPDBbits_t __at(MTPDB_ADDR) MTPDBbits;

#define MTPDB0    	MTPDBbits.MTPDB0    	/* bit 0 */
#define MTPDB1    	MTPDBbits.MTPDB1    	/* bit 1 */
#define MTPDB2    	MTPDBbits.MTPDB2    	/* bit 2 */
#define MTPDB3    	MTPDBbits.MTPDB3    	/* bit 3 */
#define MTPDB4    	MTPDBbits.MTPDB4    	/* bit 4 */
#define MTPDB5    	MTPDBbits.MTPDB5    	/* bit 5 */
#define MTPDB6    	MTPDBbits.MTPDB6    	/* bit 6 */
#define MTPDB7    	MTPDBbits.MTPDB7    	/* bit 7 */

// ----- MTPMD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char BYTERD:1;
		unsigned char BYTEWR:1;
		unsigned char PAGEWR:1;
		unsigned char PAGEERS:1;
		unsigned char CHIPERS:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char MTPEN:1;
	};
} __MTPMDbits_t;
extern volatile __MTPMDbits_t __at(MTPMD_ADDR) MTPMDbits;

#define BYTERD    	MTPMDbits.BYTERD    	/* bit 0 */
#define BYTEWR    	MTPMDbits.BYTEWR    	/* bit 1 */
#define PAGEWR    	MTPMDbits.PAGEWR    	/* bit 2 */
#define PAGEERS   	MTPMDbits.PAGEERS   	/* bit 3 */
#define CHIPERS   	MTPMDbits.CHIPERS   	/* bit 4 */
#define MTPEN     	MTPMDbits.MTPEN     	/* bit 7 */

// ----- MTPCTR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char MTPRD:1;
		unsigned char MTPWR:1;
		unsigned char MTPLD:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char MTPTOUT:1;
		unsigned char MTPBUSY:1;
	};
} __MTPCTRbits_t;
extern volatile __MTPCTRbits_t __at(MTPCTR_ADDR) MTPCTRbits;

#define MTPRD     	MTPCTRbits.MTPRD    	/* bit 0 */
#define MTPWR     	MTPCTRbits.MTPWR    	/* bit 1 */
#define MTPLD     	MTPCTRbits.MTPLD    	/* bit 2 */
#define MTPTOUT   	MTPCTRbits.MTPTOUT  	/* bit 6 */
#define MTPBUSY   	MTPCTRbits.MTPBUSY  	/* bit 7 */

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
		unsigned char P10PU:1;
		unsigned char P11PU:1;
		unsigned char P12PU:1;
		unsigned char P13PU:1;
		unsigned char P14PU:1;
		unsigned char P15PU:1;
		unsigned char P16PU:1;
		unsigned char P17PU:1;
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
#define P17PU     	PUP1bits.P17PU      	/* bit 7 */

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

// ----- IOP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char P21D:1;
		unsigned char P22D:1;
		unsigned char :1;
		unsigned char P24D:1;
		unsigned char P25D:1;
		unsigned char P26D:1;
		unsigned char P27D:1;
	};
} __IOP2bits_t;
extern volatile __IOP2bits_t __at(IOP2_ADDR) IOP2bits;

#define P21D      	IOP2bits.P21D       	/* bit 1 */
#define P22D      	IOP2bits.P22D       	/* bit 2 */
#define P24D      	IOP2bits.P24D       	/* bit 4 */
#define P25D      	IOP2bits.P25D       	/* bit 5 */
#define P26D      	IOP2bits.P26D       	/* bit 6 */
#define P27D      	IOP2bits.P27D       	/* bit 7 */

// ----- OEP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char P21OE:1;
		unsigned char P22OE:1;
		unsigned char :1;
		unsigned char P24OE:1;
		unsigned char P25OE:1;
		unsigned char P26OE:1;
		unsigned char P27OE:1;
	};
} __OEP2bits_t;
extern volatile __OEP2bits_t __at(OEP2_ADDR) OEP2bits;

#define P21OE     	OEP2bits.P21OE      	/* bit 1 */
#define P22OE     	OEP2bits.P22OE      	/* bit 2 */
#define P24OE     	OEP2bits.P24OE      	/* bit 4 */
#define P25OE     	OEP2bits.P25OE      	/* bit 5 */
#define P26OE     	OEP2bits.P26OE      	/* bit 6 */
#define P27OE     	OEP2bits.P27OE      	/* bit 7 */

// ----- PUP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char P21PU:1;
		unsigned char P22PU:1;
		unsigned char :1;
		unsigned char P24PU:1;
		unsigned char P25PU:1;
		unsigned char P26PU:1;
		unsigned char P27PU:1;
	};
} __PUP2bits_t;
extern volatile __PUP2bits_t __at(PUP2_ADDR) PUP2bits;

#define P21PU     	PUP2bits.P21PU      	/* bit 1 */
#define P22PU     	PUP2bits.P22PU      	/* bit 2 */
#define P24PU     	PUP2bits.P24PU      	/* bit 4 */
#define P25PU     	PUP2bits.P25PU      	/* bit 5 */
#define P26PU     	PUP2bits.P26PU      	/* bit 6 */
#define P27PU     	PUP2bits.P27PU      	/* bit 7 */

// ----- DKWP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char P21DKW:1;
		unsigned char P22DKW:1;
		unsigned char :1;
		unsigned char P24DKW:1;
		unsigned char P25DKW:1;
		unsigned char P26DKW:1;
		unsigned char P27DKW:1;
	};
} __DKWP2bits_t;
extern volatile __DKWP2bits_t __at(DKWP2_ADDR) DKWP2bits;

#define P21DKW    	DKWP2bits.P21DKW    	/* bit 1 */
#define P22DKW    	DKWP2bits.P22DKW    	/* bit 2 */
#define P24DKW    	DKWP2bits.P24DKW    	/* bit 4 */
#define P25DKW    	DKWP2bits.P25DKW    	/* bit 5 */
#define P26DKW    	DKWP2bits.P26DKW    	/* bit 6 */
#define P27DKW    	DKWP2bits.P27DKW    	/* bit 7 */

// ----- T0CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0PRS0:1;
		unsigned char T0PRS1:1;
		unsigned char T0PRS2:1;
		unsigned char T0CKS0:1;
		unsigned char T0CKS1:1;
		unsigned char T0MOD0:1;
		unsigned char T0MOD1:1;
		unsigned char T0EN:1;
	};
} __T0CRbits_t;
extern volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;

#define T0PRS0    	T0CRbits.T0PRS0     	/* bit 0 */
#define T0PRS1    	T0CRbits.T0PRS1     	/* bit 1 */
#define T0PRS2    	T0CRbits.T0PRS2     	/* bit 2 */
#define T0CKS0    	T0CRbits.T0CKS0     	/* bit 3 */
#define T0CKS1    	T0CRbits.T0CKS1     	/* bit 4 */
#define T0MOD0    	T0CRbits.T0MOD0     	/* bit 5 */
#define T0MOD1    	T0CRbits.T0MOD1     	/* bit 6 */
#define T0EN      	T0CRbits.T0EN       	/* bit 7 */

// ----- T0LOADH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LOAD8:1;
		unsigned char T0LOAD9:1;
		unsigned char T0LOAD10:1;
		unsigned char T0LOAD11:1;
		unsigned char T0LOAD12:1;
		unsigned char T0LOAD13:1;
		unsigned char T0LOAD14:1;
		unsigned char T0LOAD15:1;
	};
} __T0LOADHbits_t;
extern volatile __T0LOADHbits_t __at(T0LOADH_ADDR) T0LOADHbits;

#define T0LOAD8   	T0LOADHbits.T0LOAD8 	/* bit 0 */
#define T0LOAD9   	T0LOADHbits.T0LOAD9 	/* bit 1 */
#define T0LOAD10  	T0LOADHbits.T0LOAD10	/* bit 2 */
#define T0LOAD11  	T0LOADHbits.T0LOAD11	/* bit 3 */
#define T0LOAD12  	T0LOADHbits.T0LOAD12	/* bit 4 */
#define T0LOAD13  	T0LOADHbits.T0LOAD13	/* bit 5 */
#define T0LOAD14  	T0LOADHbits.T0LOAD14	/* bit 6 */
#define T0LOAD15  	T0LOADHbits.T0LOAD15	/* bit 7 */

// ----- T0LOADL Bits --------------------------------------------
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
} __T0LOADLbits_t;
extern volatile __T0LOADLbits_t __at(T0LOADL_ADDR) T0LOADLbits;

#define T0LOAD0   	T0LOADLbits.T0LOAD0 	/* bit 0 */
#define T0LOAD1   	T0LOADLbits.T0LOAD1 	/* bit 1 */
#define T0LOAD2   	T0LOADLbits.T0LOAD2 	/* bit 2 */
#define T0LOAD3   	T0LOADLbits.T0LOAD3 	/* bit 3 */
#define T0LOAD4   	T0LOADLbits.T0LOAD4 	/* bit 4 */
#define T0LOAD5   	T0LOADLbits.T0LOAD5 	/* bit 5 */
#define T0LOAD6   	T0LOADLbits.T0LOAD6 	/* bit 6 */
#define T0LOAD7   	T0LOADLbits.T0LOAD7 	/* bit 7 */

// ----- T0LATRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LATR8:1;
		unsigned char T0LATR9:1;
		unsigned char T0LATR10:1;
		unsigned char T0LATR11:1;
		unsigned char T0LATR12:1;
		unsigned char T0LATR13:1;
		unsigned char T0LATR14:1;
		unsigned char T0LATR15:1;
	};
} __T0LATRHbits_t;
extern volatile __T0LATRHbits_t __at(T0LATRH_ADDR) T0LATRHbits;

#define T0LATR8   	T0LATRHbits.T0LATR8 	/* bit 0 */
#define T0LATR9   	T0LATRHbits.T0LATR9 	/* bit 1 */
#define T0LATR10  	T0LATRHbits.T0LATR10	/* bit 2 */
#define T0LATR11  	T0LATRHbits.T0LATR11	/* bit 3 */
#define T0LATR12  	T0LATRHbits.T0LATR12	/* bit 4 */
#define T0LATR13  	T0LATRHbits.T0LATR13	/* bit 5 */
#define T0LATR14  	T0LATRHbits.T0LATR14	/* bit 6 */
#define T0LATR15  	T0LATRHbits.T0LATR15	/* bit 7 */

// ----- T0LATRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LATR0:1;
		unsigned char T0LATR1:1;
		unsigned char T0LATR2:1;
		unsigned char T0LATR3:1;
		unsigned char T0LATR4:1;
		unsigned char T0LATR5:1;
		unsigned char T0LATR6:1;
		unsigned char T0LATR7:1;
	};
} __T0LATRLbits_t;
extern volatile __T0LATRLbits_t __at(T0LATRL_ADDR) T0LATRLbits;

#define T0LATR0   	T0LATRLbits.T0LATR0 	/* bit 0 */
#define T0LATR1   	T0LATRLbits.T0LATR1 	/* bit 1 */
#define T0LATR2   	T0LATRLbits.T0LATR2 	/* bit 2 */
#define T0LATR3   	T0LATRLbits.T0LATR3 	/* bit 3 */
#define T0LATR4   	T0LATRLbits.T0LATR4 	/* bit 4 */
#define T0LATR5   	T0LATRLbits.T0LATR5 	/* bit 5 */
#define T0LATR6   	T0LATRLbits.T0LATR6 	/* bit 6 */
#define T0LATR7   	T0LATRLbits.T0LATR7 	/* bit 7 */

// ----- T0LATFH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LATF8:1;
		unsigned char T0LATF9:1;
		unsigned char T0LATF10:1;
		unsigned char T0LATF11:1;
		unsigned char T0LATF12:1;
		unsigned char T0LATF13:1;
		unsigned char T0LATF14:1;
		unsigned char T0LATF15:1;
	};
} __T0LATFHbits_t;
extern volatile __T0LATFHbits_t __at(T0LATFH_ADDR) T0LATFHbits;

#define T0LATF8   	T0LATFHbits.T0LATF8 	/* bit 0 */
#define T0LATF9   	T0LATFHbits.T0LATF9 	/* bit 1 */
#define T0LATF10  	T0LATFHbits.T0LATF10	/* bit 2 */
#define T0LATF11  	T0LATFHbits.T0LATF11	/* bit 3 */
#define T0LATF12  	T0LATFHbits.T0LATF12	/* bit 4 */
#define T0LATF13  	T0LATFHbits.T0LATF13	/* bit 5 */
#define T0LATF14  	T0LATFHbits.T0LATF14	/* bit 6 */
#define T0LATF15  	T0LATFHbits.T0LATF15	/* bit 7 */

// ----- T0LATFL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0LATF0:1;
		unsigned char T0LATF1:1;
		unsigned char T0LATF2:1;
		unsigned char T0LATF3:1;
		unsigned char T0LATF4:1;
		unsigned char T0LATF5:1;
		unsigned char T0LATF6:1;
		unsigned char T0LATF7:1;
	};
} __T0LATFLbits_t;
extern volatile __T0LATFLbits_t __at(T0LATFL_ADDR) T0LATFLbits;

#define T0LATF0   	T0LATFLbits.T0LATF0 	/* bit 0 */
#define T0LATF1   	T0LATFLbits.T0LATF1 	/* bit 1 */
#define T0LATF2   	T0LATFLbits.T0LATF2 	/* bit 2 */
#define T0LATF3   	T0LATFLbits.T0LATF3 	/* bit 3 */
#define T0LATF4   	T0LATFLbits.T0LATF4 	/* bit 4 */
#define T0LATF5   	T0LATFLbits.T0LATF5 	/* bit 5 */
#define T0LATF6   	T0LATFLbits.T0LATF6 	/* bit 6 */
#define T0LATF7   	T0LATFLbits.T0LATF7 	/* bit 7 */

// ----- T1CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1PRS0:1;
		unsigned char T1PRS1:1;
		unsigned char T1PRS2:1;
		unsigned char T1CKS0:1;
		unsigned char T1CKS1:1;
		unsigned char T1MOD0:1;
		unsigned char T1MOD1:1;
		unsigned char T1EN:1;
	};
} __T1CRbits_t;
extern volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#define T1PRS0    	T1CRbits.T1PRS0     	/* bit 0 */
#define T1PRS1    	T1CRbits.T1PRS1     	/* bit 1 */
#define T1PRS2    	T1CRbits.T1PRS2     	/* bit 2 */
#define T1CKS0    	T1CRbits.T1CKS0     	/* bit 3 */
#define T1CKS1    	T1CRbits.T1CKS1     	/* bit 4 */
#define T1MOD0    	T1CRbits.T1MOD0     	/* bit 5 */
#define T1MOD1    	T1CRbits.T1MOD1     	/* bit 6 */
#define T1EN      	T1CRbits.T1EN       	/* bit 7 */

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

// ----- OPCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char OPAE:1;
	};
} __OPCR0bits_t;
extern volatile __OPCR0bits_t __at(OPCR0_ADDR) OPCR0bits;

#define OPAE      	OPCR0bits.OPAE      	/* bit 7 */

// ----- DKW0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char IROS:1;
		unsigned char DKWE:1;
	};
} __DKW0bits_t;
extern volatile __DKW0bits_t __at(DKW0_ADDR) DKW0bits;

#define IROS      	DKW0bits.IROS       	/* bit 6 */
#define DKWE      	DKW0bits.DKWE       	/* bit 7 */

#endif
