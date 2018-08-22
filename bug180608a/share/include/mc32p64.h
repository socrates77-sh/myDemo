#ifndef MC32P64_H
#define MC32P64_H

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
#define IOP0_ADDR       	0x01C0
#define OEP0_ADDR       	0x01C1
#define PUP0_ADDR       	0x01C2
#define IOP1_ADDR       	0x01C4
#define OEP1_ADDR       	0x01C5
#define PUP1_ADDR       	0x01C6
#define IOP2_ADDR       	0x01C8
#define OEP2_ADDR       	0x01C9
#define PUP2_ADDR       	0x01CA
#define IOP3_ADDR       	0x01CC
#define OEP3_ADDR       	0x01CD
#define PUP3_ADDR       	0x01CE
#define T0CR_ADDR       	0x01D0
#define T0CNT_ADDR      	0x01D1
#define T0LOAD_ADDR     	0x01D2
#define T0DATA_ADDR     	0x01D3
#define T1CR_ADDR       	0x01D4
#define T1CNT_ADDR      	0x01D5
#define T1LOAD_ADDR     	0x01D6
#define T1DATA_ADDR     	0x01D7
#define T2CR_ADDR       	0x01D8
#define T2CNTH_ADDR     	0x01D9
#define T2CNTL_ADDR     	0x01DA
#define T2LOADH_ADDR    	0x01DB
#define T2LOADL_ADDR    	0x01DC
#define TK0CRH_ADDR     	0x01E0
#define TK0CRL_ADDR     	0x01E1
#define TK0CNTH_ADDR    	0x01E2
#define TK0CNTL_ADDR    	0x01E3
#define TK1CRH_ADDR     	0x01E4
#define TK1CRL_ADDR     	0x01E5
#define TK1CNTH_ADDR    	0x01E6
#define TK1CNTL_ADDR    	0x01E7
#define TK2CRH_ADDR     	0x01E8
#define TK2CRL_ADDR     	0x01E9
#define TK2CNTH_ADDR    	0x01EA
#define TK2CNTL_ADDR    	0x01EB
#define ADCR0_ADDR      	0x01EC
#define ADCR1_ADDR      	0x01ED
#define ADRH_ADDR       	0x01EE
#define ADRL_ADDR       	0x01EF
#define I2CCR_ADDR      	0x01F0
#define I2CADDR_ADDR    	0x01F1
#define I2CDATA_ADDR    	0x01F2
#define OSCCAL_ADDR     	0x01FB

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
extern __sfr __at (T2CR_ADDR)     	T2CR;
extern __sfr __at (T2CNTH_ADDR)   	T2CNTH;
extern __sfr __at (T2CNTL_ADDR)   	T2CNTL;
extern __sfr __at (T2LOADH_ADDR)  	T2LOADH;
extern __sfr __at (T2LOADL_ADDR)  	T2LOADL;
extern __sfr __at (TK0CRH_ADDR)   	TK0CRH;
extern __sfr __at (TK0CRL_ADDR)   	TK0CRL;
extern __sfr __at (TK0CNTH_ADDR)  	TK0CNTH;
extern __sfr __at (TK0CNTL_ADDR)  	TK0CNTL;
extern __sfr __at (TK1CRH_ADDR)   	TK1CRH;
extern __sfr __at (TK1CRL_ADDR)   	TK1CRL;
extern __sfr __at (TK1CNTH_ADDR)  	TK1CNTH;
extern __sfr __at (TK1CNTL_ADDR)  	TK1CNTL;
extern __sfr __at (TK2CRH_ADDR)   	TK2CRH;
extern __sfr __at (TK2CRL_ADDR)   	TK2CRL;
extern __sfr __at (TK2CNTH_ADDR)  	TK2CNTH;
extern __sfr __at (TK2CNTL_ADDR)  	TK2CNTL;
extern __sfr __at (ADCR0_ADDR)    	ADCR0;
extern __sfr __at (ADCR1_ADDR)    	ADCR1;
extern __sfr __at (ADRH_ADDR)     	ADRH;
extern __sfr __at (ADRL_ADDR)     	ADRL;
extern __sfr __at (I2CCR_ADDR)    	I2CCR;
extern __sfr __at (I2CADDR_ADDR)  	I2CADDR;
extern __sfr __at (I2CDATA_ADDR)  	I2CDATA;
extern __sfr __at (OSCCAL_ADDR)   	OSCCAL;

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
		unsigned char T2IE:1;
		unsigned char I2CIE:1;
		unsigned char ADIE:1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define T2IE      	INTEbits.T2IE       	/* bit 4 */
#define I2CIE     	INTEbits.I2CIE      	/* bit 5 */
#define ADIE      	INTEbits.ADIE       	/* bit 6 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char T2IF:1;
		unsigned char I2CIF:1;
		unsigned char ADIF:1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define T2IF      	INTFbits.T2IF       	/* bit 4 */
#define I2CIF     	INTFbits.I2CIF      	/* bit 5 */
#define ADIF      	INTFbits.ADIF       	/* bit 6 */

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
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP3bits_t;
extern volatile __IOP3bits_t __at(IOP3_ADDR) IOP3bits;

#define P30D      	IOP3bits.P30D       	/* bit 0 */
#define P31D      	IOP3bits.P31D       	/* bit 1 */

// ----- OEP3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P30OE:1;
		unsigned char P31OE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP3bits_t;
extern volatile __OEP3bits_t __at(OEP3_ADDR) OEP3bits;

#define P30OE     	OEP3bits.P30OE      	/* bit 0 */
#define P31OE     	OEP3bits.P31OE      	/* bit 1 */

// ----- PUP3 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P30PU:1;
		unsigned char P31PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP3bits_t;
extern volatile __PUP3bits_t __at(PUP3_ADDR) PUP3bits;

#define P30PU     	PUP3bits.P30PU      	/* bit 0 */
#define P31PU     	PUP3bits.P31PU      	/* bit 1 */

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

// ----- T2CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2PR0:1;
		unsigned char T2PR1:1;
		unsigned char TPR2:1;
		unsigned char T2PTS0:1;
		unsigned char T2PTS1:1;
		unsigned char T2MODE:1;
		unsigned char :1;
		unsigned char TC2EN:1;
	};
} __T2CRbits_t;
extern volatile __T2CRbits_t __at(T2CR_ADDR) T2CRbits;

#define T2PR0     	T2CRbits.T2PR0      	/* bit 0 */
#define T2PR1     	T2CRbits.T2PR1      	/* bit 1 */
#define TPR2      	T2CRbits.TPR2       	/* bit 2 */
#define T2PTS0    	T2CRbits.T2PTS0     	/* bit 3 */
#define T2PTS1    	T2CRbits.T2PTS1     	/* bit 4 */
#define T2MODE    	T2CRbits.T2MODE     	/* bit 5 */
#define TC2EN     	T2CRbits.TC2EN      	/* bit 7 */

// ----- T2CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2C8:1;
		unsigned char T2C9:1;
		unsigned char T2C10:1;
		unsigned char T2C11:1;
		unsigned char T2C12:1;
		unsigned char T2C13:1;
		unsigned char T2C14:1;
		unsigned char T2C15:1;
	};
} __T2CNTHbits_t;
extern volatile __T2CNTHbits_t __at(T2CNTH_ADDR) T2CNTHbits;

#define T2C8      	T2CNTHbits.T2C8     	/* bit 0 */
#define T2C9      	T2CNTHbits.T2C9     	/* bit 1 */
#define T2C10     	T2CNTHbits.T2C10    	/* bit 2 */
#define T2C11     	T2CNTHbits.T2C11    	/* bit 3 */
#define T2C12     	T2CNTHbits.T2C12    	/* bit 4 */
#define T2C13     	T2CNTHbits.T2C13    	/* bit 5 */
#define T2C14     	T2CNTHbits.T2C14    	/* bit 6 */
#define T2C15     	T2CNTHbits.T2C15    	/* bit 7 */

// ----- T2CNTL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2C0:1;
		unsigned char T2C1:1;
		unsigned char T2C2:1;
		unsigned char T2C3:1;
		unsigned char T2C4:1;
		unsigned char T2C5:1;
		unsigned char T2C6:1;
		unsigned char T2C7:1;
	};
} __T2CNTLbits_t;
extern volatile __T2CNTLbits_t __at(T2CNTL_ADDR) T2CNTLbits;

#define T2C0      	T2CNTLbits.T2C0     	/* bit 0 */
#define T2C1      	T2CNTLbits.T2C1     	/* bit 1 */
#define T2C2      	T2CNTLbits.T2C2     	/* bit 2 */
#define T2C3      	T2CNTLbits.T2C3     	/* bit 3 */
#define T2C4      	T2CNTLbits.T2C4     	/* bit 4 */
#define T2C5      	T2CNTLbits.T2C5     	/* bit 5 */
#define T2C6      	T2CNTLbits.T2C6     	/* bit 6 */
#define T2C7      	T2CNTLbits.T2C7     	/* bit 7 */

// ----- T2LOADH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2LOAD8:1;
		unsigned char T2LOAD9:1;
		unsigned char T2LOAD10:1;
		unsigned char T2LOAD11:1;
		unsigned char T2LOAD12:1;
		unsigned char T2LOAD13:1;
		unsigned char T2LOAD14:1;
		unsigned char T2LOAD15:1;
	};
} __T2LOADHbits_t;
extern volatile __T2LOADHbits_t __at(T2LOADH_ADDR) T2LOADHbits;

#define T2LOAD8   	T2LOADHbits.T2LOAD8 	/* bit 0 */
#define T2LOAD9   	T2LOADHbits.T2LOAD9 	/* bit 1 */
#define T2LOAD10  	T2LOADHbits.T2LOAD10	/* bit 2 */
#define T2LOAD11  	T2LOADHbits.T2LOAD11	/* bit 3 */
#define T2LOAD12  	T2LOADHbits.T2LOAD12	/* bit 4 */
#define T2LOAD13  	T2LOADHbits.T2LOAD13	/* bit 5 */
#define T2LOAD14  	T2LOADHbits.T2LOAD14	/* bit 6 */
#define T2LOAD15  	T2LOADHbits.T2LOAD15	/* bit 7 */

// ----- T2LOADL Bits --------------------------------------------
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
} __T2LOADLbits_t;
extern volatile __T2LOADLbits_t __at(T2LOADL_ADDR) T2LOADLbits;

#define T2LOAD0   	T2LOADLbits.T2LOAD0 	/* bit 0 */
#define T2LOAD1   	T2LOADLbits.T2LOAD1 	/* bit 1 */
#define T2LOAD2   	T2LOADLbits.T2LOAD2 	/* bit 2 */
#define T2LOAD3   	T2LOADLbits.T2LOAD3 	/* bit 3 */
#define T2LOAD4   	T2LOADLbits.T2LOAD4 	/* bit 4 */
#define T2LOAD5   	T2LOADLbits.T2LOAD5 	/* bit 5 */
#define T2LOAD6   	T2LOADLbits.T2LOAD6 	/* bit 6 */
#define T2LOAD7   	T2LOADLbits.T2LOAD7 	/* bit 7 */

// ----- TK0CRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK0FQ0:1;
		unsigned char TK0FQ1:1;
		unsigned char TK0FQ2:1;
		unsigned char TK0CLR:1;
		unsigned char TK0RCE:1;
		unsigned char TK0JE:1;
		unsigned char TK0K0:1;
		unsigned char TK0K1:1;
	};
} __TK0CRHbits_t;
extern volatile __TK0CRHbits_t __at(TK0CRH_ADDR) TK0CRHbits;

#define TK0FQ0    	TK0CRHbits.TK0FQ0   	/* bit 0 */
#define TK0FQ1    	TK0CRHbits.TK0FQ1   	/* bit 1 */
#define TK0FQ2    	TK0CRHbits.TK0FQ2   	/* bit 2 */
#define TK0CLR    	TK0CRHbits.TK0CLR   	/* bit 3 */
#define TK0RCE    	TK0CRHbits.TK0RCE   	/* bit 4 */
#define TK0JE     	TK0CRHbits.TK0JE    	/* bit 5 */
#define TK0K0     	TK0CRHbits.TK0K0    	/* bit 6 */
#define TK0K1     	TK0CRHbits.TK0K1    	/* bit 7 */

// ----- TK0CRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK0IO0:1;
		unsigned char TK0IO1:1;
		unsigned char TK0IO2:1;
		unsigned char TK0IO3:1;
		unsigned char TK0FL0:1;
		unsigned char TK0FL1:1;
		unsigned char TK0IE:1;
		unsigned char TK0IF:1;
	};
} __TK0CRLbits_t;
extern volatile __TK0CRLbits_t __at(TK0CRL_ADDR) TK0CRLbits;

#define TK0IO0    	TK0CRLbits.TK0IO0   	/* bit 0 */
#define TK0IO1    	TK0CRLbits.TK0IO1   	/* bit 1 */
#define TK0IO2    	TK0CRLbits.TK0IO2   	/* bit 2 */
#define TK0IO3    	TK0CRLbits.TK0IO3   	/* bit 3 */
#define TK0FL0    	TK0CRLbits.TK0FL0   	/* bit 4 */
#define TK0FL1    	TK0CRLbits.TK0FL1   	/* bit 5 */
#define TK0IE     	TK0CRLbits.TK0IE    	/* bit 6 */
#define TK0IF     	TK0CRLbits.TK0IF    	/* bit 7 */

// ----- TK0CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK0C8:1;
		unsigned char TK0C9:1;
		unsigned char TK0C10:1;
		unsigned char TK0C11:1;
		unsigned char TK0C12:1;
		unsigned char TK0C13:1;
		unsigned char TK0C14:1;
		unsigned char TK0C15:1;
	};
} __TK0CNTHbits_t;
extern volatile __TK0CNTHbits_t __at(TK0CNTH_ADDR) TK0CNTHbits;

#define TK0C8     	TK0CNTHbits.TK0C8   	/* bit 0 */
#define TK0C9     	TK0CNTHbits.TK0C9   	/* bit 1 */
#define TK0C10    	TK0CNTHbits.TK0C10  	/* bit 2 */
#define TK0C11    	TK0CNTHbits.TK0C11  	/* bit 3 */
#define TK0C12    	TK0CNTHbits.TK0C12  	/* bit 4 */
#define TK0C13    	TK0CNTHbits.TK0C13  	/* bit 5 */
#define TK0C14    	TK0CNTHbits.TK0C14  	/* bit 6 */
#define TK0C15    	TK0CNTHbits.TK0C15  	/* bit 7 */

// ----- TK0CNTL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK0C0:1;
		unsigned char TK0C1:1;
		unsigned char TK0C2:1;
		unsigned char TK0C3:1;
		unsigned char TK0C4:1;
		unsigned char TK0C5:1;
		unsigned char TK0C6:1;
		unsigned char TK0C7:1;
	};
} __TK0CNTLbits_t;
extern volatile __TK0CNTLbits_t __at(TK0CNTL_ADDR) TK0CNTLbits;

#define TK0C0     	TK0CNTLbits.TK0C0   	/* bit 0 */
#define TK0C1     	TK0CNTLbits.TK0C1   	/* bit 1 */
#define TK0C2     	TK0CNTLbits.TK0C2   	/* bit 2 */
#define TK0C3     	TK0CNTLbits.TK0C3   	/* bit 3 */
#define TK0C4     	TK0CNTLbits.TK0C4   	/* bit 4 */
#define TK0C5     	TK0CNTLbits.TK0C5   	/* bit 5 */
#define TK0C6     	TK0CNTLbits.TK0C6   	/* bit 6 */
#define TK0C7     	TK0CNTLbits.TK0C7   	/* bit 7 */

// ----- TK1CRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK1FQ0:1;
		unsigned char TK1FQ1:1;
		unsigned char TK1FQ2:1;
		unsigned char TK1CLR:1;
		unsigned char TK1RCE:1;
		unsigned char TK1JE:1;
		unsigned char TK1K0:1;
		unsigned char TK1K1:1;
	};
} __TK1CRHbits_t;
extern volatile __TK1CRHbits_t __at(TK1CRH_ADDR) TK1CRHbits;

#define TK1FQ0    	TK1CRHbits.TK1FQ0   	/* bit 0 */
#define TK1FQ1    	TK1CRHbits.TK1FQ1   	/* bit 1 */
#define TK1FQ2    	TK1CRHbits.TK1FQ2   	/* bit 2 */
#define TK1CLR    	TK1CRHbits.TK1CLR   	/* bit 3 */
#define TK1RCE    	TK1CRHbits.TK1RCE   	/* bit 4 */
#define TK1JE     	TK1CRHbits.TK1JE    	/* bit 5 */
#define TK1K0     	TK1CRHbits.TK1K0    	/* bit 6 */
#define TK1K1     	TK1CRHbits.TK1K1    	/* bit 7 */

// ----- TK1CRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK1IO0:1;
		unsigned char TK1IO1:1;
		unsigned char TK1IO2:1;
		unsigned char TK1IO3:1;
		unsigned char TK1FL0:1;
		unsigned char TK1FL1:1;
		unsigned char TK1IE:1;
		unsigned char TK1IF:1;
	};
} __TK1CRLbits_t;
extern volatile __TK1CRLbits_t __at(TK1CRL_ADDR) TK1CRLbits;

#define TK1IO0    	TK1CRLbits.TK1IO0   	/* bit 0 */
#define TK1IO1    	TK1CRLbits.TK1IO1   	/* bit 1 */
#define TK1IO2    	TK1CRLbits.TK1IO2   	/* bit 2 */
#define TK1IO3    	TK1CRLbits.TK1IO3   	/* bit 3 */
#define TK1FL0    	TK1CRLbits.TK1FL0   	/* bit 4 */
#define TK1FL1    	TK1CRLbits.TK1FL1   	/* bit 5 */
#define TK1IE     	TK1CRLbits.TK1IE    	/* bit 6 */
#define TK1IF     	TK1CRLbits.TK1IF    	/* bit 7 */

// ----- TK1CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK1C8:1;
		unsigned char TK1C9:1;
		unsigned char TK1C10:1;
		unsigned char TK1C11:1;
		unsigned char TK1C12:1;
		unsigned char TK1C13:1;
		unsigned char TK1C14:1;
		unsigned char TK1C15:1;
	};
} __TK1CNTHbits_t;
extern volatile __TK1CNTHbits_t __at(TK1CNTH_ADDR) TK1CNTHbits;

#define TK1C8     	TK1CNTHbits.TK1C8   	/* bit 0 */
#define TK1C9     	TK1CNTHbits.TK1C9   	/* bit 1 */
#define TK1C10    	TK1CNTHbits.TK1C10  	/* bit 2 */
#define TK1C11    	TK1CNTHbits.TK1C11  	/* bit 3 */
#define TK1C12    	TK1CNTHbits.TK1C12  	/* bit 4 */
#define TK1C13    	TK1CNTHbits.TK1C13  	/* bit 5 */
#define TK1C14    	TK1CNTHbits.TK1C14  	/* bit 6 */
#define TK1C15    	TK1CNTHbits.TK1C15  	/* bit 7 */

// ----- TK1CNTL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK1C0:1;
		unsigned char TK1C1:1;
		unsigned char TK1C2:1;
		unsigned char TK1C3:1;
		unsigned char TK1C4:1;
		unsigned char TK1C5:1;
		unsigned char TK1C6:1;
		unsigned char TK1C7:1;
	};
} __TK1CNTLbits_t;
extern volatile __TK1CNTLbits_t __at(TK1CNTL_ADDR) TK1CNTLbits;

#define TK1C0     	TK1CNTLbits.TK1C0   	/* bit 0 */
#define TK1C1     	TK1CNTLbits.TK1C1   	/* bit 1 */
#define TK1C2     	TK1CNTLbits.TK1C2   	/* bit 2 */
#define TK1C3     	TK1CNTLbits.TK1C3   	/* bit 3 */
#define TK1C4     	TK1CNTLbits.TK1C4   	/* bit 4 */
#define TK1C5     	TK1CNTLbits.TK1C5   	/* bit 5 */
#define TK1C6     	TK1CNTLbits.TK1C6   	/* bit 6 */
#define TK1C7     	TK1CNTLbits.TK1C7   	/* bit 7 */

// ----- TK2CRH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK2FQ0:1;
		unsigned char TK2FQ1:1;
		unsigned char TK2FQ2:1;
		unsigned char TK2CLR:1;
		unsigned char TK2RCE:1;
		unsigned char TK2JE:1;
		unsigned char TK2K0:1;
		unsigned char TK2K1:1;
	};
} __TK2CRHbits_t;
extern volatile __TK2CRHbits_t __at(TK2CRH_ADDR) TK2CRHbits;

#define TK2FQ0    	TK2CRHbits.TK2FQ0   	/* bit 0 */
#define TK2FQ1    	TK2CRHbits.TK2FQ1   	/* bit 1 */
#define TK2FQ2    	TK2CRHbits.TK2FQ2   	/* bit 2 */
#define TK2CLR    	TK2CRHbits.TK2CLR   	/* bit 3 */
#define TK2RCE    	TK2CRHbits.TK2RCE   	/* bit 4 */
#define TK2JE     	TK2CRHbits.TK2JE    	/* bit 5 */
#define TK2K0     	TK2CRHbits.TK2K0    	/* bit 6 */
#define TK2K1     	TK2CRHbits.TK2K1    	/* bit 7 */

// ----- TK2CRL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK2IO0:1;
		unsigned char TK2IO1:1;
		unsigned char TK2IO2:1;
		unsigned char TK2IO3:1;
		unsigned char TK2FL0:1;
		unsigned char TK2FL1:1;
		unsigned char TK2IE:1;
		unsigned char TK2IF:1;
	};
} __TK2CRLbits_t;
extern volatile __TK2CRLbits_t __at(TK2CRL_ADDR) TK2CRLbits;

#define TK2IO0    	TK2CRLbits.TK2IO0   	/* bit 0 */
#define TK2IO1    	TK2CRLbits.TK2IO1   	/* bit 1 */
#define TK2IO2    	TK2CRLbits.TK2IO2   	/* bit 2 */
#define TK2IO3    	TK2CRLbits.TK2IO3   	/* bit 3 */
#define TK2FL0    	TK2CRLbits.TK2FL0   	/* bit 4 */
#define TK2FL1    	TK2CRLbits.TK2FL1   	/* bit 5 */
#define TK2IE     	TK2CRLbits.TK2IE    	/* bit 6 */
#define TK2IF     	TK2CRLbits.TK2IF    	/* bit 7 */

// ----- TK2CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK2C8:1;
		unsigned char TK2C9:1;
		unsigned char TK2C10:1;
		unsigned char TK2C11:1;
		unsigned char TK2C12:1;
		unsigned char TK2C13:1;
		unsigned char TK2C14:1;
		unsigned char TK2C15:1;
	};
} __TK2CNTHbits_t;
extern volatile __TK2CNTHbits_t __at(TK2CNTH_ADDR) TK2CNTHbits;

#define TK2C8     	TK2CNTHbits.TK2C8   	/* bit 0 */
#define TK2C9     	TK2CNTHbits.TK2C9   	/* bit 1 */
#define TK2C10    	TK2CNTHbits.TK2C10  	/* bit 2 */
#define TK2C11    	TK2CNTHbits.TK2C11  	/* bit 3 */
#define TK2C12    	TK2CNTHbits.TK2C12  	/* bit 4 */
#define TK2C13    	TK2CNTHbits.TK2C13  	/* bit 5 */
#define TK2C14    	TK2CNTHbits.TK2C14  	/* bit 6 */
#define TK2C15    	TK2CNTHbits.TK2C15  	/* bit 7 */

// ----- TK2CNTL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char TK2C0:1;
		unsigned char TK2C1:1;
		unsigned char TK2C2:1;
		unsigned char TK2C3:1;
		unsigned char TK2C4:1;
		unsigned char TK2C5:1;
		unsigned char TK2C6:1;
		unsigned char TK2C7:1;
	};
} __TK2CNTLbits_t;
extern volatile __TK2CNTLbits_t __at(TK2CNTL_ADDR) TK2CNTLbits;

#define TK2C0     	TK2CNTLbits.TK2C0   	/* bit 0 */
#define TK2C1     	TK2CNTLbits.TK2C1   	/* bit 1 */
#define TK2C2     	TK2CNTLbits.TK2C2   	/* bit 2 */
#define TK2C3     	TK2CNTLbits.TK2C3   	/* bit 3 */
#define TK2C4     	TK2CNTLbits.TK2C4   	/* bit 4 */
#define TK2C5     	TK2CNTLbits.TK2C5   	/* bit 5 */
#define TK2C6     	TK2CNTLbits.TK2C6   	/* bit 6 */
#define TK2C7     	TK2CNTLbits.TK2C7   	/* bit 7 */

// ----- ADCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADON:1;
		unsigned char ADEOC:1;
		unsigned char ADCKS0:1;
		unsigned char ADCKS1:1;
		unsigned char ADCHS0:1;
		unsigned char ADCHS1:1;
		unsigned char ADCHS2:1;
		unsigned char ADCHS3:1;
	};
} __ADCR0bits_t;
extern volatile __ADCR0bits_t __at(ADCR0_ADDR) ADCR0bits;

#define ADON      	ADCR0bits.ADON      	/* bit 0 */
#define ADEOC     	ADCR0bits.ADEOC     	/* bit 1 */
#define ADCKS0    	ADCR0bits.ADCKS0    	/* bit 2 */
#define ADCKS1    	ADCR0bits.ADCKS1    	/* bit 3 */
#define ADCHS0    	ADCR0bits.ADCHS0    	/* bit 4 */
#define ADCHS1    	ADCR0bits.ADCHS1    	/* bit 5 */
#define ADCHS2    	ADCR0bits.ADCHS2    	/* bit 6 */
#define ADCHS3    	ADCR0bits.ADCHS3    	/* bit 7 */

// ----- ADCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADIOS0:1;
		unsigned char ADIOS1:1;
		unsigned char ADIOS2:1;
		unsigned char ADIOS3:1;
		unsigned char ADIOS4:1;
		unsigned char ADIOS5:1;
		unsigned char ADIOS6:1;
		unsigned char ADIOS7:1;
	};
} __ADCR1bits_t;
extern volatile __ADCR1bits_t __at(ADCR1_ADDR) ADCR1bits;

#define ADIOS0    	ADCR1bits.ADIOS0    	/* bit 0 */
#define ADIOS1    	ADCR1bits.ADIOS1    	/* bit 1 */
#define ADIOS2    	ADCR1bits.ADIOS2    	/* bit 2 */
#define ADIOS3    	ADCR1bits.ADIOS3    	/* bit 3 */
#define ADIOS4    	ADCR1bits.ADIOS4    	/* bit 4 */
#define ADIOS5    	ADCR1bits.ADIOS5    	/* bit 5 */
#define ADIOS6    	ADCR1bits.ADIOS6    	/* bit 6 */
#define ADIOS7    	ADCR1bits.ADIOS7    	/* bit 7 */

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

// ----- I2CCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char RXAK:1;
		unsigned char HEN:1;
		unsigned char SRW:1;
		unsigned char TXAK:1;
		unsigned char HTX:1;
		unsigned char HBB:1;
		unsigned char HAAS:1;
		unsigned char HCF:1;
	};
} __I2CCRbits_t;
extern volatile __I2CCRbits_t __at(I2CCR_ADDR) I2CCRbits;

#define RXAK      	I2CCRbits.RXAK      	/* bit 0 */
#define HEN       	I2CCRbits.HEN       	/* bit 1 */
#define SRW       	I2CCRbits.SRW       	/* bit 2 */
#define TXAK      	I2CCRbits.TXAK      	/* bit 3 */
#define HTX       	I2CCRbits.HTX       	/* bit 4 */
#define HBB       	I2CCRbits.HBB       	/* bit 5 */
#define HAAS      	I2CCRbits.HAAS      	/* bit 6 */
#define HCF       	I2CCRbits.HCF       	/* bit 7 */

// ----- I2CADDR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char I2CAD1:1;
		unsigned char I2CAD2:1;
		unsigned char I2CAD3:1;
		unsigned char I2CAD4:1;
		unsigned char I2CAD5:1;
		unsigned char I2CAD6:1;
		unsigned char I2CAD7:1;
	};
} __I2CADDRbits_t;
extern volatile __I2CADDRbits_t __at(I2CADDR_ADDR) I2CADDRbits;

#define I2CAD1    	I2CADDRbits.I2CAD1  	/* bit 1 */
#define I2CAD2    	I2CADDRbits.I2CAD2  	/* bit 2 */
#define I2CAD3    	I2CADDRbits.I2CAD3  	/* bit 3 */
#define I2CAD4    	I2CADDRbits.I2CAD4  	/* bit 4 */
#define I2CAD5    	I2CADDRbits.I2CAD5  	/* bit 5 */
#define I2CAD6    	I2CADDRbits.I2CAD6  	/* bit 6 */
#define I2CAD7    	I2CADDRbits.I2CAD7  	/* bit 7 */

// ----- I2CDATA Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char I2CDA0:1;
		unsigned char I2CDA1:1;
		unsigned char I2CDA2:1;
		unsigned char I2CDA3:1;
		unsigned char I2CDA4:1;
		unsigned char I2CDA5:1;
		unsigned char I2CDA6:1;
		unsigned char I2CDA7:1;
	};
} __I2CDATAbits_t;
extern volatile __I2CDATAbits_t __at(I2CDATA_ADDR) I2CDATAbits;

#define I2CDA0    	I2CDATAbits.I2CDA0  	/* bit 0 */
#define I2CDA1    	I2CDATAbits.I2CDA1  	/* bit 1 */
#define I2CDA2    	I2CDATAbits.I2CDA2  	/* bit 2 */
#define I2CDA3    	I2CDATAbits.I2CDA3  	/* bit 3 */
#define I2CDA4    	I2CDATAbits.I2CDA4  	/* bit 4 */
#define I2CDA5    	I2CDATAbits.I2CDA5  	/* bit 5 */
#define I2CDA6    	I2CDATAbits.I2CDA6  	/* bit 6 */
#define I2CDA7    	I2CDATAbits.I2CDA7  	/* bit 7 */

// ----- OSCCAL Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char OSCCAL0:1;
		unsigned char OSCCAL1:1;
		unsigned char OSCCAL2:1;
		unsigned char OSCCAL3:1;
		unsigned char OSCCAL4:1;
		unsigned char OSCCAL5:1;
		unsigned char OSCCAL6:1;
		unsigned char OSCCAL7:1;
	};
} __OSCCALbits_t;
extern volatile __OSCCALbits_t __at(OSCCAL_ADDR) OSCCALbits;

#define OSCCAL0   	OSCCALbits.OSCCAL0  	/* bit 0 */
#define OSCCAL1   	OSCCALbits.OSCCAL1  	/* bit 1 */
#define OSCCAL2   	OSCCALbits.OSCCAL2  	/* bit 2 */
#define OSCCAL3   	OSCCALbits.OSCCAL3  	/* bit 3 */
#define OSCCAL4   	OSCCALbits.OSCCAL4  	/* bit 4 */
#define OSCCAL5   	OSCCALbits.OSCCAL5  	/* bit 5 */
#define OSCCAL6   	OSCCALbits.OSCCAL6  	/* bit 6 */
#define OSCCAL7   	OSCCALbits.OSCCAL7  	/* bit 7 */

#endif
