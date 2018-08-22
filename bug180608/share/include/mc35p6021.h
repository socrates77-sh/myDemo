#ifndef MC35P6021_H
#define MC35P6021_H

#include <mc35-common.h>

//
// Register addresses.
//
#define HIBYTE_ADDR     	0x0082
#define FSR0_ADDR       	0x0083
#define FSR1_ADDR       	0x0084
#define PFLAG_ADDR      	0x0086
#define OSCCAL_ADDR     	0x008F
#define WKCR0_ADDR      	0x00A0
#define WKCR5_ADDR      	0x00A5
#define OEP0_ADDR       	0x00B8
#define EINTCR_ADDR     	0x00BF
#define OEP4_ADDR       	0x00C4
#define OEP5_ADDR       	0x00C5
#define INTF_ADDR       	0x00C8
#define INTE_ADDR       	0x00C9
#define OSCM_ADDR       	0x00CA
#define WDTCR_ADDR      	0x00CC
#define T1LDR_ADDR      	0x00CD
#define PCL_ADDR        	0x00CE
#define PCH_ADDR        	0x00CF
#define IOP0_ADDR       	0x00D0
#define IOP4_ADDR       	0x00D4
#define IOP5_ADDR       	0x00D5
#define T0CR_ADDR       	0x00D8
#define T0CNT_ADDR      	0x00D9
#define T1CR_ADDR       	0x00DA
#define T1CNT_ADDR      	0x00DB
#define BUZCR_ADDR      	0x00DC
#define MCR_ADDR        	0x00DF
#define PUP0_ADDR       	0x00E0
#define PUP4_ADDR       	0x00E4
#define PUP5_ADDR       	0x00E5
#define INDF_ADDR       	0x00E7
#define PWMCR0_ADDR     	0x00E8
#define PWMCR1_ADDR     	0x00E9
#define PWMCNT_ADDR     	0x00EA
#define PWMADT_ADDR     	0x00EB
#define PWMBDT_ADDR     	0x00EC
#define PWMCDT_ADDR     	0x00ED
#define PWMPD_ADDR      	0x00EE
#define STKR0L_ADDR     	0x00F0
#define STKR0H_ADDR     	0x00F1
#define STKR1L_ADDR     	0x00F2
#define STKR1H_ADDR     	0x00F3
#define STKR2L_ADDR     	0x00F4
#define STKR2H_ADDR     	0x00F5
#define STKR3L_ADDR     	0x00F6
#define STKR3H_ADDR     	0x00F7
#define STKR4L_ADDR     	0x00F8
#define STKR4H_ADDR     	0x00F9
#define STKR5L_ADDR     	0x00FA
#define STKR5H_ADDR     	0x00FB
#define STKR6L_ADDR     	0x00FC
#define STKR6H_ADDR     	0x00FD
#define STKR7L_ADDR     	0x00FE
#define STKR7H_ADDR     	0x00FF

//----- Register Files -----------------------------------------------------

extern __sfr __at (HIBYTE_ADDR)   	HIBYTE;
extern __sfr __at (FSR0_ADDR)     	FSR0;
extern __sfr __at (FSR1_ADDR)     	FSR1;
extern __sfr __at (PFLAG_ADDR)    	PFLAG;
extern __sfr __at (OSCCAL_ADDR)   	OSCCAL;
extern __sfr __at (WKCR0_ADDR)    	WKCR0;
extern __sfr __at (WKCR5_ADDR)    	WKCR5;
extern __sfr __at (OEP0_ADDR)     	OEP0;
extern __sfr __at (EINTCR_ADDR)   	EINTCR;
extern __sfr __at (OEP4_ADDR)     	OEP4;
extern __sfr __at (OEP5_ADDR)     	OEP5;
extern __sfr __at (INTF_ADDR)     	INTF;
extern __sfr __at (INTE_ADDR)     	INTE;
extern __sfr __at (OSCM_ADDR)     	OSCM;
extern __sfr __at (WDTCR_ADDR)    	WDTCR;
extern __sfr __at (T1LDR_ADDR)    	T1LDR;
extern __sfr __at (PCL_ADDR)      	PCL;
extern __sfr __at (PCH_ADDR)      	PCH;
extern __sfr __at (IOP0_ADDR)     	IOP0;
extern __sfr __at (IOP4_ADDR)     	IOP4;
extern __sfr __at (IOP5_ADDR)     	IOP5;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNT_ADDR)    	T1CNT;
extern __sfr __at (BUZCR_ADDR)    	BUZCR;
extern __sfr __at (MCR_ADDR)      	MCR;
extern __sfr __at (PUP0_ADDR)     	PUP0;
extern __sfr __at (PUP4_ADDR)     	PUP4;
extern __sfr __at (PUP5_ADDR)     	PUP5;
extern __sfr __at (INDF_ADDR)     	INDF;
extern __sfr __at (PWMCR0_ADDR)   	PWMCR0;
extern __sfr __at (PWMCR1_ADDR)   	PWMCR1;
extern __sfr __at (PWMCNT_ADDR)   	PWMCNT;
extern __sfr __at (PWMADT_ADDR)   	PWMADT;
extern __sfr __at (PWMBDT_ADDR)   	PWMBDT;
extern __sfr __at (PWMCDT_ADDR)   	PWMCDT;
extern __sfr __at (PWMPD_ADDR)    	PWMPD;
extern __sfr __at (STKR0L_ADDR)   	STKR0L;
extern __sfr __at (STKR0H_ADDR)   	STKR0H;
extern __sfr __at (STKR1L_ADDR)   	STKR1L;
extern __sfr __at (STKR1H_ADDR)   	STKR1H;
extern __sfr __at (STKR2L_ADDR)   	STKR2L;
extern __sfr __at (STKR2H_ADDR)   	STKR2H;
extern __sfr __at (STKR3L_ADDR)   	STKR3L;
extern __sfr __at (STKR3H_ADDR)   	STKR3H;
extern __sfr __at (STKR4L_ADDR)   	STKR4L;
extern __sfr __at (STKR4H_ADDR)   	STKR4H;
extern __sfr __at (STKR5L_ADDR)   	STKR5L;
extern __sfr __at (STKR5H_ADDR)   	STKR5H;
extern __sfr __at (STKR6L_ADDR)   	STKR6L;
extern __sfr __at (STKR6H_ADDR)   	STKR6H;
extern __sfr __at (STKR7L_ADDR)   	STKR7L;
extern __sfr __at (STKR7H_ADDR)   	STKR7H;

//==========================================================================
//
//	Configuration Bits
//
//==========================================================================

//OPBIT1

//OPBIT0

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

// ----- PFLAG Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char Z:1;
		unsigned char DC:1;
		unsigned char C:1;
		unsigned char :1;
		unsigned char LVD24:1;
		unsigned char LVD36:1;
		unsigned char :1;
		unsigned char :1;
	};
} __PFLAGbits_t;
extern volatile __PFLAGbits_t __at(PFLAG_ADDR) PFLAGbits;

#define Z         	PFLAGbits.Z         	/* bit 0 */
#define DC        	PFLAGbits.DC        	/* bit 1 */
#define C         	PFLAGbits.C         	/* bit 2 */
#define LVD24     	PFLAGbits.LVD24     	/* bit 4 */
#define LVD36     	PFLAGbits.LVD36     	/* bit 5 */

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

// ----- WKCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00WK:1;
		unsigned char P01WK:1;
		unsigned char P02WK:1;
		unsigned char P03WK:1;
		unsigned char P04WK:1;
		unsigned char P05WK:1;
		unsigned char P06WK:1;
		unsigned char P07WK:1;
	};
} __WKCR0bits_t;
extern volatile __WKCR0bits_t __at(WKCR0_ADDR) WKCR0bits;

#define P00WK     	WKCR0bits.P00WK     	/* bit 0 */
#define P01WK     	WKCR0bits.P01WK     	/* bit 1 */
#define P02WK     	WKCR0bits.P02WK     	/* bit 2 */
#define P03WK     	WKCR0bits.P03WK     	/* bit 3 */
#define P04WK     	WKCR0bits.P04WK     	/* bit 4 */
#define P05WK     	WKCR0bits.P05WK     	/* bit 5 */
#define P06WK     	WKCR0bits.P06WK     	/* bit 6 */
#define P07WK     	WKCR0bits.P07WK     	/* bit 7 */

// ----- WKCR5 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P50WK:1;
		unsigned char P51WK:1;
		unsigned char P52WK:1;
		unsigned char P53WK:1;
		unsigned char P54WK:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __WKCR5bits_t;
extern volatile __WKCR5bits_t __at(WKCR5_ADDR) WKCR5bits;

#define P50WK     	WKCR5bits.P50WK     	/* bit 0 */
#define P51WK     	WKCR5bits.P51WK     	/* bit 1 */
#define P52WK     	WKCR5bits.P52WK     	/* bit 2 */
#define P53WK     	WKCR5bits.P53WK     	/* bit 3 */
#define P54WK     	WKCR5bits.P54WK     	/* bit 4 */

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

// ----- EINTCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char MINT00:1;
		unsigned char MINT01:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __EINTCRbits_t;
extern volatile __EINTCRbits_t __at(EINTCR_ADDR) EINTCRbits;

#define MINT00    	EINTCRbits.MINT00   	/* bit 3 */
#define MINT01    	EINTCRbits.MINT01   	/* bit 4 */

// ----- OEP4 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P40OE:1;
		unsigned char P41OE:1;
		unsigned char P42OE:1;
		unsigned char P43OE:1;
		unsigned char P44OE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP4bits_t;
extern volatile __OEP4bits_t __at(OEP4_ADDR) OEP4bits;

#define P40OE     	OEP4bits.P40OE      	/* bit 0 */
#define P41OE     	OEP4bits.P41OE      	/* bit 1 */
#define P42OE     	OEP4bits.P42OE      	/* bit 2 */
#define P43OE     	OEP4bits.P43OE      	/* bit 3 */
#define P44OE     	OEP4bits.P44OE      	/* bit 4 */

// ----- OEP5 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P50OE:1;
		unsigned char P51OE:1;
		unsigned char P52OE:1;
		unsigned char P53OE:1;
		unsigned char P54OE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OEP5bits_t;
extern volatile __OEP5bits_t __at(OEP5_ADDR) OEP5bits;

#define P50OE     	OEP5bits.P50OE      	/* bit 0 */
#define P51OE     	OEP5bits.P51OE      	/* bit 1 */
#define P52OE     	OEP5bits.P52OE      	/* bit 2 */
#define P53OE     	OEP5bits.P53OE      	/* bit 3 */
#define P54OE     	OEP5bits.P54OE      	/* bit 4 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INT0IF:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char PWMIF:1;
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define INT0IF    	INTFbits.INT0IF     	/* bit 0 */
#define PWMIF     	INTFbits.PWMIF      	/* bit 3 */
#define T0IF      	INTFbits.T0IF       	/* bit 4 */
#define T1IF      	INTFbits.T1IF       	/* bit 5 */

// ----- INTE Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char INT0IE:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char PWMIE:1;
		unsigned char T0IE:1;
		unsigned char T1IE:1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define INT0IE    	INTEbits.INT0IE     	/* bit 0 */
#define PWMIE     	INTEbits.PWMIE      	/* bit 3 */
#define T0IE      	INTEbits.T0IE       	/* bit 4 */
#define T1IE      	INTEbits.T1IE       	/* bit 5 */

// ----- OSCM Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char HFDE:1;
		unsigned char CLKS:1;
		unsigned char CPUM0:1;
		unsigned char CPUM1:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __OSCMbits_t;
extern volatile __OSCMbits_t __at(OSCM_ADDR) OSCMbits;

#define HFDE      	OSCMbits.HFDE       	/* bit 1 */
#define CLKS      	OSCMbits.CLKS       	/* bit 2 */
#define CPUM0     	OSCMbits.CPUM0      	/* bit 3 */
#define CPUM1     	OSCMbits.CPUM1      	/* bit 4 */

// ----- WDTCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char WDTCR0:1;
		unsigned char WDTCR1:1;
		unsigned char WDTCR2:1;
		unsigned char WDTCR3:1;
		unsigned char WDTCR4:1;
		unsigned char WDTCR5:1;
		unsigned char WDTCR6:1;
		unsigned char WDTCR7:1;
	};
} __WDTCRbits_t;
extern volatile __WDTCRbits_t __at(WDTCR_ADDR) WDTCRbits;

#define WDTCR0    	WDTCRbits.WDTCR0    	/* bit 0 */
#define WDTCR1    	WDTCRbits.WDTCR1    	/* bit 1 */
#define WDTCR2    	WDTCRbits.WDTCR2    	/* bit 2 */
#define WDTCR3    	WDTCRbits.WDTCR3    	/* bit 3 */
#define WDTCR4    	WDTCRbits.WDTCR4    	/* bit 4 */
#define WDTCR5    	WDTCRbits.WDTCR5    	/* bit 5 */
#define WDTCR6    	WDTCRbits.WDTCR6    	/* bit 6 */
#define WDTCR7    	WDTCRbits.WDTCR7    	/* bit 7 */

// ----- T1LDR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T1LDR0:1;
		unsigned char T1LDR1:1;
		unsigned char T1LDR2:1;
		unsigned char T1LDR3:1;
		unsigned char T1LDR4:1;
		unsigned char T1LDR5:1;
		unsigned char T1LDR6:1;
		unsigned char T1LDR7:1;
	};
} __T1LDRbits_t;
extern volatile __T1LDRbits_t __at(T1LDR_ADDR) T1LDRbits;

#define T1LDR0    	T1LDRbits.T1LDR0    	/* bit 0 */
#define T1LDR1    	T1LDRbits.T1LDR1    	/* bit 1 */
#define T1LDR2    	T1LDRbits.T1LDR2    	/* bit 2 */
#define T1LDR3    	T1LDRbits.T1LDR3    	/* bit 3 */
#define T1LDR4    	T1LDRbits.T1LDR4    	/* bit 4 */
#define T1LDR5    	T1LDRbits.T1LDR5    	/* bit 5 */
#define T1LDR6    	T1LDRbits.T1LDR6    	/* bit 6 */
#define T1LDR7    	T1LDRbits.T1LDR7    	/* bit 7 */

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

// ----- PCH Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PC8:1;
		unsigned char PC9:1;
		unsigned char PC10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PCHbits_t;
extern volatile __PCHbits_t __at(PCH_ADDR) PCHbits;

#define PC8       	PCHbits.PC8         	/* bit 0 */
#define PC9       	PCHbits.PC9         	/* bit 1 */
#define PC10      	PCHbits.PC10        	/* bit 2 */

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

// ----- IOP4 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P40D:1;
		unsigned char P41D:1;
		unsigned char P42D:1;
		unsigned char P43D:1;
		unsigned char P44D:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP4bits_t;
extern volatile __IOP4bits_t __at(IOP4_ADDR) IOP4bits;

#define P40D      	IOP4bits.P40D       	/* bit 0 */
#define P41D      	IOP4bits.P41D       	/* bit 1 */
#define P42D      	IOP4bits.P42D       	/* bit 2 */
#define P43D      	IOP4bits.P43D       	/* bit 3 */
#define P44D      	IOP4bits.P44D       	/* bit 4 */

// ----- IOP5 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P50D:1;
		unsigned char P51D:1;
		unsigned char P52D:1;
		unsigned char P53D:1;
		unsigned char P54D:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __IOP5bits_t;
extern volatile __IOP5bits_t __at(IOP5_ADDR) IOP5bits;

#define P50D      	IOP5bits.P50D       	/* bit 0 */
#define P51D      	IOP5bits.P51D       	/* bit 1 */
#define P52D      	IOP5bits.P52D       	/* bit 2 */
#define P53D      	IOP5bits.P53D       	/* bit 3 */
#define P54D      	IOP5bits.P54D       	/* bit 4 */

// ----- T0CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char T1CKS1:1;
		unsigned char T1CKS2:1;
		unsigned char T0PRS0:1;
		unsigned char T0PRS1:1;
		unsigned char T0PRS2:1;
		unsigned char T0EN:1;
	};
} __T0CRbits_t;
extern volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;

#define T1CKS1    	T0CRbits.T1CKS1     	/* bit 2 */
#define T1CKS2    	T0CRbits.T1CKS2     	/* bit 3 */
#define T0PRS0    	T0CRbits.T0PRS0     	/* bit 4 */
#define T0PRS1    	T0CRbits.T0PRS1     	/* bit 5 */
#define T0PRS2    	T0CRbits.T0PRS2     	/* bit 6 */
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

// ----- T1CR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWM1OE:1;
		unsigned char BUZ1OE:1;
		unsigned char T1LDEN:1;
		unsigned char T1CKS0:1;
		unsigned char T1PRS0:1;
		unsigned char T1PRS1:1;
		unsigned char T1PRS2:1;
		unsigned char T1EN:1;
	};
} __T1CRbits_t;
extern volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#define PWM1OE    	T1CRbits.PWM1OE     	/* bit 0 */
#define BUZ1OE    	T1CRbits.BUZ1OE     	/* bit 1 */
#define T1LDEN    	T1CRbits.T1LDEN     	/* bit 2 */
#define T1CKS0    	T1CRbits.T1CKS0     	/* bit 3 */
#define T1PRS0    	T1CRbits.T1PRS0     	/* bit 4 */
#define T1PRS1    	T1CRbits.T1PRS1     	/* bit 5 */
#define T1PRS2    	T1CRbits.T1PRS2     	/* bit 6 */
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

// ----- BUZCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char BUZPRS0:1;
		unsigned char BUZPRS1:1;
		unsigned char BUZEN:1;
	};
} __BUZCRbits_t;
extern volatile __BUZCRbits_t __at(BUZCR_ADDR) BUZCRbits;

#define BUZPRS0   	BUZCRbits.BUZPRS0   	/* bit 5 */
#define BUZPRS1   	BUZCRbits.BUZPRS1   	/* bit 6 */
#define BUZEN     	BUZCRbits.BUZEN     	/* bit 7 */

// ----- MCR Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKP0:1;
		unsigned char STKP1:1;
		unsigned char STKP2:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char GIE:1;
	};
} __MCRbits_t;
extern volatile __MCRbits_t __at(MCR_ADDR) MCRbits;

#define STKP0     	MCRbits.STKP0       	/* bit 0 */
#define STKP1     	MCRbits.STKP1       	/* bit 1 */
#define STKP2     	MCRbits.STKP2       	/* bit 2 */
#define GIE       	MCRbits.GIE         	/* bit 7 */

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

// ----- PUP4 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P40PU:1;
		unsigned char P41PU:1;
		unsigned char P42PU:1;
		unsigned char P43PU:1;
		unsigned char P44PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP4bits_t;
extern volatile __PUP4bits_t __at(PUP4_ADDR) PUP4bits;

#define P40PU     	PUP4bits.P40PU      	/* bit 0 */
#define P41PU     	PUP4bits.P41PU      	/* bit 1 */
#define P42PU     	PUP4bits.P42PU      	/* bit 2 */
#define P43PU     	PUP4bits.P43PU      	/* bit 3 */
#define P44PU     	PUP4bits.P44PU      	/* bit 4 */

// ----- PUP5 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P50PU:1;
		unsigned char P51PU:1;
		unsigned char P52PU:1;
		unsigned char P53PU:1;
		unsigned char P54PU:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __PUP5bits_t;
extern volatile __PUP5bits_t __at(PUP5_ADDR) PUP5bits;

#define P50PU     	PUP5bits.P50PU      	/* bit 0 */
#define P51PU     	PUP5bits.P51PU      	/* bit 1 */
#define P52PU     	PUP5bits.P52PU      	/* bit 2 */
#define P53PU     	PUP5bits.P53PU      	/* bit 3 */
#define P54PU     	PUP5bits.P54PU      	/* bit 4 */

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

// ----- PWMCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMAOF:1;
		unsigned char PWMBOF:1;
		unsigned char PWMCOF:1;
		unsigned char :1;
		unsigned char PWMPRS0:1;
		unsigned char PWMPRS1:1;
		unsigned char PWMPRS2:1;
		unsigned char PWMEN:1;
	};
} __PWMCR0bits_t;
extern volatile __PWMCR0bits_t __at(PWMCR0_ADDR) PWMCR0bits;

#define PWMAOF    	PWMCR0bits.PWMAOF   	/* bit 0 */
#define PWMBOF    	PWMCR0bits.PWMBOF   	/* bit 1 */
#define PWMCOF    	PWMCR0bits.PWMCOF   	/* bit 2 */
#define PWMPRS0   	PWMCR0bits.PWMPRS0  	/* bit 4 */
#define PWMPRS1   	PWMCR0bits.PWMPRS1  	/* bit 5 */
#define PWMPRS2   	PWMCR0bits.PWMPRS2  	/* bit 6 */
#define PWMEN     	PWMCR0bits.PWMEN    	/* bit 7 */

// ----- PWMCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char PWMAOE:1;
		unsigned char PWMBOE:1;
		unsigned char PWMCOE:1;
	};
} __PWMCR1bits_t;
extern volatile __PWMCR1bits_t __at(PWMCR1_ADDR) PWMCR1bits;

#define PWMAOE    	PWMCR1bits.PWMAOE   	/* bit 5 */
#define PWMBOE    	PWMCR1bits.PWMBOE   	/* bit 6 */
#define PWMCOE    	PWMCR1bits.PWMCOE   	/* bit 7 */

// ----- PWMCNT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMCNT0:1;
		unsigned char PWMCNT1:1;
		unsigned char PWMCNT2:1;
		unsigned char PWMCNT3:1;
		unsigned char PWMCNT4:1;
		unsigned char PWMCNT5:1;
		unsigned char PWMCNT6:1;
		unsigned char PWMCNT7:1;
	};
} __PWMCNTbits_t;
extern volatile __PWMCNTbits_t __at(PWMCNT_ADDR) PWMCNTbits;

#define PWMCNT0   	PWMCNTbits.PWMCNT0  	/* bit 0 */
#define PWMCNT1   	PWMCNTbits.PWMCNT1  	/* bit 1 */
#define PWMCNT2   	PWMCNTbits.PWMCNT2  	/* bit 2 */
#define PWMCNT3   	PWMCNTbits.PWMCNT3  	/* bit 3 */
#define PWMCNT4   	PWMCNTbits.PWMCNT4  	/* bit 4 */
#define PWMCNT5   	PWMCNTbits.PWMCNT5  	/* bit 5 */
#define PWMCNT6   	PWMCNTbits.PWMCNT6  	/* bit 6 */
#define PWMCNT7   	PWMCNTbits.PWMCNT7  	/* bit 7 */

// ----- PWMADT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMADT0:1;
		unsigned char PWMADT1:1;
		unsigned char PWMADT2:1;
		unsigned char PWMADT3:1;
		unsigned char PWMADT4:1;
		unsigned char PWMADT5:1;
		unsigned char PWMADT6:1;
		unsigned char PWMADT7:1;
	};
} __PWMADTbits_t;
extern volatile __PWMADTbits_t __at(PWMADT_ADDR) PWMADTbits;

#define PWMADT0   	PWMADTbits.PWMADT0  	/* bit 0 */
#define PWMADT1   	PWMADTbits.PWMADT1  	/* bit 1 */
#define PWMADT2   	PWMADTbits.PWMADT2  	/* bit 2 */
#define PWMADT3   	PWMADTbits.PWMADT3  	/* bit 3 */
#define PWMADT4   	PWMADTbits.PWMADT4  	/* bit 4 */
#define PWMADT5   	PWMADTbits.PWMADT5  	/* bit 5 */
#define PWMADT6   	PWMADTbits.PWMADT6  	/* bit 6 */
#define PWMADT7   	PWMADTbits.PWMADT7  	/* bit 7 */

// ----- PWMBDT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMBDT0:1;
		unsigned char PWMBDT1:1;
		unsigned char PWMBDT2:1;
		unsigned char PWMBDT3:1;
		unsigned char PWMBDT4:1;
		unsigned char PWMBDT5:1;
		unsigned char PWMBDT6:1;
		unsigned char PWMBDT7:1;
	};
} __PWMBDTbits_t;
extern volatile __PWMBDTbits_t __at(PWMBDT_ADDR) PWMBDTbits;

#define PWMBDT0   	PWMBDTbits.PWMBDT0  	/* bit 0 */
#define PWMBDT1   	PWMBDTbits.PWMBDT1  	/* bit 1 */
#define PWMBDT2   	PWMBDTbits.PWMBDT2  	/* bit 2 */
#define PWMBDT3   	PWMBDTbits.PWMBDT3  	/* bit 3 */
#define PWMBDT4   	PWMBDTbits.PWMBDT4  	/* bit 4 */
#define PWMBDT5   	PWMBDTbits.PWMBDT5  	/* bit 5 */
#define PWMBDT6   	PWMBDTbits.PWMBDT6  	/* bit 6 */
#define PWMBDT7   	PWMBDTbits.PWMBDT7  	/* bit 7 */

// ----- PWMCDT Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMCDT0:1;
		unsigned char PWMCDT1:1;
		unsigned char PWMCDT2:1;
		unsigned char PWMCDT3:1;
		unsigned char PWMCDT4:1;
		unsigned char PWMCDT5:1;
		unsigned char PWMCDT6:1;
		unsigned char PWMCDT7:1;
	};
} __PWMCDTbits_t;
extern volatile __PWMCDTbits_t __at(PWMCDT_ADDR) PWMCDTbits;

#define PWMCDT0   	PWMCDTbits.PWMCDT0  	/* bit 0 */
#define PWMCDT1   	PWMCDTbits.PWMCDT1  	/* bit 1 */
#define PWMCDT2   	PWMCDTbits.PWMCDT2  	/* bit 2 */
#define PWMCDT3   	PWMCDTbits.PWMCDT3  	/* bit 3 */
#define PWMCDT4   	PWMCDTbits.PWMCDT4  	/* bit 4 */
#define PWMCDT5   	PWMCDTbits.PWMCDT5  	/* bit 5 */
#define PWMCDT6   	PWMCDTbits.PWMCDT6  	/* bit 6 */
#define PWMCDT7   	PWMCDTbits.PWMCDT7  	/* bit 7 */

// ----- PWMPD Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char PWMPD0:1;
		unsigned char PWMPD1:1;
		unsigned char PWMPD2:1;
		unsigned char PWMPD3:1;
		unsigned char PWMPD4:1;
		unsigned char PWMPD5:1;
		unsigned char PWMPD6:1;
		unsigned char PWMPD7:1;
	};
} __PWMPDbits_t;
extern volatile __PWMPDbits_t __at(PWMPD_ADDR) PWMPDbits;

#define PWMPD0    	PWMPDbits.PWMPD0    	/* bit 0 */
#define PWMPD1    	PWMPDbits.PWMPD1    	/* bit 1 */
#define PWMPD2    	PWMPDbits.PWMPD2    	/* bit 2 */
#define PWMPD3    	PWMPDbits.PWMPD3    	/* bit 3 */
#define PWMPD4    	PWMPDbits.PWMPD4    	/* bit 4 */
#define PWMPD5    	PWMPDbits.PWMPD5    	/* bit 5 */
#define PWMPD6    	PWMPDbits.PWMPD6    	/* bit 6 */
#define PWMPD7    	PWMPDbits.PWMPD7    	/* bit 7 */

// ----- STKR0L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR0B0:1;
		unsigned char STKR0B1:1;
		unsigned char STKR0B2:1;
		unsigned char STKR0B3:1;
		unsigned char STKR0B4:1;
		unsigned char STKR0B5:1;
		unsigned char STKR0B6:1;
		unsigned char STKR0B7:1;
	};
} __STKR0Lbits_t;
extern volatile __STKR0Lbits_t __at(STKR0L_ADDR) STKR0Lbits;

#define STKR0B0   	STKR0Lbits.STKR0B0  	/* bit 0 */
#define STKR0B1   	STKR0Lbits.STKR0B1  	/* bit 1 */
#define STKR0B2   	STKR0Lbits.STKR0B2  	/* bit 2 */
#define STKR0B3   	STKR0Lbits.STKR0B3  	/* bit 3 */
#define STKR0B4   	STKR0Lbits.STKR0B4  	/* bit 4 */
#define STKR0B5   	STKR0Lbits.STKR0B5  	/* bit 5 */
#define STKR0B6   	STKR0Lbits.STKR0B6  	/* bit 6 */
#define STKR0B7   	STKR0Lbits.STKR0B7  	/* bit 7 */

// ----- STKR0H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR0B8:1;
		unsigned char STKR0B9:1;
		unsigned char STKR0B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR0Hbits_t;
extern volatile __STKR0Hbits_t __at(STKR0H_ADDR) STKR0Hbits;

#define STKR0B8   	STKR0Hbits.STKR0B8  	/* bit 0 */
#define STKR0B9   	STKR0Hbits.STKR0B9  	/* bit 1 */
#define STKR0B10  	STKR0Hbits.STKR0B10 	/* bit 2 */

// ----- STKR1L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR1B0:1;
		unsigned char STKR1B1:1;
		unsigned char STKR1B2:1;
		unsigned char STKR1B3:1;
		unsigned char STKR1B4:1;
		unsigned char STKR1B5:1;
		unsigned char STKR1B6:1;
		unsigned char STKR1B7:1;
	};
} __STKR1Lbits_t;
extern volatile __STKR1Lbits_t __at(STKR1L_ADDR) STKR1Lbits;

#define STKR1B0   	STKR1Lbits.STKR1B0  	/* bit 0 */
#define STKR1B1   	STKR1Lbits.STKR1B1  	/* bit 1 */
#define STKR1B2   	STKR1Lbits.STKR1B2  	/* bit 2 */
#define STKR1B3   	STKR1Lbits.STKR1B3  	/* bit 3 */
#define STKR1B4   	STKR1Lbits.STKR1B4  	/* bit 4 */
#define STKR1B5   	STKR1Lbits.STKR1B5  	/* bit 5 */
#define STKR1B6   	STKR1Lbits.STKR1B6  	/* bit 6 */
#define STKR1B7   	STKR1Lbits.STKR1B7  	/* bit 7 */

// ----- STKR1H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR1B8:1;
		unsigned char STKR1B9:1;
		unsigned char STKR1B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR1Hbits_t;
extern volatile __STKR1Hbits_t __at(STKR1H_ADDR) STKR1Hbits;

#define STKR1B8   	STKR1Hbits.STKR1B8  	/* bit 0 */
#define STKR1B9   	STKR1Hbits.STKR1B9  	/* bit 1 */
#define STKR1B10  	STKR1Hbits.STKR1B10 	/* bit 2 */

// ----- STKR2L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR2B0:1;
		unsigned char STKR2B1:1;
		unsigned char STKR2B2:1;
		unsigned char STKR2B3:1;
		unsigned char STKR2B4:1;
		unsigned char STKR2B5:1;
		unsigned char STKR2B6:1;
		unsigned char STKR2B7:1;
	};
} __STKR2Lbits_t;
extern volatile __STKR2Lbits_t __at(STKR2L_ADDR) STKR2Lbits;

#define STKR2B0   	STKR2Lbits.STKR2B0  	/* bit 0 */
#define STKR2B1   	STKR2Lbits.STKR2B1  	/* bit 1 */
#define STKR2B2   	STKR2Lbits.STKR2B2  	/* bit 2 */
#define STKR2B3   	STKR2Lbits.STKR2B3  	/* bit 3 */
#define STKR2B4   	STKR2Lbits.STKR2B4  	/* bit 4 */
#define STKR2B5   	STKR2Lbits.STKR2B5  	/* bit 5 */
#define STKR2B6   	STKR2Lbits.STKR2B6  	/* bit 6 */
#define STKR2B7   	STKR2Lbits.STKR2B7  	/* bit 7 */

// ----- STKR2H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR2B8:1;
		unsigned char STKR2B9:1;
		unsigned char STKR2B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR2Hbits_t;
extern volatile __STKR2Hbits_t __at(STKR2H_ADDR) STKR2Hbits;

#define STKR2B8   	STKR2Hbits.STKR2B8  	/* bit 0 */
#define STKR2B9   	STKR2Hbits.STKR2B9  	/* bit 1 */
#define STKR2B10  	STKR2Hbits.STKR2B10 	/* bit 2 */

// ----- STKR3L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR3B0:1;
		unsigned char STKR3B1:1;
		unsigned char STKR3B2:1;
		unsigned char STKR3B3:1;
		unsigned char STKR3B4:1;
		unsigned char STKR3B5:1;
		unsigned char STKR3B6:1;
		unsigned char STKR3B7:1;
	};
} __STKR3Lbits_t;
extern volatile __STKR3Lbits_t __at(STKR3L_ADDR) STKR3Lbits;

#define STKR3B0   	STKR3Lbits.STKR3B0  	/* bit 0 */
#define STKR3B1   	STKR3Lbits.STKR3B1  	/* bit 1 */
#define STKR3B2   	STKR3Lbits.STKR3B2  	/* bit 2 */
#define STKR3B3   	STKR3Lbits.STKR3B3  	/* bit 3 */
#define STKR3B4   	STKR3Lbits.STKR3B4  	/* bit 4 */
#define STKR3B5   	STKR3Lbits.STKR3B5  	/* bit 5 */
#define STKR3B6   	STKR3Lbits.STKR3B6  	/* bit 6 */
#define STKR3B7   	STKR3Lbits.STKR3B7  	/* bit 7 */

// ----- STKR3H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR3B8:1;
		unsigned char STKR3B9:1;
		unsigned char STKR3B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR3Hbits_t;
extern volatile __STKR3Hbits_t __at(STKR3H_ADDR) STKR3Hbits;

#define STKR3B8   	STKR3Hbits.STKR3B8  	/* bit 0 */
#define STKR3B9   	STKR3Hbits.STKR3B9  	/* bit 1 */
#define STKR3B10  	STKR3Hbits.STKR3B10 	/* bit 2 */

// ----- STKR4L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR4B0:1;
		unsigned char STKR4B1:1;
		unsigned char STKR4B2:1;
		unsigned char STKR4B3:1;
		unsigned char STKR4B4:1;
		unsigned char STKR4B5:1;
		unsigned char STKR4B6:1;
		unsigned char STKR4B7:1;
	};
} __STKR4Lbits_t;
extern volatile __STKR4Lbits_t __at(STKR4L_ADDR) STKR4Lbits;

#define STKR4B0   	STKR4Lbits.STKR4B0  	/* bit 0 */
#define STKR4B1   	STKR4Lbits.STKR4B1  	/* bit 1 */
#define STKR4B2   	STKR4Lbits.STKR4B2  	/* bit 2 */
#define STKR4B3   	STKR4Lbits.STKR4B3  	/* bit 3 */
#define STKR4B4   	STKR4Lbits.STKR4B4  	/* bit 4 */
#define STKR4B5   	STKR4Lbits.STKR4B5  	/* bit 5 */
#define STKR4B6   	STKR4Lbits.STKR4B6  	/* bit 6 */
#define STKR4B7   	STKR4Lbits.STKR4B7  	/* bit 7 */

// ----- STKR4H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR4B8:1;
		unsigned char STKR4B9:1;
		unsigned char STKR4B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR4Hbits_t;
extern volatile __STKR4Hbits_t __at(STKR4H_ADDR) STKR4Hbits;

#define STKR4B8   	STKR4Hbits.STKR4B8  	/* bit 0 */
#define STKR4B9   	STKR4Hbits.STKR4B9  	/* bit 1 */
#define STKR4B10  	STKR4Hbits.STKR4B10 	/* bit 2 */

// ----- STKR5L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR5B0:1;
		unsigned char STKR5B1:1;
		unsigned char STKR5B2:1;
		unsigned char STKR5B3:1;
		unsigned char STKR5B4:1;
		unsigned char STKR5B5:1;
		unsigned char STKR5B6:1;
		unsigned char STKR5B7:1;
	};
} __STKR5Lbits_t;
extern volatile __STKR5Lbits_t __at(STKR5L_ADDR) STKR5Lbits;

#define STKR5B0   	STKR5Lbits.STKR5B0  	/* bit 0 */
#define STKR5B1   	STKR5Lbits.STKR5B1  	/* bit 1 */
#define STKR5B2   	STKR5Lbits.STKR5B2  	/* bit 2 */
#define STKR5B3   	STKR5Lbits.STKR5B3  	/* bit 3 */
#define STKR5B4   	STKR5Lbits.STKR5B4  	/* bit 4 */
#define STKR5B5   	STKR5Lbits.STKR5B5  	/* bit 5 */
#define STKR5B6   	STKR5Lbits.STKR5B6  	/* bit 6 */
#define STKR5B7   	STKR5Lbits.STKR5B7  	/* bit 7 */

// ----- STKR5H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR5B8:1;
		unsigned char STKR5B9:1;
		unsigned char STKR5B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR5Hbits_t;
extern volatile __STKR5Hbits_t __at(STKR5H_ADDR) STKR5Hbits;

#define STKR5B8   	STKR5Hbits.STKR5B8  	/* bit 0 */
#define STKR5B9   	STKR5Hbits.STKR5B9  	/* bit 1 */
#define STKR5B10  	STKR5Hbits.STKR5B10 	/* bit 2 */

// ----- STKR6L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR6B0:1;
		unsigned char STKR6B1:1;
		unsigned char STKR6B2:1;
		unsigned char STKR6B3:1;
		unsigned char STKR6B4:1;
		unsigned char STKR6B5:1;
		unsigned char STKR6B6:1;
		unsigned char STKR6B7:1;
	};
} __STKR6Lbits_t;
extern volatile __STKR6Lbits_t __at(STKR6L_ADDR) STKR6Lbits;

#define STKR6B0   	STKR6Lbits.STKR6B0  	/* bit 0 */
#define STKR6B1   	STKR6Lbits.STKR6B1  	/* bit 1 */
#define STKR6B2   	STKR6Lbits.STKR6B2  	/* bit 2 */
#define STKR6B3   	STKR6Lbits.STKR6B3  	/* bit 3 */
#define STKR6B4   	STKR6Lbits.STKR6B4  	/* bit 4 */
#define STKR6B5   	STKR6Lbits.STKR6B5  	/* bit 5 */
#define STKR6B6   	STKR6Lbits.STKR6B6  	/* bit 6 */
#define STKR6B7   	STKR6Lbits.STKR6B7  	/* bit 7 */

// ----- STKR6H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR6B8:1;
		unsigned char STKR6B9:1;
		unsigned char STKR6B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR6Hbits_t;
extern volatile __STKR6Hbits_t __at(STKR6H_ADDR) STKR6Hbits;

#define STKR6B8   	STKR6Hbits.STKR6B8  	/* bit 0 */
#define STKR6B9   	STKR6Hbits.STKR6B9  	/* bit 1 */
#define STKR6B10  	STKR6Hbits.STKR6B10 	/* bit 2 */

// ----- STKR7L Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR7B0:1;
		unsigned char STKR7B1:1;
		unsigned char STKR7B2:1;
		unsigned char STKR7B3:1;
		unsigned char STKR7B4:1;
		unsigned char STKR7B5:1;
		unsigned char STKR7B6:1;
		unsigned char STKR7B7:1;
	};
} __STKR7Lbits_t;
extern volatile __STKR7Lbits_t __at(STKR7L_ADDR) STKR7Lbits;

#define STKR7B0   	STKR7Lbits.STKR7B0  	/* bit 0 */
#define STKR7B1   	STKR7Lbits.STKR7B1  	/* bit 1 */
#define STKR7B2   	STKR7Lbits.STKR7B2  	/* bit 2 */
#define STKR7B3   	STKR7Lbits.STKR7B3  	/* bit 3 */
#define STKR7B4   	STKR7Lbits.STKR7B4  	/* bit 4 */
#define STKR7B5   	STKR7Lbits.STKR7B5  	/* bit 5 */
#define STKR7B6   	STKR7Lbits.STKR7B6  	/* bit 6 */
#define STKR7B7   	STKR7Lbits.STKR7B7  	/* bit 7 */

// ----- STKR7H Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char STKR7B8:1;
		unsigned char STKR7B9:1;
		unsigned char STKR7B10:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __STKR7Hbits_t;
extern volatile __STKR7Hbits_t __at(STKR7H_ADDR) STKR7Hbits;

#define STKR7B8   	STKR7Hbits.STKR7B8  	/* bit 0 */
#define STKR7B9   	STKR7Hbits.STKR7B9  	/* bit 1 */
#define STKR7B10  	STKR7Hbits.STKR7B10 	/* bit 2 */

#endif
