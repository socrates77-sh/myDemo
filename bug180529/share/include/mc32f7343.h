#ifndef MC32P7343_H
#define MC32P7343_H

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
#define OSCM_ADDR       	0x018C
#define INTE1_ADDR      	0x018D
#define INTF1_ADDR      	0x018E
#define KBCR_ADDR       	0x018F
#define IOP0_ADDR       	0x0190
#define OEP0_ADDR       	0x0191
#define PUP0_ADDR       	0x0192
#define PDP0_ADDR       	0x0193
#define IOP1_ADDR       	0x0194
#define OEP1_ADDR       	0x0195
#define PUP1_ADDR       	0x0196
#define PDP1_ADDR       	0x0197
#define IOP2_ADDR       	0x0198
#define OEP2_ADDR       	0x0199
#define PUP2_ADDR       	0x019A
#define PDP2_ADDR       	0x019B
#define T0CR_ADDR       	0x01A0
#define T0CNT_ADDR      	0x01A1
#define T0LOAD_ADDR     	0x01A2
#define T0DATA_ADDR     	0x01A3
#define T1CR_ADDR       	0x01A8
#define T1CNTH_ADDR     	0x01A9
#define T1CNTL_ADDR     	0x01AA
#define T1LOADH_ADDR    	0x01AB
#define T1LOADL_ADDR    	0x01AC
#define T1DATAH_ADDR    	0x01AD
#define T1DATAL_ADDR    	0x01AE
#define IICCR_ADDR      	0x01B0
#define IICSR_ADDR      	0x01B1
#define IICDR_ADDR      	0x01B2
#define EECR_ADDR       	0x01B4
#define EEMASK_ADDR     	0x01B5
#define EEAR_ADDR       	0x01B6
#define EEDR_ADDR       	0x01B7
#define ADCR0_ADDR      	0x01B8
#define ADCR1_ADDR      	0x01B9
#define ADRH_ADDR       	0x01BA
#define ADRL_ADDR       	0x01BB
#define ADIOS0_ADDR     	0x01BC
#define ADIOS1_ADDR     	0x01BD
#define OSADJCR_ADDR    	0x01BE
#define T2CR_ADDR       	0x01C0
#define T2CNTH_ADDR     	0x01C1
#define T2CNTL_ADDR     	0x01C2
#define T2LOADH_ADDR    	0x01C3
#define T2LOADL_ADDR    	0x01C4
#define T3CR_ADDR       	0x01C5
#define T3CNT_ADDR      	0x01C6
#define T3LOAD_ADDR     	0x01C7
#define SCON_ADDR       	0x01C8
#define SBUF_ADDR       	0x01C9
#define SADDR_ADDR      	0x01CA
#define SADEN_ADDR      	0x01CB

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
extern __sfr __at (INTE1_ADDR)    	INTE1;
extern __sfr __at (INTF1_ADDR)    	INTF1;
extern __sfr __at (KBCR_ADDR)     	KBCR;
extern __sfr __at (IOP0_ADDR)     	IOP0;
extern __sfr __at (OEP0_ADDR)     	OEP0;
extern __sfr __at (PUP0_ADDR)     	PUP0;
extern __sfr __at (PDP0_ADDR)     	PDP0;
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (PDP1_ADDR)     	PDP1;
extern __sfr __at (IOP2_ADDR)     	IOP2;
extern __sfr __at (OEP2_ADDR)     	OEP2;
extern __sfr __at (PUP2_ADDR)     	PUP2;
extern __sfr __at (PDP2_ADDR)     	PDP2;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T0LOAD_ADDR)   	T0LOAD;
extern __sfr __at (T0DATA_ADDR)   	T0DATA;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNTH_ADDR)   	T1CNTH;
extern __sfr __at (T1CNTL_ADDR)   	T1CNTL;
extern __sfr __at (T1LOADH_ADDR)  	T1LOADH;
extern __sfr __at (T1LOADL_ADDR)  	T1LOADL;
extern __sfr __at (T1DATAH_ADDR)  	T1DATAH;
extern __sfr __at (T1DATAL_ADDR)  	T1DATAL;
extern __sfr __at (IICCR_ADDR)    	IICCR;
extern __sfr __at (IICSR_ADDR)    	IICSR;
extern __sfr __at (IICDR_ADDR)    	IICDR;
extern __sfr __at (EECR_ADDR)     	EECR;
extern __sfr __at (EEMASK_ADDR)   	EEMASK;
extern __sfr __at (EEAR_ADDR)     	EEAR;
extern __sfr __at (EEDR_ADDR)     	EEDR;
extern __sfr __at (ADCR0_ADDR)    	ADCR0;
extern __sfr __at (ADCR1_ADDR)    	ADCR1;
extern __sfr __at (ADRH_ADDR)     	ADRH;
extern __sfr __at (ADRL_ADDR)     	ADRL;
extern __sfr __at (ADIOS0_ADDR)   	ADIOS0;
extern __sfr __at (ADIOS1_ADDR)   	ADIOS1;
extern __sfr __at (OSADJCR_ADDR)  	OSADJCR;
extern __sfr __at (T2CR_ADDR)     	T2CR;
extern __sfr __at (T2CNTH_ADDR)   	T2CNTH;
extern __sfr __at (T2CNTL_ADDR)   	T2CNTL;
extern __sfr __at (T2LOADH_ADDR)  	T2LOADH;
extern __sfr __at (T2LOADL_ADDR)  	T2LOADL;
extern __sfr __at (T3CR_ADDR)     	T3CR;
extern __sfr __at (T3CNT_ADDR)    	T3CNT;
extern __sfr __at (T3LOAD_ADDR)   	T3LOAD;
extern __sfr __at (SCON_ADDR)     	SCON;
extern __sfr __at (SBUF_ADDR)     	SBUF;
extern __sfr __at (SADDR_ADDR)    	SADDR;
extern __sfr __at (SADEN_ADDR)    	SADEN;

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
		unsigned char IICIE:1;
		unsigned char ADIE:1;
		unsigned char UARTIE:1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define KBIE      	INTEbits.KBIE       	/* bit 4 */
#define IICIE     	INTEbits.IICIE      	/* bit 5 */
#define ADIE      	INTEbits.ADIE       	/* bit 6 */
#define UARTIE    	INTEbits.UARTIE     	/* bit 7 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char KBIF:1;
		unsigned char IICIF:1;
		unsigned char ADIF:1;
		unsigned char UARTIF:1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define KBIF      	INTFbits.KBIF       	/* bit 4 */
#define IICIF     	INTFbits.IICIF      	/* bit 5 */
#define ADIF      	INTFbits.ADIF       	/* bit 6 */
#define UARTIF    	INTFbits.UARTIF     	/* bit 7 */

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

// ----- INTE1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2IE:1;
		unsigned char T3IE:1;
		unsigned char INT2IE:1;
		unsigned char INT3IE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTE1bits_t;
extern volatile __INTE1bits_t __at(INTE1_ADDR) INTE1bits;

#define T2IE      	INTE1bits.T2IE      	/* bit 0 */
#define T3IE      	INTE1bits.T3IE      	/* bit 1 */
#define INT2IE    	INTE1bits.INT2IE    	/* bit 2 */
#define INT3IE    	INTE1bits.INT3IE    	/* bit 3 */

// ----- INTF1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2IF:1;
		unsigned char T3IF:1;
		unsigned char INT2IF:1;
		unsigned char INT3IF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTF1bits_t;
extern volatile __INTF1bits_t __at(INTF1_ADDR) INTF1bits;

#define T2IF      	INTF1bits.T2IF      	/* bit 0 */
#define T3IF      	INTF1bits.T3IF      	/* bit 1 */
#define INT2IF    	INTF1bits.INT2IF    	/* bit 2 */
#define INT3IF    	INTF1bits.INT3IF    	/* bit 3 */

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
		unsigned char P07PD:1;
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
#define P07PD     	PDP0bits.P07PD      	/* bit 7 */

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

// ----- PDP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P10PD:1;
		unsigned char P11PD:1;
		unsigned char P12PD:1;
		unsigned char P13PD:1;
		unsigned char P14PD:1;
		unsigned char P15PD:1;
		unsigned char P16PD:1;
		unsigned char P17PD:1;
	};
} __PDP1bits_t;
extern volatile __PDP1bits_t __at(PDP1_ADDR) PDP1bits;

#define P10PD     	PDP1bits.P10PD      	/* bit 0 */
#define P11PD     	PDP1bits.P11PD      	/* bit 1 */
#define P12PD     	PDP1bits.P12PD      	/* bit 2 */
#define P13PD     	PDP1bits.P13PD      	/* bit 3 */
#define P14PD     	PDP1bits.P14PD      	/* bit 4 */
#define P15PD     	PDP1bits.P15PD      	/* bit 5 */
#define P16PD     	PDP1bits.P16PD      	/* bit 6 */
#define P17PD     	PDP1bits.P17PD      	/* bit 7 */

// ----- IOP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20D:1;
		unsigned char P21D:1;
		unsigned char P22D:1;
		unsigned char P23D:1;
		unsigned char P24D:1;
		unsigned char P25D:1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP2bits_t;
extern volatile __IOP2bits_t __at(IOP2_ADDR) IOP2bits;

#define P20D      	IOP2bits.P20D       	/* bit 0 */
#define P21D      	IOP2bits.P21D       	/* bit 1 */
#define P22D      	IOP2bits.P22D       	/* bit 2 */
#define P23D      	IOP2bits.P23D       	/* bit 3 */
#define P24D      	IOP2bits.P24D       	/* bit 4 */
#define P25D      	IOP2bits.P25D       	/* bit 5 */

// ----- OEP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20OE:1;
		unsigned char P21OE:1;
		unsigned char P22OE:1;
		unsigned char P23OE:1;
		unsigned char P24OE:1;
		unsigned char P25OE:1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP2bits_t;
extern volatile __OEP2bits_t __at(OEP2_ADDR) OEP2bits;

#define P20OE     	OEP2bits.P20OE      	/* bit 0 */
#define P21OE     	OEP2bits.P21OE      	/* bit 1 */
#define P22OE     	OEP2bits.P22OE      	/* bit 2 */
#define P23OE     	OEP2bits.P23OE      	/* bit 3 */
#define P24OE     	OEP2bits.P24OE      	/* bit 4 */
#define P25OE     	OEP2bits.P25OE      	/* bit 5 */

// ----- PUP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20PU:1;
		unsigned char P21PU:1;
		unsigned char P22PU:1;
		unsigned char P23PU:1;
		unsigned char P24PU:1;
		unsigned char P25PU:1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP2bits_t;
extern volatile __PUP2bits_t __at(PUP2_ADDR) PUP2bits;

#define P20PU     	PUP2bits.P20PU      	/* bit 0 */
#define P21PU     	PUP2bits.P21PU      	/* bit 1 */
#define P22PU     	PUP2bits.P22PU      	/* bit 2 */
#define P23PU     	PUP2bits.P23PU      	/* bit 3 */
#define P24PU     	PUP2bits.P24PU      	/* bit 4 */
#define P25PU     	PUP2bits.P25PU      	/* bit 5 */

// ----- PDP2 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P20PD:1;
		unsigned char P21PD:1;
		unsigned char P22PD:1;
		unsigned char P23PD:1;
		unsigned char P24PD:1;
		unsigned char P25PD:1;
		unsigned char :1;
		unsigned char :1;
	};
} __PDP2bits_t;
extern volatile __PDP2bits_t __at(PDP2_ADDR) PDP2bits;

#define P20PD     	PDP2bits.P20PD      	/* bit 0 */
#define P21PD     	PDP2bits.P21PD      	/* bit 1 */
#define P22PD     	PDP2bits.P22PD      	/* bit 2 */
#define P23PD     	PDP2bits.P23PD      	/* bit 3 */
#define P24PD     	PDP2bits.P24PD      	/* bit 4 */
#define P25PD     	PDP2bits.P25PD      	/* bit 5 */

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
		unsigned char :1;
		unsigned char PWM1OE:1;
		unsigned char T1EN:1;
	};
} __T1CRbits_t;
extern volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#define T1PRS0    	T1CRbits.T1PRS0     	/* bit 0 */
#define T1PRS1    	T1CRbits.T1PRS1     	/* bit 1 */
#define T1PRS2    	T1CRbits.T1PRS2     	/* bit 2 */
#define T1CKS0    	T1CRbits.T1CKS0     	/* bit 3 */
#define T1CKS1    	T1CRbits.T1CKS1     	/* bit 4 */
#define PWM1OE    	T1CRbits.PWM1OE     	/* bit 6 */
#define T1EN      	T1CRbits.T1EN       	/* bit 7 */

// ----- T1CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1CNT8:1;
		unsigned char T1CNT9:1;
		unsigned char T1CNT10:1;
		unsigned char T1CNT11:1;
		unsigned char T1CNT12:1;
		unsigned char T1CNT13:1;
		unsigned char T1CNT14:1;
		unsigned char T1CNT15:1;
	};
} __T1CNTHbits_t;
extern volatile __T1CNTHbits_t __at(T1CNTH_ADDR) T1CNTHbits;

#define T1CNT8    	T1CNTHbits.T1CNT8   	/* bit 0 */
#define T1CNT9    	T1CNTHbits.T1CNT9   	/* bit 1 */
#define T1CNT10   	T1CNTHbits.T1CNT10  	/* bit 2 */
#define T1CNT11   	T1CNTHbits.T1CNT11  	/* bit 3 */
#define T1CNT12   	T1CNTHbits.T1CNT12  	/* bit 4 */
#define T1CNT13   	T1CNTHbits.T1CNT13  	/* bit 5 */
#define T1CNT14   	T1CNTHbits.T1CNT14  	/* bit 6 */
#define T1CNT15   	T1CNTHbits.T1CNT15  	/* bit 7 */

// ----- T1CNTL Bits --------------------------------------------
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
} __T1CNTLbits_t;
extern volatile __T1CNTLbits_t __at(T1CNTL_ADDR) T1CNTLbits;

#define T1CNT0    	T1CNTLbits.T1CNT0   	/* bit 0 */
#define T1CNT1    	T1CNTLbits.T1CNT1   	/* bit 1 */
#define T1CNT2    	T1CNTLbits.T1CNT2   	/* bit 2 */
#define T1CNT3    	T1CNTLbits.T1CNT3   	/* bit 3 */
#define T1CNT4    	T1CNTLbits.T1CNT4   	/* bit 4 */
#define T1CNT5    	T1CNTLbits.T1CNT5   	/* bit 5 */
#define T1CNT6    	T1CNTLbits.T1CNT6   	/* bit 6 */
#define T1CNT7    	T1CNTLbits.T1CNT7   	/* bit 7 */

// ----- T1LOADH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1LOAD8:1;
		unsigned char T1LOAD9:1;
		unsigned char T1LOAD10:1;
		unsigned char T1LOAD11:1;
		unsigned char T1LOAD12:1;
		unsigned char T1LOAD13:1;
		unsigned char T1LOAD14:1;
		unsigned char T1LOAD15:1;
	};
} __T1LOADHbits_t;
extern volatile __T1LOADHbits_t __at(T1LOADH_ADDR) T1LOADHbits;

#define T1LOAD8   	T1LOADHbits.T1LOAD8 	/* bit 0 */
#define T1LOAD9   	T1LOADHbits.T1LOAD9 	/* bit 1 */
#define T1LOAD10  	T1LOADHbits.T1LOAD10	/* bit 2 */
#define T1LOAD11  	T1LOADHbits.T1LOAD11	/* bit 3 */
#define T1LOAD12  	T1LOADHbits.T1LOAD12	/* bit 4 */
#define T1LOAD13  	T1LOADHbits.T1LOAD13	/* bit 5 */
#define T1LOAD14  	T1LOADHbits.T1LOAD14	/* bit 6 */
#define T1LOAD15  	T1LOADHbits.T1LOAD15	/* bit 7 */

// ----- T1LOADL Bits --------------------------------------------
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
} __T1LOADLbits_t;
extern volatile __T1LOADLbits_t __at(T1LOADL_ADDR) T1LOADLbits;

#define T1LOAD0   	T1LOADLbits.T1LOAD0 	/* bit 0 */
#define T1LOAD1   	T1LOADLbits.T1LOAD1 	/* bit 1 */
#define T1LOAD2   	T1LOADLbits.T1LOAD2 	/* bit 2 */
#define T1LOAD3   	T1LOADLbits.T1LOAD3 	/* bit 3 */
#define T1LOAD4   	T1LOADLbits.T1LOAD4 	/* bit 4 */
#define T1LOAD5   	T1LOADLbits.T1LOAD5 	/* bit 5 */
#define T1LOAD6   	T1LOADLbits.T1LOAD6 	/* bit 6 */
#define T1LOAD7   	T1LOADLbits.T1LOAD7 	/* bit 7 */

// ----- T1DATAH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1DATA8:1;
		unsigned char T1DATA9:1;
		unsigned char T1DATA10:1;
		unsigned char T1DATA11:1;
		unsigned char T1DATA12:1;
		unsigned char T1DATA13:1;
		unsigned char T1DATA14:1;
		unsigned char T1DATA15:1;
	};
} __T1DATAHbits_t;
extern volatile __T1DATAHbits_t __at(T1DATAH_ADDR) T1DATAHbits;

#define T1DATA8   	T1DATAHbits.T1DATA8 	/* bit 0 */
#define T1DATA9   	T1DATAHbits.T1DATA9 	/* bit 1 */
#define T1DATA10  	T1DATAHbits.T1DATA10	/* bit 2 */
#define T1DATA11  	T1DATAHbits.T1DATA11	/* bit 3 */
#define T1DATA12  	T1DATAHbits.T1DATA12	/* bit 4 */
#define T1DATA13  	T1DATAHbits.T1DATA13	/* bit 5 */
#define T1DATA14  	T1DATAHbits.T1DATA14	/* bit 6 */
#define T1DATA15  	T1DATAHbits.T1DATA15	/* bit 7 */

// ----- T1DATAL Bits --------------------------------------------
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
} __T1DATALbits_t;
extern volatile __T1DATALbits_t __at(T1DATAL_ADDR) T1DATALbits;

#define T1DATA0   	T1DATALbits.T1DATA0 	/* bit 0 */
#define T1DATA1   	T1DATALbits.T1DATA1 	/* bit 1 */
#define T1DATA2   	T1DATALbits.T1DATA2 	/* bit 2 */
#define T1DATA3   	T1DATALbits.T1DATA3 	/* bit 3 */
#define T1DATA4   	T1DATALbits.T1DATA4 	/* bit 4 */
#define T1DATA5   	T1DATALbits.T1DATA5 	/* bit 5 */
#define T1DATA6   	T1DATALbits.T1DATA6 	/* bit 6 */
#define T1DATA7   	T1DATALbits.T1DATA7 	/* bit 7 */

// ----- IICCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char IICIMS:1;
		unsigned char IICRDTP:1;
		unsigned char IICTYP0:1;
		unsigned char IICTYP1:1;
		unsigned char IICCKS0:1;
		unsigned char IICCKS1:1;
		unsigned char IICRS:1;
		unsigned char IICEN:1;
	};
} __IICCRbits_t;
extern volatile __IICCRbits_t __at(IICCR_ADDR) IICCRbits;

#define IICIMS    	IICCRbits.IICIMS    	/* bit 0 */
#define IICRDTP   	IICCRbits.IICRDTP   	/* bit 1 */
#define IICTYP0   	IICCRbits.IICTYP0   	/* bit 2 */
#define IICTYP1   	IICCRbits.IICTYP1   	/* bit 3 */
#define IICCKS0   	IICCRbits.IICCKS0   	/* bit 4 */
#define IICCKS1   	IICCRbits.IICCKS1   	/* bit 5 */
#define IICRS     	IICCRbits.IICRS     	/* bit 6 */
#define IICEN     	IICCRbits.IICEN     	/* bit 7 */

// ----- IICSR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char RACK:1;
		unsigned char SACK:1;
		unsigned char IICACK:1;
		unsigned char IICWR:1;
		unsigned char IICRD:1;
		unsigned char IICSTP:1;
		unsigned char IICSTR:1;
	};
} __IICSRbits_t;
extern volatile __IICSRbits_t __at(IICSR_ADDR) IICSRbits;

#define RACK      	IICSRbits.RACK      	/* bit 1 */
#define SACK      	IICSRbits.SACK      	/* bit 2 */
#define IICACK    	IICSRbits.IICACK    	/* bit 3 */
#define IICWR     	IICSRbits.IICWR     	/* bit 4 */
#define IICRD     	IICSRbits.IICRD     	/* bit 5 */
#define IICSTP    	IICSRbits.IICSTP    	/* bit 6 */
#define IICSTR    	IICSRbits.IICSTR    	/* bit 7 */

// ----- IICDR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char IICDR0:1;
		unsigned char IICDR1:1;
		unsigned char IICDR2:1;
		unsigned char IICDR3:1;
		unsigned char IICDR4:1;
		unsigned char IICDR5:1;
		unsigned char IICDR6:1;
		unsigned char IICDR7:1;
	};
} __IICDRbits_t;
extern volatile __IICDRbits_t __at(IICDR_ADDR) IICDRbits;

#define IICDR0    	IICDRbits.IICDR0    	/* bit 0 */
#define IICDR1    	IICDRbits.IICDR1    	/* bit 1 */
#define IICDR2    	IICDRbits.IICDR2    	/* bit 2 */
#define IICDR3    	IICDRbits.IICDR3    	/* bit 3 */
#define IICDR4    	IICDRbits.IICDR4    	/* bit 4 */
#define IICDR5    	IICDRbits.IICDR5    	/* bit 5 */
#define IICDR6    	IICDRbits.IICDR6    	/* bit 6 */
#define IICDR7    	IICDRbits.IICDR7    	/* bit 7 */

// ----- EECR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char EERW:1;
		unsigned char EETRIG:1;
	};
} __EECRbits_t;
extern volatile __EECRbits_t __at(EECR_ADDR) EECRbits;

#define EERW      	EECRbits.EERW       	/* bit 6 */
#define EETRIG    	EECRbits.EETRIG     	/* bit 7 */

// ----- EEMASK Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char EEMASK0:1;
		unsigned char EEMASK1:1;
		unsigned char EEMASK2:1;
		unsigned char EEMASK3:1;
		unsigned char EEMASK4:1;
		unsigned char EEMASK5:1;
		unsigned char EEMASK6:1;
		unsigned char EEMASK7:1;
	};
} __EEMASKbits_t;
extern volatile __EEMASKbits_t __at(EEMASK_ADDR) EEMASKbits;

#define EEMASK0   	EEMASKbits.EEMASK0  	/* bit 0 */
#define EEMASK1   	EEMASKbits.EEMASK1  	/* bit 1 */
#define EEMASK2   	EEMASKbits.EEMASK2  	/* bit 2 */
#define EEMASK3   	EEMASKbits.EEMASK3  	/* bit 3 */
#define EEMASK4   	EEMASKbits.EEMASK4  	/* bit 4 */
#define EEMASK5   	EEMASKbits.EEMASK5  	/* bit 5 */
#define EEMASK6   	EEMASKbits.EEMASK6  	/* bit 6 */
#define EEMASK7   	EEMASKbits.EEMASK7  	/* bit 7 */

// ----- EEAR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char EEA0:1;
		unsigned char EEA1:1;
		unsigned char EEA2:1;
		unsigned char EEA3:1;
		unsigned char EEA4:1;
		unsigned char EEA5:1;
		unsigned char :1;
		unsigned char :1;
	};
} __EEARbits_t;
extern volatile __EEARbits_t __at(EEAR_ADDR) EEARbits;

#define EEA0      	EEARbits.EEA0       	/* bit 0 */
#define EEA1      	EEARbits.EEA1       	/* bit 1 */
#define EEA2      	EEARbits.EEA2       	/* bit 2 */
#define EEA3      	EEARbits.EEA3       	/* bit 3 */
#define EEA4      	EEARbits.EEA4       	/* bit 4 */
#define EEA5      	EEARbits.EEA5       	/* bit 5 */

// ----- EEDR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char EED0:1;
		unsigned char EED1:1;
		unsigned char EED2:1;
		unsigned char EED3:1;
		unsigned char EED4:1;
		unsigned char EED5:1;
		unsigned char EED6:1;
		unsigned char EED7:1;
	};
} __EEDRbits_t;
extern volatile __EEDRbits_t __at(EEDR_ADDR) EEDRbits;

#define EED0      	EEDRbits.EED0       	/* bit 0 */
#define EED1      	EEDRbits.EED1       	/* bit 1 */
#define EED2      	EEDRbits.EED2       	/* bit 2 */
#define EED3      	EEDRbits.EED3       	/* bit 3 */
#define EED4      	EEDRbits.EED4       	/* bit 4 */
#define EED5      	EEDRbits.EED5       	/* bit 5 */
#define EED6      	EEDRbits.EED6       	/* bit 6 */
#define EED7      	EEDRbits.EED7       	/* bit 7 */

// ----- ADCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADEN:1;
		unsigned char ADEOC:1;
		unsigned char ADVRS0:1;
		unsigned char ADVRS1:1;
		unsigned char ADCHS0:1;
		unsigned char ADCHS1:1;
		unsigned char ADCHS2:1;
		unsigned char ADCHS3:1;
	};
} __ADCR0bits_t;
extern volatile __ADCR0bits_t __at(ADCR0_ADDR) ADCR0bits;

#define ADEN      	ADCR0bits.ADEN      	/* bit 0 */
#define ADEOC     	ADCR0bits.ADEOC     	/* bit 1 */
#define ADVRS0    	ADCR0bits.ADVRS0    	/* bit 2 */
#define ADVRS1    	ADCR0bits.ADVRS1    	/* bit 3 */
#define ADCHS0    	ADCR0bits.ADCHS0    	/* bit 4 */
#define ADCHS1    	ADCR0bits.ADCHS1    	/* bit 5 */
#define ADCHS2    	ADCR0bits.ADCHS2    	/* bit 6 */
#define ADCHS3    	ADCR0bits.ADCHS3    	/* bit 7 */

// ----- ADCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char ADSPS0:1;
		unsigned char ADSPS1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char ADCKS0:1;
		unsigned char ADCKS1:1;
		unsigned char :1;
		unsigned char ADRSEL:1;
	};
} __ADCR1bits_t;
extern volatile __ADCR1bits_t __at(ADCR1_ADDR) ADCR1bits;

#define ADSPS0    	ADCR1bits.ADSPS0    	/* bit 0 */
#define ADSPS1    	ADCR1bits.ADSPS1    	/* bit 1 */
#define ADCKS0    	ADCR1bits.ADCKS0    	/* bit 4 */
#define ADCKS1    	ADCR1bits.ADCKS1    	/* bit 5 */
#define ADRSEL    	ADCR1bits.ADRSEL    	/* bit 7 */

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

// ----- ADIOS0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char AN0EN:1;
		unsigned char AN1EN:1;
		unsigned char AN2EN:1;
		unsigned char AN3EN:1;
		unsigned char AN4EN:1;
		unsigned char AN5EN:1;
		unsigned char AN6EN:1;
		unsigned char AN7EN:1;
	};
} __ADIOS0bits_t;
extern volatile __ADIOS0bits_t __at(ADIOS0_ADDR) ADIOS0bits;

#define AN0EN     	ADIOS0bits.AN0EN    	/* bit 0 */
#define AN1EN     	ADIOS0bits.AN1EN    	/* bit 1 */
#define AN2EN     	ADIOS0bits.AN2EN    	/* bit 2 */
#define AN3EN     	ADIOS0bits.AN3EN    	/* bit 3 */
#define AN4EN     	ADIOS0bits.AN4EN    	/* bit 4 */
#define AN5EN     	ADIOS0bits.AN5EN    	/* bit 5 */
#define AN6EN     	ADIOS0bits.AN6EN    	/* bit 6 */
#define AN7EN     	ADIOS0bits.AN7EN    	/* bit 7 */

// ----- ADIOS1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char AN8EN:1;
		unsigned char AN9EN:1;
		unsigned char AN10EN:1;
		unsigned char AN11EN:1;
		unsigned char AN12EN:1;
		unsigned char AN13EN:1;
		unsigned char :1;
		unsigned char :1;
	};
} __ADIOS1bits_t;
extern volatile __ADIOS1bits_t __at(ADIOS1_ADDR) ADIOS1bits;

#define AN8EN     	ADIOS1bits.AN8EN    	/* bit 0 */
#define AN9EN     	ADIOS1bits.AN9EN    	/* bit 1 */
#define AN10EN    	ADIOS1bits.AN10EN   	/* bit 2 */
#define AN11EN    	ADIOS1bits.AN11EN   	/* bit 3 */
#define AN12EN    	ADIOS1bits.AN12EN   	/* bit 4 */
#define AN13EN    	ADIOS1bits.AN13EN   	/* bit 5 */

// ----- OSADJCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char OSADJTR0:1;
		unsigned char OSADJTR1:1;
		unsigned char OSADJTR2:1;
		unsigned char OSADJTR3:1;
		unsigned char OSADJTR4:1;
		unsigned char OSADJTR5:1;
		unsigned char :1;
		unsigned char OSADJEN:1;
	};
} __OSADJCRbits_t;
extern volatile __OSADJCRbits_t __at(OSADJCR_ADDR) OSADJCRbits;

#define OSADJTR0  	OSADJCRbits.OSADJTR0	/* bit 0 */
#define OSADJTR1  	OSADJCRbits.OSADJTR1	/* bit 1 */
#define OSADJTR2  	OSADJCRbits.OSADJTR2	/* bit 2 */
#define OSADJTR3  	OSADJCRbits.OSADJTR3	/* bit 3 */
#define OSADJTR4  	OSADJCRbits.OSADJTR4	/* bit 4 */
#define OSADJTR5  	OSADJCRbits.OSADJTR5	/* bit 5 */
#define OSADJEN   	OSADJCRbits.OSADJEN 	/* bit 7 */

// ----- T2CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2PRS0:1;
		unsigned char T2PRS1:1;
		unsigned char T2PRS2:1;
		unsigned char T2CKS0:1;
		unsigned char T2CKS1:1;
		unsigned char SSTAT:1;
		unsigned char SMOD:1;
		unsigned char T2EN:1;
	};
} __T2CRbits_t;
extern volatile __T2CRbits_t __at(T2CR_ADDR) T2CRbits;

#define T2PRS0    	T2CRbits.T2PRS0     	/* bit 0 */
#define T2PRS1    	T2CRbits.T2PRS1     	/* bit 1 */
#define T2PRS2    	T2CRbits.T2PRS2     	/* bit 2 */
#define T2CKS0    	T2CRbits.T2CKS0     	/* bit 3 */
#define T2CKS1    	T2CRbits.T2CKS1     	/* bit 4 */
#define SSTAT     	T2CRbits.SSTAT      	/* bit 5 */
#define SMOD      	T2CRbits.SMOD       	/* bit 6 */
#define T2EN      	T2CRbits.T2EN       	/* bit 7 */

// ----- T2CNTH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T2CNT8:1;
		unsigned char T2CNT9:1;
		unsigned char T2CNT10:1;
		unsigned char T2CNT11:1;
		unsigned char T2CNT12:1;
		unsigned char T2CNT13:1;
		unsigned char T2CNT14:1;
		unsigned char T2CNT15:1;
	};
} __T2CNTHbits_t;
extern volatile __T2CNTHbits_t __at(T2CNTH_ADDR) T2CNTHbits;

#define T2CNT8    	T2CNTHbits.T2CNT8   	/* bit 0 */
#define T2CNT9    	T2CNTHbits.T2CNT9   	/* bit 1 */
#define T2CNT10   	T2CNTHbits.T2CNT10  	/* bit 2 */
#define T2CNT11   	T2CNTHbits.T2CNT11  	/* bit 3 */
#define T2CNT12   	T2CNTHbits.T2CNT12  	/* bit 4 */
#define T2CNT13   	T2CNTHbits.T2CNT13  	/* bit 5 */
#define T2CNT14   	T2CNTHbits.T2CNT14  	/* bit 6 */
#define T2CNT15   	T2CNTHbits.T2CNT15  	/* bit 7 */

// ----- T2CNTL Bits --------------------------------------------
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
} __T2CNTLbits_t;
extern volatile __T2CNTLbits_t __at(T2CNTL_ADDR) T2CNTLbits;

#define T2CNT0    	T2CNTLbits.T2CNT0   	/* bit 0 */
#define T2CNT1    	T2CNTLbits.T2CNT1   	/* bit 1 */
#define T2CNT2    	T2CNTLbits.T2CNT2   	/* bit 2 */
#define T2CNT3    	T2CNTLbits.T2CNT3   	/* bit 3 */
#define T2CNT4    	T2CNTLbits.T2CNT4   	/* bit 4 */
#define T2CNT5    	T2CNTLbits.T2CNT5   	/* bit 5 */
#define T2CNT6    	T2CNTLbits.T2CNT6   	/* bit 6 */
#define T2CNT7    	T2CNTLbits.T2CNT7   	/* bit 7 */

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

// ----- T3CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T3PRS0:1;
		unsigned char T3PRS1:1;
		unsigned char T3PRS2:1;
		unsigned char T3CKS0:1;
		unsigned char T3CKS1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char T3EN:1;
	};
} __T3CRbits_t;
extern volatile __T3CRbits_t __at(T3CR_ADDR) T3CRbits;

#define T3PRS0    	T3CRbits.T3PRS0     	/* bit 0 */
#define T3PRS1    	T3CRbits.T3PRS1     	/* bit 1 */
#define T3PRS2    	T3CRbits.T3PRS2     	/* bit 2 */
#define T3CKS0    	T3CRbits.T3CKS0     	/* bit 3 */
#define T3CKS1    	T3CRbits.T3CKS1     	/* bit 4 */
#define T3EN      	T3CRbits.T3EN       	/* bit 7 */

// ----- T3CNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T3CNT0:1;
		unsigned char T3CNT1:1;
		unsigned char T3CNT2:1;
		unsigned char T3CNT3:1;
		unsigned char T3CNT4:1;
		unsigned char T3CNT5:1;
		unsigned char T3CNT6:1;
		unsigned char T3CNT7:1;
	};
} __T3CNTbits_t;
extern volatile __T3CNTbits_t __at(T3CNT_ADDR) T3CNTbits;

#define T3CNT0    	T3CNTbits.T3CNT0    	/* bit 0 */
#define T3CNT1    	T3CNTbits.T3CNT1    	/* bit 1 */
#define T3CNT2    	T3CNTbits.T3CNT2    	/* bit 2 */
#define T3CNT3    	T3CNTbits.T3CNT3    	/* bit 3 */
#define T3CNT4    	T3CNTbits.T3CNT4    	/* bit 4 */
#define T3CNT5    	T3CNTbits.T3CNT5    	/* bit 5 */
#define T3CNT6    	T3CNTbits.T3CNT6    	/* bit 6 */
#define T3CNT7    	T3CNTbits.T3CNT7    	/* bit 7 */

// ----- T3LOAD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T3LOAD0:1;
		unsigned char T3LOAD1:1;
		unsigned char T3LOAD2:1;
		unsigned char T3LOAD3:1;
		unsigned char T3LOAD4:1;
		unsigned char T3LOAD5:1;
		unsigned char T3LOAD6:1;
		unsigned char T3LOAD7:1;
	};
} __T3LOADbits_t;
extern volatile __T3LOADbits_t __at(T3LOAD_ADDR) T3LOADbits;

#define T3LOAD0   	T3LOADbits.T3LOAD0  	/* bit 0 */
#define T3LOAD1   	T3LOADbits.T3LOAD1  	/* bit 1 */
#define T3LOAD2   	T3LOADbits.T3LOAD2  	/* bit 2 */
#define T3LOAD3   	T3LOADbits.T3LOAD3  	/* bit 3 */
#define T3LOAD4   	T3LOADbits.T3LOAD4  	/* bit 4 */
#define T3LOAD5   	T3LOADbits.T3LOAD5  	/* bit 5 */
#define T3LOAD6   	T3LOADbits.T3LOAD6  	/* bit 6 */
#define T3LOAD7   	T3LOADbits.T3LOAD7  	/* bit 7 */

// ----- SCON Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char RI:1;
		unsigned char TI:1;
		unsigned char RB8:1;
		unsigned char TB8:1;
		unsigned char REN:1;
		unsigned char SM2:1;
		unsigned char SM1:1;
		unsigned char SM0:1;
	};
} __SCONbits_t;
extern volatile __SCONbits_t __at(SCON_ADDR) SCONbits;

#define RI        	SCONbits.RI         	/* bit 0 */
#define TI        	SCONbits.TI         	/* bit 1 */
#define RB8       	SCONbits.RB8        	/* bit 2 */
#define TB8       	SCONbits.TB8        	/* bit 3 */
#define REN       	SCONbits.REN        	/* bit 4 */
#define SM2       	SCONbits.SM2        	/* bit 5 */
#define SM1       	SCONbits.SM1        	/* bit 6 */
#define SM0       	SCONbits.SM0        	/* bit 7 */

// ----- SBUF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char SBUF0:1;
		unsigned char SBUF1:1;
		unsigned char SBUF2:1;
		unsigned char SBUF3:1;
		unsigned char SBUF4:1;
		unsigned char SBUF5:1;
		unsigned char SBUF6:1;
		unsigned char SBUF7:1;
	};
} __SBUFbits_t;
extern volatile __SBUFbits_t __at(SBUF_ADDR) SBUFbits;

#define SBUF0     	SBUFbits.SBUF0      	/* bit 0 */
#define SBUF1     	SBUFbits.SBUF1      	/* bit 1 */
#define SBUF2     	SBUFbits.SBUF2      	/* bit 2 */
#define SBUF3     	SBUFbits.SBUF3      	/* bit 3 */
#define SBUF4     	SBUFbits.SBUF4      	/* bit 4 */
#define SBUF5     	SBUFbits.SBUF5      	/* bit 5 */
#define SBUF6     	SBUFbits.SBUF6      	/* bit 6 */
#define SBUF7     	SBUFbits.SBUF7      	/* bit 7 */

// ----- SADDR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char SADDR0:1;
		unsigned char SADDR1:1;
		unsigned char SADDR2:1;
		unsigned char SADDR3:1;
		unsigned char SADDR4:1;
		unsigned char SADDR5:1;
		unsigned char SADDR6:1;
		unsigned char SADDR7:1;
	};
} __SADDRbits_t;
extern volatile __SADDRbits_t __at(SADDR_ADDR) SADDRbits;

#define SADDR0    	SADDRbits.SADDR0    	/* bit 0 */
#define SADDR1    	SADDRbits.SADDR1    	/* bit 1 */
#define SADDR2    	SADDRbits.SADDR2    	/* bit 2 */
#define SADDR3    	SADDRbits.SADDR3    	/* bit 3 */
#define SADDR4    	SADDRbits.SADDR4    	/* bit 4 */
#define SADDR5    	SADDRbits.SADDR5    	/* bit 5 */
#define SADDR6    	SADDRbits.SADDR6    	/* bit 6 */
#define SADDR7    	SADDRbits.SADDR7    	/* bit 7 */

// ----- SADEN Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char SADEN0:1;
		unsigned char SADEN1:1;
		unsigned char SADEN2:1;
		unsigned char SADEN3:1;
		unsigned char SADEN4:1;
		unsigned char SADEN5:1;
		unsigned char SADEN6:1;
		unsigned char SADEN7:1;
	};
} __SADENbits_t;
extern volatile __SADENbits_t __at(SADEN_ADDR) SADENbits;

#define SADEN0    	SADENbits.SADEN0    	/* bit 0 */
#define SADEN1    	SADENbits.SADEN1    	/* bit 1 */
#define SADEN2    	SADENbits.SADEN2    	/* bit 2 */
#define SADEN3    	SADENbits.SADEN3    	/* bit 3 */
#define SADEN4    	SADENbits.SADEN4    	/* bit 4 */
#define SADEN5    	SADENbits.SADEN5    	/* bit 5 */
#define SADEN6    	SADENbits.SADEN6    	/* bit 6 */
#define SADEN7    	SADENbits.SADEN7    	/* bit 7 */

#endif
