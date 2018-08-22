#ifndef MC32P5312_H
#define MC32P5312_H

#include <mc32-common.h>

//
// Register addresses.
//
#define LCDDS00_ADDR    	0x0100
#define LCDDS01_ADDR    	0x0101
#define LCDDS02_ADDR    	0x0102
#define LCDDS03_ADDR    	0x0103
#define LCDDS04_ADDR    	0x0104
#define LCDDS05_ADDR    	0x0105
#define LCDDS06_ADDR    	0x0106
#define LCDDS07_ADDR    	0x0107
#define LCDDS08_ADDR    	0x0108
#define LCDDS09_ADDR    	0x0109
#define LCDDS10_ADDR    	0x010A
#define LCDDS11_ADDR    	0x010B
#define LCDDS12_ADDR    	0x010C
#define LCDDS13_ADDR    	0x010D
#define LCDDS14_ADDR    	0x010E
#define LCDDS15_ADDR    	0x010F
#define LCDDS16_ADDR    	0x0110
#define LCDDS17_ADDR    	0x0111
#define LCDDS18_ADDR    	0x0112
#define LCDDS19_ADDR    	0x0113
#define LCDDS20_ADDR    	0x0114
#define LCDDS21_ADDR    	0x0115
#define LCDDS22_ADDR    	0x0116
#define LCDDS23_ADDR    	0x0117
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
#define LXTCR_ADDR      	0x01BE
#define IOP0_ADDR       	0x01C0
#define OEP0_ADDR       	0x01C1
#define PUP0_ADDR       	0x01C2
#define DKWP0_ADDR      	0x01C3
#define IOP1_ADDR       	0x01C4
#define OEP1_ADDR       	0x01C5
#define PUP1_ADDR       	0x01C6
#define DKWP1_ADDR      	0x01C7
#define T0CR_ADDR       	0x01C8
#define T0CNT_ADDR      	0x01C9
#define T0LOAD_ADDR     	0x01CA
#define T0DATA_ADDR     	0x01CB
#define T1CR_ADDR       	0x01CC
#define T1CNT_ADDR      	0x01CD
#define T1LOAD_ADDR     	0x01CE
#define T1DATA_ADDR     	0x01CF
#define LCDCR0_ADDR     	0x01D0
#define LCDCR1_ADDR     	0x01D1
#define LCDSP0_ADDR     	0x01D2
#define LCDSP1_ADDR     	0x01D3
#define DKW_ADDR        	0x01D4

//----- Register Files -----------------------------------------------------

extern __sfr __at (LCDDS00_ADDR)  	LCDDS00;
extern __sfr __at (LCDDS01_ADDR)  	LCDDS01;
extern __sfr __at (LCDDS02_ADDR)  	LCDDS02;
extern __sfr __at (LCDDS03_ADDR)  	LCDDS03;
extern __sfr __at (LCDDS04_ADDR)  	LCDDS04;
extern __sfr __at (LCDDS05_ADDR)  	LCDDS05;
extern __sfr __at (LCDDS06_ADDR)  	LCDDS06;
extern __sfr __at (LCDDS07_ADDR)  	LCDDS07;
extern __sfr __at (LCDDS08_ADDR)  	LCDDS08;
extern __sfr __at (LCDDS09_ADDR)  	LCDDS09;
extern __sfr __at (LCDDS10_ADDR)  	LCDDS10;
extern __sfr __at (LCDDS11_ADDR)  	LCDDS11;
extern __sfr __at (LCDDS12_ADDR)  	LCDDS12;
extern __sfr __at (LCDDS13_ADDR)  	LCDDS13;
extern __sfr __at (LCDDS14_ADDR)  	LCDDS14;
extern __sfr __at (LCDDS15_ADDR)  	LCDDS15;
extern __sfr __at (LCDDS16_ADDR)  	LCDDS16;
extern __sfr __at (LCDDS17_ADDR)  	LCDDS17;
extern __sfr __at (LCDDS18_ADDR)  	LCDDS18;
extern __sfr __at (LCDDS19_ADDR)  	LCDDS19;
extern __sfr __at (LCDDS20_ADDR)  	LCDDS20;
extern __sfr __at (LCDDS21_ADDR)  	LCDDS21;
extern __sfr __at (LCDDS22_ADDR)  	LCDDS22;
extern __sfr __at (LCDDS23_ADDR)  	LCDDS23;
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
extern __sfr __at (LXTCR_ADDR)    	LXTCR;
extern __sfr __at (IOP0_ADDR)     	IOP0;
extern __sfr __at (OEP0_ADDR)     	OEP0;
extern __sfr __at (PUP0_ADDR)     	PUP0;
extern __sfr __at (DKWP0_ADDR)    	DKWP0;
extern __sfr __at (IOP1_ADDR)     	IOP1;
extern __sfr __at (OEP1_ADDR)     	OEP1;
extern __sfr __at (PUP1_ADDR)     	PUP1;
extern __sfr __at (DKWP1_ADDR)    	DKWP1;
extern __sfr __at (T0CR_ADDR)     	T0CR;
extern __sfr __at (T0CNT_ADDR)    	T0CNT;
extern __sfr __at (T0LOAD_ADDR)   	T0LOAD;
extern __sfr __at (T0DATA_ADDR)   	T0DATA;
extern __sfr __at (T1CR_ADDR)     	T1CR;
extern __sfr __at (T1CNT_ADDR)    	T1CNT;
extern __sfr __at (T1LOAD_ADDR)   	T1LOAD;
extern __sfr __at (T1DATA_ADDR)   	T1DATA;
extern __sfr __at (LCDCR0_ADDR)   	LCDCR0;
extern __sfr __at (LCDCR1_ADDR)   	LCDCR1;
extern __sfr __at (LCDSP0_ADDR)   	LCDSP0;
extern __sfr __at (LCDSP1_ADDR)   	LCDSP1;
extern __sfr __at (DKW_ADDR)      	DKW;

//==========================================================================
//
//	Configuration Bits
//
//==========================================================================

//OPBIT1

//OPBIT0

// ----- LCDDS00 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG00:1;
		unsigned char COM1SEG00:1;
		unsigned char COM2SEG00:1;
		unsigned char COM3SEG00:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS00bits_t;
extern volatile __LCDDS00bits_t __at(LCDDS00_ADDR) LCDDS00bits;

#define COM0SEG00 	LCDDS00bits.COM0SEG00	/* bit 0 */
#define COM1SEG00 	LCDDS00bits.COM1SEG00	/* bit 1 */
#define COM2SEG00 	LCDDS00bits.COM2SEG00	/* bit 2 */
#define COM3SEG00 	LCDDS00bits.COM3SEG00	/* bit 3 */

// ----- LCDDS01 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG01:1;
		unsigned char COM1SEG01:1;
		unsigned char COM2SEG01:1;
		unsigned char COM3SEG01:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS01bits_t;
extern volatile __LCDDS01bits_t __at(LCDDS01_ADDR) LCDDS01bits;

#define COM0SEG01 	LCDDS01bits.COM0SEG01	/* bit 0 */
#define COM1SEG01 	LCDDS01bits.COM1SEG01	/* bit 1 */
#define COM2SEG01 	LCDDS01bits.COM2SEG01	/* bit 2 */
#define COM3SEG01 	LCDDS01bits.COM3SEG01	/* bit 3 */

// ----- LCDDS02 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG02:1;
		unsigned char COM1SEG02:1;
		unsigned char COM2SEG02:1;
		unsigned char COM3SEG02:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS02bits_t;
extern volatile __LCDDS02bits_t __at(LCDDS02_ADDR) LCDDS02bits;

#define COM0SEG02 	LCDDS02bits.COM0SEG02	/* bit 0 */
#define COM1SEG02 	LCDDS02bits.COM1SEG02	/* bit 1 */
#define COM2SEG02 	LCDDS02bits.COM2SEG02	/* bit 2 */
#define COM3SEG02 	LCDDS02bits.COM3SEG02	/* bit 3 */

// ----- LCDDS03 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG03:1;
		unsigned char COM1SEG03:1;
		unsigned char COM2SEG03:1;
		unsigned char COM3SEG03:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS03bits_t;
extern volatile __LCDDS03bits_t __at(LCDDS03_ADDR) LCDDS03bits;

#define COM0SEG03 	LCDDS03bits.COM0SEG03	/* bit 0 */
#define COM1SEG03 	LCDDS03bits.COM1SEG03	/* bit 1 */
#define COM2SEG03 	LCDDS03bits.COM2SEG03	/* bit 2 */
#define COM3SEG03 	LCDDS03bits.COM3SEG03	/* bit 3 */

// ----- LCDDS04 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG04:1;
		unsigned char COM1SEG04:1;
		unsigned char COM2SEG04:1;
		unsigned char COM3SEG04:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS04bits_t;
extern volatile __LCDDS04bits_t __at(LCDDS04_ADDR) LCDDS04bits;

#define COM0SEG04 	LCDDS04bits.COM0SEG04	/* bit 0 */
#define COM1SEG04 	LCDDS04bits.COM1SEG04	/* bit 1 */
#define COM2SEG04 	LCDDS04bits.COM2SEG04	/* bit 2 */
#define COM3SEG04 	LCDDS04bits.COM3SEG04	/* bit 3 */

// ----- LCDDS05 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG05:1;
		unsigned char COM1SEG05:1;
		unsigned char COM2SEG05:1;
		unsigned char COM3SEG05:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS05bits_t;
extern volatile __LCDDS05bits_t __at(LCDDS05_ADDR) LCDDS05bits;

#define COM0SEG05 	LCDDS05bits.COM0SEG05	/* bit 0 */
#define COM1SEG05 	LCDDS05bits.COM1SEG05	/* bit 1 */
#define COM2SEG05 	LCDDS05bits.COM2SEG05	/* bit 2 */
#define COM3SEG05 	LCDDS05bits.COM3SEG05	/* bit 3 */

// ----- LCDDS06 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG06:1;
		unsigned char COM1SEG06:1;
		unsigned char COM2SEG06:1;
		unsigned char COM3SEG06:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS06bits_t;
extern volatile __LCDDS06bits_t __at(LCDDS06_ADDR) LCDDS06bits;

#define COM0SEG06 	LCDDS06bits.COM0SEG06	/* bit 0 */
#define COM1SEG06 	LCDDS06bits.COM1SEG06	/* bit 1 */
#define COM2SEG06 	LCDDS06bits.COM2SEG06	/* bit 2 */
#define COM3SEG06 	LCDDS06bits.COM3SEG06	/* bit 3 */

// ----- LCDDS07 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG07:1;
		unsigned char COM1SEG07:1;
		unsigned char COM2SEG07:1;
		unsigned char COM3SEG07:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS07bits_t;
extern volatile __LCDDS07bits_t __at(LCDDS07_ADDR) LCDDS07bits;

#define COM0SEG07 	LCDDS07bits.COM0SEG07	/* bit 0 */
#define COM1SEG07 	LCDDS07bits.COM1SEG07	/* bit 1 */
#define COM2SEG07 	LCDDS07bits.COM2SEG07	/* bit 2 */
#define COM3SEG07 	LCDDS07bits.COM3SEG07	/* bit 3 */

// ----- LCDDS08 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG08:1;
		unsigned char COM1SEG08:1;
		unsigned char COM2SEG08:1;
		unsigned char COM3SEG08:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS08bits_t;
extern volatile __LCDDS08bits_t __at(LCDDS08_ADDR) LCDDS08bits;

#define COM0SEG08 	LCDDS08bits.COM0SEG08	/* bit 0 */
#define COM1SEG08 	LCDDS08bits.COM1SEG08	/* bit 1 */
#define COM2SEG08 	LCDDS08bits.COM2SEG08	/* bit 2 */
#define COM3SEG08 	LCDDS08bits.COM3SEG08	/* bit 3 */

// ----- LCDDS09 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG09:1;
		unsigned char COM1SEG09:1;
		unsigned char COM2SEG09:1;
		unsigned char COM3SEG09:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS09bits_t;
extern volatile __LCDDS09bits_t __at(LCDDS09_ADDR) LCDDS09bits;

#define COM0SEG09 	LCDDS09bits.COM0SEG09	/* bit 0 */
#define COM1SEG09 	LCDDS09bits.COM1SEG09	/* bit 1 */
#define COM2SEG09 	LCDDS09bits.COM2SEG09	/* bit 2 */
#define COM3SEG09 	LCDDS09bits.COM3SEG09	/* bit 3 */

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

// ----- LCDDS14 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG14:1;
		unsigned char COM1SEG14:1;
		unsigned char COM2SEG14:1;
		unsigned char COM3SEG14:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS14bits_t;
extern volatile __LCDDS14bits_t __at(LCDDS14_ADDR) LCDDS14bits;

#define COM0SEG14 	LCDDS14bits.COM0SEG14	/* bit 0 */
#define COM1SEG14 	LCDDS14bits.COM1SEG14	/* bit 1 */
#define COM2SEG14 	LCDDS14bits.COM2SEG14	/* bit 2 */
#define COM3SEG14 	LCDDS14bits.COM3SEG14	/* bit 3 */

// ----- LCDDS15 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG15:1;
		unsigned char COM1SEG15:1;
		unsigned char COM2SEG15:1;
		unsigned char COM3SEG15:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS15bits_t;
extern volatile __LCDDS15bits_t __at(LCDDS15_ADDR) LCDDS15bits;

#define COM0SEG15 	LCDDS15bits.COM0SEG15	/* bit 0 */
#define COM1SEG15 	LCDDS15bits.COM1SEG15	/* bit 1 */
#define COM2SEG15 	LCDDS15bits.COM2SEG15	/* bit 2 */
#define COM3SEG15 	LCDDS15bits.COM3SEG15	/* bit 3 */

// ----- LCDDS16 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG16:1;
		unsigned char COM1SEG16:1;
		unsigned char COM2SEG16:1;
		unsigned char COM3SEG16:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS16bits_t;
extern volatile __LCDDS16bits_t __at(LCDDS16_ADDR) LCDDS16bits;

#define COM0SEG16 	LCDDS16bits.COM0SEG16	/* bit 0 */
#define COM1SEG16 	LCDDS16bits.COM1SEG16	/* bit 1 */
#define COM2SEG16 	LCDDS16bits.COM2SEG16	/* bit 2 */
#define COM3SEG16 	LCDDS16bits.COM3SEG16	/* bit 3 */

// ----- LCDDS17 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG17:1;
		unsigned char COM1SEG17:1;
		unsigned char COM2SEG17:1;
		unsigned char COM3SEG17:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS17bits_t;
extern volatile __LCDDS17bits_t __at(LCDDS17_ADDR) LCDDS17bits;

#define COM0SEG17 	LCDDS17bits.COM0SEG17	/* bit 0 */
#define COM1SEG17 	LCDDS17bits.COM1SEG17	/* bit 1 */
#define COM2SEG17 	LCDDS17bits.COM2SEG17	/* bit 2 */
#define COM3SEG17 	LCDDS17bits.COM3SEG17	/* bit 3 */

// ----- LCDDS18 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG18:1;
		unsigned char COM1SEG18:1;
		unsigned char COM2SEG18:1;
		unsigned char COM3SEG18:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS18bits_t;
extern volatile __LCDDS18bits_t __at(LCDDS18_ADDR) LCDDS18bits;

#define COM0SEG18 	LCDDS18bits.COM0SEG18	/* bit 0 */
#define COM1SEG18 	LCDDS18bits.COM1SEG18	/* bit 1 */
#define COM2SEG18 	LCDDS18bits.COM2SEG18	/* bit 2 */
#define COM3SEG18 	LCDDS18bits.COM3SEG18	/* bit 3 */

// ----- LCDDS19 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG19:1;
		unsigned char COM1SEG19:1;
		unsigned char COM2SEG19:1;
		unsigned char COM3SEG19:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS19bits_t;
extern volatile __LCDDS19bits_t __at(LCDDS19_ADDR) LCDDS19bits;

#define COM0SEG19 	LCDDS19bits.COM0SEG19	/* bit 0 */
#define COM1SEG19 	LCDDS19bits.COM1SEG19	/* bit 1 */
#define COM2SEG19 	LCDDS19bits.COM2SEG19	/* bit 2 */
#define COM3SEG19 	LCDDS19bits.COM3SEG19	/* bit 3 */

// ----- LCDDS20 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG20:1;
		unsigned char COM1SEG20:1;
		unsigned char COM2SEG20:1;
		unsigned char COM3SEG20:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS20bits_t;
extern volatile __LCDDS20bits_t __at(LCDDS20_ADDR) LCDDS20bits;

#define COM0SEG20 	LCDDS20bits.COM0SEG20	/* bit 0 */
#define COM1SEG20 	LCDDS20bits.COM1SEG20	/* bit 1 */
#define COM2SEG20 	LCDDS20bits.COM2SEG20	/* bit 2 */
#define COM3SEG20 	LCDDS20bits.COM3SEG20	/* bit 3 */

// ----- LCDDS21 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG21:1;
		unsigned char COM1SEG21:1;
		unsigned char COM2SEG21:1;
		unsigned char COM3SEG21:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS21bits_t;
extern volatile __LCDDS21bits_t __at(LCDDS21_ADDR) LCDDS21bits;

#define COM0SEG21 	LCDDS21bits.COM0SEG21	/* bit 0 */
#define COM1SEG21 	LCDDS21bits.COM1SEG21	/* bit 1 */
#define COM2SEG21 	LCDDS21bits.COM2SEG21	/* bit 2 */
#define COM3SEG21 	LCDDS21bits.COM3SEG21	/* bit 3 */

// ----- LCDDS22 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG22:1;
		unsigned char COM1SEG22:1;
		unsigned char COM2SEG22:1;
		unsigned char COM3SEG22:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS22bits_t;
extern volatile __LCDDS22bits_t __at(LCDDS22_ADDR) LCDDS22bits;

#define COM0SEG22 	LCDDS22bits.COM0SEG22	/* bit 0 */
#define COM1SEG22 	LCDDS22bits.COM1SEG22	/* bit 1 */
#define COM2SEG22 	LCDDS22bits.COM2SEG22	/* bit 2 */
#define COM3SEG22 	LCDDS22bits.COM3SEG22	/* bit 3 */

// ----- LCDDS23 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char COM0SEG23:1;
		unsigned char COM1SEG23:1;
		unsigned char COM2SEG23:1;
		unsigned char COM3SEG23:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDDS23bits_t;
extern volatile __LCDDS23bits_t __at(LCDDS23_ADDR) LCDDS23bits;

#define COM0SEG23 	LCDDS23bits.COM0SEG23	/* bit 0 */
#define COM1SEG23 	LCDDS23bits.COM1SEG23	/* bit 1 */
#define COM2SEG23 	LCDDS23bits.COM2SEG23	/* bit 2 */
#define COM3SEG23 	LCDDS23bits.COM3SEG23	/* bit 3 */

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
		unsigned char LVDIE:1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTEbits_t;
extern volatile __INTEbits_t __at(INTE_ADDR) INTEbits;

#define T0IE      	INTEbits.T0IE       	/* bit 0 */
#define T1IE      	INTEbits.T1IE       	/* bit 1 */
#define INT0IE    	INTEbits.INT0IE     	/* bit 2 */
#define INT1IE    	INTEbits.INT1IE     	/* bit 3 */
#define LVDIE     	INTEbits.LVDIE      	/* bit 5 */

// ----- INTF Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char T0IF:1;
		unsigned char T1IF:1;
		unsigned char INT0IF:1;
		unsigned char INT1IF:1;
		unsigned char :1;
		unsigned char LVDIF:1;
		unsigned char :1;
		unsigned char :1;
	};
} __INTFbits_t;
extern volatile __INTFbits_t __at(INTF_ADDR) INTFbits;

#define T0IF      	INTFbits.T0IF       	/* bit 0 */
#define T1IF      	INTFbits.T1IF       	/* bit 1 */
#define INT0IF    	INTFbits.INT0IF     	/* bit 2 */
#define INT1IF    	INTFbits.INT1IF     	/* bit 3 */
#define LVDIF     	INTFbits.LVDIF      	/* bit 5 */

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

// ----- DKWP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char P00DKW:1;
		unsigned char P01DKW:1;
		unsigned char P02DKW:1;
		unsigned char P03DKW:1;
		unsigned char P04DKW:1;
		unsigned char P05DKW:1;
		unsigned char P06DKW:1;
		unsigned char P07DKW:1;
	};
} __DKWP0bits_t;
extern volatile __DKWP0bits_t __at(DKWP0_ADDR) DKWP0bits;

#define P00DKW    	DKWP0bits.P00DKW    	/* bit 0 */
#define P01DKW    	DKWP0bits.P01DKW    	/* bit 1 */
#define P02DKW    	DKWP0bits.P02DKW    	/* bit 2 */
#define P03DKW    	DKWP0bits.P03DKW    	/* bit 3 */
#define P04DKW    	DKWP0bits.P04DKW    	/* bit 4 */
#define P05DKW    	DKWP0bits.P05DKW    	/* bit 5 */
#define P06DKW    	DKWP0bits.P06DKW    	/* bit 6 */
#define P07DKW    	DKWP0bits.P07DKW    	/* bit 7 */

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
		unsigned char TPR2:1;
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
#define TPR2      	T1CRbits.TPR2       	/* bit 2 */
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

// ----- LCDCR0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LCDRS0:1;
		unsigned char LCDRS1:1;
		unsigned char LCDSPEED:1;
		unsigned char LCDSP0:1;
		unsigned char LCDSP1:1;
		unsigned char LCDEN:1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDCR0bits_t;
extern volatile __LCDCR0bits_t __at(LCDCR0_ADDR) LCDCR0bits;

#define LCDRS0    	LCDCR0bits.LCDRS0   	/* bit 0 */
#define LCDRS1    	LCDCR0bits.LCDRS1   	/* bit 1 */
#define LCDSPEED  	LCDCR0bits.LCDSPEED 	/* bit 2 */
#define LCDSP0    	LCDCR0bits.LCDSP0   	/* bit 3 */
#define LCDSP1    	LCDCR0bits.LCDSP1   	/* bit 4 */
#define LCDEN     	LCDCR0bits.LCDEN    	/* bit 5 */

// ----- LCDCR1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char FLCD0:1;
		unsigned char FLCD1:1;
		unsigned char LCDCKS:1;
		unsigned char LCDM:1;
		unsigned char LCDDRVP02:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDCR1bits_t;
extern volatile __LCDCR1bits_t __at(LCDCR1_ADDR) LCDCR1bits;

#define FLCD0     	LCDCR1bits.FLCD0    	/* bit 0 */
#define FLCD1     	LCDCR1bits.FLCD1    	/* bit 1 */
#define LCDCKS    	LCDCR1bits.LCDCKS   	/* bit 2 */
#define LCDM      	LCDCR1bits.LCDM     	/* bit 3 */
#define LCDDRVP02 	LCDCR1bits.LCDDRVP02	/* bit 4 */

// ----- LCDSP0 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
		unsigned char LCDSP03:1;
		unsigned char LCDSP04:1;
		unsigned char :1;
		unsigned char :1;
		unsigned char :1;
	};
} __LCDSP0bits_t;
extern volatile __LCDSP0bits_t __at(LCDSP0_ADDR) LCDSP0bits;

#define LCDSP03   	LCDSP0bits.LCDSP03  	/* bit 3 */
#define LCDSP04   	LCDSP0bits.LCDSP04  	/* bit 4 */

// ----- LCDSP1 Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char LCDSP10:1;
		unsigned char LCDSP11:1;
		unsigned char LCDSP12:1;
		unsigned char LCDSP13:1;
		unsigned char LCDSP14:1;
		unsigned char LCDSP15:1;
		unsigned char LCDSP16:1;
		unsigned char :1;
	};
} __LCDSP1bits_t;
extern volatile __LCDSP1bits_t __at(LCDSP1_ADDR) LCDSP1bits;

#define LCDSP10   	LCDSP1bits.LCDSP10  	/* bit 0 */
#define LCDSP11   	LCDSP1bits.LCDSP11  	/* bit 1 */
#define LCDSP12   	LCDSP1bits.LCDSP12  	/* bit 2 */
#define LCDSP13   	LCDSP1bits.LCDSP13  	/* bit 3 */
#define LCDSP14   	LCDSP1bits.LCDSP14  	/* bit 4 */
#define LCDSP15   	LCDSP1bits.LCDSP15  	/* bit 5 */
#define LCDSP16   	LCDSP1bits.LCDSP16  	/* bit 6 */

// ----- DKW Bits --------------------------------------------
typedef union {
	 struct {
		unsigned char IROUTS:1;
		unsigned char IROUTEN:1;
		unsigned char RSEL:1;
		unsigned char WSEL0:1;
		unsigned char WSEL1:1;
		unsigned char DKWE:1;
		unsigned char :1;
		unsigned char :1;
	};
} __DKWbits_t;
extern volatile __DKWbits_t __at(DKW_ADDR) DKWbits;

#define IROUTS    	DKWbits.IROUTS      	/* bit 0 */
#define IROUTEN   	DKWbits.IROUTEN     	/* bit 1 */
#define RSEL      	DKWbits.RSEL        	/* bit 2 */
#define WSEL0     	DKWbits.WSEL0       	/* bit 3 */
#define WSEL1     	DKWbits.WSEL1       	/* bit 4 */
#define DKWE      	DKWbits.DKWE        	/* bit 5 */

#endif
