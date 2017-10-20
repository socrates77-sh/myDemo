/* header file for the microcontroller
 *  ESP2811	
 20160323:
 1.Êñ∞Â¢ûPCINTRÊö´Â≠òÂô®Ôºå‰ΩçÂùÄ0X090
 2.Êñ∞Â¢ûADCON2Êö´Â≠òÂô®Ôºå‰ΩçÂùÄ0X099
 */

/*#ifndef	_HTC_H_
#warning Header file pic16f676.h included directly. Use #include <htc.h> instead.
#endif*/



#ifndef __PIC16F677_H
#define __PIC16F677_H


#define	CLRWDT()	asm("clrwdt")
#define	SLEEP()		asm("sleep")
#define RESET()		asm("reset")
#define NOP()		asm("nop")

//#include "AD.h"

//
// Configuration mask definitions
// (ÈÄôÈÉ®‰ªΩÊ≤íÊúâ‰øÆÊî?


// Config Register: CONFIG
#define CONFIG               0x2007
// Oscillator Selection bits
// RC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
#define FOSC_EXTRCCLK        0xFFFF
// RC oscillator: I/O function on RA4/OSC2/CLKOUT pin, RC on RA5/OSC1/CLKIN
#define FOSC_EXTRCIO         0xFFFE
// INTOSC oscillator: CLKOUT function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
#define FOSC_INTRCCLK        0xFFFD
// INTOSC oscillator: I/O function on RA4/OSC2/CLKOUT pin, I/O function on RA5/OSC1/CLKIN
#define FOSC_INTRCIO         0xFFFC
// EC: I/O function on RA4/OSC2/CLKOUT pin, CLKIN on RA5/OSC1/CLKIN
#define FOSC_EC              0xFFFB
// HS oscillator: High speed crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
#define FOSC_HS              0xFFFA
// XT oscillator: Crystal/resonator on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
#define FOSC_XT              0xFFF9
// LP oscillator: Low power crystal on RA4/OSC2/CLKOUT and RA5/OSC1/CLKIN
#define FOSC_LP              0xFFF8
// Watchdog Timer Enable bit
// WDT enabled
#define WDTE_ON              0xFFFF
// WDT disabled
#define WDTE_OFF             0xFFF7
// Power-up Timer Enable bit
// PWRT disabled
#define PWRTE_OFF            0xFFFF
// PWRT enabled
#define PWRTE_ON             0xFFEF
// RA3/MCLR pin function select
// RA3/MCLR pin function is MCLR
#define MCLRE_ON             0xFFFF
// RA3/MCLR pin function is digital I/O, MCLR internally tied to VDD
#define MCLRE_OFF            0xFFDF
// Brown-out Detect Enable bit
// BOD enabled
#define BOREN_ON             0xFFFF
// BOD disabled
#define BOREN_OFF            0xFFBF
// Code Protection bit
// Program Memory code protection is disabled
#define CP_OFF               0xFFFF
// Program Memory code protection is enabled
#define CP_ON                0xFF7F
// Data Code Protection bit
// Data memory code protection is disabled
#define CPD_OFF              0xFFFF
// Data memory code protection is enabled 
#define CPD_ON               0xFEFF

//#define u8                   unsigned char
//#define u16                  unsigned long
//
// Special function register definitions
//



typedef unsigned long  u16 ;
typedef unsigned char  u8 ;


// Register: INDF
volatile unsigned char           INDF                @ 0x000;
volatile unsigned char           IAR                 @ 0x000; //ESF2711 (ESP2811Âê?
// bit and bitfield definitions

// Register: TMR0
volatile unsigned char           TMR0                @ 0x001;
// bit and bitfield definitions

// Register: PCL
volatile unsigned char           PCL                 @ 0x002;
// bit and bitfield definitions

// Register: STATUS
volatile unsigned char           STATUS              @ 0x003;
// bit and bitfield definitions
volatile bit CARRY               @ ((unsigned)&STATUS*8)+0;
volatile bit DC                  @ ((unsigned)&STATUS*8)+1;
volatile bit ZERO                @ ((unsigned)&STATUS*8)+2;
volatile bit nPD                 @ ((unsigned)&STATUS*8)+3;
volatile bit nTO                 @ ((unsigned)&STATUS*8)+4;
volatile bit IRP                 @ ((unsigned)&STATUS*8)+7;
volatile bit RP0                 @ ((unsigned)&STATUS*8)+5;
volatile bit RP1                 @ ((unsigned)&STATUS*8)+6;

volatile bit HC                  @ ((unsigned)&STATUS*8)+1;
volatile bit nPF                 @ ((unsigned)&STATUS*8)+3;
volatile bit nTF                 @ ((unsigned)&STATUS*8)+4;
volatile bit PAGE0               @ ((unsigned)&STATUS*8)+5;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	C                   : 1;
        unsigned	DC                  : 1;
        unsigned	Z                   : 1;
        unsigned	nPD                 : 1;
        unsigned	nTO                 : 1;
        unsigned	RP                  : 2;
        unsigned	IRP                 : 1;
    };
    struct {
        unsigned	                    : 5;
        unsigned	RP0                 : 1;
        unsigned	RP1                 : 1;
    };
    struct {                                  // ESF2711 Status bits   (ESP2811Âê?
    	  unsigned                      : 1;
    	  unsigned  HC                  : 1; 
    	  unsigned                      : 1;	
    	  unsigned  nPF                 : 1;
    	  unsigned  nTF                 : 1;
    	  unsigned  PAGE0               : 1;	 	    	
    };
} STATUSbits @ 0x003;
#endif

// Register: FSR
volatile unsigned char           FSR                 @ 0x004;
volatile unsigned char           MSR                 @ 0x004; //ESF2711   (ESP2811Âê?
// bit and bitfield definitions

// Register: PORTA
volatile unsigned char           PORTA               @ 0x005;
// bit and bitfield definitions
volatile bit RA0                 @ ((unsigned)&PORTA*8)+0;
volatile bit RA1                 @ ((unsigned)&PORTA*8)+1;
volatile bit RA2                 @ ((unsigned)&PORTA*8)+2;
volatile bit RA3                 @ ((unsigned)&PORTA*8)+3;
volatile bit RA4                 @ ((unsigned)&PORTA*8)+4;
volatile bit RA5                 @ ((unsigned)&PORTA*8)+5;

volatile bit PA0                 @ ((unsigned)&PORTA*8)+0;
volatile bit PA1                 @ ((unsigned)&PORTA*8)+1;
volatile bit PA2                 @ ((unsigned)&PORTA*8)+2;
volatile bit PA3                 @ ((unsigned)&PORTA*8)+3;
volatile bit PA4                 @ ((unsigned)&PORTA*8)+4;
volatile bit PA5                 @ ((unsigned)&PORTA*8)+5;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RA0                 : 1;
        unsigned	RA1                 : 1;
        unsigned	RA2                 : 1;
        unsigned	RA3                 : 1;
        unsigned	RA4                 : 1;
        unsigned	RA5                 : 1;
    };
    struct {                                   //ESF2711  (ESP2811Âê?
    	  unsigned	PA0                 : 1;
        unsigned	PA1                 : 1;
        unsigned	PA2                 : 1;
        unsigned	PA3                 : 1;
        unsigned	PA4                 : 1;
        unsigned	PA5                 : 1;
    };
} PORTAbits @ 0x005;
#endif

// Register: PORTC
volatile unsigned char           PORTC               @ 0x007;
// bit and bitfield definitions
volatile bit RC0                 @ ((unsigned)&PORTC*8)+0;
volatile bit RC1                 @ ((unsigned)&PORTC*8)+1;
volatile bit RC2                 @ ((unsigned)&PORTC*8)+2;
volatile bit RC3                 @ ((unsigned)&PORTC*8)+3;
volatile bit RC4                 @ ((unsigned)&PORTC*8)+4;
volatile bit RC5                 @ ((unsigned)&PORTC*8)+5;
volatile bit RC6                 @ ((unsigned)&PORTC*8)+6;
volatile bit RC7                 @ ((unsigned)&PORTC*8)+7;

volatile bit PC0                 @ ((unsigned)&PORTC*8)+0;
volatile bit PC1                 @ ((unsigned)&PORTC*8)+1;
volatile bit PC2                 @ ((unsigned)&PORTC*8)+2;
volatile bit PC3                 @ ((unsigned)&PORTC*8)+3;
volatile bit PC4                 @ ((unsigned)&PORTC*8)+4;
volatile bit PC5                 @ ((unsigned)&PORTC*8)+5;
volatile bit PC6                 @ ((unsigned)&PORTC*8)+6;
volatile bit PC7                 @ ((unsigned)&PORTC*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RC0                 : 1;
        unsigned	RC1                 : 1;
        unsigned	RC2                 : 1;
        unsigned	RC3                 : 1;
        unsigned	RC4                 : 1;
        unsigned	RC5                 : 1;
        unsigned	RC6                 : 1;
        unsigned	RC7                 : 1;
    };
    struct {                                          // ESF2711  (ESP2811Âê?
        unsigned	PC0                 : 1;
        unsigned	PC1                 : 1;
        unsigned	PC2                 : 1;
        unsigned	PC3                 : 1;
        unsigned	PC4                 : 1;
        unsigned	PC5                 : 1;
        unsigned	PC6                 : 1;
        unsigned	PC7                 : 1;
    };    
} PORTCbits @ 0x007;
#endif

//============================================================================
// Register: TMR3L                                                 // ESF2711 Only  (ESP2811Âê?
volatile unsigned char           TMR3L               @ 0x008;
// bit and bitfield definitions
volatile bit TM3C0                 @ ((unsigned)&TMR3L*8)+0;
volatile bit TM3C1                 @ ((unsigned)&TMR3L*8)+1;
volatile bit TM3C2                 @ ((unsigned)&TMR3L*8)+2;
volatile bit TM3C3                 @ ((unsigned)&TMR3L*8)+3;
volatile bit TM3C4                 @ ((unsigned)&TMR3L*8)+4;
volatile bit TM3C5                 @ ((unsigned)&TMR3L*8)+5;
volatile bit TM3C6                 @ ((unsigned)&TMR3L*8)+6;
volatile bit TM3C7                 @ ((unsigned)&TMR3L*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM3C0                 : 1;
        unsigned	TM3C1                 : 1;
        unsigned	TM3C2                 : 1;
        unsigned	TM3C3                 : 1;
        unsigned	TM3C4                 : 1;
        unsigned	TM3C5                 : 1;
        unsigned	TM3C6                 : 1;
        unsigned	TM3C7                 : 1;
    };
} TMR3Lbits @ 0x008;
#endif

//============================================================================
// Register: TMR3H                                                // ESF2711 Only  (ESP2811Âê?
volatile unsigned char           TMR3H               @ 0x088;
// bit and bitfield definitions
volatile bit TM3C8                 @ ((unsigned)&TMR3H*8)+0;
volatile bit TM3C9                 @ ((unsigned)&TMR3H*8)+1;
volatile bit TM3C10                @ ((unsigned)&TMR3H*8)+2;
volatile bit TM3C11                @ ((unsigned)&TMR3H*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM3C8                 : 1;
        unsigned	TM3C9                 : 1;
        unsigned	TM3C10                : 1;
        unsigned	TM3C11                : 1;
    };
} TMR3Hbits @ 0x088;
#endif

//============================================================================
// Register: T3ALRL                                              // ESF2711 Only   (ESP2811Âê?
volatile unsigned char           T3ALRL               @ 0x009;
// bit and bitfield definitions
volatile bit T3ALR0                 @ ((unsigned)&T3ALRL*8)+0;
volatile bit T3ALR1                 @ ((unsigned)&T3ALRL*8)+1;
volatile bit T3ALR2                 @ ((unsigned)&T3ALRL*8)+2;
volatile bit T3ALR3                 @ ((unsigned)&T3ALRL*8)+3;
volatile bit T3ALR4                 @ ((unsigned)&T3ALRL*8)+4;
volatile bit T3ALR5                 @ ((unsigned)&T3ALRL*8)+5;
volatile bit T3ALR6                 @ ((unsigned)&T3ALRL*8)+6;
volatile bit T3ALR7                 @ ((unsigned)&T3ALRL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T3ALR0                 : 1;
        unsigned	T3ALR1                 : 1;
        unsigned	T3ALR2                 : 1;
        unsigned	T3ALR3                 : 1;
        unsigned	T3ALR4                 : 1;
        unsigned	T3ALR5                 : 1;
        unsigned	T3ALR6                 : 1;
        unsigned	T3ALR7                 : 1;
    };
} T3ALRLbits @ 0x009;
#endif

//============================================================================
// Register: T3ALRH                                              // ESF2711 Only  (ESP2811Âê?
volatile unsigned char           T3ALRH               @ 0x089;
// bit and bitfield definitions
volatile bit T3ALR8                 @ ((unsigned)&T3ALRH*8)+0;
volatile bit T3ALR9                 @ ((unsigned)&T3ALRH*8)+1;
volatile bit T3ALR10                @ ((unsigned)&T3ALRH*8)+2;
volatile bit T3ALR11                @ ((unsigned)&T3ALRH*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T3ALR8                 : 1;
        unsigned	T3ALR9                 : 1;
        unsigned	T3ALR10                : 1;
        unsigned	T3ALR11                : 1;
    };
} T3ALRHbits @ 0x089;
#endif

//============================================================================
// Register: PCLATH
volatile unsigned char           PCLATH              @ 0x00A;
volatile unsigned char           PCHLAT              @ 0x00A; //ESF2711   (ESP2811Âê?
// bit and bitfield definitions
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PCLATH              : 5;
    };
} PCLATHbits @ 0x00A;
#endif

// Register: INTCON
volatile unsigned char           INTCON              @ 0x00B;
volatile unsigned char           INTS                @ 0x00B; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit RAIF                @ ((unsigned)&INTCON*8)+0;
volatile bit INTF                @ ((unsigned)&INTCON*8)+1;
volatile bit T0IF                @ ((unsigned)&INTCON*8)+2;
volatile bit RAIE                @ ((unsigned)&INTCON*8)+3;
volatile bit INTE                @ ((unsigned)&INTCON*8)+4;
volatile bit T0IE                @ ((unsigned)&INTCON*8)+5;
volatile bit PEIE                @ ((unsigned)&INTCON*8)+6;
volatile bit GIE                 @ ((unsigned)&INTCON*8)+7;
volatile bit TMR0IF              @ ((unsigned)&INTCON*8)+2;
volatile bit TMR0IE              @ ((unsigned)&INTCON*8)+5;
volatile bit TM0IF               @ ((unsigned)&INTCON*8)+2;
volatile bit TM0IE               @ ((unsigned)&INTCON*8)+5;



#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	RAIF                : 1;
        unsigned	INTF                : 1;
        unsigned	T0IF                : 1;
        unsigned	RAIE                : 1;
        unsigned	INTE                : 1;
        unsigned	T0IE                : 1;
        unsigned	PEIE                : 1;
        unsigned	GIE                 : 1;
    };
    struct {
        unsigned	                    : 2;
        unsigned	TMR0IF              : 1;
        unsigned	: 2;
        unsigned	TMR0IE              : 1;
    };     
} INTCONbits @ 0x00B;
volatile union {
    struct {
        unsigned	PAIF                : 1;
        unsigned    INTF                : 1;                    
        unsigned	TM0IF               : 1;
        unsigned	PAIE                : 1;
        unsigned    INTE                : 1;
        unsigned	TM0IE               : 1;
        unsigned    PEIE                : 1;
        unsigned    GIE                 : 1;
    };
} INTSbits @ 0x00B;





#endif

//============================================================================
// Register: PIR1
volatile unsigned char           PIR1                @ 0x00C;
volatile unsigned char           PIFB1               @ 0x00C; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit TMR1IF              @ ((unsigned)&PIR1*8)+0;
volatile bit TMR2IF              @ ((unsigned)&PIR1*8)+1;
volatile bit TMR3IF              @ ((unsigned)&PIR1*8)+2;
volatile bit PCINTF              @ ((unsigned)&PIR1*8)+3;
volatile bit INTC2F              @ ((unsigned)&PIR1*8)+4;
volatile bit INTC3F              @ ((unsigned)&PIR1*8)+5;
volatile bit ADIF                @ ((unsigned)&PIR1*8)+6;
//volatile bit EEIF                @ ((unsigned)&PIR1*8)+7;
volatile bit T1IF                @ ((unsigned)&PIR1*8)+0;
volatile bit TM1IF               @ ((unsigned)&PIR1*8)+0;
volatile bit TM2IF               @ ((unsigned)&PIR1*8)+1;
volatile bit TM3IF               @ ((unsigned)&PIR1*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TMR1IF              : 1;
        unsigned	TMR2IF              : 1;
        unsigned	TMR3IF              : 1;
        unsigned	PCINTF              : 1;
        unsigned	INTC2F              : 1;
        unsigned	INTC3F              : 1;
        unsigned	ADIF                : 1;
        unsigned	                    : 1;
    };
    struct {
        unsigned	T1IF                : 1;
    };
    struct {
        unsigned	TM1IF               : 1;
        unsigned	TM2IF               : 1;
        unsigned	TM3IF               : 1;
    };
} PIR1bits @ 0x00C , PIFB1bits @ 0x00C ;
#endif

//============================================================================
// Register: PADRI                                            // ESF2711 Only  (ESP2811Âê? 
volatile unsigned char           PADRI               @ 0x00D;
// bit and bitfield definitions
volatile bit PADRI0                 @ ((unsigned)&PADRI*8)+0;
volatile bit PADRI1                 @ ((unsigned)&PADRI*8)+1;
volatile bit PADRI2                 @ ((unsigned)&PADRI*8)+2;
volatile bit PADRI4                 @ ((unsigned)&PADRI*8)+4;
volatile bit PADRI5                 @ ((unsigned)&PADRI*8)+5;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PADRI0                 : 1;
        unsigned	PADRI1                 : 1;
        unsigned	PADRI2                 : 1;
        unsigned	                       : 1;
        unsigned	PADRI4                 : 1;
        unsigned	PADRI5                 : 1;
    };
} PADRIbits @ 0x00D;
#endif
//============================================================================

// bit and bitfield definitions

// Register: TMR1L
volatile unsigned char           TMR1L               @ 0x00E;
// bit and bitfield definitions

// Register: TMR1H
volatile unsigned char           TMR1H               @ 0x00F;
// bit and bitfield definitions

// Register: TMR1
volatile unsigned int            TMR1                @ 0x00E;

//============================================================================
// Register: T1CON
volatile unsigned char           T1CON               @ 0x010;
// bit and bitfield definitions
volatile bit TMR1ON              @ ((unsigned)&T1CON*8)+0;
volatile bit TMR1CS              @ ((unsigned)&T1CON*8)+1;
volatile bit nT1SYNC             @ ((unsigned)&T1CON*8)+2;
volatile bit T1OSCEN             @ ((unsigned)&T1CON*8)+3;
volatile bit T1CKPS0             @ ((unsigned)&T1CON*8)+4;
volatile bit T1CKPS1             @ ((unsigned)&T1CON*8)+5;
volatile bit TMR1GE              @ ((unsigned)&T1CON*8)+6;
volatile bit T1ICK               @ ((unsigned)&T1CON*8)+7;
volatile bit TMR1CLK             @ ((unsigned)&T1CON*8)+1;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TMR1ON              : 1;
        unsigned	TMR1CS              : 1;
        unsigned	nT1SYNC             : 1;
        unsigned	T1OSCEN             : 1;
        unsigned	T1CKPS              : 2;
        unsigned	TMR1GE              : 1;
        unsigned	T1ICK               : 1;
    };
    struct {
        unsigned	                    : 4;
        unsigned	T1CKPS0             : 1;
        unsigned	T1CKPS1             : 1;
    };
    struct {
        unsigned	                    : 1;
        unsigned	TMR1CLK             : 1;
    };
} T1CONbits @ 0x010;
#endif

//============================================================================
// Register: T2CON
volatile unsigned char           T2CON               @ 0x011;
// bit and bitfield definitions
volatile bit    PWM0OUT          @ ((unsigned)&T2CON*8)+0;
volatile bit    T2OUT            @ ((unsigned)&T2CON*8)+1;
volatile bit    ALOAD2           @ ((unsigned)&T2CON*8)+2;
volatile bit    T2ECKS           @ ((unsigned)&T2CON*8)+3;
volatile bit    T2RATE0          @ ((unsigned)&T2CON*8)+4;
volatile bit    T2RATE1          @ ((unsigned)&T2CON*8)+5;
volatile bit    T2RATE2          @ ((unsigned)&T2CON*8)+6;
volatile bit    T2ON             @ ((unsigned)&T2CON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PWM0OUT             : 1;
        unsigned	T2OUT               : 1;
        unsigned	ALOAD2              : 1;
        unsigned	T2ECKS              : 1;
        unsigned	T2RATE0             : 1;
        unsigned	T2RATE1             : 1;
        unsigned	T2RATE2             : 1;
        unsigned	T2ON                : 1;
    };
} T2CONbits @ 0x011;
#endif

//============================================================================
// Register: TMR2L
volatile unsigned char           TMR2L               @ 0x012;
// bit and bitfield definitions
volatile bit    TM2C0          @ ((unsigned)&TMR2L*8)+0;
volatile bit    TM2C1          @ ((unsigned)&TMR2L*8)+1;
volatile bit    TM2C2          @ ((unsigned)&TMR2L*8)+2;
volatile bit    TM2C3          @ ((unsigned)&TMR2L*8)+3;
volatile bit    TM2C4          @ ((unsigned)&TMR2L*8)+4;
volatile bit    TM2C5          @ ((unsigned)&TMR2L*8)+5;
volatile bit    TM2C6          @ ((unsigned)&TMR2L*8)+6;
volatile bit    TM2C7          @ ((unsigned)&TMR2L*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM2C0             : 1;
        unsigned	TM2C1             : 1;
        unsigned	TM2C2             : 1;
        unsigned	TM2C3             : 1;
        unsigned	TM2C4             : 1;
        unsigned	TM2C5             : 1;
        unsigned	TM2C6             : 1;
        unsigned	TM2C7             : 1;
    };
} TMR2Lbits @ 0x012;
#endif

//============================================================================
// Register: TMR2H
volatile unsigned char           TMR2H               @ 0x092;
// bit and bitfield definitions
volatile bit    TM2C8           @ ((unsigned)&TMR2H*8)+0;
volatile bit    TM2C9           @ ((unsigned)&TMR2H*8)+1;
volatile bit    TM2C10          @ ((unsigned)&TMR2H*8)+2;
volatile bit    TM2C11          @ ((unsigned)&TMR2H*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM2C8             : 1;
        unsigned	TM2C9             : 1;
        unsigned	TM2C10             : 1;
        unsigned	TM2C11             : 1;
    };
} TMR2Hbits @ 0x092;
#endif

//============================================================================
// Register: T2ALRL
volatile unsigned char           T2ALRL               @ 0x013;
// bit and bitfield definitions
volatile bit    T2ALR0          @ ((unsigned)&T2ALRL*8)+0;
volatile bit    T2ALR1          @ ((unsigned)&T2ALRL*8)+1;
volatile bit    T2ALR2          @ ((unsigned)&T2ALRL*8)+2;
volatile bit    T2ALR3          @ ((unsigned)&T2ALRL*8)+3;
volatile bit    T2ALR4          @ ((unsigned)&T2ALRL*8)+4;
volatile bit    T2ALR5          @ ((unsigned)&T2ALRL*8)+5;
volatile bit    T2ALR6          @ ((unsigned)&T2ALRL*8)+6;
volatile bit    T2ALR7          @ ((unsigned)&T2ALRL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2ALR0             : 1;
        unsigned	T2ALR1             : 1;
        unsigned	T2ALR2             : 1;
        unsigned	T2ALR3             : 1;
        unsigned	T2ALR4             : 1;
        unsigned	T2ALR5             : 1;
        unsigned	T2ALR6             : 1;
        unsigned	T2ALR7             : 1;
    };
} T2ALRLbits @ 0x013;
#endif

//============================================================================
// Register: T2ALRH
volatile unsigned char           T2ALRH               @ 0x093;
// bit and bitfield definitions
volatile bit    T2ALR8           @ ((unsigned)&T2ALRH*8)+0;
volatile bit    T2ALR9           @ ((unsigned)&T2ALRH*8)+1;
volatile bit    T2ALR10          @ ((unsigned)&T2ALRH*8)+2;
volatile bit    T2ALR11          @ ((unsigned)&T2ALRH*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	T2ALR8              : 1;
        unsigned	T2ALR9              : 1;
        unsigned	T2ALR10             : 1;
        unsigned	T2ALR11             : 1;
    };
} T2ALRHbits @ 0x093;
#endif

//============================================================================
// Register: T3CON
volatile unsigned char           T3CON               @ 0x014;
// bit and bitfield definitions
volatile bit    PWM1OUT          @ ((unsigned)&T3CON*8)+0;
volatile bit    T3OUT            @ ((unsigned)&T3CON*8)+1;
volatile bit    ALOAD3           @ ((unsigned)&T3CON*8)+2;
volatile bit    T3ECKS           @ ((unsigned)&T3CON*8)+3;
volatile bit    T3RATE0          @ ((unsigned)&T3CON*8)+4;
volatile bit    T3RATE1          @ ((unsigned)&T3CON*8)+5;
volatile bit    T3RATE2          @ ((unsigned)&T3CON*8)+6;
volatile bit    T3ON             @ ((unsigned)&T3CON*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PWM1OUT             : 1;
        unsigned	T3OUT               : 1;
        unsigned	ALOAD3              : 1;
        unsigned	T3ECKS              : 1;
        unsigned	T3RATE0             : 1;
        unsigned	T3RATE1             : 1;
        unsigned	T3RATE2             : 1;
        unsigned	T3ON                : 1;
    };
} T3CONbits @ 0x014;
#endif

//============================================================================
// Register: PCPHR
volatile unsigned char           PCPHR               @ 0x015;
// bit and bitfield definitions
volatile bit    CPHB0           @ ((unsigned)&PCPHR*8)+0;
volatile bit    CPHB1           @ ((unsigned)&PCPHR*8)+1;
volatile bit    CPHB2           @ ((unsigned)&PCPHR*8)+2;
volatile bit    CPHB3           @ ((unsigned)&PCPHR*8)+3;
volatile bit    CPHB4           @ ((unsigned)&PCPHR*8)+4;
volatile bit    CPHB5           @ ((unsigned)&PCPHR*8)+5;
volatile bit    CPHB6           @ ((unsigned)&PCPHR*8)+6;
volatile bit    CPHB7           @ ((unsigned)&PCPHR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	CPHB0             : 1;
        unsigned	CPHB1             : 1;
        unsigned	CPHB2             : 1;
        unsigned	CPHB3             : 1;
        unsigned	CPHB4             : 1;
        unsigned	CPHB5             : 1;
        unsigned	CPHB6             : 1;
        unsigned	CPHB7             : 1;
    };
} PCPHRbits @ 0x015;
#endif

//============================================================================
// Register: PAODR
volatile unsigned char           PAODR               @ 0x016;
// bit and bitfield definitions
volatile bit    APOD0            @ ((unsigned)&PAODR*8)+0;
volatile bit    APOD1            @ ((unsigned)&PAODR*8)+1;
volatile bit    APOD2            @ ((unsigned)&PAODR*8)+2;
//volatile bit                   @ ((unsigned)&PAODR*8)+3;
volatile bit    APOD4            @ ((unsigned)&PAODR*8)+4;
volatile bit    APOD5            @ ((unsigned)&PAODR*8)+5;
volatile bit    CPOD0            @ ((unsigned)&PAODR*8)+6;
volatile bit    CPOD1            @ ((unsigned)&PAODR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	APOD0             : 1;
        unsigned	APOD1             : 1;
        unsigned	APOD2             : 1;
        unsigned	                  : 1;
        unsigned	APOD4             : 1;
        unsigned	APOD5             : 1;
        unsigned	CPOD0             : 1;
        unsigned	CPOD1             : 1;
    };
} PAODRbits @ 0x016;
#endif

//============================================================================
// Register: PACPLR
volatile unsigned char           PACPLR               @ 0x017;
// bit and bitfield definitions
volatile bit    APLB0            @ ((unsigned)&PACPLR*8)+0;
volatile bit    APLB1            @ ((unsigned)&PACPLR*8)+1;
volatile bit    APLB2            @ ((unsigned)&PACPLR*8)+2;
//volatile bit                   @ ((unsigned)&PACPLR*8)+3;
volatile bit    CPLB0            @ ((unsigned)&PACPLR*8)+4;
volatile bit    CPLB1            @ ((unsigned)&PACPLR*8)+5;
volatile bit    CPLB2            @ ((unsigned)&PACPLR*8)+6;
volatile bit    CPLB3            @ ((unsigned)&PACPLR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	APLB0             : 1;
        unsigned	APLB1             : 1;
        unsigned	APLB2             : 1;
        unsigned	                  : 1;
        unsigned	CPLB0             : 1;
        unsigned	CPLB1             : 1;
        unsigned	CPLB2             : 1;
        unsigned	CPLB3             : 1;
    };
} PACPLRbits @ 0x017;
#endif

//============================================================================
// Register: A2OSR
volatile unsigned char           A2OSR               @ 0x018;
// bit and bitfield definitions
volatile bit    ENPA2DO          @ ((unsigned)&A2OSR*8)+0;
volatile bit    A2OS0            @ ((unsigned)&A2OSR*8)+1;
volatile bit    A2OS1            @ ((unsigned)&A2OSR*8)+2;
volatile bit    C2EDG0           @ ((unsigned)&A2OSR*8)+3;
volatile bit    C2EDG1           @ ((unsigned)&A2OSR*8)+4;
volatile bit    PA2DHL           @ ((unsigned)&A2OSR*8)+5;
volatile bit    PA2OEN           @ ((unsigned)&A2OSR*8)+6;
volatile bit    PA2OF            @ ((unsigned)&A2OSR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ENPA2DO             : 1;
        unsigned	A2OS0               : 1;
        unsigned	A2OS1               : 1;
        unsigned	C2EDG0              : 1;
        unsigned	C2EDG1              : 1;
        unsigned	PA2DHL              : 1;
        unsigned	PA2OEN              : 1;
        unsigned	PA2OF               : 1;
    };
} A2OSRbits @ 0x018;
#endif

//============================================================================
// Register: CMPCON
volatile unsigned char           CMPCON                @ 0x019;   // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit  ENCMP2             @ ((unsigned)&CMPCON*8)+0;
volatile bit  EN_PWM             @ ((unsigned)&CMPCON*8)+1;
volatile bit  VLS0               @ ((unsigned)&CMPCON*8)+2;
volatile bit  VLS1               @ ((unsigned)&CMPCON*8)+3;
volatile bit  VFBS               @ ((unsigned)&CMPCON*8)+4;
volatile bit  TPOR3PHENB         @ ((unsigned)&CMPCON*8)+5;
volatile bit  BIASH              @ ((unsigned)&CMPCON*8)+6;
volatile bit  EN10BIT            @ ((unsigned)&CMPCON*8)+7;
#ifndef _LIB_ BUILD
volatile union {
    struct {
        unsigned	ENCMP2             : 1;
        unsigned	EN_PWM             : 1;
        unsigned	VLS0               : 1;
        unsigned	VLS1               : 1;
        unsigned	VFBS               : 1;
        unsigned	TPOR3PHENB         : 1;
        unsigned	BIASH              : 1;
        unsigned	EN10BIT            : 1;
    };                  
} CMPCONbits @ 0x019;        
#endif   

//============================================================================
// Register: TM2PL
volatile unsigned char           TM2PL               @ 0x01A;   // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit    TM2P0          @ ((unsigned)&TM2PL*8)+0;
volatile bit    TM2P1          @ ((unsigned)&TM2PL*8)+1;
volatile bit    TM2P2          @ ((unsigned)&TM2PL*8)+2;
volatile bit    TM2P3          @ ((unsigned)&TM2PL*8)+3;
volatile bit    TM2P4          @ ((unsigned)&TM2PL*8)+4;
volatile bit    TM2P5          @ ((unsigned)&TM2PL*8)+5;
volatile bit    TM2P6          @ ((unsigned)&TM2PL*8)+6;
volatile bit    TM2P7          @ ((unsigned)&TM2PL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM2P0             : 1;
        unsigned	TM2P1             : 1;
        unsigned	TM2P2             : 1;
        unsigned	TM2P3             : 1;
        unsigned	TM2P4             : 1;
        unsigned	TM2P5             : 1;
        unsigned	TM2P6             : 1;
        unsigned	TM2P7             : 1;
    };
} TM2PLbits @ 0x01A;
#endif
//============================================================================
// Register: TM2PH
volatile unsigned char           TM2PH               @ 0x09A;    // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit    TM2P8           @ ((unsigned)&TM2PH*8)+0;
volatile bit    TM2P9           @ ((unsigned)&TM2PH*8)+1;
volatile bit    TM2P10          @ ((unsigned)&TM2PH*8)+2;
volatile bit    TM2P11          @ ((unsigned)&TM2PH*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM2P8             : 1;
        unsigned	TM2P9             : 1;
        unsigned	TM2P10            : 1;
        unsigned	TM2P11            : 1;
    };
} TM2PHbits @ 0x09A;
#endif

//============================================================================
// Register: PWMDTC
volatile unsigned char           PWMDTC                @ 0x01B;   // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit  DTL0             @ ((unsigned)&PWMDTC*8)+0;
volatile bit  DTL1             @ ((unsigned)&PWMDTC*8)+1;
volatile bit  DTL2             @ ((unsigned)&PWMDTC*8)+2;
volatile bit  DTL3             @ ((unsigned)&PWMDTC*8)+3;
volatile bit  DTH0             @ ((unsigned)&PWMDTC*8)+4;
volatile bit  DTH1             @ ((unsigned)&PWMDTC*8)+5;
volatile bit  DTH2             @ ((unsigned)&PWMDTC*8)+6;
volatile bit  DTH3             @ ((unsigned)&PWMDTC*8)+7;
#ifndef _LIB_ BUILD
volatile union {
    struct {
        unsigned	DTL0              : 1;
        unsigned	DTL1              : 1;
        unsigned	DTL2              : 1;
        unsigned	DTL3              : 1;
        unsigned	DTH0              : 1;
        unsigned	DTH1              : 1;
        unsigned	DTH2              : 1;
        unsigned	DTH3              : 1;
    };                  
} PWMDTCbits @ 0x01B;        
#endif                         

//============================================================================
// Register: TM3PL
volatile unsigned char           TM3PL               @ 0x01C;  // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit    TM3P0          @ ((unsigned)&TM3PL*8)+0;
volatile bit    TM3P1          @ ((unsigned)&TM3PL*8)+1;
volatile bit    TM3P2          @ ((unsigned)&TM3PL*8)+2;
volatile bit    TM3P3          @ ((unsigned)&TM3PL*8)+3;
volatile bit    TM3P4          @ ((unsigned)&TM3PL*8)+4;
volatile bit    TM3P5          @ ((unsigned)&TM3PL*8)+5;
volatile bit    TM3P6          @ ((unsigned)&TM3PL*8)+6;
volatile bit    TM3P7          @ ((unsigned)&TM3PL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM3P0             : 1;
        unsigned	TM3P1             : 1;
        unsigned	TM3P2             : 1;
        unsigned	TM3P3             : 1;
        unsigned	TM3P4             : 1;
        unsigned	TM3P5             : 1;
        unsigned	TM3P6             : 1;
        unsigned	TM3P7             : 1;
    };
} TM3PLbits @ 0x01C;
#endif

//============================================================================
// Register: TM3PH
volatile unsigned char           TM3PH               @ 0x09C;  // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit    TM3P8           @ ((unsigned)&TM3PH*8)+0;
volatile bit    TM3P9           @ ((unsigned)&TM3PH*8)+1;
volatile bit    TM3P10          @ ((unsigned)&TM3PH*8)+2;
volatile bit    TM3P11          @ ((unsigned)&TM3PH*8)+3;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TM3P8             : 1;
        unsigned	TM3P9             : 1;
        unsigned	TM3P10             : 1;
        unsigned	TM3P11             : 1;
    };
} TM3PHbits @ 0x09C;
#endif

//============================================================================

// Register: ADRESH
volatile unsigned char           ADRESH              @ 0x01E;
volatile unsigned char           ADRDH               @ 0x01E; //ESF2711   (ESP2811Âê?
// bit and bitfield definitions

//============================================================================
// Register: ADCON0
volatile unsigned char           ADCON0              @ 0x01F;
// bit and bitfield definitions
volatile bit ADON                @ ((unsigned)&ADCON0*8)+0;
volatile bit GO_nDONE            @ ((unsigned)&ADCON0*8)+1;
volatile bit CHS0                @ ((unsigned)&ADCON0*8)+2;
volatile bit CHS1                @ ((unsigned)&ADCON0*8)+3;
volatile bit CHS2                @ ((unsigned)&ADCON0*8)+4;
volatile bit CHS3                @ ((unsigned)&ADCON0*8)+5;
volatile bit VCFG                @ ((unsigned)&ADCON0*8)+6;
volatile bit ADFM                @ ((unsigned)&ADCON0*8)+7;
volatile bit GO                  @ ((unsigned)&ADCON0*8)+1;

volatile bit nDONE               @ ((unsigned)&ADCON0*8)+1;
volatile bit GO_DONE             @ ((unsigned)&ADCON0*8)+1;
     
volatile bit ADRUN               @ ((unsigned)&ADCON0*8)+0;
volatile bit ADGO                @ ((unsigned)&ADCON0*8)+1;
volatile bit ADVRS0              @ ((unsigned)&ADCON0*8)+6;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ADON                : 1;
        unsigned	GO_nDONE            : 1;
        unsigned	CHS                 : 4;
        unsigned	VCFG                : 1;
        unsigned	ADFM                : 1;
    };
    struct {
        unsigned	: 1;
        unsigned	: 1;
        unsigned	: 4;
        unsigned	: 1;
        unsigned	: 1;
    };
    struct {
        unsigned	: 1;
        unsigned	GO                  : 1;
        unsigned	CHS0                : 1;
        unsigned	CHS1                : 1;
        unsigned	CHS2                : 1;
        unsigned	CHS3                : 1;
    };
    struct {
        unsigned	: 1;
        unsigned	nDONE               : 1;
    };
    struct {
        unsigned	: 1;
        unsigned	GO_DONE             : 1;
    };
    struct {
        unsigned	ADRUN             : 1;
        unsigned	ADGO              : 1;
        unsigned                      : 4;
        unsigned    ADVRS0            : 1;
    };
} ADCON0bits @ 0x01F;
#endif

//============================================================================

//
// Special function register definitions: Bank 1
//


//============================================================================
// Register: OPTION_REG
volatile unsigned char           OPTION_REG          @ 0x081;
volatile unsigned char           WDT0CON             @ 0x081; //ESF2711   (ESP2811Âê?
// bit and bitfield definitions
volatile bit PS0                 @ ((unsigned)&OPTION_REG*8)+0;
volatile bit PS1                 @ ((unsigned)&OPTION_REG*8)+1;
volatile bit PS2                 @ ((unsigned)&OPTION_REG*8)+2;
volatile bit PSA                 @ ((unsigned)&OPTION_REG*8)+3;
volatile bit T0SE                @ ((unsigned)&OPTION_REG*8)+4;
volatile bit T0CS                @ ((unsigned)&OPTION_REG*8)+5;
volatile bit INTEDG              @ ((unsigned)&OPTION_REG*8)+6;
volatile bit nRAPU               @ ((unsigned)&OPTION_REG*8)+7;
volatile bit nGPPU               @ ((unsigned)&OPTION_REG*8)+7;

volatile bit PSC                 @ ((unsigned)&OPTION_REG*8)+3;
volatile bit TCE                 @ ((unsigned)&OPTION_REG*8)+4;
volatile bit TCS                 @ ((unsigned)&OPTION_REG*8)+5;
volatile bit IES                 @ ((unsigned)&OPTION_REG*8)+6;
volatile bit nPAPH               @ ((unsigned)&OPTION_REG*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PS                  : 3;
        unsigned	PSA                 : 1;
        unsigned	T0SE                : 1;
        unsigned	T0CS                : 1;
        unsigned	INTEDG              : 1;
        unsigned	nRAPU               : 1;
    };
    struct {
        unsigned	PS0                 : 1;
        unsigned	PS1                 : 1;
        unsigned	PS2                 : 1;
        unsigned	                    : 4;
        unsigned	nGPPU               : 1;
    };
    struct {
        unsigned	                   : 3;
        unsigned	PSC                : 1;
        unsigned	TCE                : 1;
        unsigned	TCS                : 1;
        unsigned	IES                : 1;
        unsigned	nPAPH              : 1;
    };
} OPTION_REGbits @ 0x081;

volatile union {
	struct {
       unsigned     PS0                 : 1;
       unsigned     PS1                 : 1;
       unsigned     PS2                 : 1;
       unsigned     PSC                 : 1; 
       unsigned     TCE                 : 1;
       unsigned     TCS                 : 1;
       unsigned     IES                 : 1;
       unsigned     nPAPH               : 1;
    };
} WDT0CONbits @ 0x081;



#endif
//============================================================================

// Register: TRISA
volatile unsigned char           TRISA               @ 0x085;
volatile unsigned char           CPIOA               @ 0x085; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit TRISA0              @ ((unsigned)&TRISA*8)+0;
volatile bit TRISA1              @ ((unsigned)&TRISA*8)+1;
volatile bit TRISA2              @ ((unsigned)&TRISA*8)+2;
volatile bit TRISA3              @ ((unsigned)&TRISA*8)+3;
volatile bit TRISA4              @ ((unsigned)&TRISA*8)+4;
volatile bit TRISA5              @ ((unsigned)&TRISA*8)+5;

volatile bit CPIOPA0             @ ((unsigned)&TRISA*8)+0;
volatile bit CPIOPA1             @ ((unsigned)&TRISA*8)+1;
volatile bit CPIOPA2             @ ((unsigned)&TRISA*8)+2;
volatile bit CPIOPA3             @ ((unsigned)&TRISA*8)+3;
volatile bit CPIOPA4             @ ((unsigned)&TRISA*8)+4;
volatile bit CPIOPA5             @ ((unsigned)&TRISA*8)+5;
  
  
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISA0              : 1;
        unsigned	TRISA1              : 1;
        unsigned	TRISA2              : 1;
        unsigned	TRISA3              : 1;
        unsigned	TRISA4              : 1;
        unsigned	TRISA5              : 1;
    };
} TRISAbits @ 0x085;

volatile union{
    struct {
        unsigned	CPIOPA0             : 1;
        unsigned	CPIOPA1             : 1;
        unsigned	CPIOPA2             : 1;
        unsigned	CPIOPA3             : 1;
        unsigned	CPIOPA4             : 1;
        unsigned	CPIOPA5             : 1;
    };
} CPIOAbits @ 0x085;
#endif

//============================================================================
// Register: TRISC
volatile unsigned char           TRISC               @ 0x087;
volatile unsigned char           CPIOC               @ 0x087; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit TRISC0              @ ((unsigned)&TRISC*8)+0;
volatile bit TRISC1              @ ((unsigned)&TRISC*8)+1;
volatile bit TRISC2              @ ((unsigned)&TRISC*8)+2;
volatile bit TRISC3              @ ((unsigned)&TRISC*8)+3;
volatile bit TRISC4              @ ((unsigned)&TRISC*8)+4;
volatile bit TRISC5              @ ((unsigned)&TRISC*8)+5;
volatile bit TRISC6              @ ((unsigned)&TRISC*8)+6;
volatile bit TRISC7              @ ((unsigned)&TRISC*8)+7;   
      
volatile bit CPIOPC0             @ ((unsigned)&TRISC*8)+0;
volatile bit CPIOPC1             @ ((unsigned)&TRISC*8)+1;
volatile bit CPIOPC2             @ ((unsigned)&TRISC*8)+2;
volatile bit CPIOPC3             @ ((unsigned)&TRISC*8)+3;
volatile bit CPIOPC4             @ ((unsigned)&TRISC*8)+4;
volatile bit CPIOPC5             @ ((unsigned)&TRISC*8)+5;
volatile bit CPIOPC6             @ ((unsigned)&TRISC*8)+6;
volatile bit CPIOPC7             @ ((unsigned)&TRISC*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TRISC0              : 1;
        unsigned	TRISC1              : 1;
        unsigned	TRISC2              : 1;
        unsigned	TRISC3              : 1;
        unsigned	TRISC4              : 1;
        unsigned	TRISC5              : 1;
        unsigned	TRISC6              : 1;
        unsigned	TRISC7              : 1;
    };
} TRISCbits @ 0x087;

volatile union {
    struct {
        unsigned	CPIOPC0              : 1;
        unsigned	CPIOPC1              : 1;
        unsigned	CPIOPC2              : 1;
        unsigned	CPIOPC3              : 1;
        unsigned	CPIOPC4              : 1;
        unsigned	CPIOPC5              : 1;
        unsigned	CPIOPC6              : 1;
        unsigned	CPIOPC7              : 1;
    };
}CPIOCbits @ 0x087;


#endif

//============================================================================
// Register: PIE1
volatile unsigned char           PIE1                @ 0x08C;
volatile unsigned char           PIEB1               @ 0x08C; //ESF2711   (ESP2811Âê?
// bit and bitfield definitions
volatile bit TMR1IE              @ ((unsigned)&PIE1*8)+0;
volatile bit TMR2IE              @ ((unsigned)&PIE1*8)+1;
volatile bit TMR3IE              @ ((unsigned)&PIE1*8)+2;
volatile bit PCINTE              @ ((unsigned)&PIE1*8)+3;
volatile bit INTC2E              @ ((unsigned)&PIE1*8)+4;
volatile bit INTC3E              @ ((unsigned)&PIE1*8)+5;
volatile bit ADIE                @ ((unsigned)&PIE1*8)+6;
//volatile bit EEIE              @ ((unsigned)&PIE1*8)+7;
volatile bit T1IE                @ ((unsigned)&PIE1*8)+0;

volatile bit TM1IE               @ ((unsigned)&PIE1*8)+0;
volatile bit TM2IE               @ ((unsigned)&PIE1*8)+1;
volatile bit TM3IE               @ ((unsigned)&PIE1*8)+2;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	TMR1IE              : 1;
        unsigned	TMR2IE              : 1;
        unsigned	TMR3IE              : 1;
        unsigned	PCINTE              : 1;
        unsigned	INTC2E              : 1;
        unsigned	INTC3E              : 1;
        unsigned	ADIE                : 1;
    };
    struct {
        unsigned	T1IE                : 1;
    };
    struct {
        unsigned	TM1IE              : 1;
        unsigned	TM2IE              : 1;
        unsigned	TM3IE              : 1;
    };
} PIE1bits @ 0x08C;
volatile union {
    struct {
        unsigned	TM1IE              : 1;
        unsigned	TM2IE              : 1;
        unsigned	TM3IE              : 1;
        unsigned	PCINTE              : 1;
        unsigned	INTC2E              : 1;
        unsigned	INTC3E              : 1;
        unsigned	ADIE                : 1;
    };
} PIEB1bits @ 0x08C;
#endif

//============================================================================
// Register: PCDRI
volatile unsigned char           PCDRI                @ 0x08D;
// bit and bitfield definitions
volatile bit PCDRI0              @ ((unsigned)&PCDRI*8)+0;
volatile bit PCDRI1              @ ((unsigned)&PCDRI*8)+1;
volatile bit PCDRI2              @ ((unsigned)&PCDRI*8)+2;
volatile bit PCDRI3              @ ((unsigned)&PCDRI*8)+3;
volatile bit PCDRI4              @ ((unsigned)&PCDRI*8)+4;
volatile bit PCDRI5              @ ((unsigned)&PCDRI*8)+5;
volatile bit PWM0S2              @ ((unsigned)&PCDRI*8)+6;
volatile bit PWM1S2              @ ((unsigned)&PCDRI*8)+7;
#ifndef _LIB_
volatile union {
    struct {
        unsigned	PCDRI0              : 1;
        unsigned	PCDRI1              : 1;
        unsigned	PCDRI2              : 1;
        unsigned	PCDRI3              : 1;
        unsigned	PCDRI4              : 1;
        unsigned	PCDRI5              : 1;
        unsigned	PWM0S2              : 1;
        unsigned	PWM1S2              : 1;
    };
} PCDRIbits @ 0x08D;
#endif

//============================================================================
// Register: PCON
volatile unsigned char           PCON                @ 0x08E;
volatile unsigned char           PORCON              @ 0x08E; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit nBOR                @ ((unsigned)&PCON*8)+0;
volatile bit nPOR                @ ((unsigned)&PCON*8)+1;
volatile bit nBOD                @ ((unsigned)&PCON*8)+0;

volatile bit   PEDHB             @ ((unsigned)&PCON*8)+0;
volatile bit   PORB              @ ((unsigned)&PCON*8)+1;
volatile bit   LOST              @ ((unsigned)&PCON*8)+2;
//volatile bit                   @ ((unsigned)&PCON*8)+3;
volatile bit   ENPOP             @ ((unsigned)&PCON*8)+4;
//volatile bit                   @ ((unsigned)&PCON*8)+5;
volatile bit   SWDTEN            @ ((unsigned)&PCON*8)+6;
volatile bit   CODRB             @ ((unsigned)&PCON*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	nBOR                : 1;
        unsigned	nPOR                : 1;
    };
    struct {
        unsigned	nBOD                : 1;
    };
} PCONbits @ 0x08E;

volatile union {
    struct {
        unsigned	PEDHB                 : 1;
        unsigned	PORB                  : 1;
        unsigned	LOST                  : 1;
        unsigned	                      : 1;
        unsigned	ENPOP                 : 1;
        unsigned	                      : 1;
        unsigned	SWDTEN                : 1;
        unsigned	CODRB                 : 1;
    };
} PORCONbits @ 0x08E;

#endif

//============================================================================
// Register: IRCCON
volatile unsigned char           IRCCON                @ 0x08F;
// bit and bitfield definitions
volatile bit   GREMD             @ ((unsigned)&IRCCON*8)+0;
volatile bit   CHWCK             @ ((unsigned)&IRCCON*8)+1;
volatile bit   nGMF              @ ((unsigned)&IRCCON*8)+2;
//volatile bit                   @ ((unsigned)&IRCCON*8)+3;
volatile bit   IFDIV0            @ ((unsigned)&IRCCON*8)+4;
volatile bit   IFDIV1            @ ((unsigned)&IRCCON*8)+5;
volatile bit   IFDIV2            @ ((unsigned)&IRCCON*8)+6;
volatile bit   IFDIV3            @ ((unsigned)&IRCCON*8)+7;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	GREMD                 : 1;
        unsigned	CHWCK                 : 1;
        unsigned	nGMF                  : 1;
        unsigned	                      : 1;
        unsigned	IFDIV0                : 1;
        unsigned	IFDIV1                : 1;
        unsigned	IFDIV2                : 1;
        unsigned	IFDIV3                : 1;
    };
} IRCCONbits @ 0x08F;
#endif
//============================================================================
// Register: PCINTR
volatile unsigned char           PCINTR               @ 0x090;
// bit and bitfield definitions
volatile bit PINTC0                @ ((unsigned)&PCINTR*8)+0;
volatile bit PINTC1                @ ((unsigned)&PCINTR*8)+1;
volatile bit PINTC2                @ ((unsigned)&PCINTR*8)+2;
volatile bit PINTC3                @ ((unsigned)&PCINTR*8)+3;
volatile bit PINTC4                @ ((unsigned)&PCINTR*8)+4;
volatile bit PINTC5                @ ((unsigned)&PCINTR*8)+5;
volatile bit PINTC6                @ ((unsigned)&PCINTR*8)+6;
volatile bit PINTC7                @ ((unsigned)&PCINTR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PINTC0                : 1;
        unsigned	PINTC1                : 1;
        unsigned	PINTC2                : 1;
        unsigned	PINTC3                : 1;
        unsigned	PINTC4                : 1;
        unsigned	PINTC5                : 1;
        unsigned	PINTC6                : 1;
        unsigned	PINTC7                : 1;
    };
} PCINTRbits @ 0x090;
#endif
//============================================================================
// Register: ANSEL
volatile unsigned char           ANSEL               @ 0x091;
volatile unsigned char           ADINS               @ 0x091; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit ANS0                @ ((unsigned)&ANSEL*8)+0;
volatile bit ANS1                @ ((unsigned)&ANSEL*8)+1;
volatile bit ANS2                @ ((unsigned)&ANSEL*8)+2;
volatile bit ANS3                @ ((unsigned)&ANSEL*8)+3;
volatile bit ANS4                @ ((unsigned)&ANSEL*8)+4;
volatile bit ANS5                @ ((unsigned)&ANSEL*8)+5;
volatile bit ANS6                @ ((unsigned)&ANSEL*8)+6;
volatile bit ANS7                @ ((unsigned)&ANSEL*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	ANS0                : 1;
        unsigned	ANS1                : 1;
        unsigned	ANS2                : 1;
        unsigned	ANS3                : 1;
        unsigned	ANS4                : 1;
        unsigned	ANS5                : 1;
        unsigned	ANS6                : 1;
        unsigned	ANS7                : 1;
    };
} ANSELbits @ 0x091 , ADINSbits @ 0x91;;

/*volatile union {
        unsigned	ANS0                : 1;
        unsigned	ANS1                : 1;
        unsigned	ANS2                : 1;
        unsigned	ANS3                : 1;
        unsigned	ANS4                : 1;
        unsigned	ANS5                : 1;
        unsigned	ANS6                : 1;    
} ADINSbits @ 0x91;*/
#endif     

//============================================================================
// Register: TMIOR
volatile unsigned char           TMIOR               @ 0x094;
// bit and bitfield definitions
volatile bit PWM0OS                @ ((unsigned)&TMIOR*8)+0;
volatile bit PWM1OS                @ ((unsigned)&TMIOR*8)+1;
volatile bit TM2x4                 @ ((unsigned)&TMIOR*8)+2;
volatile bit TM3x4                 @ ((unsigned)&TMIOR*8)+3;
volatile bit TM0IS                 @ ((unsigned)&TMIOR*8)+4;
volatile bit TM1IS                 @ ((unsigned)&TMIOR*8)+5;
volatile bit TM2IS                 @ ((unsigned)&TMIOR*8)+6;
volatile bit TM3IS                 @ ((unsigned)&TMIOR*8)+7;
#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	PWM0OS                : 1;
        unsigned	PWM1OS                : 1;
        unsigned	TM2x4                 : 1;
        unsigned	TM3x4                 : 1;
        unsigned	TM0IS                 : 1;
        unsigned	TM1IS                 : 1;
        unsigned	TM2IS                 : 1;
        unsigned	TM3IS                 : 1;
    };
} TMIORbits @ 0x094;
#endif
//============================================================================

// Register: WPUA
volatile unsigned char           WPUA                @ 0x095;
volatile unsigned char           WPU                 @ 0x095;
volatile unsigned char           PAPHR               @ 0x095; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit WPUA0               @ ((unsigned)&WPUA*8)+0;
volatile bit WPUA1               @ ((unsigned)&WPUA*8)+1;
volatile bit WPUA2               @ ((unsigned)&WPUA*8)+2;
volatile bit WPUA3               @ ((unsigned)&WPUA*8)+3;
volatile bit WPUA4               @ ((unsigned)&WPUA*8)+4;
volatile bit WPUA5               @ ((unsigned)&WPUA*8)+5;   

volatile bit APHB0               @ ((unsigned)&WPUA*8)+0;
volatile bit APHB1               @ ((unsigned)&WPUA*8)+1;
volatile bit APHB2               @ ((unsigned)&WPUA*8)+2;
volatile bit APHB3               @ ((unsigned)&WPUA*8)+3;
volatile bit APHB4               @ ((unsigned)&WPUA*8)+4;
volatile bit APHB5               @ ((unsigned)&WPUA*8)+5;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	WPUA0               : 1;
        unsigned	WPUA1               : 1;
        unsigned	WPUA2               : 1;
        unsigned	WPUA3               : 1;
        unsigned	WPUA4               : 1;
        unsigned	WPUA5               : 1;
    };
} WPUAbits @ 0x095;

volatile union {
    struct {
        unsigned	APHB0               : 1;
        unsigned	APHB1               : 1;
        unsigned	APHB2               : 1;
        unsigned	APHB3               : 1;
        unsigned	APHB4               : 1;
        unsigned	APHB5               : 1;
    };
} PAPHRbits @ 0x95;
#endif

//============================================================================
// Register: IOCA
volatile unsigned char           IOCA                @ 0x096;
volatile unsigned char           IOC                 @ 0x096;
volatile unsigned char           PAINTR              @ 0x096; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
volatile bit IOCA0               @ ((unsigned)&IOCA*8)+0;
volatile bit IOCA1               @ ((unsigned)&IOCA*8)+1;
volatile bit IOCA2               @ ((unsigned)&IOCA*8)+2;
volatile bit IOCA3               @ ((unsigned)&IOCA*8)+3;
volatile bit IOCA4               @ ((unsigned)&IOCA*8)+4;
volatile bit IOCA5               @ ((unsigned)&IOCA*8)+5; 

volatile bit PINTA0              @ ((unsigned)&IOCA*8)+0;
volatile bit PINTA1              @ ((unsigned)&IOCA*8)+1;
volatile bit PINTA2              @ ((unsigned)&IOCA*8)+2;
volatile bit PINTA3              @ ((unsigned)&IOCA*8)+3;
volatile bit PINTA4              @ ((unsigned)&IOCA*8)+4;
volatile bit PINTA5              @ ((unsigned)&IOCA*8)+5;

#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	IOCA0               : 1;
        unsigned	IOCA1               : 1;
        unsigned	IOCA2               : 1;
        unsigned	IOCA3               : 1;
        unsigned	IOCA4               : 1;
        unsigned	IOCA5               : 1;
    };
} IOCAbits @ 0x096;

volatile union {
    struct {
        unsigned	PINTA0               : 1;
        unsigned	PINTA1               : 1;
        unsigned	PINTA2               : 1;
        unsigned	PINTA3               : 1;
        unsigned	PINTA4               : 1;
        unsigned	PINTA5               : 1;
    };
} PAINTRbits @ 0x096;
#endif

//============================================================================
// Register: INOSCR
volatile unsigned char           INOSCR                @ 0x097;
// bit and bitfield definitions
volatile bit  nOSCIN              @ ((unsigned)&INOSCR*8)+0;
volatile bit  OSC2O               @ ((unsigned)&INOSCR*8)+1;
volatile bit  OSO2E               @ ((unsigned)&INOSCR*8)+2;
volatile bit  ECKIN               @ ((unsigned)&INOSCR*8)+3;
volatile bit  RDpin               @ ((unsigned)&INOSCR*8)+4;
volatile bit  SetB0               @ ((unsigned)&INOSCR*8)+5;
volatile bit  PWMIN               @ ((unsigned)&INOSCR*8)+6;
volatile bit  SYCKF               @ ((unsigned)&INOSCR*8)+7;
#ifndef _LIB_ BUILD
volatile union {
    struct {
        unsigned	nOSCIN              : 1;
        unsigned	OSC2O               : 1;
        unsigned	OSO2E               : 1;
        unsigned	ECKIN               : 1;
        unsigned	RDpin               : 1;
        unsigned	SetB0               : 1;
        unsigned	PWMIN               : 1;
        unsigned	SYCKF               : 1;
    };                  
} INOSCRbits @ 0x097;        
#endif   

//============================================================================
// Register: ADCON2
volatile unsigned char           ADCON2                @ 0x099;
// bit and bitfield definitions
volatile bit  ADVRS2              @ ((unsigned)&ADCON2*8)+0;
volatile bit  PWMPOS0             @ ((unsigned)&ADCON2*8)+1;
volatile bit  PWMPOS1             @ ((unsigned)&ADCON2*8)+2;
volatile bit  PWMCHG              @ ((unsigned)&ADCON2*8)+3;
volatile bit  CMPSYN              @ ((unsigned)&ADCON2*8)+4;
#ifndef _LIB_ BUILD
volatile union {
    struct {
        unsigned	ADVRS2               : 1;
        unsigned	PWMPOS0              : 1;
        unsigned	PWMPOS1              : 1;
        unsigned	PWMCHG               : 1;
        unsigned	CMPSYN               : 1;
    };                
} ADCON2bits @ 0x099;        
#endif   
      
//============================================================================
// Register: PWMCTL
volatile unsigned char           PWMCTL                @ 0x09B;  // ESP2811Êñ∞Â¢û
// bit and bitfield definitions
volatile bit  PRDIV0                @ ((unsigned)&PWMCTL*8)+0;
volatile bit  PRDIV1                @ ((unsigned)&PWMCTL*8)+1;
volatile bit  ENMD_PC4              @ ((unsigned)&PWMCTL*8)+2;
volatile bit  ENMD_PC5              @ ((unsigned)&PWMCTL*8)+3;
volatile bit  DT_EN                 @ ((unsigned)&PWMCTL*8)+4;
volatile bit  PWM_DFEN              @ ((unsigned)&PWMCTL*8)+5;
volatile bit  PWM0_MODE             @ ((unsigned)&PWMCTL*8)+6;
volatile bit  PWM1_MODE             @ ((unsigned)&PWMCTL*8)+7;
#ifndef _LIB_ BUILD
volatile union {
    struct {
        unsigned	PRDIV0                 : 1;
        unsigned	PRDIV1                 : 1;
        unsigned	ENMD_PC4               : 1;
        unsigned	ENMD_PC5               : 1;
        unsigned	DT_EN                  : 1;
        unsigned	PWM_DFEN               : 1;
        unsigned	PWM0_MODE              : 1;
        unsigned	PWM1_MODE              : 1;
    };                  
} PWMCTLbits @ 0x09B;        
#endif   

//============================================================================

// Register: ADRESL
volatile unsigned char           ADRESL              @ 0x09E;
volatile unsigned char           ADRDL               @ 0x09E; //ESF2711  (ESP2811Âê?
// bit and bitfield definitions
//============================================================================

// Register: ADCON1
volatile unsigned char           ADCON1              @ 0x09F;
// bit and bitfield definitions
volatile bit OFV0                @ ((unsigned)&ADCON1*8)+0;
volatile bit OFV1                @ ((unsigned)&ADCON1*8)+1;
volatile bit ANxS0               @ ((unsigned)&ADCON1*8)+2;
volatile bit ANxS1               @ ((unsigned)&ADCON1*8)+3;
volatile bit ADCS0               @ ((unsigned)&ADCON1*8)+4;
volatile bit ADCS1               @ ((unsigned)&ADCON1*8)+5;
volatile bit ADCS2               @ ((unsigned)&ADCON1*8)+6;
volatile bit ADVRS1              @ ((unsigned)&ADCON1*8)+7;
volatile bit ASCS0               @ ((unsigned)&ADCON1*8)+4;
volatile bit ASCS1               @ ((unsigned)&ADCON1*8)+5;
volatile bit ASCS2               @ ((unsigned)&ADCON1*8)+6;


#ifndef _LIB_BUILD
volatile union {
    struct {
        unsigned	                    : 4;
        unsigned	ADCS                : 3;
    };
    struct {
        unsigned	OFV0                : 1;
        unsigned	OFV1                : 1;
        unsigned	ANxS0               : 1;
        unsigned	ANxS1               : 1;
        unsigned	ADCS0               : 1;
        unsigned	ADCS1               : 1;
        unsigned	ADCS2               : 1;
        unsigned	ADVRS1              : 1;
    };
    struct {
        unsigned	                    : 4;
        unsigned	ASCS0               : 1;
        unsigned	ASCS1                : 1;
        unsigned	ASCS2                : 1;
    };
} ADCON1bits @ 0x09F;
#endif

#define InterruptEnable        INTSbits.GIE = 1;
#define InterruptDisable       INTSbits.GIE = 0;
//============================================================================

#endif
