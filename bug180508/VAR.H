
#include <mc32-common.h>
/*****************************************************************
;       Function : Define variables
;*****************************************************************/
#ifndef _VAR_H_
#define _VAR_H_  
      
typedef union{
unsigned char byte;
struct{
           	unsigned char bit0:1;
           	unsigned char bit1:1;
           	unsigned char bit2:1;
           	unsigned char bit3:1;
           	unsigned char bit4:1;
           	unsigned char bit5:1;
           	unsigned char bit6:1;
           	unsigned char bit7:1;
}bits;
}flag;

flag Flag_l,Flag_m,Flag_h,Flag1;

#define     Flag_l0	   	   	Flag_l.bits.bit0
#define     Flag_l1	   	   	Flag_l.bits.bit1
#define     Flag_l2	   	   	Flag_l.bits.bit2
#define     Flag_l3	   	   	Flag_l.bits.bit3
#define     Flag_l4	   	   	Flag_l.bits.bit4
#define     Flag_l5	   	   	Flag_l.bits.bit5
#define     Flag_l6	   	   	Flag_l.bits.bit6
#define     Flag_l7	   	   	Flag_l.bits.bit7

#define     Flag_m0	   	   	Flag_m.bits.bit0
#define     Flag_m1	   	   	Flag_m.bits.bit1
#define     Flag_m2	   	   	Flag_m.bits.bit2
#define     Flag_m3	   	   	Flag_m.bits.bit3
#define     Flag_m4	   	   	Flag_m.bits.bit4
#define     Flag_m5	   	   	Flag_m.bits.bit5
#define     Flag_m6	   	   	Flag_m.bits.bit6
#define     Flag_m7	   	   	Flag_m.bits.bit7

#define     Flag_h0	   	   	Flag_h.bits.bit0
#define     Flag_h1	   	   	Flag_h.bits.bit1
#define     Flag_h2	   	   	Flag_h.bits.bit2
#define     Flag_h3	   	   	Flag_h.bits.bit3
#define     Flag_h4	   	   	Flag_h.bits.bit4
#define     Flag_h5	   	   	Flag_h.bits.bit5
#define     Flag_h6	   	   	Flag_h.bits.bit6
#define     Flag_h7	   	   	Flag_h.bits.bit7

#define        	display_flag       	Flag1.bits.bit0
#define        	Voltage_flag       	Flag1.bits.bit1
#define        	Current_flag       	    Flag1.bits.bit2
#define        	Device_flag        	    Flag1.bits.bit3
#define        	F_1S       	    Flag1.bits.bit4
#define        	F_plus         	    Flag1.bits.bit5
#define        	F_Current_0        	    Flag1.bits.bit6
#define        	F_flash        	    Flag1.bits.bit7




#define  OEPIN1    	       	P15OE
#define  OEPIN2    	       	P14OE
#define  OEPIN3    	       	P16OE
#define  OEPIN4    	       	P17OE
#define  OEPIN5    	       	P12OE
#define  OEPIN6    	       	P11OE

#define  PIN1  	       	P15D
#define  PIN2  	       	P14D
#define  PIN3  	       	P16D
#define  PIN4  	       	P17D
#define  PIN5  	       	P12D
#define  PIN6  	       	P11D

#define ValueH_A3  	   	OEP1=0x08;OEPIN2=1;OEPIN3=1;PIN2=1;PIN3=0;
#define ValueH_B3  	   	OEP1=0x08;OEPIN2=1;OEPIN4=1;PIN2=1;PIN4=0;
#define ValueH_C3  	   	OEP1=0x08;OEPIN5=1;OEPIN2=1;PIN5=1;PIN2=0;
#define ValueH_D3  	   	OEP1=0x08;OEPIN2=1;OEPIN6=1;PIN2=1;PIN6=0;
#define ValueH_E3  	   	OEP1=0x08;OEPIN2=1;OEPIN5=1;PIN2=1;PIN5=0;
#define ValueH_F3  	   	OEP1=0x08;OEPIN3=1;OEPIN2=1;PIN3=1;PIN2=0;
#define ValueH_G3  	   	OEP1=0x08;OEPIN4=1;OEPIN2=1;PIN4=1;PIN2=0;
#define ValueH_DP3 	   	OEP1=0x08;OEPIN2=1;OEPIN1=1;PIN2=1;PIN1=0;

#define ValueM_A2  	   	OEP1=0x08;OEPIN5=1;OEPIN4=1;PIN5=1;PIN4=0;
#define ValueM_B2  	   	OEP1=0x08;OEPIN3=1;OEPIN5=1;PIN3=1;PIN5=0;
#define ValueM_C2  	   	OEP1=0x08;OEPIN4=1;OEPIN5=1;PIN4=1;PIN5=0;
#define ValueM_D2  	   	OEP1=0x08;OEPIN3=1;OEPIN4=1;PIN3=1;PIN4=0;
#define ValueM_E2  	   	OEP1=0x08;OEPIN6=1;OEPIN3=1;PIN6=1;PIN3=0;
#define ValueM_F2  	   	OEP1=0x08;OEPIN4=1;OEPIN3=1;PIN4=1;PIN3=0;
#define ValueM_G2  	   	OEP1=0x08;OEPIN5=1;OEPIN3=1;PIN5=1;PIN3=0;
#define ValueM_DP2 	   	OEP1=0x08;OEPIN3=1;OEPIN1=1;PIN3=1;PIN1=0;
   
#define ValueL_A1  	   	OEP1=0x08;OEPIN1=1;OEPIN6=1;PIN1=1;PIN6=0;
#define ValueL_B1  	   	OEP1=0x08;OEPIN3=1;OEPIN6=1;PIN3=1;PIN6=0;
#define ValueL_C1  	   	OEP1=0x08;OEPIN5=1;OEPIN6=1;PIN5=1;PIN6=0;
#define ValueL_D1  	   	OEP1=0x08;OEPIN6=1;OEPIN4=1;PIN6=1;PIN4=0;
#define ValueL_E1  	   	OEP1=0x08;OEPIN4=1;OEPIN6=1;PIN4=1;PIN6=0;
#define ValueL_F1  	   	OEP1=0x08;OEPIN6=1;OEPIN5=1;PIN6=1;PIN5=0;
#define ValueL_G1  	   	OEP1=0x08;OEPIN1=1;OEPIN5=1;PIN1=1;PIN5=0;

#define ValueL_1   	   	Flag_l.byte=0x06;
#define ValueL_2   	   	Flag_l.byte=0x5b;
#define ValueL_3   	   	Flag_l.byte=0x4f;
#define ValueL_4   	   	Flag_l.byte=0x66;
#define ValueL_5   	   	Flag_l.byte=0x6d;
#define ValueL_6   	   	Flag_l.byte=0x7d;
#define ValueL_7   	   	Flag_l.byte=0x07;
#define ValueL_8   	   	Flag_l.byte=0x7f;
#define ValueL_9   	   	Flag_l.byte=0x6f;
#define ValueL_0   	   	Flag_l.byte=0x3f;
#define ValueL_A   	   	Flag_l.byte=0x77;

                            
#define ValueM_1   	   	Flag_m.byte=0x06;
#define ValueM_2   	   	Flag_m.byte=0x5b;
#define ValueM_3   	   	Flag_m.byte=0x4f;
#define ValueM_4   	   	Flag_m.byte=0x66;
#define ValueM_5   	   	Flag_m.byte=0x6d;
#define ValueM_6   	   	Flag_m.byte=0x7d;
#define ValueM_7   	   	Flag_m.byte=0x07;
#define ValueM_8   	   	Flag_m.byte=0x7f;
#define ValueM_9   	   	Flag_m.byte=0x6f;
#define ValueM_0   	   	Flag_m.byte=0x3f;
                                  
#define ValueH_1   	   	Flag_h.byte=0x06;
#define ValueH_2   	   	Flag_h.byte=0x5b;
#define ValueH_3   	   	Flag_h.byte=0x4f;
#define ValueH_4   	   	Flag_h.byte=0x66;
#define ValueH_5   	   	Flag_h.byte=0x6d;
#define ValueH_6   	   	Flag_h.byte=0x7d;
#define ValueH_7   	   	Flag_h.byte=0x07;
#define ValueH_8   	   	Flag_h.byte=0x7f;
#define ValueH_9   	   	Flag_h.byte=0x6f;
#define ValueH_0   	   	   	Flag_h.byte=0x00;
#define ValueH_00  	   	   	Flag_h.byte=0x3f;

   	                                          
#endif


