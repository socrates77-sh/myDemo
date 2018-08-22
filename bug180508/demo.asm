;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.1 (May  3 2018) (MINGW32)
; This file was generated Tue May 08 18:08:20 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"demo.c"
	list	p=7311
	radix dec
	include "7311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__divuint
	extern	__mulint
	extern	_INDF0bits
	extern	_INDF1bits
	extern	_INDF2bits
	extern	_HIBYTEbits
	extern	_FSR0bits
	extern	_FSR1bits
	extern	_PCLbits
	extern	_PFLAGbits
	extern	_MCRbits
	extern	_INDF3bits
	extern	_INTEbits
	extern	_INTFbits
	extern	_DRVCRbits
	extern	_KBCRbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_PDP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_PDP1bits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T0LOADbits
	extern	_T0DATAbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DATAbits
	extern	_T2CRbits
	extern	_T2CNTbits
	extern	_T2LOADbits
	extern	_T2DATAbits
	extern	_T3CRbits
	extern	_T3CNTbits
	extern	_T3LOADbits
	extern	_PWM0DEbits
	extern	_PWM1DEbits
	extern	_PWM2DEbits
	extern	_PWMCR0bits
	extern	_PWMCR1bits
	extern	_OSCMbits
	extern	_LVDCRbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ADCR2bits
	extern	_ADRHbits
	extern	_ADRLbits
	extern	_ANSEL0bits
	extern	_ANSEL1bits
	extern	_OSCCALHbits
	extern	_OSCCALLbits
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_PFLAG
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_DRVCR
	extern	_KBCR
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_PDP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_PDP1
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_T2CR
	extern	_T2CNT
	extern	_T2LOAD
	extern	_T2DATA
	extern	_T3CR
	extern	_T3CNT
	extern	_T3LOAD
	extern	_PWM0DE
	extern	_PWM1DE
	extern	_PWM2DE
	extern	_PWMCR0
	extern	_PWMCR1
	extern	_OSCM
	extern	_LVDCR
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADCR2
	extern	_ADRH
	extern	_ADRL
	extern	_ANSEL0
	extern	_ANSEL1
	extern	_OSCCALH
	extern	_OSCCALL
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Init_Sys
	global	_Init_timer
	global	_Clr_Ram
	global	_DC_DET
	global	_Charge_AD
	global	_Voltage_AD
	global	_Current_AD
	global	_AD_process
	global	_Voltage_process
	global	_Charge_process
	global	_Current_process
	global	_Current_Data_process
	global	_Voltage_Data_process
	global	_Voltage_Data
	global	_Current_Data
	global	_Charge_Data
	global	_Display_count
	global	_Display_led
	global	_LED_state
	global	_Display_delay
	global	_main
	global	_int_isr
	global	_Flag_l
	global	_Flag_m
	global	_Flag_h
	global	_Flag1
	global	_ABuf
	global	_StatusBuf
	global	_FSR_TEMP
	global	_i
	global	_Vol_H
	global	_Vol_M
	global	_Vol_L
	global	_Voltage_L
	global	_Voltage_M
	global	_Voltage_H
	global	_ad_cnt
	global	_R_changecnt
	global	_R_changecnt2
	global	_ADL
	global	_R_difference
	global	_ADL_old
	global	_ADL_old2
	global	_temp
	global	_ADL_common
	global	_display_cnt
	global	_R_ad_channel
	global	_R_Charge_cnt
	global	_R_Current_cnt
	global	_ADH_temp
	global	_ADL_temp
	global	_AD_final
	global	_AD_temp

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_demo_0	udata
_Flag_l	res	1

UD_demo_1	udata
_Flag_m	res	1

UD_demo_2	udata
_Flag_h	res	1

UD_demo_3	udata
_Flag1	res	1

UD_demo_4	udata
_ABuf	res	1

UD_demo_5	udata
_StatusBuf	res	1

UD_demo_6	udata
_FSR_TEMP	res	1

UD_demo_7	udata
_i	res	1

UD_demo_8	udata
_Vol_H	res	1

UD_demo_9	udata
_Vol_M	res	1

UD_demo_10	udata
_Vol_L	res	1

UD_demo_11	udata
_Voltage_L	res	1

UD_demo_12	udata
_Voltage_M	res	1

UD_demo_13	udata
_Voltage_H	res	1

UD_demo_14	udata
_ad_cnt	res	1

UD_demo_15	udata
_R_changecnt	res	1

UD_demo_16	udata
_R_changecnt2	res	1

UD_demo_17	udata
_ADL	res	2

UD_demo_18	udata
_R_difference	res	2

UD_demo_19	udata
_ADL_old	res	2

UD_demo_20	udata
_ADL_old2	res	2

UD_demo_21	udata
_temp	res	2

UD_demo_22	udata
_ADL_common	res	2

UD_demo_23	udata
_display_cnt	res	1

UD_demo_24	udata
_R_ad_channel	res	1

UD_demo_25	udata
_R_Charge_cnt	res	1

UD_demo_26	udata
_R_Current_cnt	res	1

UD_demo_27	udata
_ADH_temp	res	2

UD_demo_28	udata
_ADL_temp	res	2

UD_demo_29	udata
_AD_final	res	2

UD_demo_30	udata
_AD_temp	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_demo_0	udata
r0x1027	res	1
r0x1026	res	1
r0x1028	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'Init_Sys'
;@Init_Sys Init_Sys                  Allocated to registers ;size:2
;@Init_Sys INDF0bits                 Allocated to registers ;size:1
;@Init_Sys INDF1bits                 Allocated to registers ;size:1
;@Init_Sys INDF2bits                 Allocated to registers ;size:1
;@Init_Sys HIBYTEbits                Allocated to registers ;size:1
;@Init_Sys FSR0bits                  Allocated to registers ;size:1
;@Init_Sys FSR1bits                  Allocated to registers ;size:1
;@Init_Sys PCLbits                   Allocated to registers ;size:1
;@Init_Sys PFLAGbits                 Allocated to registers ;size:1
;@Init_Sys MCRbits                   Allocated to registers ;size:1
;@Init_Sys INDF3bits                 Allocated to registers ;size:1
;@Init_Sys INTEbits                  Allocated to registers ;size:1
;@Init_Sys INTFbits                  Allocated to registers ;size:1
;@Init_Sys DRVCRbits                 Allocated to registers ;size:1
;@Init_Sys KBCRbits                  Allocated to registers ;size:1
;@Init_Sys IOP0bits                  Allocated to registers ;size:1
;@Init_Sys OEP0bits                  Allocated to registers ;size:1
;@Init_Sys PUP0bits                  Allocated to registers ;size:1
;@Init_Sys PDP0bits                  Allocated to registers ;size:1
;@Init_Sys IOP1bits                  Allocated to registers ;size:1
;@Init_Sys OEP1bits                  Allocated to registers ;size:1
;@Init_Sys PUP1bits                  Allocated to registers ;size:1
;@Init_Sys PDP1bits                  Allocated to registers ;size:1
;@Init_Sys T0CRbits                  Allocated to registers ;size:1
;@Init_Sys T0CNTbits                 Allocated to registers ;size:1
;@Init_Sys T0LOADbits                Allocated to registers ;size:1
;@Init_Sys T0DATAbits                Allocated to registers ;size:1
;@Init_Sys T1CRbits                  Allocated to registers ;size:1
;@Init_Sys T1CNTbits                 Allocated to registers ;size:1
;@Init_Sys T1LOADbits                Allocated to registers ;size:1
;@Init_Sys T1DATAbits                Allocated to registers ;size:1
;@Init_Sys T2CRbits                  Allocated to registers ;size:1
;@Init_Sys T2CNTbits                 Allocated to registers ;size:1
;@Init_Sys T2LOADbits                Allocated to registers ;size:1
;@Init_Sys T2DATAbits                Allocated to registers ;size:1
;@Init_Sys T3CRbits                  Allocated to registers ;size:1
;@Init_Sys T3CNTbits                 Allocated to registers ;size:1
;@Init_Sys T3LOADbits                Allocated to registers ;size:1
;@Init_Sys PWM0DEbits                Allocated to registers ;size:1
;@Init_Sys PWM1DEbits                Allocated to registers ;size:1
;@Init_Sys PWM2DEbits                Allocated to registers ;size:1
;@Init_Sys PWMCR0bits                Allocated to registers ;size:1
;@Init_Sys PWMCR1bits                Allocated to registers ;size:1
;@Init_Sys OSCMbits                  Allocated to registers ;size:1
;@Init_Sys LVDCRbits                 Allocated to registers ;size:1
;@Init_Sys ADCR0bits                 Allocated to registers ;size:1
;@Init_Sys ADCR1bits                 Allocated to registers ;size:1
;@Init_Sys ADCR2bits                 Allocated to registers ;size:1
;@Init_Sys ADRHbits                  Allocated to registers ;size:1
;@Init_Sys ADRLbits                  Allocated to registers ;size:1
;@Init_Sys ANSEL0bits                Allocated to registers ;size:1
;@Init_Sys ANSEL1bits                Allocated to registers ;size:1
;@Init_Sys OSCCALHbits               Allocated to registers ;size:1
;@Init_Sys OSCCALLbits               Allocated to registers ;size:1
;@Init_Sys Flag_l                    Allocated to registers ;size:1
;@Init_Sys Flag_m                    Allocated to registers ;size:1
;@Init_Sys Flag_h                    Allocated to registers ;size:1
;@Init_Sys Flag1                     Allocated to registers ;size:1
;@Init_Sys ABuf                      Allocated to registers ;size:1
;@Init_Sys StatusBuf                 Allocated to registers ;size:1
;@Init_Sys FSR_TEMP                  Allocated to registers ;size:1
;@Init_Sys i                         Allocated to registers ;size:1
;@Init_Sys Vol_H                     Allocated to registers ;size:1
;@Init_Sys Vol_M                     Allocated to registers ;size:1
;@Init_Sys Vol_L                     Allocated to registers ;size:1
;@Init_Sys Voltage_L                 Allocated to registers ;size:1
;@Init_Sys Voltage_M                 Allocated to registers ;size:1
;@Init_Sys Voltage_H                 Allocated to registers ;size:1
;@Init_Sys ad_cnt                    Allocated to registers ;size:1
;@Init_Sys R_changecnt               Allocated to registers ;size:1
;@Init_Sys R_changecnt2              Allocated to registers ;size:1
;@Init_Sys ADL                       Allocated to registers ;size:2
;@Init_Sys R_difference              Allocated to registers ;size:2
;@Init_Sys ADL_old                   Allocated to registers ;size:2
;@Init_Sys ADL_old2                  Allocated to registers ;size:2
;@Init_Sys temp                      Allocated to registers ;size:2
;@Init_Sys ADL_common                Allocated to registers ;size:2
;@Init_Sys display_cnt               Allocated to registers ;size:1
;@Init_Sys R_ad_channel              Allocated to registers ;size:1
;@Init_Sys R_Charge_cnt              Allocated to registers ;size:1
;@Init_Sys R_Current_cnt             Allocated to registers ;size:1
;@Init_Sys ADH_temp                  Allocated to registers ;size:2
;@Init_Sys ADL_temp                  Allocated to registers ;size:2
;@Init_Sys AD_final                  Allocated to registers ;size:2
;@Init_Sys AD_temp                   Allocated to registers ;size:2
;@Init_Sys INDF0                     Allocated to registers ;size:1
;@Init_Sys INDF1                     Allocated to registers ;size:1
;@Init_Sys INDF2                     Allocated to registers ;size:1
;@Init_Sys HIBYTE                    Allocated to registers ;size:1
;@Init_Sys FSR0                      Allocated to registers ;size:1
;@Init_Sys FSR1                      Allocated to registers ;size:1
;@Init_Sys PCL                       Allocated to registers ;size:1
;@Init_Sys PFLAG                     Allocated to registers ;size:1
;@Init_Sys MCR                       Allocated to registers ;size:1
;@Init_Sys INDF3                     Allocated to registers ;size:1
;@Init_Sys INTE                      Allocated to registers ;size:1
;@Init_Sys INTF                      Allocated to registers ;size:1
;@Init_Sys DRVCR                     Allocated to registers ;size:1
;@Init_Sys KBCR                      Allocated to registers ;size:1
;@Init_Sys IOP0                      Allocated to registers ;size:1
;@Init_Sys OEP0                      Allocated to registers ;size:1
;@Init_Sys PUP0                      Allocated to registers ;size:1
;@Init_Sys PDP0                      Allocated to registers ;size:1
;@Init_Sys IOP1                      Allocated to registers ;size:1
;@Init_Sys OEP1                      Allocated to registers ;size:1
;@Init_Sys PUP1                      Allocated to registers ;size:1
;@Init_Sys PDP1                      Allocated to registers ;size:1
;@Init_Sys T0CR                      Allocated to registers ;size:1
;@Init_Sys T0CNT                     Allocated to registers ;size:1
;@Init_Sys T0LOAD                    Allocated to registers ;size:1
;@Init_Sys T0DATA                    Allocated to registers ;size:1
;@Init_Sys T1CR                      Allocated to registers ;size:1
;@Init_Sys T1CNT                     Allocated to registers ;size:1
;@Init_Sys T1LOAD                    Allocated to registers ;size:1
;@Init_Sys T1DATA                    Allocated to registers ;size:1
;@Init_Sys T2CR                      Allocated to registers ;size:1
;@Init_Sys T2CNT                     Allocated to registers ;size:1
;@Init_Sys T2LOAD                    Allocated to registers ;size:1
;@Init_Sys T2DATA                    Allocated to registers ;size:1
;@Init_Sys T3CR                      Allocated to registers ;size:1
;@Init_Sys T3CNT                     Allocated to registers ;size:1
;@Init_Sys T3LOAD                    Allocated to registers ;size:1
;@Init_Sys PWM0DE                    Allocated to registers ;size:1
;@Init_Sys PWM1DE                    Allocated to registers ;size:1
;@Init_Sys PWM2DE                    Allocated to registers ;size:1
;@Init_Sys PWMCR0                    Allocated to registers ;size:1
;@Init_Sys PWMCR1                    Allocated to registers ;size:1
;@Init_Sys OSCM                      Allocated to registers ;size:1
;@Init_Sys LVDCR                     Allocated to registers ;size:1
;@Init_Sys ADCR0                     Allocated to registers ;size:1
;@Init_Sys ADCR1                     Allocated to registers ;size:1
;@Init_Sys ADCR2                     Allocated to registers ;size:1
;@Init_Sys ADRH                      Allocated to registers ;size:1
;@Init_Sys ADRL                      Allocated to registers ;size:1
;@Init_Sys ANSEL0                    Allocated to registers ;size:1
;@Init_Sys ANSEL1                    Allocated to registers ;size:1
;@Init_Sys OSCCALH                   Allocated to registers ;size:1
;@Init_Sys OSCCALL                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Init_Sys';
;@Allocation info for local variables in function 'Init_timer'
;@end Allocation info for local variables in function 'Init_timer';
;@Allocation info for local variables in function 'Clr_Ram'
;@end Allocation info for local variables in function 'Clr_Ram';
;@Allocation info for local variables in function 'DC_DET'
;@end Allocation info for local variables in function 'DC_DET';
;@Allocation info for local variables in function 'Charge_AD'
;@end Allocation info for local variables in function 'Charge_AD';
;@Allocation info for local variables in function 'Voltage_AD'
;@end Allocation info for local variables in function 'Voltage_AD';
;@Allocation info for local variables in function 'Current_AD'
;@end Allocation info for local variables in function 'Current_AD';
;@Allocation info for local variables in function 'AD_process'
;@end Allocation info for local variables in function 'AD_process';
;@Allocation info for local variables in function 'Voltage_process'
;@end Allocation info for local variables in function 'Voltage_process';
;@Allocation info for local variables in function 'Charge_process'
;@end Allocation info for local variables in function 'Charge_process';
;@Allocation info for local variables in function 'Current_process'
;@end Allocation info for local variables in function 'Current_process';
;@Allocation info for local variables in function 'Current_Data_process'
;@end Allocation info for local variables in function 'Current_Data_process';
;@Allocation info for local variables in function 'Voltage_Data_process'
;@end Allocation info for local variables in function 'Voltage_Data_process';
;@Allocation info for local variables in function 'Voltage_Data'
;@end Allocation info for local variables in function 'Voltage_Data';
;@Allocation info for local variables in function 'Current_Data'
;@end Allocation info for local variables in function 'Current_Data';
;@Allocation info for local variables in function 'Charge_Data'
;@end Allocation info for local variables in function 'Charge_Data';
;@Allocation info for local variables in function 'Display_count'
;@end Allocation info for local variables in function 'Display_count';
;@Allocation info for local variables in function 'Display_led'
;@end Allocation info for local variables in function 'Display_led';
;@Allocation info for local variables in function 'LED_state'
;@end Allocation info for local variables in function 'LED_state';
;@Allocation info for local variables in function 'Display_delay'
;@Display_delay delay1                    Allocated to registers r0x1027 r0x1026 ;size:2
;@end Allocation info for local variables in function 'Display_delay';
;@Allocation info for local variables in function 'main'
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'int_isr'
;@end Allocation info for local variables in function 'int_isr';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	_main
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x8
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _int_isr	;Function start
; 0 exit points
;2 compiler assigned registers:
;   r0x1028
;   r0x1029
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	596; "demo.c"	__endasm;
	movra _ABuf
	swapar _PFLAG
	movra _StatusBuf
	
;	.line	598; "demo.c"	if(T0IF)
	JBSET	_INTFbits,0
	GOTO	_00442_DS_
;	.line	600; "demo.c"	T0IF  = 0;
	BCLR	_INTFbits,0
;	.line	601; "demo.c"	F_1S=1;  
	BSET	_Flag1,4
;	.line	602; "demo.c"	if(F_flash)
	JBSET	_Flag1,7
	GOTO	_00442_DS_
;	.line	604; "demo.c"	P_RED=!P_RED;  	   
	CLRR	r0x1028
	JBCLR	_IOP0bits,4
	INCR	r0x1028
	MOVAR	r0x1028
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1028
;;1	MOVRA	r0x1029
;;99	MOVAR	r0x1029
	RRAR	r0x1028
	JBSET	PFLAG,0
	BCLR	_IOP0bits,4
	JBCLR	PFLAG,0
	BSET	_IOP0bits,4
_00442_DS_
;	.line	607; "demo.c"	if(T1IF)
	JBSET	_INTFbits,1
	GOTO	_00538_DS_
;	.line	609; "demo.c"	T1IF  = 0;
	BCLR	_INTFbits,1
;	.line	610; "demo.c"	OEP1&=0x08;
	MOVAI	0x08
	ANDRA	_OEP1
;	.line	611; "demo.c"	IOP1&=0x08;
	MOVAI	0x08
	ANDRA	_IOP1
;	.line	612; "demo.c"	display_cnt++;
	INCR	_display_cnt
;	.line	613; "demo.c"	if(display_cnt==1)
	MOVAR	_display_cnt
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00446_DS_
;	.line	615; "demo.c"	if(Flag_l0){ValueL_A1;}        	   	
	JBSET	_Flag_l,0
	GOTO	_00446_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,5
	BSET	_OEP1bits,1
	BSET	_IOP1bits,5
	BCLR	_IOP1bits,1
_00446_DS_
;	.line	617; "demo.c"	if(display_cnt==2)
	MOVAR	_display_cnt
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00450_DS_
;	.line	619; "demo.c"	if(Flag_l1){ValueL_B1;}        	   	
	JBSET	_Flag_l,1
	GOTO	_00450_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,6
	BSET	_OEP1bits,1
	BSET	_IOP1bits,6
	BCLR	_IOP1bits,1
_00450_DS_
;	.line	621; "demo.c"	if(display_cnt==3)
	MOVAR	_display_cnt
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00454_DS_
;	.line	623; "demo.c"	if(Flag_l2){ValueL_C1;}        	   	
	JBSET	_Flag_l,2
	GOTO	_00454_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,2
	BSET	_OEP1bits,1
	BSET	_IOP1bits,2
	BCLR	_IOP1bits,1
_00454_DS_
;	.line	625; "demo.c"	if(display_cnt==4)
	MOVAR	_display_cnt
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00458_DS_
;	.line	627; "demo.c"	if(Flag_l3){ValueL_D1;}        	   	
	JBSET	_Flag_l,3
	GOTO	_00458_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,1
	BSET	_OEP1bits,7
	BSET	_IOP1bits,1
	BCLR	_IOP1bits,7
_00458_DS_
;	.line	629; "demo.c"	if(display_cnt==5)
	MOVAR	_display_cnt
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00462_DS_
;	.line	631; "demo.c"	if(Flag_l4){ValueL_E1;}        	   	
	JBSET	_Flag_l,4
	GOTO	_00462_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,7
	BSET	_OEP1bits,1
	BSET	_IOP1bits,7
	BCLR	_IOP1bits,1
_00462_DS_
;	.line	633; "demo.c"	if(display_cnt==6)
	MOVAR	_display_cnt
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00466_DS_
;	.line	635; "demo.c"	if(Flag_l5){ValueL_F1;}        	   	
	JBSET	_Flag_l,5
	GOTO	_00466_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,1
	BSET	_OEP1bits,2
	BSET	_IOP1bits,1
	BCLR	_IOP1bits,2
_00466_DS_
;	.line	637; "demo.c"	if(display_cnt==7)
	MOVAR	_display_cnt
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00470_DS_
;	.line	639; "demo.c"	if(Flag_l6){ValueL_G1;}        	   	
	JBSET	_Flag_l,6
	GOTO	_00470_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,5
	BSET	_OEP1bits,2
	BSET	_IOP1bits,5
	BCLR	_IOP1bits,2
_00470_DS_
;	.line	641; "demo.c"	if(display_cnt==8)
	MOVAR	_display_cnt
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00474_DS_
;	.line	643; "demo.c"	if(Flag_m0){ValueM_A2;}        	   	
	JBSET	_Flag_m,0
	GOTO	_00474_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,2
	BSET	_OEP1bits,7
	BSET	_IOP1bits,2
	BCLR	_IOP1bits,7
_00474_DS_
;	.line	645; "demo.c"	if(display_cnt==9)
	MOVAR	_display_cnt
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00478_DS_
;	.line	647; "demo.c"	if(Flag_m1){ValueM_B2;}        	   	
	JBSET	_Flag_m,1
	GOTO	_00478_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,6
	BSET	_OEP1bits,2
	BSET	_IOP1bits,6
	BCLR	_IOP1bits,2
_00478_DS_
;	.line	649; "demo.c"	if(display_cnt==10)
	MOVAR	_display_cnt
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00482_DS_
;	.line	651; "demo.c"	if(Flag_m2){ValueM_C2;}        	   	
	JBSET	_Flag_m,2
	GOTO	_00482_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,7
	BSET	_OEP1bits,2
	BSET	_IOP1bits,7
	BCLR	_IOP1bits,2
_00482_DS_
;	.line	653; "demo.c"	if(display_cnt==11)
	MOVAR	_display_cnt
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00486_DS_
;	.line	655; "demo.c"	if(Flag_m3){ValueM_D2;}        	   	
	JBSET	_Flag_m,3
	GOTO	_00486_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,6
	BSET	_OEP1bits,7
	BSET	_IOP1bits,6
	BCLR	_IOP1bits,7
_00486_DS_
;	.line	657; "demo.c"	if(display_cnt==12)
	MOVAR	_display_cnt
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00490_DS_
;	.line	659; "demo.c"	if(Flag_m4){ValueM_E2;}        	   	
	JBSET	_Flag_m,4
	GOTO	_00490_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,1
	BSET	_OEP1bits,6
	BSET	_IOP1bits,1
	BCLR	_IOP1bits,6
_00490_DS_
;	.line	661; "demo.c"	if(display_cnt==13)
	MOVAR	_display_cnt
	XORAI	0x0d
	JBSET	PFLAG,2
	GOTO	_00494_DS_
;	.line	663; "demo.c"	if(Flag_m5){ValueM_F2;}        	   	
	JBSET	_Flag_m,5
	GOTO	_00494_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,7
	BSET	_OEP1bits,6
	BSET	_IOP1bits,7
	BCLR	_IOP1bits,6
_00494_DS_
;	.line	665; "demo.c"	if(display_cnt==14)
	MOVAR	_display_cnt
	XORAI	0x0e
	JBSET	PFLAG,2
	GOTO	_00498_DS_
;	.line	667; "demo.c"	if(Flag_m6){ValueM_G2;}        	   	
	JBSET	_Flag_m,6
	GOTO	_00498_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,2
	BSET	_OEP1bits,6
	BSET	_IOP1bits,2
	BCLR	_IOP1bits,6
_00498_DS_
;	.line	669; "demo.c"	if(display_cnt==15)
	MOVAR	_display_cnt
	XORAI	0x0f
	JBSET	PFLAG,2
	GOTO	_00503_DS_
;	.line	671; "demo.c"	if((Current_flag==0)||F_Current_0)
	JBSET	_Flag1,2
	GOTO	_00499_DS_
	JBSET	_Flag1,6
	GOTO	_00503_DS_
_00499_DS_
;	.line	672; "demo.c"	{ValueM_DP2;}          	   	
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,6
	BSET	_OEP1bits,5
	BSET	_IOP1bits,6
	BCLR	_IOP1bits,5
_00503_DS_
;	.line	675; "demo.c"	if(display_cnt==16)
	MOVAR	_display_cnt
	XORAI	0x10
	JBSET	PFLAG,2
	GOTO	_00507_DS_
;	.line	677; "demo.c"	if(Flag_h0){ValueH_A3;}        	   	
	JBSET	_Flag_h,0
	GOTO	_00507_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,4
	BSET	_OEP1bits,6
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,6
_00507_DS_
;	.line	679; "demo.c"	if(display_cnt==17)
	MOVAR	_display_cnt
	XORAI	0x11
	JBSET	PFLAG,2
	GOTO	_00511_DS_
;	.line	681; "demo.c"	if(Flag_h1){ValueH_B3;}        	   	
	JBSET	_Flag_h,1
	GOTO	_00511_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,4
	BSET	_OEP1bits,7
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,7
_00511_DS_
;	.line	683; "demo.c"	if(display_cnt==18)
	MOVAR	_display_cnt
	XORAI	0x12
	JBSET	PFLAG,2
	GOTO	_00515_DS_
;	.line	685; "demo.c"	if(Flag_h2){ValueH_C3;}        	   	
	JBSET	_Flag_h,2
	GOTO	_00515_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,2
	BSET	_OEP1bits,4
	BSET	_IOP1bits,2
	BCLR	_IOP1bits,4
_00515_DS_
;	.line	687; "demo.c"	if(display_cnt==19)
	MOVAR	_display_cnt
	XORAI	0x13
	JBSET	PFLAG,2
	GOTO	_00519_DS_
;	.line	689; "demo.c"	if(Flag_h3){ValueH_D3;}        	   	
	JBSET	_Flag_h,3
	GOTO	_00519_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,4
	BSET	_OEP1bits,1
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,1
_00519_DS_
;	.line	691; "demo.c"	if(display_cnt==20)
	MOVAR	_display_cnt
	XORAI	0x14
	JBSET	PFLAG,2
	GOTO	_00523_DS_
;	.line	693; "demo.c"	if(Flag_h4){ValueH_E3;}        	   	
	JBSET	_Flag_h,4
	GOTO	_00523_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,4
	BSET	_OEP1bits,2
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,2
_00523_DS_
;	.line	695; "demo.c"	if(display_cnt==21)
	MOVAR	_display_cnt
	XORAI	0x15
	JBSET	PFLAG,2
	GOTO	_00527_DS_
;	.line	697; "demo.c"	if(Flag_h5){ValueH_F3;}        	   	
	JBSET	_Flag_h,5
	GOTO	_00527_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,6
	BSET	_OEP1bits,4
	BSET	_IOP1bits,6
	BCLR	_IOP1bits,4
_00527_DS_
;	.line	699; "demo.c"	if(display_cnt==22)
	MOVAR	_display_cnt
	XORAI	0x16
	JBSET	PFLAG,2
	GOTO	_00531_DS_
;	.line	701; "demo.c"	if(Flag_h6){ValueH_G3;}        	   	
	JBSET	_Flag_h,6
	GOTO	_00531_DS_
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,7
	BSET	_OEP1bits,4
	BSET	_IOP1bits,7
	BCLR	_IOP1bits,4
_00531_DS_
;	.line	703; "demo.c"	if(display_cnt==23)
	MOVAR	_display_cnt
	XORAI	0x17
	JBSET	PFLAG,2
	GOTO	_00538_DS_
;	.line	705; "demo.c"	if(Current_flag&&(F_Current_0==0))
	JBSET	_Flag1,2
	GOTO	_00533_DS_
	JBCLR	_Flag1,6
	GOTO	_00533_DS_
;	.line	707; "demo.c"	ValueH_DP3;        	   	   	   	
	MOVAI	0x08
	MOVRA	_OEP1
	BSET	_OEP1bits,4
	BSET	_OEP1bits,5
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,5
_00533_DS_
;	.line	709; "demo.c"	display_cnt=0;             	   	
	CLRR	_display_cnt
_00538_DS_
;	.line	720; "demo.c"	__endasm;
	swapar _StatusBuf
	movra _PFLAG
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_demo	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Clr_Ram
;   _Init_Sys
;   _Display_led
;   _Init_timer
;   _DC_DET
;   _Voltage_AD
;   _AD_process
;   _Voltage_process
;   _Voltage_Data_process
;   _Voltage_Data
;   _LED_state
;   _Display_count
;   _Display_led
;   _Current_AD
;   _AD_process
;   _Current_process
;   _Current_Data_process
;   _Current_Data
;   _Display_count
;   _Display_led
;   _Voltage_AD
;   _AD_process
;   _Voltage_process
;   _Voltage_Data_process
;   _Voltage_Data
;   _LED_state
;   _Display_count
;   _Display_led
;   _Charge_AD
;   _AD_process
;   _Charge_process
;   _Voltage_Data_process
;   _Charge_Data
;   _Display_count
;   _Display_led
;   _Clr_Ram
;   _Init_Sys
;   _Display_led
;   _Init_timer
;   _DC_DET
;   _Voltage_AD
;   _AD_process
;   _Voltage_process
;   _Voltage_Data_process
;   _Voltage_Data
;   _LED_state
;   _Display_count
;   _Display_led
;   _Current_AD
;   _AD_process
;   _Current_process
;   _Current_Data_process
;   _Current_Data
;   _Display_count
;   _Display_led
;   _Voltage_AD
;   _AD_process
;   _Voltage_process
;   _Voltage_Data_process
;   _Voltage_Data
;   _LED_state
;   _Display_count
;   _Display_led
;   _Charge_AD
;   _AD_process
;   _Charge_process
;   _Voltage_Data_process
;   _Charge_Data
;   _Display_count
;   _Display_led
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	510; "demo.c"	Clr_Ram(); 
	CALL	_Clr_Ram
;	.line	511; "demo.c"	Init_Sys();
	CALL	_Init_Sys
;	.line	512; "demo.c"	Display_led();
	CALL	_Display_led
;	.line	513; "demo.c"	Init_timer();
	CALL	_Init_timer
_00434_DS_
;	.line	517; "demo.c"	if(F_1S)
	JBSET	_Flag1,4
	GOTO	_00434_DS_
;	.line	519; "demo.c"	F_1S=0;
	BCLR	_Flag1,4
;	.line	520; "demo.c"	DC_DET();      	
	CALL	_DC_DET
;	.line	521; "demo.c"	if(Voltage_flag)       	   	  
	JBSET	_Flag1,1
	GOTO	_00429_DS_
;	.line	523; "demo.c"	R_Current_cnt=0;
	CLRR	_R_Current_cnt
;	.line	524; "demo.c"	F_Current_0=0;
	BCLR	_Flag1,6
;	.line	525; "demo.c"	Voltage_AD();
	CALL	_Voltage_AD
;	.line	526; "demo.c"	AD_process();
	CALL	_AD_process
;	.line	527; "demo.c"	Voltage_process();  
	CALL	_Voltage_process
;	.line	528; "demo.c"	Voltage_Data_process();
	CALL	_Voltage_Data_process
;	.line	529; "demo.c"	Voltage_Data();
	CALL	_Voltage_Data
;	.line	530; "demo.c"	LED_state();
	CALL	_LED_state
;	.line	531; "demo.c"	Display_count();           	   	
	CALL	_Display_count
;	.line	532; "demo.c"	Display_led();
	CALL	_Display_led
	GOTO	_00434_DS_
_00429_DS_
;	.line	536; "demo.c"	if(Current_flag)
	JBSET	_Flag1,2
	GOTO	_00426_DS_
;	.line	538; "demo.c"	R_ad_channel++;
	INCR	_R_ad_channel
;;unsigned compare: left < lit(0x3=3), size=1
;	.line	539; "demo.c"	if(R_ad_channel<3)
	MOVAI	0x03
	RSUBAR	_R_ad_channel
	JBCLR	PFLAG,0
	GOTO	_00423_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	541; "demo.c"	Current_AD();
	CALL	_Current_AD
;	.line	542; "demo.c"	AD_process();
	CALL	_AD_process
;	.line	543; "demo.c"	Current_process();  
	CALL	_Current_process
;	.line	544; "demo.c"	Current_Data_process();
	CALL	_Current_Data_process
;	.line	545; "demo.c"	Current_Data();
	CALL	_Current_Data
;	.line	546; "demo.c"	if(F_Current_0==0)
	JBCLR	_Flag1,6
	GOTO	_00434_DS_
;	.line	548; "demo.c"	Display_count();           	   	
	CALL	_Display_count
;	.line	549; "demo.c"	Display_led();
	CALL	_Display_led
	GOTO	_00434_DS_
_00423_DS_
;	.line	554; "demo.c"	Voltage_AD();
	CALL	_Voltage_AD
;	.line	555; "demo.c"	R_ad_channel=0;
	CLRR	_R_ad_channel
;	.line	556; "demo.c"	AD_process();
	CALL	_AD_process
;	.line	557; "demo.c"	Voltage_process();  
	CALL	_Voltage_process
;	.line	558; "demo.c"	Voltage_Data_process();
	CALL	_Voltage_Data_process
;	.line	559; "demo.c"	Voltage_Data();
	CALL	_Voltage_Data
;	.line	560; "demo.c"	LED_state();
	CALL	_LED_state
;	.line	561; "demo.c"	if(F_Current_0)
	JBSET	_Flag1,6
	GOTO	_00434_DS_
;	.line	563; "demo.c"	Display_count();           	   	
	CALL	_Display_count
;	.line	564; "demo.c"	Display_led();
	CALL	_Display_led
	GOTO	_00434_DS_
_00426_DS_
;	.line	571; "demo.c"	Charge_AD();
	CALL	_Charge_AD
;	.line	572; "demo.c"	AD_process();  
	CALL	_AD_process
;	.line	573; "demo.c"	Charge_process();
	CALL	_Charge_process
;	.line	574; "demo.c"	Voltage_Data_process();
	CALL	_Voltage_Data_process
;	.line	575; "demo.c"	Charge_Data();
	CALL	_Charge_Data
;	.line	576; "demo.c"	Display_count();           	   	
	CALL	_Display_count
;	.line	577; "demo.c"	Display_led();
	CALL	_Display_led
	GOTO	_00434_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Display_delay	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1026
;   STK00
;   r0x1027
;; Starting pCode block
_Display_delay	;Function start
; 2 exit points
;	.line	496; "demo.c"	void Display_delay(uint delay1)
	MOVRA	r0x1026
	MOVAR	STK00
	MOVRA	r0x1027
;	.line	498; "demo.c"	for(temp=0;temp<delay1;temp++)
	CLRR	_temp
	CLRR	(_temp + 1)
_00403_DS_
	MOVAR	r0x1026
	RSUBAR	(_temp + 1)
	JBSET	PFLAG,2
	GOTO	_00413_DS_
	MOVAR	r0x1027
	RSUBAR	_temp
_00413_DS_
	JBCLR	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
	INCR	_temp
	JBCLR	PFLAG,2
	INCR	(_temp + 1)
	GOTO	_00403_DS_
_00407_DS_
	RETURN	
; exit point of _Display_delay

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LED_state	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_LED_state	;Function start
; 2 exit points
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x95=149), size=2
;	.line	460; "demo.c"	if((ADL>148)||(ADL<109))
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00394_DS_
	MOVAI	0x95
	RSUBAR	_ADL
_00394_DS_
	JBCLR	PFLAG,0
	GOTO	_00380_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x6D=109), size=2
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00395_DS_
	MOVAI	0x6d
	RSUBAR	_ADL
_00395_DS_
	JBCLR	PFLAG,0
	GOTO	_00381_DS_
;;genSkipc:3195: created from rifx:00DE608C
_00380_DS_
;	.line	462; "demo.c"	P_GREEN=ON;
	BSET	_IOP1bits,3
;	.line	463; "demo.c"	P_BULE=OFF;
	BCLR	_IOP0bits,3
;	.line	464; "demo.c"	F_flash=1; 	
	BSET	_Flag1,7
	GOTO	_00384_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x84=132), size=2
_00381_DS_
;	.line	466; "demo.c"	else if(ADL>131)
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00396_DS_
	MOVAI	0x84
	RSUBAR	_ADL
_00396_DS_
	JBSET	PFLAG,0
	GOTO	_00378_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	468; "demo.c"	P_BULE=OFF;
	BCLR	_IOP0bits,3
;	.line	469; "demo.c"	P_RED=OFF;
	BCLR	_IOP0bits,4
;	.line	470; "demo.c"	P_GREEN=OFF;
	BCLR	_IOP1bits,3
;	.line	471; "demo.c"	F_flash=0; 	
	BCLR	_Flag1,7
	GOTO	_00384_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x77=119), size=2
_00378_DS_
;	.line	473; "demo.c"	else if(ADL>118)
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00397_DS_
	MOVAI	0x77
	RSUBAR	_ADL
_00397_DS_
	JBSET	PFLAG,0
	GOTO	_00375_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	475; "demo.c"	P_GREEN=ON;
	BSET	_IOP1bits,3
;	.line	476; "demo.c"	P_RED=OFF;
	BCLR	_IOP0bits,4
;	.line	477; "demo.c"	P_BULE=ON;
	BSET	_IOP0bits,3
;	.line	478; "demo.c"	F_flash=0; 	
	BCLR	_Flag1,7
	GOTO	_00384_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6D=109), size=2
_00375_DS_
;	.line	480; "demo.c"	else if(ADL>108)
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00398_DS_
	MOVAI	0x6d
	RSUBAR	_ADL
_00398_DS_
	JBSET	PFLAG,0
	GOTO	_00384_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	482; "demo.c"	P_BULE=OFF;
	BCLR	_IOP0bits,3
;	.line	483; "demo.c"	P_GREEN=ON;
	BSET	_IOP1bits,3
;	.line	484; "demo.c"	P_RED=ON;
	BSET	_IOP0bits,4
;	.line	485; "demo.c"	F_flash=0; 	
	BCLR	_Flag1,7
_00384_DS_
	RETURN	
; exit point of _LED_state

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Display_led	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Display_led	;Function start
; 2 exit points
;	.line	412; "demo.c"	if(Voltage_L==1){ValueL_1;}            	
	MOVAR	_Voltage_L
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00300_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x06
	MOVRA	(_Flag_l + 0)
_00300_DS_
;	.line	413; "demo.c"	if(Voltage_L==2){ValueL_2;} 
	MOVAR	_Voltage_L
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00302_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x5b
	MOVRA	(_Flag_l + 0)
_00302_DS_
;	.line	414; "demo.c"	if(Voltage_L==3){ValueL_3;}        	
	MOVAR	_Voltage_L
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00304_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x4f
	MOVRA	(_Flag_l + 0)
_00304_DS_
;	.line	415; "demo.c"	if(Voltage_L==4){ValueL_4;}        	
	MOVAR	_Voltage_L
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00306_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x66
	MOVRA	(_Flag_l + 0)
_00306_DS_
;	.line	416; "demo.c"	if(Voltage_L==5){ValueL_5;}        	
	MOVAR	_Voltage_L
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00308_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6d
	MOVRA	(_Flag_l + 0)
_00308_DS_
;	.line	417; "demo.c"	if(Voltage_L==6){ValueL_6;}        	
	MOVAR	_Voltage_L
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00310_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7d
	MOVRA	(_Flag_l + 0)
_00310_DS_
;	.line	418; "demo.c"	if(Voltage_L==7){ValueL_7;}        	
	MOVAR	_Voltage_L
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00312_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x07
	MOVRA	(_Flag_l + 0)
_00312_DS_
;	.line	419; "demo.c"	if(Voltage_L==8){ValueL_8;}        	
	MOVAR	_Voltage_L
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00314_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7f
	MOVRA	(_Flag_l + 0)
_00314_DS_
;	.line	420; "demo.c"	if(Voltage_L==9){ValueL_9;}    	
	MOVAR	_Voltage_L
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00316_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6f
	MOVRA	(_Flag_l + 0)
_00316_DS_
;	.line	421; "demo.c"	if(Voltage_L==0){ValueL_0;}    	
	MOVAI	0x00
	ORAR	_Voltage_L
	JBSET	PFLAG,2
	GOTO	_00318_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x3f
	MOVRA	(_Flag_l + 0)
_00318_DS_
;	.line	422; "demo.c"	if(Voltage_L==10){ValueL_A;} 
	MOVAR	_Voltage_L
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00320_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x77
	MOVRA	(_Flag_l + 0)
_00320_DS_
;	.line	424; "demo.c"	if(Voltage_M==1){ValueM_1;}        	
	MOVAR	_Voltage_M
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00322_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x06
	MOVRA	(_Flag_m + 0)
_00322_DS_
;	.line	425; "demo.c"	if(Voltage_M==2){ValueM_2;} 
	MOVAR	_Voltage_M
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00324_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x5b
	MOVRA	(_Flag_m + 0)
_00324_DS_
;	.line	426; "demo.c"	if(Voltage_M==3){ValueM_3;}        	
	MOVAR	_Voltage_M
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00326_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x4f
	MOVRA	(_Flag_m + 0)
_00326_DS_
;	.line	427; "demo.c"	if(Voltage_M==4){ValueM_4;}        	
	MOVAR	_Voltage_M
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00328_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x66
	MOVRA	(_Flag_m + 0)
_00328_DS_
;	.line	428; "demo.c"	if(Voltage_M==5){ValueM_5;}        	
	MOVAR	_Voltage_M
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00330_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6d
	MOVRA	(_Flag_m + 0)
_00330_DS_
;	.line	429; "demo.c"	if(Voltage_M==6){ValueM_6;}        	
	MOVAR	_Voltage_M
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00332_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7d
	MOVRA	(_Flag_m + 0)
_00332_DS_
;	.line	430; "demo.c"	if(Voltage_M==7){ValueM_7;}        	
	MOVAR	_Voltage_M
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00334_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x07
	MOVRA	(_Flag_m + 0)
_00334_DS_
;	.line	431; "demo.c"	if(Voltage_M==8){ValueM_8;}        	
	MOVAR	_Voltage_M
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00336_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7f
	MOVRA	(_Flag_m + 0)
_00336_DS_
;	.line	432; "demo.c"	if(Voltage_M==9){ValueM_9;}    	
	MOVAR	_Voltage_M
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00338_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6f
	MOVRA	(_Flag_m + 0)
_00338_DS_
;	.line	433; "demo.c"	if(Voltage_M==0){ValueM_0;}    	   	   	
	MOVAI	0x00
	ORAR	_Voltage_M
	JBSET	PFLAG,2
	GOTO	_00340_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x3f
	MOVRA	(_Flag_m + 0)
_00340_DS_
;	.line	435; "demo.c"	if(Voltage_H==1){ValueH_1;}        	
	MOVAR	_Voltage_H
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00342_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x06
	MOVRA	(_Flag_h + 0)
_00342_DS_
;	.line	436; "demo.c"	if(Voltage_H==2){ValueH_2;} 
	MOVAR	_Voltage_H
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00344_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x5b
	MOVRA	(_Flag_h + 0)
_00344_DS_
;	.line	437; "demo.c"	if(Voltage_H==3){ValueH_3;}        	
	MOVAR	_Voltage_H
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00346_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x4f
	MOVRA	(_Flag_h + 0)
_00346_DS_
;	.line	438; "demo.c"	if(Voltage_H==4){ValueH_4;}        	
	MOVAR	_Voltage_H
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00348_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x66
	MOVRA	(_Flag_h + 0)
_00348_DS_
;	.line	439; "demo.c"	if(Voltage_H==5){ValueH_5;}        	
	MOVAR	_Voltage_H
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00350_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6d
	MOVRA	(_Flag_h + 0)
_00350_DS_
;	.line	440; "demo.c"	if(Voltage_H==6){ValueH_6;}        	
	MOVAR	_Voltage_H
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00352_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7d
	MOVRA	(_Flag_h + 0)
_00352_DS_
;	.line	441; "demo.c"	if(Voltage_H==7){ValueH_7;}        	
	MOVAR	_Voltage_H
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00354_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x07
	MOVRA	(_Flag_h + 0)
_00354_DS_
;	.line	442; "demo.c"	if(Voltage_H==8){ValueH_8;}        	
	MOVAR	_Voltage_H
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00356_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x7f
	MOVRA	(_Flag_h + 0)
_00356_DS_
;	.line	443; "demo.c"	if(Voltage_H==9){ValueH_9;}
	MOVAR	_Voltage_H
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00358_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x6f
	MOVRA	(_Flag_h + 0)
_00358_DS_
;	.line	444; "demo.c"	if(Current_flag&&(F_Current_0==0))
	JBSET	_Flag1,2
	GOTO	_00364_DS_
	JBCLR	_Flag1,6
	GOTO	_00364_DS_
;	.line	446; "demo.c"	if(Voltage_H==0){ValueH_00;}
	MOVAI	0x00
	ORAR	_Voltage_H
	JBSET	PFLAG,2
	GOTO	_00367_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x3f
	MOVRA	(_Flag_h + 0)
	GOTO	_00367_DS_
_00364_DS_
;	.line	450; "demo.c"	if(Voltage_H==0){ValueH_0;}
	MOVAI	0x00
	ORAR	_Voltage_H
	JBSET	PFLAG,2
	GOTO	_00367_DS_
;;gen.c:6374: size=0/1, offset=0, AOP_TYPE(res)=8
	CLRR	(_Flag_h + 0)
_00367_DS_
	RETURN	
; exit point of _Display_led

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Display_count	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Display_count	;Function start
; 2 exit points
;	.line	373; "demo.c"	Vol_L=0;
	CLRR	_Vol_L
;	.line	374; "demo.c"	Vol_M=0;
	CLRR	_Vol_M
;	.line	375; "demo.c"	Vol_H=0;
	CLRR	_Vol_H
_00290_DS_
;	.line	376; "demo.c"	for(ADL;ADL>0;ADL--)
	MOVAR	_ADL
	ORAR	(_ADL + 1)
	JBCLR	PFLAG,2
	GOTO	_00293_DS_
;	.line	378; "demo.c"	Vol_L++;
	INCR	_Vol_L
;	.line	379; "demo.c"	if(Vol_L==10)
	MOVAR	_Vol_L
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00292_DS_
;	.line	381; "demo.c"	Vol_L=0;
	CLRR	_Vol_L
;	.line	382; "demo.c"	Vol_M++;
	INCR	_Vol_M
;	.line	383; "demo.c"	if(Vol_M==10)
	MOVAR	_Vol_M
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00292_DS_
;	.line	385; "demo.c"	Vol_M=0;
	CLRR	_Vol_M
;	.line	386; "demo.c"	Vol_H++;   	   	   	   	   	   	
	INCR	_Vol_H
_00292_DS_
;	.line	376; "demo.c"	for(ADL;ADL>0;ADL--)
	MOVAI	0xff
	ADDRA	_ADL
	JBSET	PFLAG,0
	DECR	(_ADL + 1)
	GOTO	_00290_DS_
_00293_DS_
;	.line	391; "demo.c"	if(Current_flag&&(F_Current_0==0))
	JBSET	_Flag1,2
	GOTO	_00287_DS_
	JBCLR	_Flag1,6
	GOTO	_00287_DS_
;	.line	394; "demo.c"	Voltage_L=10;
	MOVAI	0x0a
	MOVRA	_Voltage_L
;	.line	395; "demo.c"	Voltage_M=Vol_L;
	MOVAR	_Vol_L
	MOVRA	_Voltage_M
;	.line	396; "demo.c"	Voltage_H=Vol_M;
	MOVAR	_Vol_M
	MOVRA	_Voltage_H
	GOTO	_00294_DS_
_00287_DS_
;	.line	401; "demo.c"	Voltage_L=Vol_L;
	MOVAR	_Vol_L
	MOVRA	_Voltage_L
;	.line	402; "demo.c"	Voltage_M=Vol_M;
	MOVAR	_Vol_M
	MOVRA	_Voltage_M
;	.line	403; "demo.c"	Voltage_H=Vol_H;
	MOVAR	_Vol_H
	MOVRA	_Voltage_H
_00294_DS_
	RETURN	
; exit point of _Display_count

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Charge_Data	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Charge_Data	;Function start
; 2 exit points
;	.line	365; "demo.c"	}
	RETURN	
; exit point of _Charge_Data

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Current_Data	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Current_Data	;Function start
; 2 exit points
;;unsigned compare: left < lit(0x4=4), size=2
;	.line	341; "demo.c"	if(ADL<4)
	MOVAI	0x00
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00273_DS_
	MOVAI	0x04
	RSUBAR	_ADL
_00273_DS_
	JBCLR	PFLAG,0
	GOTO	_00265_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	343; "demo.c"	ADL=0;
	CLRR	_ADL
	CLRR	(_ADL + 1)
;	.line	344; "demo.c"	R_Current_cnt++;
	INCR	_R_Current_cnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x5=5), size=1
;	.line	345; "demo.c"	if(R_Current_cnt>4)
	MOVAI	0x05
	RSUBAR	_R_Current_cnt
	JBSET	PFLAG,0
	GOTO	_00267_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	347; "demo.c"	R_Current_cnt=0;
	CLRR	_R_Current_cnt
;	.line	348; "demo.c"	F_Current_0=1;
	BSET	_Flag1,6
	GOTO	_00267_DS_
_00265_DS_
;	.line	354; "demo.c"	R_Current_cnt=0;
	CLRR	_R_Current_cnt
;	.line	355; "demo.c"	F_Current_0=0;
	BCLR	_Flag1,6
_00267_DS_
	RETURN	
; exit point of _Current_Data

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Voltage_Data	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Voltage_Data	;Function start
; 2 exit points
;	.line	334; "demo.c"	}
	RETURN	
; exit point of _Voltage_Data

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Voltage_Data_process	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Voltage_Data_process	;Function start
; 2 exit points
;	.line	279; "demo.c"	if(ADL_old2>ADL)
	MOVAR	(_ADL_old2 + 1)
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00250_DS_
	MOVAR	_ADL_old2
	RSUBAR	_ADL
_00250_DS_
	JBCLR	PFLAG,0
	GOTO	_00219_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	281; "demo.c"	R_difference=ADL_old2-ADL;
	MOVAR	_ADL
	RSUBAR	_ADL_old2
	MOVRA	_R_difference
	MOVAR	(_ADL + 1)
	JBSET	PFLAG,0
	INCAR	(_ADL + 1)
	RSUBAR	(_ADL_old2 + 1)
	MOVRA	(_R_difference + 1)
;	.line	282; "demo.c"	F_plus=0;      	   	   	
	BCLR	_Flag1,5
	GOTO	_00220_DS_
_00219_DS_
;	.line	286; "demo.c"	R_difference=ADL-ADL_old2;
	MOVAR	_ADL_old2
	RSUBAR	_ADL
	MOVRA	_R_difference
	MOVAR	(_ADL_old2 + 1)
	JBSET	PFLAG,0
	INCAR	(_ADL_old2 + 1)
	RSUBAR	(_ADL + 1)
	MOVRA	(_R_difference + 1)
;	.line	287; "demo.c"	F_plus=1;   
	BSET	_Flag1,5
_00220_DS_
;	.line	289; "demo.c"	if(R_difference==0)
	MOVAR	_R_difference
	ORAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00234_DS_
;	.line	291; "demo.c"	R_changecnt2=0;    	   	
	CLRR	_R_changecnt2
	GOTO	_00235_DS_
;;unsigned compare: left < lit(0x2=2), size=2
_00234_DS_
;	.line	293; "demo.c"	else if(R_difference<2)
	MOVAI	0x00
	RSUBAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00251_DS_
	MOVAI	0x02
	RSUBAR	_R_difference
_00251_DS_
	JBCLR	PFLAG,0
	GOTO	_00231_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	295; "demo.c"	R_changecnt2++;
	INCR	_R_changecnt2
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6=6), size=1
;	.line	296; "demo.c"	if(R_changecnt2>5)
	MOVAI	0x06
	RSUBAR	_R_changecnt2
	JBSET	PFLAG,0
	GOTO	_00222_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	298; "demo.c"	R_changecnt2=0;
	CLRR	_R_changecnt2
;	.line	299; "demo.c"	ADL_old2=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old2
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old2 + 1)
	GOTO	_00235_DS_
_00222_DS_
;	.line	303; "demo.c"	ADL=ADL_old2;
	MOVAR	_ADL_old2
	MOVRA	_ADL
	MOVAR	(_ADL_old2 + 1)
	MOVRA	(_ADL + 1)
	GOTO	_00235_DS_
;;unsigned compare: left < lit(0x6=6), size=2
_00231_DS_
;	.line	306; "demo.c"	else if(R_difference<6)
	MOVAI	0x00
	RSUBAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00253_DS_
	MOVAI	0x06
	RSUBAR	_R_difference
_00253_DS_
	JBCLR	PFLAG,0
	GOTO	_00228_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	308; "demo.c"	R_changecnt2=0;
	CLRR	_R_changecnt2
;	.line	309; "demo.c"	if(F_plus)
	JBSET	_Flag1,5
	GOTO	_00225_DS_
;	.line	311; "demo.c"	ADL=ADL_old2++;
	MOVAR	_ADL_old2
	MOVRA	_ADL
	MOVAR	(_ADL_old2 + 1)
	MOVRA	(_ADL + 1)
	INCR	_ADL_old2
	JBCLR	PFLAG,2
	INCR	(_ADL_old2 + 1)
	GOTO	_00235_DS_
_00225_DS_
;	.line	315; "demo.c"	ADL=ADL_old2--;
	MOVAR	_ADL_old2
	MOVRA	_ADL
	MOVAR	(_ADL_old2 + 1)
	MOVRA	(_ADL + 1)
	MOVAI	0xff
	ADDRA	_ADL_old2
	JBSET	PFLAG,0
	DECR	(_ADL_old2 + 1)
	GOTO	_00235_DS_
_00228_DS_
;	.line	322; "demo.c"	R_changecnt2=0;
	CLRR	_R_changecnt2
;	.line	323; "demo.c"	ADL_old2=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old2
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old2 + 1)
_00235_DS_
;	.line	325; "demo.c"	ADL_old2=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old2
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old2 + 1)
	RETURN	
; exit point of _Voltage_Data_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Current_Data_process	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Current_Data_process	;Function start
; 2 exit points
;	.line	226; "demo.c"	if(ADL_old>ADL)
	MOVAR	(_ADL_old + 1)
	RSUBAR	(_ADL + 1)
	JBSET	PFLAG,2
	GOTO	_00210_DS_
	MOVAR	_ADL_old
	RSUBAR	_ADL
_00210_DS_
	JBCLR	PFLAG,0
	GOTO	_00179_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	228; "demo.c"	R_difference=ADL_old-ADL;
	MOVAR	_ADL
	RSUBAR	_ADL_old
	MOVRA	_R_difference
	MOVAR	(_ADL + 1)
	JBSET	PFLAG,0
	INCAR	(_ADL + 1)
	RSUBAR	(_ADL_old + 1)
	MOVRA	(_R_difference + 1)
;	.line	229; "demo.c"	F_plus=0;      	   	   	
	BCLR	_Flag1,5
	GOTO	_00180_DS_
_00179_DS_
;	.line	233; "demo.c"	R_difference=ADL-ADL_old;
	MOVAR	_ADL_old
	RSUBAR	_ADL
	MOVRA	_R_difference
	MOVAR	(_ADL_old + 1)
	JBSET	PFLAG,0
	INCAR	(_ADL_old + 1)
	RSUBAR	(_ADL + 1)
	MOVRA	(_R_difference + 1)
;	.line	234; "demo.c"	F_plus=1;   
	BSET	_Flag1,5
_00180_DS_
;	.line	236; "demo.c"	if(R_difference==0)
	MOVAR	_R_difference
	ORAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00194_DS_
;	.line	238; "demo.c"	R_changecnt=0; 	   	
	CLRR	_R_changecnt
	GOTO	_00195_DS_
;;unsigned compare: left < lit(0x2=2), size=2
_00194_DS_
;	.line	240; "demo.c"	else if(R_difference<2)
	MOVAI	0x00
	RSUBAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00211_DS_
	MOVAI	0x02
	RSUBAR	_R_difference
_00211_DS_
	JBCLR	PFLAG,0
	GOTO	_00191_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	242; "demo.c"	R_changecnt++;
	INCR	_R_changecnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6=6), size=1
;	.line	243; "demo.c"	if(R_changecnt>5)
	MOVAI	0x06
	RSUBAR	_R_changecnt
	JBSET	PFLAG,0
	GOTO	_00182_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	245; "demo.c"	R_changecnt=0;
	CLRR	_R_changecnt
;	.line	246; "demo.c"	ADL_old=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old + 1)
	GOTO	_00195_DS_
_00182_DS_
;	.line	250; "demo.c"	ADL=ADL_old;
	MOVAR	_ADL_old
	MOVRA	_ADL
	MOVAR	(_ADL_old + 1)
	MOVRA	(_ADL + 1)
	GOTO	_00195_DS_
;;unsigned compare: left < lit(0x6=6), size=2
_00191_DS_
;	.line	253; "demo.c"	else if(R_difference<6)
	MOVAI	0x00
	RSUBAR	(_R_difference + 1)
	JBSET	PFLAG,2
	GOTO	_00213_DS_
	MOVAI	0x06
	RSUBAR	_R_difference
_00213_DS_
	JBCLR	PFLAG,0
	GOTO	_00188_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	255; "demo.c"	R_changecnt=0;
	CLRR	_R_changecnt
;	.line	256; "demo.c"	if(F_plus)
	JBSET	_Flag1,5
	GOTO	_00185_DS_
;	.line	258; "demo.c"	ADL=ADL_old++;
	MOVAR	_ADL_old
	MOVRA	_ADL
	MOVAR	(_ADL_old + 1)
	MOVRA	(_ADL + 1)
	INCR	_ADL_old
	JBCLR	PFLAG,2
	INCR	(_ADL_old + 1)
	GOTO	_00195_DS_
_00185_DS_
;	.line	262; "demo.c"	ADL=ADL_old--;
	MOVAR	_ADL_old
	MOVRA	_ADL
	MOVAR	(_ADL_old + 1)
	MOVRA	(_ADL + 1)
	MOVAI	0xff
	ADDRA	_ADL_old
	JBSET	PFLAG,0
	DECR	(_ADL_old + 1)
	GOTO	_00195_DS_
_00188_DS_
;	.line	268; "demo.c"	R_changecnt=0;
	CLRR	_R_changecnt
;	.line	269; "demo.c"	ADL_old=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old + 1)
_00195_DS_
;	.line	271; "demo.c"	ADL_old=ADL;
	MOVAR	_ADL
	MOVRA	_ADL_old
	MOVAR	(_ADL + 1)
	MOVRA	(_ADL_old + 1)
	RETURN	
; exit point of _Current_Data_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Current_process	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   __mulint
;3 compiler assigned registers:
;   STK02
;   STK01
;   STK00
;; Starting pCode block
_Current_process	;Function start
; 2 exit points
;	.line	216; "demo.c"	ADL=ADL*5; 	
	MOVAR	_ADL
	MOVRA	STK02
	MOVAR	(_ADL + 1)
	MOVRA	STK01
	MOVAI	0x05
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	(_ADL + 1)
	MOVAR	STK00
	MOVRA	_ADL
;	.line	217; "demo.c"	ADL=ADL>>5;
	SWAPAR	_ADL
	ANDAI	0x0f
	MOVRA	_ADL
	SWAPAR	(_ADL + 1)
	MOVRA	(_ADL + 1)
	ANDAI	0xf0
	ORRA	_ADL
	XORRA	(_ADL + 1)
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_ADL + 1)
	RRR	_ADL
	RETURN	
; exit point of _Current_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Charge_process	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   __mulint
;3 compiler assigned registers:
;   STK02
;   STK01
;   STK00
;; Starting pCode block
_Charge_process	;Function start
; 2 exit points
;	.line	206; "demo.c"	ADL=ADL*5; 	
	MOVAR	_ADL
	MOVRA	STK02
	MOVAR	(_ADL + 1)
	MOVRA	STK01
	MOVAI	0x05
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	(_ADL + 1)
	MOVAR	STK00
	MOVRA	_ADL
;	.line	207; "demo.c"	ADL=ADL>>6;
	SWAPAR	_ADL
	ANDAI	0x0f
	MOVRA	_ADL
	SWAPAR	(_ADL + 1)
	MOVRA	(_ADL + 1)
	ANDAI	0xf0
	ORRA	_ADL
	XORRA	(_ADL + 1)
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_ADL + 1)
	RRR	_ADL
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_ADL + 1)
	RRR	_ADL
	RETURN	
; exit point of _Charge_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Voltage_process	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divuint
;   __divuint
;3 compiler assigned registers:
;   STK02
;   STK01
;   STK00
;; Starting pCode block
_Voltage_process	;Function start
; 2 exit points
;	.line	197; "demo.c"	ADL=ADL/5;
	MOVAI	0x05
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	_ADL
	MOVRA	STK00
	MOVAR	(_ADL + 1)
	CALL	__divuint
	MOVRA	(_ADL + 1)
	MOVAR	STK00
	MOVRA	_ADL
	RETURN	
; exit point of _Voltage_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _AD_process	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_AD_process	;Function start
; 2 exit points
;	.line	151; "demo.c"	ADL_common=0;
	CLRR	_ADL_common
	CLRR	(_ADL_common + 1)
;	.line	152; "demo.c"	ad_cnt=0;
	CLRR	_ad_cnt
;;unsigned compare: left < lit(0x2=2), size=1
_00150_DS_
;	.line	153; "demo.c"	for(ad_cnt;ad_cnt<2;ad_cnt++)//更换通道前两次丢掉
	MOVAI	0x02
	RSUBAR	_ad_cnt
	JBCLR	PFLAG,0
	GOTO	_00153_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	155; "demo.c"	if(ADEOC)
	JBSET	_ADCR0bits,1
	GOTO	_00152_DS_
;	.line	157; "demo.c"	ADEOC=0;
	BCLR	_ADCR0bits,1
;	.line	158; "demo.c"	ADIF=0;
	BCLR	_INTFbits,6
_00152_DS_
;	.line	153; "demo.c"	for(ad_cnt;ad_cnt<2;ad_cnt++)//更换通道前两次丢掉
	INCR	_ad_cnt
	GOTO	_00150_DS_
_00153_DS_
;	.line	161; "demo.c"	ad_cnt=0;
	CLRR	_ad_cnt
;;unsigned compare: left < lit(0x8=8), size=1
_00158_DS_
;	.line	162; "demo.c"	for(ad_cnt;ad_cnt<8;ad_cnt++)//8*16次，保存10位
	MOVAI	0x08
	RSUBAR	_ad_cnt
	JBCLR	PFLAG,0
	GOTO	_00161_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	164; "demo.c"	ADH_temp=0;
	CLRR	_ADH_temp
	CLRR	(_ADH_temp + 1)
;	.line	165; "demo.c"	ADL_temp=0;
	CLRR	_ADL_temp
	CLRR	(_ADL_temp + 1)
;	.line	166; "demo.c"	AD_final=0;
	CLRR	_AD_final
	CLRR	(_AD_final + 1)
;	.line	167; "demo.c"	AD_temp=0;
	CLRR	_AD_temp
	CLRR	(_AD_temp + 1)
;	.line	168; "demo.c"	i=0;
	CLRR	_i
;;unsigned compare: left < lit(0x10=16), size=1
_00154_DS_
;	.line	169; "demo.c"	for(i;i<16;i)
	MOVAI	0x10
	RSUBAR	_i
	JBCLR	PFLAG,0
	GOTO	_00157_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	171; "demo.c"	if(ADEOC)
	JBSET	_ADCR0bits,1
	GOTO	_00154_DS_
;	.line	173; "demo.c"	ADEOC=0;
	BCLR	_ADCR0bits,1
;	.line	174; "demo.c"	ADIF=0;        	   	   	
	BCLR	_INTFbits,6
;	.line	175; "demo.c"	ADH_temp=ADRH;
	MOVAR	_ADRH
	MOVRA	_ADH_temp
	CLRR	(_ADH_temp + 1)
;	.line	176; "demo.c"	ADL_temp=ADRL;
	MOVAR	_ADRL
	MOVRA	_ADL_temp
	CLRR	(_ADL_temp + 1)
;	.line	177; "demo.c"	ADH_temp=ADH_temp<<4;
	SWAPAR	(_ADH_temp + 1)
	ANDAI	0xf0
	MOVRA	(_ADH_temp + 1)
	SWAPAR	_ADH_temp
	MOVRA	_ADH_temp
	ANDAI	0x0f
	ORRA	(_ADH_temp + 1)
	XORRA	_ADH_temp
;	.line	178; "demo.c"	AD_temp=ADH_temp+ADL_temp;
	MOVAR	_ADL_temp
	ADDAR	_ADH_temp
	MOVRA	_AD_temp
	MOVAR	(_ADH_temp + 1)
	MOVRA	(_AD_temp + 1)
	MOVAR	(_ADL_temp + 1)
	JBCLR	PFLAG,0
	JZAR	(_ADL_temp + 1)
	ADDRA	(_AD_temp + 1)
;	.line	179; "demo.c"	AD_final=AD_temp+AD_final;
	MOVAR	_AD_final
	ADDAR	_AD_temp
	MOVRA	_AD_final
	MOVAR	(_AD_temp + 1)
	JBCLR	PFLAG,0
	JZAR	(_AD_temp + 1)
	ADDRA	(_AD_final + 1)
;	.line	180; "demo.c"	i++;
	INCR	_i
;	.line	169; "demo.c"	for(i;i<16;i)
	GOTO	_00154_DS_
_00157_DS_
;	.line	183; "demo.c"	AD_final=AD_final>>6;
	SWAPAR	_AD_final
	ANDAI	0x0f
	MOVRA	_AD_final
	SWAPAR	(_AD_final + 1)
	MOVRA	(_AD_final + 1)
	ANDAI	0xf0
	ORRA	_AD_final
	XORRA	(_AD_final + 1)
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_AD_final + 1)
	RRR	_AD_final
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_AD_final + 1)
	RRR	_AD_final
;	.line	184; "demo.c"	AD_final=AD_final&0x3ff;   	
	MOVAI	0x03
	ANDRA	(_AD_final + 1)
;	.line	185; "demo.c"	ADL_common=AD_final+ADL_common;
	MOVAR	_ADL_common
	ADDAR	_AD_final
	MOVRA	_ADL_common
	MOVAR	(_AD_final + 1)
	JBCLR	PFLAG,0
	JZAR	(_AD_final + 1)
	ADDRA	(_ADL_common + 1)
;	.line	162; "demo.c"	for(ad_cnt;ad_cnt<8;ad_cnt++)//8*16次，保存10位
	INCR	_ad_cnt
	GOTO	_00158_DS_
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=0, offr=0
_00161_DS_
;	.line	187; "demo.c"	ADL=ADL_common>>3;
	BCLR	PFLAG,0
	RRAR	(_ADL_common + 1)
	MOVRA	(_ADL + 1)
	RRAR	_ADL_common
	MOVRA	_ADL
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_ADL + 1)
	RRR	_ADL
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_ADL + 1)
	RRR	_ADL
	RETURN	
; exit point of _AD_process

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Current_AD	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Current_AD	;Function start
; 2 exit points
;	.line	140; "demo.c"	ANSEL0=0x01;
	MOVAI	0x01
	MOVRA	_ANSEL0
;	.line	141; "demo.c"	ADCR0=0x09;
	MOVAI	0x09
	MOVRA	_ADCR0
;	.line	142; "demo.c"	ADCR1=0xe2; 
	MOVAI	0xe2
	MOVRA	_ADCR1
;	.line	143; "demo.c"	ADCR2=0x0f;    	   	   	   	       	    
	MOVAI	0x0f
	MOVRA	_ADCR2
	RETURN	
; exit point of _Current_AD

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Voltage_AD	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Voltage_AD	;Function start
; 2 exit points
;	.line	133; "demo.c"	ANSEL0=0x00;
	CLRR	_ANSEL0
;	.line	134; "demo.c"	ADCR0=0xb9;
	MOVAI	0xb9
	MOVRA	_ADCR0
;	.line	135; "demo.c"	ADCR1=0xe2; 
	MOVAI	0xe2
	MOVRA	_ADCR1
;	.line	136; "demo.c"	ADCR2=0x0f;    	   	   	   	       	    
	MOVAI	0x0f
	MOVRA	_ADCR2
	RETURN	
; exit point of _Voltage_AD

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Charge_AD	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Charge_AD	;Function start
; 2 exit points
;	.line	126; "demo.c"	ANSEL0=0x02;
	MOVAI	0x02
	MOVRA	_ANSEL0
;	.line	127; "demo.c"	ADCR0=0x19;
	MOVAI	0x19
	MOVRA	_ADCR0
;	.line	128; "demo.c"	ADCR1=0xe2; 
	MOVAI	0xe2
	MOVRA	_ADCR1
;	.line	129; "demo.c"	ADCR2=0x0f;    	   	   	   	       	    
	MOVAI	0x0f
	MOVRA	_ADCR2
	RETURN	
; exit point of _Charge_AD

;***
;  pBlock Stats: dbName = C
;***
;entry:  _DC_DET	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_DC_DET	;Function start
; 2 exit points
;	.line	87; "demo.c"	if(Device_flag==0)
	JBCLR	_Flag1,3
	GOTO	_00127_DS_
;	.line	89; "demo.c"	if(P_DC==0)
	JBCLR	_IOP0bits,2
	GOTO	_00118_DS_
;	.line	91; "demo.c"	Voltage_flag=1;
	BSET	_Flag1,1
;	.line	92; "demo.c"	Device_flag=0;
	BCLR	_Flag1,3
;	.line	93; "demo.c"	Current_flag=0;
	BCLR	_Flag1,2
;	.line	94; "demo.c"	R_Charge_cnt=0;
	CLRR	_R_Charge_cnt
	GOTO	_00129_DS_
_00118_DS_
;	.line	98; "demo.c"	Device_flag=1;
	BSET	_Flag1,3
	GOTO	_00129_DS_
_00127_DS_
;	.line	103; "demo.c"	Voltage_flag=0;
	BCLR	_Flag1,1
;	.line	104; "demo.c"	R_Charge_cnt++;
	INCR	_R_Charge_cnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x7=7), size=1
;	.line	105; "demo.c"	if(R_Charge_cnt>6)
	MOVAI	0x07
	RSUBAR	_R_Charge_cnt
	JBSET	PFLAG,0
	GOTO	_00121_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	107; "demo.c"	R_Charge_cnt=0;
	CLRR	_R_Charge_cnt
;	.line	108; "demo.c"	Current_flag=1;
	BSET	_Flag1,2
_00121_DS_
;	.line	110; "demo.c"	if(Current_flag)
	JBSET	_Flag1,2
	GOTO	_00129_DS_
;	.line	112; "demo.c"	if(P_DC==0)
	JBCLR	_IOP0bits,2
	GOTO	_00129_DS_
;	.line	114; "demo.c"	Device_flag=0;
	BCLR	_Flag1,3
;	.line	115; "demo.c"	R_Charge_cnt=0;
	CLRR	_R_Charge_cnt
_00129_DS_
	RETURN	
; exit point of _DC_DET

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Clr_Ram	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Clr_Ram	;Function start
; 2 exit points
;	.line	79; "demo.c"	__endasm;
ClrRam:
	movai 0x00
	;movra FSR
ClrRam_Loop:
	;clrr INDF
	;incr FSR
	movai 0xff
	;rsubar FSR
	movra _FSR_TEMP
	incr _FSR_TEMP
	djzr _FSR_TEMP
	goto ClrRam_Loop
	
	RETURN	
; exit point of _Clr_Ram

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Init_timer	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Init_timer	;Function start
; 2 exit points
;	.line	47; "demo.c"	T0LOAD  = 0x50;        	//1s检测刷新一次数
	MOVAI	0x50
	MOVRA	_T0LOAD
;	.line	48; "demo.c"	T0CNT   = 0x50;
	MOVAI	0x50
	MOVRA	_T0CNT
;	.line	49; "demo.c"	T0CR    = 0x97;    	//16us一个指令
	MOVAI	0x97
	MOVRA	_T0CR
;	.line	50; "demo.c"	T0IE    = 1;
	BSET	_INTEbits,0
;	.line	51; "demo.c"	T1LOAD  = 0x10;        	//1ms刷新一段
	MOVAI	0x10
	MOVRA	_T1LOAD
;	.line	52; "demo.c"	T1CNT   = 0x10;
	MOVAI	0x10
	MOVRA	_T1CNT
;	.line	53; "demo.c"	T1CR    = 0x84;    	
	MOVAI	0x84
	MOVRA	_T1CR
;	.line	54; "demo.c"	T1IE    = 1;        
	BSET	_INTEbits,1
;	.line	55; "demo.c"	GIE     = 1;   	   	//1开总中断    	   	       	    
	BSET	_MCRbits,7
	RETURN	
; exit point of _Init_timer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Init_Sys	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Init_Sys	;Function start
; 2 exit points
;	.line	26; "demo.c"	OEP0=0xf8;
	MOVAI	0xf8
	MOVRA	_OEP0
;	.line	27; "demo.c"	OEP1=0xfd;
	MOVAI	0xfd
	MOVRA	_OEP1
;	.line	28; "demo.c"	IOP0=0x00;
	CLRR	_IOP0
;	.line	29; "demo.c"	IOP1=0x00;
	CLRR	_IOP1
;	.line	30; "demo.c"	PUP1=0x02;
	MOVAI	0x02
	MOVRA	_PUP1
;	.line	31; "demo.c"	PDP1=0x00;
	CLRR	_PDP1
;	.line	32; "demo.c"	PDP0=0x00;  
	CLRR	_PDP0
;	.line	33; "demo.c"	DRVCR=0x80;    	
	MOVAI	0x80
	MOVRA	_DRVCR
;	.line	35; "demo.c"	Voltage_L=8;
	MOVAI	0x08
	MOVRA	_Voltage_L
;	.line	36; "demo.c"	Voltage_M=8;
	MOVAI	0x08
	MOVRA	_Voltage_M
;	.line	37; "demo.c"	Voltage_H=8;    
	MOVAI	0x08
	MOVRA	_Voltage_H
	RETURN	
; exit point of _Init_Sys


;	code size estimation:
;	 1151+    0 =  1151 instructions ( 2302 byte)

	end
