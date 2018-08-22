;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.2 (May  8 2018) (MINGW32)
; This file was generated Tue May 29 12:06:57 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"main.c"
	list	p=7511
	radix dec
	include "7511.inc"
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
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_PDP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_PDP1bits
	extern	_PWM0DEbits
	extern	_PWM1DEbits
	extern	_T0CRbits
	extern	_T0CNTbits
	extern	_T0LOADbits
	extern	_T0DATAbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DATAbits
	extern	_AUCRbits
	extern	_KBCRbits
	extern	_OSCMbits
	extern	_LVDCRbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_AN0SELbits
	extern	_AN1SELbits
	extern	_ADRHbits
	extern	_ADRLbits
	extern	_ADCR2bits
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
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_PDP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_PDP1
	extern	_PWM0DE
	extern	_PWM1DE
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_AUCR
	extern	_KBCR
	extern	_OSCM
	extern	_LVDCR
	extern	_ADCR0
	extern	_ADCR1
	extern	_AN0SEL
	extern	_AN1SEL
	extern	_ADRH
	extern	_ADRL
	extern	_ADCR2
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_delay_us
	global	_TwobyteDIVone
	global	_adc_loop_bat
	global	_adc_loop_speed
	global	_setb_io
	global	_clrb_io
	global	_set_normal_seg
	global	_disp_num_1
	global	_disp_num_2
	global	_disp_num_5
	global	_disp_num_4
	global	_disp_num_3
	global	_disp_speed_trip_bat
	global	_bat_how_many
	global	_LCD_DispALL
	global	_learn_while_type
	global	_choice_bat
	global	_mux_ioport
	global	_mux_ab
	global	_Drive_lcd
	global	_SysInit
	global	_AverageADCData
	global	_speed_handle
	global	_odo_handle
	global	_sys_bat
	global	_main
	global	_int_isr
	global	_ABuf
	global	_PFLAGBuf
	global	_VR_count
	global	_scan_cnt
	global	_Lcd_seg
	global	_LCD_COPY
	global	_seg_bit
	global	_Stalls_Bat
	global	_time1_cnt
	global	_time1_cnt1
	global	_BAT_AD
	global	_speed_AD
	global	_BAT_AD_copy
	global	_voltage
	global	_sub_km
	global	_Milage_temp
	global	_voltage_copy
	global	_SpdInt
	global	_SpeedTest
	global	_ShowSpeed
	global	_choice_vol
	global	_voltage_TY_flag
	global	_VR_flag1
	global	_VR_flag2
	global	_VL_flag1
	global	_VL_flag2
	global	_VD_flag1
	global	_VD_flag2
	global	_R2
	global	_R5
	global	_R6
	global	_R7
	global	_R3R4
	global	_R1R0
	global	_DivResult
	global	_PAC
	global	_FLAG1
	global	_LED7Code10
	global	_LED7Code11
	global	_LED7Code20
	global	_LED7Code21
	global	_LED7Code30
	global	_LED7Code31
	global	_LED7Code40
	global	_LED7Code41
	global	_LED7Code50
	global	_LED7Code51

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
UD_main_0	udata
_ABuf	res	1

UD_main_1	udata
_PFLAGBuf	res	1

UD_main_2	udata
_VR_count	res	1

UD_main_3	udata
_scan_cnt	res	1

UD_main_4	udata
_Lcd_seg	res	9

UD_main_5	udata
_LCD_COPY	res	1

UD_main_6	udata
_seg_bit	res	5

UD_main_7	udata
_Stalls_Bat	res	8

UD_main_8	udata
_time1_cnt	res	1

UD_main_9	udata
_time1_cnt1	res	1

UD_main_10	udata
_BAT_AD	res	2

UD_main_11	udata
_speed_AD	res	2

UD_main_12	udata
_BAT_AD_copy	res	2

UD_main_13	udata
_voltage	res	2

UD_main_14	udata
_sub_km	res	2

UD_main_15	udata
_Milage_temp	res	2

UD_main_16	udata
_voltage_copy	res	2

UD_main_17	udata
_SpdInt	res	2

UD_main_18	udata
_SpeedTest	res	2

UD_main_19	udata
_ShowSpeed	res	2

UD_main_20	udata
_choice_vol	res	1

UD_main_21	udata
_voltage_TY_flag	res	1

UD_main_22	udata
_VR_flag1	res	1

UD_main_23	udata
_VR_flag2	res	1

UD_main_24	udata
_VL_flag1	res	1

UD_main_25	udata
_VL_flag2	res	1

UD_main_26	udata
_VD_flag1	res	1

UD_main_27	udata
_VD_flag2	res	1

UD_main_28	udata
_R2	res	1

UD_main_29	udata
_R5	res	1

UD_main_30	udata
_R6	res	1

UD_main_31	udata
_R7	res	1

UD_main_32	udata
_R3R4	res	2

UD_main_33	udata
_R1R0	res	2

UD_main_34	udata
_DivResult	res	2

UD_main_35	udata
_PAC	res	1

UD_main_36	udata
_FLAG1	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_main_0	udata
r0x1041	res	1
r0x1040	res	1
r0x1043	res	1
r0x1042	res	1
r0x1046	res	1
r0x1047	res	1
r0x1044	res	1
r0x1045	res	1
r0x1048	res	1
r0x1049	res	1
r0x104A	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x104E	res	1
r0x104F	res	1
r0x1050	res	1
_speed_handle_Speed_1_136	res	2
_main_disp_all_cnt_1_156	res	1
_main_disp_all_flag_1_156	res	1
_main_disp_flag_1_156	res	1
_main_bat_km_qh_cnt_1_156	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_main_0	code	0x079C
_LED7Code10
	dw 0x1b
	dw 0x00
	dw 0x17
	dw 0x15
	dw 0x0c
	dw 0x1d
	dw 0x1f
	dw 0x10
	dw 0x1f
	dw 0x1d


ID_main_1	code	0x07A6
_LED7Code11
	dw 0x0a
	dw 0x0a
	dw 0x08
	dw 0x0a
	dw 0x0a
	dw 0x02
	dw 0x02
	dw 0x0a
	dw 0x0a
	dw 0x0a


ID_main_2	code	0x07B0
_LED7Code20
	dw 0x05
	dw 0x00
	dw 0x01
	dw 0x00
	dw 0x04
	dw 0x04
	dw 0x05
	dw 0x00
	dw 0x05
	dw 0x04


ID_main_3	code	0x07BA
_LED7Code21
	dw 0x1b
	dw 0x0a
	dw 0x1d
	dw 0x1f
	dw 0x0e
	dw 0x17
	dw 0x17
	dw 0x1a
	dw 0x1f
	dw 0x1f


ID_main_4	code	0x07C4
_LED7Code30
	dw 0x1b
	dw 0x0a
	dw 0x17
	dw 0x1f
	dw 0x0e
	dw 0x1d
	dw 0x1d
	dw 0x0b
	dw 0x1f
	dw 0x1f


ID_main_5	code	0x07CE
_LED7Code31
	dw 0x05
	dw 0x00
	dw 0x04
	dw 0x00
	dw 0x01
	dw 0x01
	dw 0x05
	dw 0x00
	dw 0x05
	dw 0x01


ID_main_6	code	0x07D8
_LED7Code40
	dw 0x12
	dw 0x12
	dw 0x02
	dw 0x12
	dw 0x12
	dw 0x10
	dw 0x10
	dw 0x12
	dw 0x12
	dw 0x12


ID_main_7	code	0x07E2
_LED7Code41
	dw 0x1b
	dw 0x00
	dw 0x1d
	dw 0x15
	dw 0x06
	dw 0x17
	dw 0x1f
	dw 0x01
	dw 0x1f
	dw 0x17


ID_main_8	code	0x07EC
_LED7Code50
	dw 0x1b
	dw 0x0a
	dw 0x17
	dw 0x1f
	dw 0x0e
	dw 0x1d
	dw 0x1d
	dw 0x0b
	dw 0x1f
	dw 0x1f


ID_main_9	code	0x07F6
_LED7Code51
	dw 0x14
	dw 0x00
	dw 0x10
	dw 0x00
	dw 0x04
	dw 0x04
	dw 0x14
	dw 0x00
	dw 0x14
	dw 0x04


;@Allocation info for local variables in function 'delay_us'
;@delay_us delay_us                  Allocated to registers ;size:2
;@delay_us INDF0bits                 Allocated to registers ;size:1
;@delay_us INDF1bits                 Allocated to registers ;size:1
;@delay_us INDF2bits                 Allocated to registers ;size:1
;@delay_us HIBYTEbits                Allocated to registers ;size:1
;@delay_us FSR0bits                  Allocated to registers ;size:1
;@delay_us FSR1bits                  Allocated to registers ;size:1
;@delay_us PCLbits                   Allocated to registers ;size:1
;@delay_us PFLAGbits                 Allocated to registers ;size:1
;@delay_us MCRbits                   Allocated to registers ;size:1
;@delay_us INDF3bits                 Allocated to registers ;size:1
;@delay_us INTEbits                  Allocated to registers ;size:1
;@delay_us INTFbits                  Allocated to registers ;size:1
;@delay_us IOP0bits                  Allocated to registers ;size:1
;@delay_us OEP0bits                  Allocated to registers ;size:1
;@delay_us PUP0bits                  Allocated to registers ;size:1
;@delay_us PDP0bits                  Allocated to registers ;size:1
;@delay_us IOP1bits                  Allocated to registers ;size:1
;@delay_us OEP1bits                  Allocated to registers ;size:1
;@delay_us PUP1bits                  Allocated to registers ;size:1
;@delay_us PDP1bits                  Allocated to registers ;size:1
;@delay_us PWM0DEbits                Allocated to registers ;size:1
;@delay_us PWM1DEbits                Allocated to registers ;size:1
;@delay_us T0CRbits                  Allocated to registers ;size:1
;@delay_us T0CNTbits                 Allocated to registers ;size:1
;@delay_us T0LOADbits                Allocated to registers ;size:1
;@delay_us T0DATAbits                Allocated to registers ;size:1
;@delay_us T1CRbits                  Allocated to registers ;size:1
;@delay_us T1CNTbits                 Allocated to registers ;size:1
;@delay_us T1LOADbits                Allocated to registers ;size:1
;@delay_us T1DATAbits                Allocated to registers ;size:1
;@delay_us AUCRbits                  Allocated to registers ;size:1
;@delay_us KBCRbits                  Allocated to registers ;size:1
;@delay_us OSCMbits                  Allocated to registers ;size:1
;@delay_us LVDCRbits                 Allocated to registers ;size:1
;@delay_us ADCR0bits                 Allocated to registers ;size:1
;@delay_us ADCR1bits                 Allocated to registers ;size:1
;@delay_us AN0SELbits                Allocated to registers ;size:1
;@delay_us AN1SELbits                Allocated to registers ;size:1
;@delay_us ADRHbits                  Allocated to registers ;size:1
;@delay_us ADRLbits                  Allocated to registers ;size:1
;@delay_us ADCR2bits                 Allocated to registers ;size:1
;@delay_us ABuf                      Allocated to registers ;size:1
;@delay_us PFLAGBuf                  Allocated to registers ;size:1
;@delay_us VR_count                  Allocated to registers ;size:1
;@delay_us scan_cnt                  Allocated to registers ;size:1
;@delay_us Lcd_seg                   Allocated to registers ;size:9
;@delay_us LCD_COPY                  Allocated to registers ;size:1
;@delay_us seg_bit                   Allocated to registers ;size:5
;@delay_us Stalls_Bat                Allocated to registers ;size:8
;@delay_us time1_cnt                 Allocated to registers ;size:1
;@delay_us time1_cnt1                Allocated to registers ;size:1
;@delay_us BAT_AD                    Allocated to registers ;size:2
;@delay_us speed_AD                  Allocated to registers ;size:2
;@delay_us BAT_AD_copy               Allocated to registers ;size:2
;@delay_us voltage                   Allocated to registers ;size:2
;@delay_us sub_km                    Allocated to registers ;size:2
;@delay_us Milage_temp               Allocated to registers ;size:2
;@delay_us voltage_copy              Allocated to registers ;size:2
;@delay_us SpdInt                    Allocated to registers ;size:2
;@delay_us SpeedTest                 Allocated to registers ;size:2
;@delay_us ShowSpeed                 Allocated to registers ;size:2
;@delay_us choice_vol                Allocated to registers ;size:1
;@delay_us voltage_TY_flag           Allocated to registers ;size:1
;@delay_us VR_flag1                  Allocated to registers ;size:1
;@delay_us VR_flag2                  Allocated to registers ;size:1
;@delay_us VL_flag1                  Allocated to registers ;size:1
;@delay_us VL_flag2                  Allocated to registers ;size:1
;@delay_us VD_flag1                  Allocated to registers ;size:1
;@delay_us VD_flag2                  Allocated to registers ;size:1
;@delay_us R2                        Allocated to registers ;size:1
;@delay_us R5                        Allocated to registers ;size:1
;@delay_us R6                        Allocated to registers ;size:1
;@delay_us R7                        Allocated to registers ;size:1
;@delay_us R3R4                      Allocated to registers ;size:2
;@delay_us R1R0                      Allocated to registers ;size:2
;@delay_us DivResult                 Allocated to registers ;size:2
;@delay_us PAC                       Allocated to registers ;size:1
;@delay_us FLAG1                     Allocated to registers ;size:1
;@delay_us time_delay                Allocated to registers ;size:2
;@delay_us INDF0                     Allocated to registers ;size:1
;@delay_us INDF1                     Allocated to registers ;size:1
;@delay_us INDF2                     Allocated to registers ;size:1
;@delay_us HIBYTE                    Allocated to registers ;size:1
;@delay_us FSR0                      Allocated to registers ;size:1
;@delay_us FSR1                      Allocated to registers ;size:1
;@delay_us PCL                       Allocated to registers ;size:1
;@delay_us PFLAG                     Allocated to registers ;size:1
;@delay_us MCR                       Allocated to registers ;size:1
;@delay_us INDF3                     Allocated to registers ;size:1
;@delay_us INTE                      Allocated to registers ;size:1
;@delay_us INTF                      Allocated to registers ;size:1
;@delay_us IOP0                      Allocated to registers ;size:1
;@delay_us OEP0                      Allocated to registers ;size:1
;@delay_us PUP0                      Allocated to registers ;size:1
;@delay_us PDP0                      Allocated to registers ;size:1
;@delay_us IOP1                      Allocated to registers ;size:1
;@delay_us OEP1                      Allocated to registers ;size:1
;@delay_us PUP1                      Allocated to registers ;size:1
;@delay_us PDP1                      Allocated to registers ;size:1
;@delay_us PWM0DE                    Allocated to registers ;size:1
;@delay_us PWM1DE                    Allocated to registers ;size:1
;@delay_us T0CR                      Allocated to registers ;size:1
;@delay_us T0CNT                     Allocated to registers ;size:1
;@delay_us T0LOAD                    Allocated to registers ;size:1
;@delay_us T0DATA                    Allocated to registers ;size:1
;@delay_us T1CR                      Allocated to registers ;size:1
;@delay_us T1CNT                     Allocated to registers ;size:1
;@delay_us T1LOAD                    Allocated to registers ;size:1
;@delay_us T1DATA                    Allocated to registers ;size:1
;@delay_us AUCR                      Allocated to registers ;size:1
;@delay_us KBCR                      Allocated to registers ;size:1
;@delay_us OSCM                      Allocated to registers ;size:1
;@delay_us LVDCR                     Allocated to registers ;size:1
;@delay_us ADCR0                     Allocated to registers ;size:1
;@delay_us ADCR1                     Allocated to registers ;size:1
;@delay_us AN0SEL                    Allocated to registers ;size:1
;@delay_us AN1SEL                    Allocated to registers ;size:1
;@delay_us ADRH                      Allocated to registers ;size:1
;@delay_us ADRL                      Allocated to registers ;size:1
;@delay_us ADCR2                     Allocated to registers ;size:1
;@end Allocation info for local variables in function 'delay_us';
;@Allocation info for local variables in function 'TwobyteDIVone'
;@end Allocation info for local variables in function 'TwobyteDIVone';
;@Allocation info for local variables in function 'adc_loop_bat'
;@end Allocation info for local variables in function 'adc_loop_bat';
;@Allocation info for local variables in function 'adc_loop_speed'
;@end Allocation info for local variables in function 'adc_loop_speed';
;@Allocation info for local variables in function 'setb_io'
;@setb_io seg_nums                  Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'setb_io';
;@Allocation info for local variables in function 'clrb_io'
;@clrb_io seg_nums                  Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'clrb_io';
;@Allocation info for local variables in function 'set_normal_seg'
;@set_normal_seg which_com                 Allocated to registers r0x1042 ;size:1
;@set_normal_seg sta                       Allocated to registers r0x1041 ;size:1
;@set_normal_seg i                         Allocated to registers r0x1042 ;size:1
;@set_normal_seg t                         Allocated to registers r0x1043 ;size:1
;@set_normal_seg mem_mask                  Allocated to registers r0x1044 ;size:1
;@end Allocation info for local variables in function 'set_normal_seg';
;@Allocation info for local variables in function 'disp_num_1'
;@disp_num_1 num                       Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'disp_num_1';
;@Allocation info for local variables in function 'disp_num_2'
;@disp_num_2 num                       Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'disp_num_2';
;@Allocation info for local variables in function 'disp_num_5'
;@disp_num_5 num                       Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'disp_num_5';
;@Allocation info for local variables in function 'disp_num_4'
;@disp_num_4 num                       Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'disp_num_4';
;@Allocation info for local variables in function 'disp_num_3'
;@disp_num_3 num                       Allocated to registers r0x1040 ;size:1
;@end Allocation info for local variables in function 'disp_num_3';
;@Allocation info for local variables in function 'disp_speed_trip_bat'
;@disp_speed_trip_bat bl                        Allocated to registers r0x1045 ;size:1
;@disp_speed_trip_bat num                       Allocated to registers r0x1045 r0x1046 ;size:2
;@end Allocation info for local variables in function 'disp_speed_trip_bat';
;@Allocation info for local variables in function 'bat_how_many'
;@bat_how_many Vol                       Allocated to registers r0x1041 r0x1040 ;size:2
;@end Allocation info for local variables in function 'bat_how_many';
;@Allocation info for local variables in function 'LCD_DispALL'
;@LCD_DispALL uc_data                   Allocated to registers r0x1040 ;size:1
;@LCD_DispALL uc_i                      Allocated to registers r0x1041 ;size:1
;@end Allocation info for local variables in function 'LCD_DispALL';
;@Allocation info for local variables in function 'learn_while_type'
;@end Allocation info for local variables in function 'learn_while_type';
;@Allocation info for local variables in function 'choice_bat'
;@end Allocation info for local variables in function 'choice_bat';
;@Allocation info for local variables in function 'mux_ioport'
;@end Allocation info for local variables in function 'mux_ioport';
;@Allocation info for local variables in function 'mux_ab'
;@end Allocation info for local variables in function 'mux_ab';
;@Allocation info for local variables in function 'Drive_lcd'
;@end Allocation info for local variables in function 'Drive_lcd';
;@Allocation info for local variables in function 'SysInit'
;@end Allocation info for local variables in function 'SysInit';
;@Allocation info for local variables in function 'AverageADCData'
;@AverageADCData adcopy                    Allocated to registers r0x1041 r0x1040 ;size:2
;@AverageADCData R7                        Allocated to registers r0x1044 ;size:1
;@AverageADCData ADC_TotalData             Allocated to registers r0x1042 r0x1043 ;size:2
;@end Allocation info for local variables in function 'AverageADCData';
;@Allocation info for local variables in function 'speed_handle'
;@speed_handle temp_s                    Allocated to registers r0x1047 r0x1048 ;size:2
;@speed_handle Speed                     Allocated to registers ;size:2
;@speed_handle data1                     Allocated to registers r0x1046 ;size:1
;@end Allocation info for local variables in function 'speed_handle';
;@Allocation info for local variables in function 'odo_handle'
;@end Allocation info for local variables in function 'odo_handle';
;@Allocation info for local variables in function 'sys_bat'
;@end Allocation info for local variables in function 'sys_bat';
;@Allocation info for local variables in function 'main'
;@main disp_flag                 Allocated to registers ;size:1
;@main bat_km_qh_cnt             Allocated to registers ;size:1
;@main disp_all_cnt              Allocated to registers ;size:1
;@main disp_all_flag             Allocated to registers ;size:1
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
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	889; "main.c"	__endasm;    
	movra _ABuf
	swapr _ABuf
	swapar PFLAG
	movra _PFLAGBuf
	
;	.line	890; "main.c"	if(T1IF)
	JBSET	_INTFbits,1
	GOTO	_00525_DS_
;	.line	892; "main.c"	T1IF = 0;
	BCLR	_INTFbits,1
;	.line	893; "main.c"	B_2ms_flag=1;
	BSET	_FLAG1,7
;	.line	894; "main.c"	time1_cnt1++;
	INCR	_time1_cnt1
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x33=51), size=1
;	.line	895; "main.c"	if( time1_cnt1 > 50 )
	MOVAI	0x33
	RSUBAR	_time1_cnt1
	JBSET	PFLAG,0
	GOTO	_00521_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	897; "main.c"	time1_cnt1 = 0;
	CLRR	_time1_cnt1
;	.line	898; "main.c"	B_100ms_flag = 1;      	
	BSET	_PAC,4
_00521_DS_
;	.line	900; "main.c"	time1_cnt++;
	INCR	_time1_cnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xFB=251), size=1
;	.line	901; "main.c"	if( time1_cnt > 250 )
	MOVAI	0xfb
	RSUBAR	_time1_cnt
	JBSET	PFLAG,0
	GOTO	_00525_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	903; "main.c"	time1_cnt = 0;
	CLRR	_time1_cnt
;	.line	904; "main.c"	B_500ms_flag = 1;      	
	BSET	_PAC,5
_00525_DS_
;	.line	914; "main.c"	__endasm;
	swapar _PFLAGBuf
	movra PFLAG
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SysInit
;   _LCD_DispALL
;   _AverageADCData
;   __mulint
;   __divuint
;   __divuint
;   _speed_handle
;   _disp_speed_trip_bat
;   _sys_bat
;   _bat_how_many
;   _odo_handle
;   _Drive_lcd
;   _SysInit
;   _LCD_DispALL
;   _AverageADCData
;   __mulint
;   __divuint
;   __divuint
;   _speed_handle
;   _disp_speed_trip_bat
;   _sys_bat
;   _bat_how_many
;   _odo_handle
;   _Drive_lcd
;8 compiler assigned registers:
;   r0x104C
;   STK00
;   STK02
;   STK01
;   r0x104D
;   r0x104E
;   r0x104F
;   r0x1050
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	830; "main.c"	GIE = 0;
	BCLR	_MCRbits,7
;	.line	831; "main.c"	SysInit();
	CALL	_SysInit
;	.line	832; "main.c"	choice_vol = 48;uc_disp_all_flag = 1;
	MOVAI	0x30
	MOVRA	_choice_vol
	BSET	_PAC,3
;	.line	833; "main.c"	T1IE = 1;      	
	BSET	_INTEbits,1
;	.line	834; "main.c"	GIE = 1;
	BSET	_MCRbits,7
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	835; "main.c"	seg_bit[0] = 0x01;seg_bit[1] = 0x02;seg_bit[2] = 0x04;seg_bit[3] = 0x08;seg_bit[4] = 0x10;
	MOVAI	0x01
	MOVRA	(_seg_bit + 0)
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_seg_bit + 1)
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x04
	MOVRA	(_seg_bit + 2)
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x08
	MOVRA	(_seg_bit + 3)
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAI	0x10
	MOVRA	(_seg_bit + 4)
;	.line	836; "main.c"	LCD_DispALL(0xff);             	
	MOVAI	0xff
	CALL	_LCD_DispALL
;	.line	838; "main.c"	while(1)
	MOVAR	_main_disp_all_cnt_1_156
	MOVRA	r0x104C
_00515_DS_
;	.line	840; "main.c"	ClrWdt();
	clrwdt
;	.line	841; "main.c"	if(B_100ms_flag)
	JBSET	_PAC,4
	GOTO	_00501_DS_
;	.line	843; "main.c"	B_100ms_flag = 0;
	BCLR	_PAC,4
;	.line	844; "main.c"	BAT_AD_copy = AverageADCData( BAT_AD ); //简单滤波
	MOVAR	_BAT_AD
	MOVRA	STK00
	MOVAR	(_BAT_AD + 1)
	CALL	_AverageADCData
	MOVRA	(_BAT_AD_copy + 1)
	MOVAR	STK00
	MOVRA	_BAT_AD_copy
;	.line	845; "main.c"	voltage_copy = BAT_AD_copy * 50;
	MOVAR	_BAT_AD_copy
	MOVRA	STK02
	MOVAR	(_BAT_AD_copy + 1)
	MOVRA	STK01
	MOVAI	0x32
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	(_voltage_copy + 1)
	MOVAR	STK00
	MOVRA	_voltage_copy
;	.line	846; "main.c"	voltage_copy = voltage_copy / 41; //计算出电池电压  100K  3.3K 分压
	MOVAI	0x29
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	_voltage_copy
	MOVRA	STK00
	MOVAR	(_voltage_copy + 1)
	CALL	__divuint
	MOVRA	(_voltage_copy + 1)
	MOVAR	STK00
	MOVRA	_voltage_copy
;	.line	847; "main.c"	voltage =(voltage*2+voltage_copy*8)/10;  //滤波算法
	BCLR	PFLAG,0
	RLAR	_voltage
	MOVRA	r0x104D
	RLAR	(_voltage + 1)
	MOVRA	r0x104E
	BCLR	PFLAG,0
	RLAR	_voltage_copy
	MOVRA	r0x104F
	RLAR	(_voltage_copy + 1)
	MOVRA	r0x1050
	BCLR	PFLAG,0
	RLR	r0x104F
	RLR	r0x1050
	BCLR	PFLAG,0
	RLR	r0x104F
	RLR	r0x1050
	MOVAR	r0x104F
	ADDRA	r0x104D
	MOVAR	r0x1050
	JBCLR	PFLAG,0
	JZAR	r0x1050
	ADDRA	r0x104E
	MOVAI	0x0a
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x104D
	MOVRA	STK00
	MOVAR	r0x104E
	CALL	__divuint
	MOVRA	(_voltage + 1)
	MOVAR	STK00
	MOVRA	_voltage
;	.line	848; "main.c"	speed_handle();
	CALL	_speed_handle
;	.line	849; "main.c"	if( disp_all_flag ) disp_speed_trip_bat( disp_flag );  //里程和电压5S进行切换
	MOVAI	0x00
	ORAR	_main_disp_all_flag_1_156
	JBCLR	PFLAG,2
	GOTO	_00501_DS_
	MOVAR	_main_disp_flag_1_156
	CALL	_disp_speed_trip_bat
_00501_DS_
;	.line	851; "main.c"	if(B_500ms_flag)
	JBSET	_PAC,5
	GOTO	_00511_DS_
;	.line	853; "main.c"	B_500ms_flag = 0; 
	BCLR	_PAC,5
;	.line	854; "main.c"	if( disp_all_flag == 0 )
	MOVAI	0x00
	ORAR	_main_disp_all_flag_1_156
	JBSET	PFLAG,2
	GOTO	_00505_DS_
;	.line	856; "main.c"	disp_all_cnt++;
	INCR	r0x104C
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x3=3), size=1
;	.line	857; "main.c"	if( disp_all_cnt > 2 )
	MOVAI	0x03
	RSUBAR	r0x104C
	JBSET	PFLAG,0
	GOTO	_00505_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	859; "main.c"	disp_all_flag = 1;
	MOVAI	0x01
	MOVRA	_main_disp_all_flag_1_156
;	.line	860; "main.c"	sys_bat();
	CALL	_sys_bat
;	.line	861; "main.c"	uc_disp_all_flag = 0; 
	BCLR	_PAC,3
_00505_DS_
;	.line	864; "main.c"	if( disp_all_flag ) bat_how_many(voltage);
	MOVAI	0x00
	ORAR	_main_disp_all_flag_1_156
	JBCLR	PFLAG,2
	GOTO	_00507_DS_
	MOVAR	_voltage
	MOVRA	STK00
	MOVAR	(_voltage + 1)
	CALL	_bat_how_many
_00507_DS_
;	.line	865; "main.c"	odo_handle();
	CALL	_odo_handle
;	.line	866; "main.c"	bat_km_qh_cnt++;
	INCR	_main_bat_km_qh_cnt_1_156
;;swapping arguments (AOP_TYPEs 1/8)
;;unsigned compare: left >= lit(0xB=11), size=1
;	.line	867; "main.c"	if( bat_km_qh_cnt > 10 )
	MOVAI	0x0b
	RSUBAR	_main_bat_km_qh_cnt_1_156
	JBSET	PFLAG,0
	GOTO	_00511_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	869; "main.c"	bat_km_qh_cnt = 0;
	CLRR	_main_bat_km_qh_cnt_1_156
;	.line	870; "main.c"	disp_flag ^= 1;       	
	MOVAI	0x01
	XORRA	_main_disp_flag_1_156
_00511_DS_
;	.line	874; "main.c"	if(B_2ms_flag)
	JBSET	_FLAG1,7
	GOTO	_00515_DS_
;	.line	876; "main.c"	B_2ms_flag=0;
	BCLR	_FLAG1,7
;	.line	877; "main.c"	Drive_lcd();    
	CALL	_Drive_lcd
	GOTO	_00515_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _sys_bat	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   __divuint
;   _learn_while_type
;   __mulint
;   __divuint
;   _learn_while_type
;5 compiler assigned registers:
;   STK02
;   STK01
;   STK00
;   r0x1040
;   r0x1041
;; Starting pCode block
_sys_bat	;Function start
; 2 exit points
;	.line	793; "main.c"	voltage = ( BAT_AD * 50 ) / 41; //计算出电池电压
	MOVAR	_BAT_AD
	MOVRA	STK02
	MOVAR	(_BAT_AD + 1)
	MOVRA	STK01
	MOVAI	0x32
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x1040
	MOVAR	STK00
	MOVRA	r0x1041
	MOVAI	0x29
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1041
	MOVRA	STK00
	MOVAR	r0x1040
	CALL	__divuint
	MOVRA	(_voltage + 1)
	MOVAR	STK00
	MOVRA	_voltage
;	.line	795; "main.c"	if( voltage_TY_flag == 1 )  //电压通用,判断电压
	MOVAR	_voltage_TY_flag
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00480_DS_
;;unsigned compare: left < lit(0x22B=555), size=2
;	.line	797; "main.c"	if( voltage >= 555 )
	MOVAI	0x02
	RSUBAR	(_voltage + 1)
	JBSET	PFLAG,2
	GOTO	_00492_DS_
	MOVAI	0x2b
	RSUBAR	_voltage
_00492_DS_
	JBSET	PFLAG,0
	GOTO	_00472_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	799; "main.c"	choice_vol = 60;
	MOVAI	0x3c
	MOVRA	_choice_vol
	GOTO	_00481_DS_
_00472_DS_
;	.line	803; "main.c"	choice_vol = 48;
	MOVAI	0x30
	MOVRA	_choice_vol
	GOTO	_00481_DS_
_00480_DS_
;	.line	806; "main.c"	else if( voltage_TY_flag == 2 )
	MOVAR	_voltage_TY_flag
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00481_DS_
;;unsigned compare: left < lit(0x26C=620), size=2
;	.line	808; "main.c"	if( voltage >= 620 )
	MOVAI	0x02
	RSUBAR	(_voltage + 1)
	JBSET	PFLAG,2
	GOTO	_00493_DS_
	MOVAI	0x6c
	RSUBAR	_voltage
_00493_DS_
	JBSET	PFLAG,0
	GOTO	_00475_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	810; "main.c"	choice_vol = 72;
	MOVAI	0x48
	MOVRA	_choice_vol
	GOTO	_00481_DS_
_00475_DS_
;	.line	814; "main.c"	choice_vol = 48;
	MOVAI	0x30
	MOVRA	_choice_vol
_00481_DS_
;	.line	817; "main.c"	learn_while_type();
	CALL	_learn_while_type
	RETURN	
; exit point of _sys_bat

;***
;  pBlock Stats: dbName = C
;***
;entry:  _odo_handle	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1040
;   r0x1041
;; Starting pCode block
_odo_handle	;Function start
; 2 exit points
;	.line	780; "main.c"	if( ShowSpeed > 0 )
	MOVAR	_ShowSpeed
	ORAR	(_ShowSpeed + 1)
	JBCLR	PFLAG,2
	GOTO	_00460_DS_
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=0, offr=0
;	.line	782; "main.c"	Milage_temp = Milage_temp+ShowSpeed/2;
	BCLR	PFLAG,0
	RRAR	(_ShowSpeed + 1)
	MOVRA	r0x1040
	RRAR	_ShowSpeed
	MOVRA	r0x1041
	MOVAR	r0x1041
	ADDRA	_Milage_temp
	MOVAR	r0x1040
	JBCLR	PFLAG,0
	JZAR	r0x1040
	ADDRA	(_Milage_temp + 1)
;;unsigned compare: left < lit(0x168=360), size=2
;	.line	783; "main.c"	if( Milage_temp >= 360 )// (V1+V2+V3+....V4)*(1/3600)>=0.1そń 360
	MOVAI	0x01
	RSUBAR	(_Milage_temp + 1)
	JBSET	PFLAG,2
	GOTO	_00466_DS_
	MOVAI	0x68
	RSUBAR	_Milage_temp
_00466_DS_
	JBSET	PFLAG,0
	GOTO	_00460_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	785; "main.c"	sub_km++;
	INCR	_sub_km
	JBCLR	PFLAG,2
	INCR	(_sub_km + 1)
;	.line	786; "main.c"	Milage_temp = Milage_temp - 360;       	       	       	    
	MOVAI	0x98
	ADDRA	_Milage_temp
	MOVAI	0xfe
	JBCLR	PFLAG,0
	MOVAI	0xff
	ADDRA	(_Milage_temp + 1)
_00460_DS_
	RETURN	
; exit point of _odo_handle

;***
;  pBlock Stats: dbName = C
;***
;entry:  _speed_handle	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulint
;   _AverageADCData
;   __mulint
;   __divuint
;   __mulint
;   __divuint
;   __mulint
;   __divuint
;   __mulint
;   __mulint
;   _AverageADCData
;   __mulint
;   __divuint
;   __mulint
;   __divuint
;   __mulint
;   __divuint
;   __mulint
;9 compiler assigned registers:
;   r0x1046
;   r0x1047
;   STK02
;   STK01
;   STK00
;   r0x1048
;   r0x1049
;   r0x104A
;   r0x104B
;; Starting pCode block
_speed_handle	;Function start
; 2 exit points
;	.line	734; "main.c"	data1 = Speed - ShowSpeed;
	MOVAR	_speed_handle_Speed_1_136
	MOVRA	r0x1046
	MOVAR	_ShowSpeed
	MOVRA	r0x1047
	MOVAR	r0x1047
	RSUBRA	r0x1046
;	.line	735; "main.c"	temp_s = ShowSpeed*10+8;
	MOVAR	_ShowSpeed
	MOVRA	STK02
	MOVAR	(_ShowSpeed + 1)
	MOVRA	STK01
	MOVAI	0x0a
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x1048
	MOVAR	STK00
	MOVRA	r0x1047
	MOVAI	0x08
	ADDRA	r0x1047
	JBCLR	PFLAG,0
	INCR	r0x1048
;	.line	736; "main.c"	SpeedTest = AverageADCData( speed_AD ); //简单滤波
	MOVAR	_speed_AD
	MOVRA	STK00
	MOVAR	(_speed_AD + 1)
	CALL	_AverageADCData
	MOVRA	(_SpeedTest + 1)
	MOVAR	STK00
	MOVRA	_SpeedTest
;;unsigned compare: left < lit(0x28=40), size=2
;	.line	737; "main.c"	if( SpeedTest < 40 )  //采集到的电压如果低于0.7V则舍弃
	MOVAI	0x00
	RSUBAR	(_SpeedTest + 1)
	JBSET	PFLAG,2
	GOTO	_00445_DS_
	MOVAI	0x28
	RSUBAR	_SpeedTest
_00445_DS_
	JBCLR	PFLAG,0
	GOTO	_00421_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	739; "main.c"	SpeedTest = 0;
	CLRR	_SpeedTest
	CLRR	(_SpeedTest + 1)
;	.line	740; "main.c"	ShowSpeed = 0;
	CLRR	_ShowSpeed
	CLRR	(_ShowSpeed + 1)
	GOTO	_00422_DS_
_00421_DS_
;	.line	744; "main.c"	if( choice_vol == 48 )
	MOVAR	_choice_vol
	XORAI	0x30
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;	.line	745; "main.c"	SpdInt = ( unsigned char )( ((SpeedTest-40) * 5)  / 18 );  //45
	MOVAI	0xd8
	ADDAR	_SpeedTest
	MOVRA	r0x1049
	MOVAI	0xff
	MOVRA	r0x104A
	MOVAR	(_SpeedTest + 1)
	JBCLR	PFLAG,0
	JZAR	(_SpeedTest + 1)
	ADDRA	r0x104A
	MOVAR	r0x1049
	MOVRA	STK02
	MOVAR	r0x104A
	MOVRA	STK01
	MOVAI	0x05
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	r0x1049
	MOVAI	0x12
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1049
	MOVRA	STK00
	MOVAR	r0x104A
	CALL	__divuint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	_SpdInt
	MOVRA	r0x104B
	MOVRA	r0x1049
;;118	MOVAR	r0x1049
;;119	MOVAR	r0x104B
	CLRR	(_SpdInt + 1)
	GOTO	_00408_DS_
_00407_DS_
;	.line	746; "main.c"	else if( choice_vol == 60 )
	MOVAR	_choice_vol
	XORAI	0x3c
	JBSET	PFLAG,2
	GOTO	_00404_DS_
;	.line	747; "main.c"	SpdInt = ( unsigned char )( ((SpeedTest-40) * 25)  / 110 );  //48
	MOVAI	0xd8
	ADDAR	_SpeedTest
	MOVRA	r0x1049
	MOVAI	0xff
	MOVRA	r0x104A
	MOVAR	(_SpeedTest + 1)
	JBCLR	PFLAG,0
	JZAR	(_SpeedTest + 1)
	ADDRA	r0x104A
	MOVAR	r0x1049
	MOVRA	STK02
	MOVAR	r0x104A
	MOVRA	STK01
	MOVAI	0x19
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	r0x1049
	MOVAI	0x6e
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1049
	MOVRA	STK00
	MOVAR	r0x104A
	CALL	__divuint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	_SpdInt
	MOVRA	r0x104B
	MOVRA	r0x1049
;;114	MOVAR	r0x1049
;;115	MOVAR	r0x104B
	CLRR	(_SpdInt + 1)
	GOTO	_00408_DS_
_00404_DS_
;	.line	748; "main.c"	else if( choice_vol == 72 )
	MOVAR	_choice_vol
	XORAI	0x48
	JBSET	PFLAG,2
	GOTO	_00408_DS_
;	.line	749; "main.c"	SpdInt = ( unsigned char )( ((SpeedTest-40) * 25)  / 126 ); //51
	MOVAI	0xd8
	ADDAR	_SpeedTest
	MOVRA	r0x1049
	MOVAI	0xff
	MOVRA	r0x104A
	MOVAR	(_SpeedTest + 1)
	JBCLR	PFLAG,0
	JZAR	(_SpeedTest + 1)
	ADDRA	r0x104A
	MOVAR	r0x1049
	MOVRA	STK02
	MOVAR	r0x104A
	MOVRA	STK01
	MOVAI	0x19
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	r0x1049
	MOVAI	0x7e
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1049
	MOVRA	STK00
	MOVAR	r0x104A
	CALL	__divuint
	MOVRA	r0x104A
	MOVAR	STK00
	MOVRA	_SpdInt
	MOVRA	r0x104B
	MOVRA	r0x1049
;;109	MOVAR	r0x1049
;;110	MOVAR	r0x104B
	CLRR	(_SpdInt + 1)
_00408_DS_
;	.line	750; "main.c"	Speed = SpdInt;
	MOVAR	_SpdInt
	MOVRA	_speed_handle_Speed_1_136
	MOVAR	(_SpdInt + 1)
	MOVRA	(_speed_handle_Speed_1_136 + 1)
;	.line	751; "main.c"	SpdInt = SpdInt*10;
	MOVAR	_SpdInt
	MOVRA	STK02
	MOVAR	(_SpdInt + 1)
	MOVRA	STK01
	MOVAI	0x0a
	MOVRA	STK00
	MOVAI	0x00
	CALL	__mulint
	MOVRA	(_SpdInt + 1)
	MOVAR	STK00
	MOVRA	_SpdInt
;	.line	753; "main.c"	if(ShowSpeed > Speed)
	MOVAR	(_ShowSpeed + 1)
	RSUBAR	(_speed_handle_Speed_1_136 + 1)
	JBSET	PFLAG,2
	GOTO	_00446_DS_
	MOVAR	_ShowSpeed
	RSUBAR	_speed_handle_Speed_1_136
_00446_DS_
	JBCLR	PFLAG,0
	GOTO	_00410_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	755; "main.c"	data1 ^= 0xFF;
	MOVAI	0xff
	XORRA	r0x1046
;	.line	756; "main.c"	data1++;
	INCR	r0x1046
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x3=3), size=1
_00410_DS_
;	.line	758; "main.c"	if(data1 > 2 || Speed <= 2)
	MOVAI	0x03
	RSUBAR	r0x1046
	JBCLR	PFLAG,0
	GOTO	_00416_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;swapping arguments (AOP_TYPEs 1/8)
;;unsigned compare: left >= lit(0x3=3), size=2
	MOVAI	0x00
	RSUBAR	(_speed_handle_Speed_1_136 + 1)
	JBSET	PFLAG,2
	GOTO	_00448_DS_
	MOVAI	0x03
	RSUBAR	_speed_handle_Speed_1_136
_00448_DS_
	JBCLR	PFLAG,0
	GOTO	_00417_DS_
;;genSkipc:3195: created from rifx:00DE608C
_00416_DS_
;	.line	760; "main.c"	ShowSpeed = Speed;
	MOVAR	_speed_handle_Speed_1_136
	MOVRA	_ShowSpeed
	MOVAR	(_speed_handle_Speed_1_136 + 1)
	MOVRA	(_ShowSpeed + 1)
	GOTO	_00422_DS_
_00417_DS_
;	.line	762; "main.c"	else  if( SpdInt >= temp_s )
	MOVAR	r0x1048
	RSUBAR	(_SpdInt + 1)
	JBSET	PFLAG,2
	GOTO	_00449_DS_
	MOVAR	r0x1047
	RSUBAR	_SpdInt
_00449_DS_
	JBSET	PFLAG,0
	GOTO	_00414_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	764; "main.c"	ShowSpeed++;   	
	INCR	_ShowSpeed
	JBCLR	PFLAG,2
	INCR	(_ShowSpeed + 1)
	GOTO	_00422_DS_
_00414_DS_
;	.line	768; "main.c"	temp_s =  temp_s - 23;
	MOVAI	0xe9
	ADDRA	r0x1047
	JBSET	PFLAG,0
	DECR	r0x1048
;	.line	769; "main.c"	if( SpdInt <= temp_s )
	MOVAR	(_SpdInt + 1)
	RSUBAR	r0x1048
	JBSET	PFLAG,2
	GOTO	_00450_DS_
	MOVAR	_SpdInt
	RSUBAR	r0x1047
_00450_DS_
	JBSET	PFLAG,0
	GOTO	_00422_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	770; "main.c"	ShowSpeed--;       
	MOVAI	0xff
	ADDRA	_ShowSpeed
	JBSET	PFLAG,0
	DECR	(_ShowSpeed + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x64=100), size=2
_00422_DS_
;	.line	773; "main.c"	if( ShowSpeed > 99 ) ShowSpeed = 99;  //显示限速99
	MOVAI	0x00
	RSUBAR	(_ShowSpeed + 1)
	JBSET	PFLAG,2
	GOTO	_00451_DS_
	MOVAI	0x64
	RSUBAR	_ShowSpeed
_00451_DS_
	JBSET	PFLAG,0
	GOTO	_00425_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAI	0x63
	MOVRA	_ShowSpeed
	CLRR	(_ShowSpeed + 1)
_00425_DS_
	RETURN	
; exit point of _speed_handle

;***
;  pBlock Stats: dbName = C
;***
;entry:  _AverageADCData	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divuint
;   __divuint
;9 compiler assigned registers:
;   r0x1040
;   STK00
;   r0x1041
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   STK02
;   STK01
;; Starting pCode block
_AverageADCData	;Function start
; 2 exit points
;	.line	718; "main.c"	unsigned int AverageADCData( unsigned int adcopy )
	MOVRA	r0x1040
	MOVAR	STK00
	MOVRA	r0x1041
;	.line	722; "main.c"	ADC_TotalData = 0;
	CLRR	r0x1042
	CLRR	r0x1043
;	.line	723; "main.c"	for(R7=0;R7<24;R7++)
	MOVAI	0x18
	MOVRA	r0x1044
_00396_DS_
;	.line	725; "main.c"	ADC_TotalData += adcopy;               	
	MOVAR	r0x1041
	ADDRA	r0x1042
	MOVAR	r0x1040
	JBCLR	PFLAG,0
	JZAR	r0x1040
	ADDRA	r0x1043
	MOVAR	r0x1044
	MOVRA	r0x1045
	DECAR	r0x1045
	MOVRA	r0x1044
;	.line	723; "main.c"	for(R7=0;R7<24;R7++)
	MOVAI	0x00
	ORAR	r0x1044
	JBSET	PFLAG,2
	GOTO	_00396_DS_
;	.line	727; "main.c"	ADC_TotalData = (ADC_TotalData / 24);
	MOVAI	0x18
	MOVRA	STK02
	MOVAI	0x00
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAR	r0x1043
	CALL	__divuint
	MOVRA	r0x1043
	MOVAR	STK00
	MOVRA	r0x1042
;	.line	728; "main.c"	return ADC_TotalData;  	       	       	       	   //返回第二组数据，其他三组数据舍弃
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAR	r0x1043
	RETURN	
; exit point of _AverageADCData

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SysInit	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_SysInit	;Function start
; 2 exit points
;	.line	689; "main.c"	__endasm;
	clrr FSR0
ClrRAM0:
	clrr INDF0
	incr FSR0
	jbset FSR0,7
	goto ClrRAM0
	
;	.line	690; "main.c"	MCR = 0;
	CLRR	_MCR
;	.line	691; "main.c"	INTE = 0;
	CLRR	_INTE
;	.line	692; "main.c"	INTF = 0;
	CLRR	_INTF
;	.line	694; "main.c"	IOP0 = 0;     //p0数据口
	CLRR	_IOP0
;	.line	695; "main.c"	OEP0 = 0x00;  //0输入口  1输出
	CLRR	_OEP0
;	.line	696; "main.c"	PUP0 = 0x6f;  //p0上拉设置 0禁止 1打开  a b上拉打开
	MOVAI	0x6f
	MOVRA	_PUP0
;	.line	697; "main.c"	PDP0 = 0x0f;  //p0下拉设置 0禁止 1打开
	MOVAI	0x0f
	MOVRA	_PDP0
;	.line	699; "main.c"	IOP1 = 0x00;  //它里面有个mos，如果要输出高低，要两个位一起控制 PMOSION=1  IOP16=1
	CLRR	_IOP1
;	.line	700; "main.c"	OEP1 = 0x00;
	CLRR	_OEP1
;	.line	701; "main.c"	PUP1 = 0x20;
	MOVAI	0x20
	MOVRA	_PUP1
;	.line	702; "main.c"	PDP1 = 0x27;  //左右大灯下拉打开 10 11 12
	MOVAI	0x27
	MOVRA	_PDP1
;	.line	704; "main.c"	AUCR = 0x0C;  
	MOVAI	0x0c
	MOVRA	_AUCR
;	.line	706; "main.c"	AN1SEL = 0x0;  	//P16默认居然是AD口   p13是电压采集口 
	CLRR	_AN1SEL
;	.line	708; "main.c"	T1LOAD = 250;   //187*8=1.5ms
	MOVAI	0xfa
	MOVRA	_T1LOAD
;	.line	709; "main.c"	T1DATA = 0;
	CLRR	_T1DATA
;	.line	710; "main.c"	T1CR   = 0x8F;  //16M主频 最后3个bit 分频128
	MOVAI	0x8f
	MOVRA	_T1CR
	RETURN	
; exit point of _SysInit

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Drive_lcd	;Function start
; 2 exit points
;has an exit
;functions called:
;   _mux_ioport
;   _mux_ab
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _adc_loop_speed
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _adc_loop_bat
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _mux_ioport
;   _mux_ab
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _adc_loop_speed
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _adc_loop_bat
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;   _set_normal_seg
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_Drive_lcd	;Function start
; 2 exit points
;	.line	597; "main.c"	NMOS0ON=0;
	BCLR	_AUCRbits,0
;	.line	598; "main.c"	if( scan_cnt == 0 )
	MOVAI	0x00
	ORAR	_scan_cnt
	JBSET	PFLAG,2
	GOTO	_00383_DS_
;	.line	600; "main.c"	COM4_IN_FL;         // com 口 扫描 
	BCLR	_OEP0bits,3
;	.line	601; "main.c"	if( uc_disp_all_flag == 0 )
	JBCLR	_PAC,3
	GOTO	_00354_DS_
;	.line	603; "main.c"	mux_ioport();
	CALL	_mux_ioport
	GOTO	_00355_DS_
_00354_DS_
;	.line	607; "main.c"	mux_ab();       	
	CALL	_mux_ab
_00355_DS_
;	.line	609; "main.c"	set_normal_seg(0,0);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x00
	CALL	_set_normal_seg
;	.line	610; "main.c"	COM0_OUT_H;    	
	BSET	_OEP1bits,5
	BSET	_IOP1bits,5
;	.line	611; "main.c"	scan_cnt = 1;          	
	MOVAI	0x01
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00383_DS_
;	.line	613; "main.c"	else if( scan_cnt == 1 )
	MOVAR	_scan_cnt
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00380_DS_
;	.line	615; "main.c"	COM0_IN_FL;            	       	
	BCLR	_OEP1bits,5
;	.line	616; "main.c"	set_normal_seg(0,1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_set_normal_seg
;	.line	617; "main.c"	COM1_OUT_H;
	BSET	_OEP0bits,0
	BSET	_IOP0bits,0
;	.line	618; "main.c"	scan_cnt = 2;
	MOVAI	0x02
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00380_DS_
;	.line	620; "main.c"	else if( scan_cnt == 2 ) 
	MOVAR	_scan_cnt
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00377_DS_
;	.line	622; "main.c"	COM1_IN_FL;            	       	       	
	BCLR	_OEP0bits,0
;	.line	623; "main.c"	set_normal_seg(0,2);
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x00
	CALL	_set_normal_seg
;	.line	624; "main.c"	COM2_OUT_H;
	BSET	_OEP0bits,1
	BSET	_IOP0bits,1
;	.line	625; "main.c"	scan_cnt = 3;
	MOVAI	0x03
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00377_DS_
;	.line	627; "main.c"	else if( scan_cnt == 3 )
	MOVAR	_scan_cnt
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00374_DS_
;	.line	629; "main.c"	COM2_IN_FL;
	BCLR	_OEP0bits,1
;	.line	630; "main.c"	adc_loop_speed();                      	
	CALL	_adc_loop_speed
;	.line	631; "main.c"	set_normal_seg(0,3);
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x00
	CALL	_set_normal_seg
;	.line	632; "main.c"	COM3_OUT_H;
	BSET	_OEP0bits,2
	BSET	_IOP0bits,2
;	.line	633; "main.c"	scan_cnt = 4;
	MOVAI	0x04
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00374_DS_
;	.line	635; "main.c"	else if( scan_cnt == 4 )
	MOVAR	_scan_cnt
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00371_DS_
;	.line	637; "main.c"	COM3_IN_FL;                    	
	BCLR	_OEP0bits,2
;	.line	638; "main.c"	set_normal_seg(0,4);
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x00
	CALL	_set_normal_seg
;	.line	639; "main.c"	COM4_OUT_H;
	BSET	_OEP0bits,3
	BSET	_IOP0bits,3
;	.line	640; "main.c"	scan_cnt = 5;
	MOVAI	0x05
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00371_DS_
;	.line	642; "main.c"	else if( scan_cnt == 5 )
	MOVAR	_scan_cnt
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00368_DS_
;	.line	644; "main.c"	COM4_IN_FL;            	
	BCLR	_OEP0bits,3
;	.line	645; "main.c"	set_normal_seg(1,0);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x01
	CALL	_set_normal_seg
;	.line	646; "main.c"	COM0_OUT_L;
	BSET	_OEP1bits,5
	BCLR	_IOP1bits,5
;	.line	647; "main.c"	scan_cnt = 6;
	MOVAI	0x06
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00368_DS_
;	.line	649; "main.c"	else if( scan_cnt == 6 )
	MOVAR	_scan_cnt
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00365_DS_
;	.line	651; "main.c"	COM0_IN_FL; 
	BCLR	_OEP1bits,5
;	.line	652; "main.c"	adc_loop_bat( );       	
	CALL	_adc_loop_bat
;	.line	653; "main.c"	set_normal_seg(1,1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x01
	CALL	_set_normal_seg
;	.line	654; "main.c"	COM1_OUT_L;
	BSET	_OEP0bits,0
	BCLR	_IOP0bits,0
;	.line	655; "main.c"	scan_cnt = 7;
	MOVAI	0x07
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00365_DS_
;	.line	657; "main.c"	else if( scan_cnt == 7 )
	MOVAR	_scan_cnt
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00362_DS_
;	.line	659; "main.c"	COM1_IN_FL;            	       	       	
	BCLR	_OEP0bits,0
;	.line	660; "main.c"	set_normal_seg(1,2);
	MOVAI	0x02
	MOVRA	STK00
	MOVAI	0x01
	CALL	_set_normal_seg
;	.line	661; "main.c"	COM2_OUT_L;
	BSET	_OEP0bits,1
	BCLR	_IOP0bits,1
;	.line	662; "main.c"	scan_cnt = 8;
	MOVAI	0x08
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00362_DS_
;	.line	664; "main.c"	else if( scan_cnt == 8 )
	MOVAR	_scan_cnt
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00359_DS_
;	.line	666; "main.c"	COM2_IN_FL;            	       	       	
	BCLR	_OEP0bits,1
;	.line	667; "main.c"	set_normal_seg(1,3);
	MOVAI	0x03
	MOVRA	STK00
	MOVAI	0x01
	CALL	_set_normal_seg
;	.line	668; "main.c"	COM3_OUT_L;
	BSET	_OEP0bits,2
	BCLR	_IOP0bits,2
;	.line	669; "main.c"	scan_cnt = 9;
	MOVAI	0x09
	MOVRA	_scan_cnt
	GOTO	_00385_DS_
_00359_DS_
;	.line	671; "main.c"	else if( scan_cnt == 9 )
	MOVAR	_scan_cnt
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00385_DS_
;	.line	673; "main.c"	COM3_IN_FL;            	       	       	       	       	       	       	
	BCLR	_OEP0bits,2
;	.line	674; "main.c"	set_normal_seg(1,4);
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x01
	CALL	_set_normal_seg
;	.line	675; "main.c"	COM4_OUT_L;
	BSET	_OEP0bits,3
	BCLR	_IOP0bits,3
;	.line	676; "main.c"	scan_cnt = 0;
	CLRR	_scan_cnt
_00385_DS_
	RETURN	
; exit point of _Drive_lcd

;***
;  pBlock Stats: dbName = C
;***
;entry:  _mux_ab	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_us
;   _choice_bat
;   _delay_us
;   _choice_bat
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_mux_ab	;Function start
; 2 exit points
;	.line	581; "main.c"	A_IN_FL;  
	BCLR	_OEP0bits,5
;	.line	582; "main.c"	B_IN_FL;       	 
	BCLR	_OEP0bits,6
;	.line	583; "main.c"	delay_us(200);  //定时时间太短的话 采集会不对
	MOVAI	0xc8
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay_us
;	.line	584; "main.c"	choice_bat( ); //筛选出电压状态
	CALL	_choice_bat
	RETURN	
; exit point of _mux_ab

;***
;  pBlock Stats: dbName = C
;***
;entry:  _mux_ioport	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_us
;   _delay_us
;3 compiler assigned registers:
;   STK00
;   r0x1042
;   r0x1043
;; Starting pCode block
_mux_ioport	;Function start
; 2 exit points
;	.line	516; "main.c"	PDP1 = 0x27;
	MOVAI	0x27
	MOVRA	_PDP1
;	.line	517; "main.c"	VD_IN_FL; 
	BCLR	_OEP1bits,2
;	.line	518; "main.c"	VL_IN_FL;
	BCLR	_OEP1bits,0
;	.line	519; "main.c"	VR_IN_FL;
	BCLR	_OEP1bits,1
;	.line	522; "main.c"	delay_us(200);  //定时时间太短的话 采集会不对
	MOVAI	0xc8
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay_us
;	.line	524; "main.c"	if( VD == 1 )  // VD  在缓存1当中
	CLRR	r0x1042
	JBCLR	_IOP1bits,2
	INCR	r0x1042
;;108	MOVAR	r0x1042
;;107	MOVAR	r0x1043
	MOVAR	r0x1042
	MOVRA	r0x1043
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00321_DS_
;	.line	526; "main.c"	VD_flag1++;VD_flag2 = 0;
	INCR	_VD_flag1
	CLRR	_VD_flag2
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	527; "main.c"	if( VD_flag1 > 3 ) 
	MOVAI	0x04
	RSUBAR	_VD_flag1
	JBSET	PFLAG,0
	GOTO	_00322_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	528; "main.c"	{ disp_VD = 1;VD_flag1 = 0;}
	BSET	_PAC,1
	CLRR	_VD_flag1
	GOTO	_00322_DS_
_00321_DS_
;	.line	532; "main.c"	VD_flag2++;VD_flag1 = 0;
	INCR	_VD_flag2
	CLRR	_VD_flag1
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	533; "main.c"	if( VD_flag2 > 3 ) 
	MOVAI	0x04
	RSUBAR	_VD_flag2
	JBSET	PFLAG,0
	GOTO	_00322_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	534; "main.c"	{ disp_VD = 0;VD_flag2 = 0;}
	BCLR	_PAC,1
	CLRR	_VD_flag2
_00322_DS_
;	.line	536; "main.c"	if( disp_VD )
	JBSET	_PAC,1
	GOTO	_00324_DS_
;	.line	538; "main.c"	Lcd_seg[1] |= 0b00010000;      	
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1042
	BSET	r0x1042,4
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1042
	MOVRA	(_Lcd_seg + 1)
	GOTO	_00325_DS_
_00324_DS_
;	.line	542; "main.c"	Lcd_seg[1] &= 0b00001111;
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1042
	MOVAI	0x0f
	ANDRA	r0x1042
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1042
	MOVRA	(_Lcd_seg + 1)
_00325_DS_
;	.line	544; "main.c"	if( VR || VL )  //有效则开始计时500ms后去读取电平状态，如果
	JBCLR	_IOP1bits,1
	GOTO	_00340_DS_
	JBSET	_IOP1bits,0
	GOTO	_00341_DS_
_00340_DS_
;	.line	546; "main.c"	if( VR )
	JBSET	_IOP1bits,1
	GOTO	_00329_DS_
;	.line	548; "main.c"	if( VR_twink_self_flag == 0 ) disp_VR = 1;
	JBCLR	_PAC,7
	GOTO	_00329_DS_
	BSET	_PAC,2
_00329_DS_
;	.line	550; "main.c"	if( VL )
	JBSET	_IOP1bits,0
	GOTO	_00333_DS_
;	.line	552; "main.c"	if( VL_twink_self_flag == 0 ) disp_VL = 1;
	JBCLR	_PAC,6
	GOTO	_00333_DS_
	BSET	_PAC,0
_00333_DS_
;	.line	554; "main.c"	VR_count++;
	INCR	_VR_count
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x19=25), size=1
;	.line	555; "main.c"	if( VR_count > 24 )  //计时
	MOVAI	0x19
	RSUBAR	_VR_count
	JBSET	PFLAG,0
	GOTO	_00344_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	557; "main.c"	VR_count = 0;
	CLRR	_VR_count
;	.line	558; "main.c"	if( VR ) 
	JBSET	_IOP1bits,1
	GOTO	_00335_DS_
;	.line	560; "main.c"	VR_twink_self_flag ^= 1;
	CLRR	r0x1042
	JBCLR	_PAC,7
	INCR	r0x1042
	MOVAR	r0x1042
	MOVRA	r0x1043
	MOVAI	0x01
	XORAR	r0x1043
	MOVRA	r0x1043
	MOVRA	r0x1042
;;113	MOVAR	r0x1042
	RRAR	r0x1043
	JBSET	PFLAG,0
	BCLR	_PAC,7
	JBCLR	PFLAG,0
	BSET	_PAC,7
;	.line	561; "main.c"	disp_VR = 0;
	BCLR	_PAC,2
_00335_DS_
;	.line	563; "main.c"	if( VL ) 
	JBSET	_IOP1bits,0
	GOTO	_00344_DS_
;	.line	565; "main.c"	VL_twink_self_flag ^= 1;
	CLRR	r0x1042
	JBCLR	_PAC,6
	INCR	r0x1042
	MOVAR	r0x1042
	MOVRA	r0x1043
	MOVAI	0x01
	XORAR	r0x1043
	MOVRA	r0x1043
	MOVRA	r0x1042
;;106	MOVAR	r0x1042
	RRAR	r0x1043
	JBSET	PFLAG,0
	BCLR	_PAC,6
	JBCLR	PFLAG,0
	BSET	_PAC,6
;	.line	566; "main.c"	disp_VL = 0;
	BCLR	_PAC,0
	GOTO	_00344_DS_
_00341_DS_
;	.line	572; "main.c"	VR_count = 0;VR_twink_self_flag = 0;VL_twink_self_flag = 0;
	CLRR	_VR_count
	BCLR	_PAC,7
	BCLR	_PAC,6
;	.line	573; "main.c"	disp_VR = 0;disp_VL = 0;
	BCLR	_PAC,2
	BCLR	_PAC,0
_00344_DS_
	RETURN	
; exit point of _mux_ioport

;***
;  pBlock Stats: dbName = C
;***
;entry:  _choice_bat	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1040
;   r0x1041
;; Starting pCode block
_choice_bat	;Function start
; 2 exit points
;	.line	497; "main.c"	if( (A_IN == 1) && (B_IN==1) )
	CLRR	r0x1040
	JBCLR	_IOP0bits,5
	INCR	r0x1040
;;117	MOVAR	r0x1040
;;116	MOVAR	r0x1041
	MOVAR	r0x1040
	MOVRA	r0x1041
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00308_DS_
	CLRR	r0x1040
	JBCLR	_IOP0bits,6
	INCR	r0x1040
;;112	MOVAR	r0x1040
;;111	MOVAR	r0x1041
	MOVAR	r0x1040
	MOVRA	r0x1041
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00308_DS_
;	.line	499; "main.c"	voltage_TY_flag = 1;  //表示 4860自识别
	MOVAI	0x01
	MOVRA	_voltage_TY_flag
	GOTO	_00311_DS_
_00308_DS_
;	.line	501; "main.c"	else if( (A_IN==0) && (B_IN==1) )  //A点短接 48 72
	JBCLR	_IOP0bits,5
	GOTO	_00304_DS_
	CLRR	r0x1040
	JBCLR	_IOP0bits,6
	INCR	r0x1040
;;105	MOVAR	r0x1040
;;104	MOVAR	r0x1041
	MOVAR	r0x1040
	MOVRA	r0x1041
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00304_DS_
;	.line	503; "main.c"	voltage_TY_flag = 2;
	MOVAI	0x02
	MOVRA	_voltage_TY_flag
	GOTO	_00311_DS_
_00304_DS_
;	.line	507; "main.c"	choice_vol = 60;voltage_TY_flag = 0;
	MOVAI	0x3c
	MOVRA	_choice_vol
	CLRR	_voltage_TY_flag
_00311_DS_
	RETURN	
; exit point of _choice_bat

;***
;  pBlock Stats: dbName = C
;***
;entry:  _learn_while_type	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_learn_while_type	;Function start
; 2 exit points
;	.line	470; "main.c"	if( choice_vol == 48 )
	MOVAR	_choice_vol
	XORAI	0x30
	JBSET	PFLAG,2
	GOTO	_00296_DS_
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	472; "main.c"	Stalls_Bat[0] = Stalls0_48V;
	MOVAI	0xa4
	MOVRA	(_Stalls_Bat + 0)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x01
	MOVRA	(_Stalls_Bat + 1)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	473; "main.c"	Stalls_Bat[1] = Stalls1_48V;
	MOVAI	0xb8
	MOVRA	(_Stalls_Bat + 2)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x01
	MOVRA	(_Stalls_Bat + 3)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	474; "main.c"	Stalls_Bat[2] = Stalls2_48V;            
	MOVAI	0xcc
	MOVRA	(_Stalls_Bat + 4)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x01
	MOVRA	(_Stalls_Bat + 5)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	475; "main.c"	Stalls_Bat[3] = Stalls3_48V;
	MOVAI	0xe0
	MOVRA	(_Stalls_Bat + 6)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x01
	MOVRA	(_Stalls_Bat + 7)
	GOTO	_00298_DS_
_00296_DS_
;	.line	477; "main.c"	else if( choice_vol == 60  )
	MOVAR	_choice_vol
	XORAI	0x3c
	JBSET	PFLAG,2
	GOTO	_00293_DS_
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	479; "main.c"	Stalls_Bat[0] = Stalls0_60V;
	MOVAI	0x08
	MOVRA	(_Stalls_Bat + 0)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 1)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	480; "main.c"	Stalls_Bat[1] = Stalls1_60V;
	MOVAI	0x1c
	MOVRA	(_Stalls_Bat + 2)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 3)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	481; "main.c"	Stalls_Bat[2] = Stalls2_60V;            
	MOVAI	0x3a
	MOVRA	(_Stalls_Bat + 4)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 5)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	482; "main.c"	Stalls_Bat[3] = Stalls3_60V;
	MOVAI	0x58
	MOVRA	(_Stalls_Bat + 6)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 7)
	GOTO	_00298_DS_
_00293_DS_
;	.line	484; "main.c"	else if( choice_vol == 72  )
	MOVAR	_choice_vol
	XORAI	0x48
	JBSET	PFLAG,2
	GOTO	_00298_DS_
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	486; "main.c"	Stalls_Bat[0] = Stalls0_72V;
	MOVAI	0x76
	MOVRA	(_Stalls_Bat + 0)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 1)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	487; "main.c"	Stalls_Bat[1] = Stalls1_72V;
	MOVAI	0x9e
	MOVRA	(_Stalls_Bat + 2)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 3)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	488; "main.c"	Stalls_Bat[2] = Stalls2_72V;            
	MOVAI	0xb2
	MOVRA	(_Stalls_Bat + 4)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 5)
;;gen.c:6379: size=1/2, offset=0, AOP_TYPE(res)=8
;	.line	489; "main.c"	Stalls_Bat[3] = Stalls3_72V;
	MOVAI	0xd0
	MOVRA	(_Stalls_Bat + 6)
;;gen.c:6379: size=0/2, offset=1, AOP_TYPE(res)=8
	MOVAI	0x02
	MOVRA	(_Stalls_Bat + 7)
_00298_DS_
	RETURN	
; exit point of _learn_while_type

;***
;  pBlock Stats: dbName = C
;***
;entry:  _LCD_DispALL	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;; Starting pCode block
_LCD_DispALL	;Function start
; 2 exit points
;	.line	456; "main.c"	void LCD_DispALL(unsigned char uc_data)
	MOVRA	r0x1040
;	.line	460; "main.c"	for( uc_i = 0; uc_i < 9; uc_i++ )
	CLRR	r0x1041
;;unsigned compare: left < lit(0x9=9), size=1
_00281_DS_
	MOVAI	0x09
	RSUBAR	r0x1041
	JBCLR	PFLAG,0
	GOTO	_00285_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	462; "main.c"	Lcd_seg[uc_i] = uc_data;
	MOVAR	r0x1041
	ADDAI	(_Lcd_seg + 0)
	MOVRA	r0x1042
	MOVAI	high (_Lcd_seg + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1043
	MOVAR	r0x1042
	MOVRA	FSR0
	MOVAR	r0x1043
	MOVRA	FSR1
	MOVAR	r0x1040
	MOVRA	INDF2
;	.line	460; "main.c"	for( uc_i = 0; uc_i < 9; uc_i++ )
	INCR	r0x1041
	GOTO	_00281_DS_
_00285_DS_
	RETURN	
; exit point of _LCD_DispALL

;***
;  pBlock Stats: dbName = C
;***
;entry:  _bat_how_many	;Function start
; 2 exit points
;has an exit
;6 compiler assigned registers:
;   r0x1040
;   STK00
;   r0x1041
;   r0x1042
;   r0x1043
;   r0x1044
;; Starting pCode block
_bat_how_many	;Function start
; 2 exit points
;	.line	427; "main.c"	void bat_how_many(unsigned int Vol)
	MOVRA	r0x1040
	MOVAR	STK00
	MOVRA	r0x1041
;	.line	429; "main.c"	Lcd_seg[8] &= 0b00010001;
	MOVAR	(_Lcd_seg + 8)
	MOVRA	r0x1042
	MOVAI	0x11
	ANDRA	r0x1042
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1042
	MOVRA	(_Lcd_seg + 8)
;	.line	430; "main.c"	if(Vol >= Stalls_Bat[3] ) 
	MOVAR	(_Stalls_Bat + 6)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 7)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00270_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00270_DS_
	CLRR	r0x1044
	JBSET	PFLAG,0
	BSET	r0x1044,0
	MOVAI	0x00
	ORAR	r0x1044
	JBSET	PFLAG,2
	GOTO	_00250_DS_
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	432; "main.c"	Lcd_seg[8] = 0b00011111;
	MOVAI	0x1f
	MOVRA	(_Lcd_seg + 8)
	GOTO	_00252_DS_
_00250_DS_
;	.line	434; "main.c"	else if((Vol<Stalls_Bat[3])&&(Vol>=Stalls_Bat[2]))
	MOVAI	0x00
	ORAR	r0x1044
	JBCLR	PFLAG,2
	GOTO	_00246_DS_
	MOVAR	(_Stalls_Bat + 4)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 5)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00271_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00271_DS_
	JBSET	PFLAG,0
	GOTO	_00246_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	436; "main.c"	Lcd_seg[8] = 0b00011101;
	MOVAI	0x1d
	MOVRA	(_Lcd_seg + 8)
	GOTO	_00252_DS_
_00246_DS_
;	.line	438; "main.c"	else if((Vol<Stalls_Bat[2])&&(Vol>=Stalls_Bat[1]))
	MOVAR	(_Stalls_Bat + 4)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 5)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00272_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00272_DS_
	JBCLR	PFLAG,0
	GOTO	_00242_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAR	(_Stalls_Bat + 2)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 3)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00273_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00273_DS_
	JBSET	PFLAG,0
	GOTO	_00242_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	440; "main.c"	Lcd_seg[8] = 0b00011001;
	MOVAI	0x19
	MOVRA	(_Lcd_seg + 8)
	GOTO	_00252_DS_
_00242_DS_
;	.line	442; "main.c"	else if((Vol<Stalls_Bat[1])&&(Vol>=Stalls_Bat[0]))
	MOVAR	(_Stalls_Bat + 2)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 3)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00274_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00274_DS_
	JBCLR	PFLAG,0
	GOTO	_00238_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAR	(_Stalls_Bat + 0)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 1)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00275_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00275_DS_
	JBSET	PFLAG,0
	GOTO	_00238_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;	.line	445; "main.c"	Lcd_seg[8] = 0b00010001;
	MOVAI	0x11
	MOVRA	(_Lcd_seg + 8)
	GOTO	_00252_DS_
_00238_DS_
;	.line	447; "main.c"	else if(Vol<Stalls_Bat[0])
	MOVAR	(_Stalls_Bat + 0)
	MOVRA	r0x1042
	MOVAR	(_Stalls_Bat + 1)
	MOVRA	r0x1043
	MOVAR	r0x1043
	RSUBAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00276_DS_
	MOVAR	r0x1042
	RSUBAR	r0x1041
_00276_DS_
	JBCLR	PFLAG,0
	GOTO	_00252_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	449; "main.c"	Lcd_seg[8] ^= 0b00010000;
	MOVAR	(_Lcd_seg + 8)
	MOVRA	r0x1041
	MOVAI	0x10
	XORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 8)
;	.line	450; "main.c"	Lcd_seg[8] |= 0b00000001;
	MOVAR	(_Lcd_seg + 8)
	MOVRA	r0x1041
	BSET	r0x1041,0
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 8)
_00252_DS_
	RETURN	
; exit point of _bat_how_many

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_speed_trip_bat	;Function start
; 2 exit points
;has an exit
;functions called:
;   _TwobyteDIVone
;   _disp_num_3
;   _TwobyteDIVone
;   _disp_num_4
;   _TwobyteDIVone
;   _disp_num_5
;   _TwobyteDIVone
;   _disp_num_1
;   _disp_num_2
;   _TwobyteDIVone
;   _disp_num_3
;   _TwobyteDIVone
;   _disp_num_4
;   _TwobyteDIVone
;   _disp_num_5
;   _TwobyteDIVone
;   _disp_num_1
;   _disp_num_2
;3 compiler assigned registers:
;   r0x1045
;   r0x1046
;   r0x1047
;; Starting pCode block
_disp_speed_trip_bat	;Function start
; 2 exit points
;	.line	387; "main.c"	void disp_speed_trip_bat(unsigned char bl)
	MOVRA	r0x1045
;	.line	390; "main.c"	if( bl ) //显示里程
	MOVAI	0x00
	ORAR	r0x1045
	JBCLR	PFLAG,2
	GOTO	_00229_DS_
;	.line	392; "main.c"	Lcd_seg[4] &= 0b00010111;  
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1045
	MOVAI	0x17
	ANDRA	r0x1045
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1045
	MOVRA	(_Lcd_seg + 4)
;	.line	393; "main.c"	Lcd_seg[7] |= 0b00001000; 
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1045
	BSET	r0x1045,3
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1045
	MOVRA	(_Lcd_seg + 7)
;	.line	394; "main.c"	num = sub_km; 
	MOVAR	_sub_km
	MOVRA	r0x1045
	MOVAR	(_sub_km + 1)
	MOVRA	r0x1046
	GOTO	_00230_DS_
_00229_DS_
;	.line	398; "main.c"	Lcd_seg[7] &= 0b00010111;  
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1047
	MOVAI	0x17
	ANDRA	r0x1047
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1047
	MOVRA	(_Lcd_seg + 7)
;	.line	399; "main.c"	Lcd_seg[4] |= 0b00001000;
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1047
	BSET	r0x1047,3
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1047
	MOVRA	(_Lcd_seg + 4)
;	.line	400; "main.c"	num = voltage;
	MOVAR	_voltage
	MOVRA	r0x1045
	MOVAR	(_voltage + 1)
	MOVRA	r0x1046
_00230_DS_
;	.line	402; "main.c"	R3R4 = num;
	MOVAR	r0x1045
	MOVRA	_R3R4
	MOVAR	r0x1046
	MOVRA	(_R3R4 + 1)
;	.line	403; "main.c"	R5 = 100;
	MOVAI	0x64
	MOVRA	_R5
;	.line	404; "main.c"	TwobyteDIVone();
	CALL	_TwobyteDIVone
;	.line	405; "main.c"	disp_num_3( R1R0 );
	MOVAR	_R1R0
	MOVRA	r0x1047
	MOVAR	r0x1047
	CALL	_disp_num_3
;	.line	406; "main.c"	R3R4 = R2;
	MOVAR	_R2
	MOVRA	_R3R4
	CLRR	(_R3R4 + 1)
;	.line	407; "main.c"	R5 = 10;
	MOVAI	0x0a
	MOVRA	_R5
;	.line	408; "main.c"	TwobyteDIVone();
	CALL	_TwobyteDIVone
;	.line	409; "main.c"	disp_num_4( R1R0 );
	MOVAR	_R1R0
	MOVRA	r0x1047
	MOVAR	r0x1047
	CALL	_disp_num_4
;	.line	411; "main.c"	R2 = 0 ;
	CLRR	_R2
;	.line	412; "main.c"	R3R4 = num;
	MOVAR	r0x1045
	MOVRA	_R3R4
	MOVAR	r0x1046
	MOVRA	(_R3R4 + 1)
;	.line	413; "main.c"	R5 = 10;
	MOVAI	0x0a
	MOVRA	_R5
;	.line	414; "main.c"	TwobyteDIVone();
	CALL	_TwobyteDIVone
;	.line	415; "main.c"	disp_num_5( R2 );
	MOVAR	_R2
	CALL	_disp_num_5
;	.line	417; "main.c"	R2 = 0;
	CLRR	_R2
;	.line	418; "main.c"	R3R4 = ShowSpeed;  //ShowSpeed
	MOVAR	_ShowSpeed
	MOVRA	_R3R4
	MOVAR	(_ShowSpeed + 1)
	MOVRA	(_R3R4 + 1)
;	.line	419; "main.c"	R5 = 10;
	MOVAI	0x0a
	MOVRA	_R5
;	.line	420; "main.c"	TwobyteDIVone();
	CALL	_TwobyteDIVone
;	.line	421; "main.c"	disp_num_1( R1R0 );
	MOVAR	_R1R0
	MOVRA	r0x1045
	MOVAR	r0x1045
	CALL	_disp_num_1
;	.line	422; "main.c"	disp_num_2( R2 );
	MOVAR	_R2
	CALL	_disp_num_2
	RETURN	
; exit point of _disp_speed_trip_bat

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_num_3	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   STK01
;   STK00
;   r0x1043
;; Starting pCode block
_disp_num_3	;Function start
; 2 exit points
;	.line	374; "main.c"	void disp_num_3( unsigned char num )
	MOVRA	r0x1040
;	.line	376; "main.c"	Lcd_seg[6]= LED7Code50[num];
	MOVAR	r0x1040
	ADDAI	(_LED7Code50 + 0)
	MOVRA	r0x1041
	MOVAI	high (_LED7Code50 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1041
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	(_Lcd_seg + 6)
	MOVRA	r0x1043
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;;103	MOVAR	r0x1043
;	.line	378; "main.c"	Lcd_seg[7] &= 0b00001000;
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1041
	MOVAI	0x08
	ANDRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 7)
;	.line	379; "main.c"	Lcd_seg[7]|= LED7Code51[num]; 
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1041
	MOVAR	r0x1040
	ADDAI	(_LED7Code51 + 0)
	MOVRA	r0x1040
	MOVAI	high (_LED7Code51 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1040
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1043
	MOVAR	r0x1043
	ORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 7)
;	.line	380; "main.c"	if( disp_VR ) Lcd_seg[7] |= 0b00000001;
	JBSET	_PAC,2
	GOTO	_00220_DS_
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1040
	BSET	r0x1040,0
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1040
	MOVRA	(_Lcd_seg + 7)
_00220_DS_
;	.line	381; "main.c"	if( disp_VL ) Lcd_seg[7] |= 0b00000010;
	JBSET	_PAC,0
	GOTO	_00223_DS_
	MOVAR	(_Lcd_seg + 7)
	MOVRA	r0x1040
	BSET	r0x1040,1
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1040
	MOVRA	(_Lcd_seg + 7)
_00223_DS_
	RETURN	
; exit point of _disp_num_3

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_num_4	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;7 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   STK01
;   STK00
;   r0x1044
;; Starting pCode block
_disp_num_4	;Function start
; 2 exit points
;	.line	366; "main.c"	void disp_num_4( unsigned char num )
	MOVRA	r0x1040
;	.line	368; "main.c"	Lcd_seg[4] &= 0b00001101;
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1041
	MOVAI	0x0d
	ANDRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 4)
;	.line	369; "main.c"	Lcd_seg[4]|= LED7Code40[num];
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1041
	MOVAR	r0x1040
	ADDAI	(_LED7Code40 + 0)
	MOVRA	r0x1042
	MOVAI	high (_LED7Code40 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1043
	MOVAR	r0x1042
	MOVRA	STK01
	MOVAR	r0x1043
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1044
	MOVAR	r0x1044
	ORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 4)
;	.line	370; "main.c"	Lcd_seg[5]= LED7Code41[num];  
	MOVAR	r0x1040
	ADDAI	(_LED7Code41 + 0)
	MOVRA	r0x1040
	MOVAI	high (_LED7Code41 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1041
	MOVAR	r0x1040
	MOVRA	STK01
	MOVAR	r0x1041
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1042
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1042
	MOVRA	(_Lcd_seg + 5)
	RETURN	
; exit point of _disp_num_4

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_num_5	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   STK01
;   STK00
;   r0x1043
;; Starting pCode block
_disp_num_5	;Function start
; 2 exit points
;	.line	358; "main.c"	void disp_num_5( unsigned char num )
	MOVRA	r0x1040
;	.line	360; "main.c"	Lcd_seg[4] &= 0b00011010;
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1041
	MOVAI	0x1a
	ANDRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 4)
;	.line	361; "main.c"	Lcd_seg[3]= LED7Code30[num];
	MOVAR	r0x1040
	ADDAI	(_LED7Code30 + 0)
	MOVRA	r0x1041
	MOVAI	high (_LED7Code30 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1041
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	(_Lcd_seg + 3)
	MOVRA	r0x1043
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;;102	MOVAR	r0x1043
;	.line	362; "main.c"	Lcd_seg[4]|= LED7Code31[num];      
	MOVAR	(_Lcd_seg + 4)
	MOVRA	r0x1041
	MOVAR	r0x1040
	ADDAI	(_LED7Code31 + 0)
	MOVRA	r0x1040
	MOVAI	high (_LED7Code31 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1040
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1043
	MOVAR	r0x1043
	ORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 4)
	RETURN	
; exit point of _disp_num_5

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_num_2	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;7 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;   STK01
;   STK00
;   r0x1044
;; Starting pCode block
_disp_num_2	;Function start
; 2 exit points
;	.line	350; "main.c"	void disp_num_2( unsigned char num )
	MOVRA	r0x1040
;	.line	352; "main.c"	Lcd_seg[1] &= 0b00011010;
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1041
	MOVAI	0x1a
	ANDRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 1)
;	.line	353; "main.c"	Lcd_seg[1]|= LED7Code20[num];
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1041
	MOVAR	r0x1040
	ADDAI	(_LED7Code20 + 0)
	MOVRA	r0x1042
	MOVAI	high (_LED7Code20 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1043
	MOVAR	r0x1042
	MOVRA	STK01
	MOVAR	r0x1043
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1044
	MOVAR	r0x1044
	ORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 1)
;	.line	354; "main.c"	Lcd_seg[2]= LED7Code21[num];
	MOVAR	r0x1040
	ADDAI	(_LED7Code21 + 0)
	MOVRA	r0x1040
	MOVAI	high (_LED7Code21 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1041
	MOVAR	r0x1040
	MOVRA	STK01
	MOVAR	r0x1041
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1042
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1042
	MOVRA	(_Lcd_seg + 2)
	RETURN	
; exit point of _disp_num_2

;***
;  pBlock Stats: dbName = C
;***
;entry:  _disp_num_1	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1040
;   r0x1041
;   r0x1042
;   STK01
;   STK00
;   r0x1043
;; Starting pCode block
_disp_num_1	;Function start
; 2 exit points
;	.line	340; "main.c"	void disp_num_1( unsigned char num )
	MOVRA	r0x1040
;	.line	343; "main.c"	Lcd_seg[1] &= 0b00010101;
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1041
	MOVAI	0x15
	ANDRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 1)
;	.line	344; "main.c"	Lcd_seg[0]= LED7Code10[num];
	MOVAR	r0x1040
	ADDAI	(_LED7Code10 + 0)
	MOVRA	r0x1041
	MOVAI	high (_LED7Code10 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1041
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	(_Lcd_seg + 0)
	MOVRA	r0x1043
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
;;101	MOVAR	r0x1043
;	.line	345; "main.c"	Lcd_seg[1]|= LED7Code11[num];
	MOVAR	(_Lcd_seg + 1)
	MOVRA	r0x1041
	MOVAR	r0x1040
	ADDAI	(_LED7Code11 + 0)
	MOVRA	r0x1040
	MOVAI	high (_LED7Code11 + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1042
	MOVAR	r0x1040
	MOVRA	STK01
	MOVAR	r0x1042
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1043
	MOVAR	r0x1043
	ORRA	r0x1041
;;gen.c:6379: size=0/1, offset=0, AOP_TYPE(res)=8
	MOVAR	r0x1041
	MOVRA	(_Lcd_seg + 1)
	RETURN	
; exit point of _disp_num_1

;***
;  pBlock Stats: dbName = C
;***
;entry:  _set_normal_seg	;Function start
; 2 exit points
;has an exit
;functions called:
;   _setb_io
;   _clrb_io
;   _clrb_io
;   _setb_io
;   _setb_io
;   _clrb_io
;   _clrb_io
;   _setb_io
;7 compiler assigned registers:
;   r0x1041
;   STK00
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   r0x1046
;; Starting pCode block
_set_normal_seg	;Function start
; 2 exit points
;	.line	303; "main.c"	void set_normal_seg(unsigned char sta,unsigned char which_com) 
	MOVRA	r0x1041
	MOVAR	STK00
	MOVRA	r0x1042
;	.line	307; "main.c"	mem_mask = seg_bit[which_com];  
	MOVAR	r0x1042
	ADDAI	(_seg_bit + 0)
	MOVRA	r0x1042
	MOVAI	high (_seg_bit + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1043
	MOVAR	r0x1042
	MOVRA	FSR0
	MOVAR	r0x1043
	MOVRA	FSR1
	MOVAR	INDF2
	MOVRA	r0x1044
;	.line	308; "main.c"	for(i=0;i<9;i++)    //0-7代表的是 7个IO SEG 前面的7个缓存都是用在了普通IO口上的 这里是017只用到了6个
	CLRR	r0x1042
;;unsigned compare: left < lit(0x9=9), size=1
_00194_DS_
	MOVAI	0x09
	RSUBAR	r0x1042
	JBCLR	PFLAG,0
	GOTO	_00198_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	310; "main.c"	t = mem_mask&Lcd_seg[i];     //读取缓存中的数据
	MOVAR	r0x1042
	ADDAI	(_Lcd_seg + 0)
	MOVRA	r0x1043
	MOVAI	high (_Lcd_seg + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1045
	MOVAR	r0x1043
	MOVRA	FSR0
	MOVAR	r0x1045
	MOVRA	FSR1
	MOVAR	INDF2
	MOVRA	r0x1046
	MOVAR	r0x1046
	ANDAR	r0x1044
	MOVRA	r0x1043
;	.line	311; "main.c"	if(sta == 0x00)
	MOVAI	0x00
	ORAR	r0x1041
	JBSET	PFLAG,2
	GOTO	_00192_DS_
;	.line	313; "main.c"	if(t == 0x00)
	MOVAI	0x00
	ORAR	r0x1043
	JBSET	PFLAG,2
	GOTO	_00186_DS_
;	.line	315; "main.c"	setb_io(i);
	MOVAR	r0x1042
	CALL	_setb_io
	GOTO	_00196_DS_
_00186_DS_
;	.line	319; "main.c"	clrb_io(i);
	MOVAR	r0x1042
	CALL	_clrb_io
	GOTO	_00196_DS_
_00192_DS_
;	.line	324; "main.c"	if(t == 0x00)
	MOVAI	0x00
	ORAR	r0x1043
	JBSET	PFLAG,2
	GOTO	_00189_DS_
;	.line	326; "main.c"	clrb_io(i);
	MOVAR	r0x1042
	CALL	_clrb_io
	GOTO	_00196_DS_
_00189_DS_
;	.line	330; "main.c"	setb_io(i);
	MOVAR	r0x1042
	CALL	_setb_io
_00196_DS_
;	.line	308; "main.c"	for(i=0;i<9;i++)    //0-7代表的是 7个IO SEG 前面的7个缓存都是用在了普通IO口上的 这里是017只用到了6个
	INCR	r0x1042
	GOTO	_00194_DS_
_00198_DS_
	RETURN	
; exit point of _set_normal_seg

;***
;  pBlock Stats: dbName = C
;***
;entry:  _clrb_io	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1040
;; Starting pCode block
_clrb_io	;Function start
; 2 exit points
;	.line	288; "main.c"	void clrb_io(unsigned char seg_nums)  
	MOVRA	r0x1040
;	.line	290; "main.c"	if( seg_nums==0 ) Set_Low_Seg_1
	MOVAI	0x00
	ORAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00163_DS_
	BSET	_OEP0bits,4
	BCLR	_IOP0bits,4
_00163_DS_
;	.line	291; "main.c"	if( seg_nums==1 ) Set_Low_Seg_2
	MOVAR	r0x1040
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00165_DS_
	BSET	_OEP0bits,5
	BCLR	_IOP0bits,5
_00165_DS_
;	.line	292; "main.c"	if( seg_nums==2 ) Set_Low_Seg_3
	MOVAR	r0x1040
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00167_DS_
	BSET	_OEP0bits,6
	BCLR	_IOP0bits,6
_00167_DS_
;	.line	293; "main.c"	if( seg_nums==3 ) Set_Low_Seg_4
	MOVAR	r0x1040
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00169_DS_
	BSET	_OEP1bits,6
	BCLR	_AUCR,1
	BCLR	_IOP1bits,6
_00169_DS_
;	.line	294; "main.c"	if( seg_nums==4 ) Set_Low_Seg_5
	MOVAR	r0x1040
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00171_DS_
	BSET	_OEP1bits,4
	BCLR	_IOP1bits,4
_00171_DS_
;	.line	295; "main.c"	if( seg_nums==5 ) Set_Low_Seg_6
	MOVAR	r0x1040
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00173_DS_
	BSET	_OEP1bits,3
	BCLR	_IOP1bits,3
_00173_DS_
;	.line	296; "main.c"	if( seg_nums==6 ) Set_Low_Seg_7
	MOVAR	r0x1040
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00175_DS_
	BSET	_OEP1bits,2
	BCLR	_IOP1bits,2
_00175_DS_
;	.line	297; "main.c"	if( seg_nums==7 ) Set_Low_Seg_8 
	MOVAR	r0x1040
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00177_DS_
	BSET	_OEP1bits,1
	BCLR	_IOP1bits,1
_00177_DS_
;	.line	298; "main.c"	if( seg_nums==8 ) Set_Low_Seg_9        
	MOVAR	r0x1040
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00180_DS_
	BSET	_OEP1bits,0
	BCLR	_IOP1bits,0
_00180_DS_
	RETURN	
; exit point of _clrb_io

;***
;  pBlock Stats: dbName = C
;***
;entry:  _setb_io	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1040
;; Starting pCode block
_setb_io	;Function start
; 2 exit points
;	.line	275; "main.c"	void setb_io(unsigned char seg_nums)  
	MOVRA	r0x1040
;	.line	277; "main.c"	if( seg_nums==0 ) Set_High_Seg_1
	MOVAI	0x00
	ORAR	r0x1040
	JBSET	PFLAG,2
	GOTO	_00140_DS_
	BSET	_OEP0bits,4
	BSET	_IOP0bits,4
_00140_DS_
;	.line	278; "main.c"	if( seg_nums==1 ) Set_High_Seg_2
	MOVAR	r0x1040
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00142_DS_
	BSET	_OEP0bits,5
	BSET	_IOP0bits,5
_00142_DS_
;	.line	279; "main.c"	if( seg_nums==2 ) Set_High_Seg_3
	MOVAR	r0x1040
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00144_DS_
	BSET	_OEP0bits,6
	BSET	_IOP0bits,6
_00144_DS_
;	.line	280; "main.c"	if( seg_nums==3 ) Set_High_Seg_4
	MOVAR	r0x1040
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00146_DS_
	BSET	_OEP1bits,6
	BSET	_AUCR,1
	BSET	_IOP1bits,6
_00146_DS_
;	.line	281; "main.c"	if( seg_nums==4 ) Set_High_Seg_5
	MOVAR	r0x1040
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00148_DS_
	BSET	_OEP1bits,4
	BSET	_IOP1bits,4
_00148_DS_
;	.line	282; "main.c"	if( seg_nums==5 ) Set_High_Seg_6
	MOVAR	r0x1040
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00150_DS_
	BSET	_OEP1bits,3
	BSET	_IOP1bits,3
_00150_DS_
;	.line	283; "main.c"	if( seg_nums==6 ) Set_High_Seg_7
	MOVAR	r0x1040
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00152_DS_
	BSET	_OEP1bits,2
	BSET	_IOP1bits,2
_00152_DS_
;	.line	284; "main.c"	if( seg_nums==7 ) Set_High_Seg_8 
	MOVAR	r0x1040
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00154_DS_
	BSET	_OEP1bits,1
	BSET	_IOP1bits,1
_00154_DS_
;	.line	285; "main.c"	if( seg_nums==8 ) Set_High_Seg_9
	MOVAR	r0x1040
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00157_DS_
	BSET	_OEP1bits,0
	BSET	_IOP1bits,0
_00157_DS_
	RETURN	
; exit point of _setb_io

;***
;  pBlock Stats: dbName = C
;***
;entry:  _adc_loop_speed	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_us
;   _delay_us
;7 compiler assigned registers:
;   STK00
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   r0x1046
;   r0x1047
;; Starting pCode block
_adc_loop_speed	;Function start
; 2 exit points
;	.line	253; "main.c"	P04OE = 0;
	BCLR	_OEP0bits,4
;	.line	254; "main.c"	AN0SEL = 0b00010000;  //P04口是速度采集口
	MOVAI	0x10
	MOVRA	_AN0SEL
;	.line	255; "main.c"	ADCR0  = 0b01000001; 
	MOVAI	0x41
	MOVRA	_ADCR0
;	.line	256; "main.c"	ADCR1  = 0b00000010; //4V 做基准
	MOVAI	0x02
	MOVRA	_ADCR1
;	.line	257; "main.c"	ADCR2  = 0b00001111;
	MOVAI	0x0f
	MOVRA	_ADCR2
;	.line	258; "main.c"	delay_us(100);
	MOVAI	0x64
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay_us
;	.line	259; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00128_DS_
;	.line	260; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00128_DS_
;	.line	261; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00131_DS_
;	.line	262; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00131_DS_
;	.line	263; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00134_DS_
;	.line	264; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00134_DS_
;	.line	265; "main.c"	speed_AD = ADRH;
	MOVAR	_ADRH
	MOVRA	_speed_AD
	CLRR	(_speed_AD + 1)
;	.line	266; "main.c"	speed_AD = ( speed_AD << 4 )+ ADRL;
	SWAPAR	(_speed_AD + 1)
	ANDAI	0xf0
	MOVRA	r0x1042
	SWAPAR	_speed_AD
	MOVRA	r0x1043
	ANDAI	0x0f
	ORRA	r0x1042
	XORRA	r0x1043
	MOVAR	_ADRL
	MOVRA	r0x1046
;;1	MOVRA	r0x1044
;;1	CLRR	r0x1045
;;100	MOVAR	r0x1044
	MOVAI	0x00
	MOVRA	r0x1047
	MOVAR	r0x1046
	ADDAR	r0x1043
	MOVRA	_speed_AD
	MOVAR	r0x1042
	MOVRA	(_speed_AD + 1)
	MOVAR	r0x1047
	JBCLR	PFLAG,0
	JZAR	r0x1047
	ADDRA	(_speed_AD + 1)
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
;	.line	267; "main.c"	speed_AD = speed_AD >> 2;
	BCLR	PFLAG,0
	RRR	(_speed_AD + 1)
	RRR	_speed_AD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_speed_AD + 1)
	RRR	_speed_AD
;	.line	268; "main.c"	ADON = 0;  
	BCLR	_ADCR0bits,0
;	.line	269; "main.c"	AN0SEL = 0b00000000; //设置回来变成IO
	CLRR	_AN0SEL
	RETURN	
; exit point of _adc_loop_speed

;***
;  pBlock Stats: dbName = C
;***
;entry:  _adc_loop_bat	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay_us
;   _delay_us
;7 compiler assigned registers:
;   STK00
;   r0x1042
;   r0x1043
;   r0x1044
;   r0x1045
;   r0x1046
;   r0x1047
;; Starting pCode block
_adc_loop_bat	;Function start
; 2 exit points
;	.line	232; "main.c"	P13OE = 0;
	BCLR	_OEP1bits,3
;	.line	233; "main.c"	AN1SEL = 0b00001000;   	//P16默认居然是AD口   p13是电压采集口 
	MOVAI	0x08
	MOVRA	_AN1SEL
;	.line	234; "main.c"	ADCR0  = 0b10100001; 
	MOVAI	0xa1
	MOVRA	_ADCR0
;	.line	235; "main.c"	ADCR1  = 0b00000010; // 4V 做基准
	MOVAI	0x02
	MOVRA	_ADCR1
;	.line	236; "main.c"	ADCR2  = 0b00001111;
	MOVAI	0x0f
	MOVRA	_ADCR2
;	.line	237; "main.c"	delay_us(100);
	MOVAI	0x64
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay_us
;	.line	238; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00117_DS_
;	.line	239; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00117_DS_
;	.line	240; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00120_DS_
;	.line	241; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00120_DS_
;	.line	242; "main.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00123_DS_
;	.line	243; "main.c"	while(!ADEOC);
	JBSET	_ADCR0bits,1
	GOTO	_00123_DS_
;	.line	244; "main.c"	BAT_AD = ADRH;
	MOVAR	_ADRH
	MOVRA	_BAT_AD
	CLRR	(_BAT_AD + 1)
;	.line	245; "main.c"	BAT_AD = ( BAT_AD << 4 )+ ADRL;
	SWAPAR	(_BAT_AD + 1)
	ANDAI	0xf0
	MOVRA	r0x1042
	SWAPAR	_BAT_AD
	MOVRA	r0x1043
	ANDAI	0x0f
	ORRA	r0x1042
	XORRA	r0x1043
	MOVAR	_ADRL
	MOVRA	r0x1046
;;1	MOVRA	r0x1044
;;1	CLRR	r0x1045
;;99	MOVAR	r0x1044
	MOVAI	0x00
	MOVRA	r0x1047
	MOVAR	r0x1046
	ADDAR	r0x1043
	MOVRA	_BAT_AD
	MOVAR	r0x1042
	MOVRA	(_BAT_AD + 1)
	MOVAR	r0x1047
	JBCLR	PFLAG,0
	JZAR	r0x1047
	ADDRA	(_BAT_AD + 1)
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
;	.line	246; "main.c"	BAT_AD = BAT_AD >> 2;
	BCLR	PFLAG,0
	RRR	(_BAT_AD + 1)
	RRR	_BAT_AD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	PFLAG,0
	RRR	(_BAT_AD + 1)
	RRR	_BAT_AD
;	.line	248; "main.c"	ADON = 0;
	BCLR	_ADCR0bits,0
;	.line	249; "main.c"	AN1SEL = 0b00000000; //设置回来变成IO
	CLRR	_AN1SEL
	RETURN	
; exit point of _adc_loop_bat

;***
;  pBlock Stats: dbName = C
;***
;entry:  _TwobyteDIVone	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_TwobyteDIVone	;Function start
; 2 exit points
;	.line	228; "main.c"	__endasm;    
	CLRR _R1R0
	CLRR _R1R0+1
	CLRR _R2 ;清掉商和余数的寄存器
	MOVR _R5
	JBCLR PFLAG,2 ;判断除数是否为0，是0无意义，退出
	RETURN
	MOVAI 16
	MOVRA _R6 ;根据被除数的数据类型确定计数16次
	MOVR _R3R4+1
	JBSET PFLAG,2 ;判断被除数是否为0，是0结果为0，退出
	GOTO DIV_LOOP
	MOVR _R3R4
	JBCLR PFLAG,2
	RETURN
DIV_LOOP:
	;除法主循环
	BCLR PFLAG,0
	RLR _R3R4 ;每循环1次，就把被除数整体由高到低放开1位
	RLR _R3R4+1
	RLR _R2
	RLR _R7
	MOVAR _R5 ;每放开1位，就把数重新和除数做下比较
	RSUBAR _R2
	JBCLR PFLAG,0
	GOTO UPDATA_DIV
	JBCLR _R7,0
	GOTO $+3
	BCLR PFLAG,0 ;放开1位后的被除数如果比除数小，清0标志位
	GOTO R0_SHIFT
UPDATA_DIV:
	MOVRA _R2
	BSET PFLAG,0 ;放开1位后的被除数如果比除数大，置1标志位
R0_SHIFT:
	RLR _R1R0 ;1次循环结束，把商整体左移1位
	RLR _R1R0+1
	DJZR _R6 ;判断计数次数
	GOTO DIV_LOOP
	
	RETURN	
; exit point of _TwobyteDIVone

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delay_us	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1040
;   STK00
;   r0x1041
;; Starting pCode block
_delay_us	;Function start
; 2 exit points
;	.line	172; "main.c"	void delay_us(unsigned int time_delay)
	MOVRA	r0x1040
	MOVAR	STK00
	MOVRA	r0x1041
_00105_DS_
;	.line	174; "main.c"	while( time_delay!=0 )     	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	
	MOVAR	r0x1041
	ORAR	r0x1040
	JBCLR	PFLAG,2
	GOTO	_00108_DS_
;	.line	176; "main.c"	time_delay--;
	MOVAI	0xff
	ADDRA	r0x1041
	JBSET	PFLAG,0
	DECR	r0x1040
;	.line	177; "main.c"	ClrWdt();
	clrwdt
	GOTO	_00105_DS_
_00108_DS_
	RETURN	
; exit point of _delay_us


;	code size estimation:
;	 1668+    0 =  1668 instructions ( 3336 byte)

	end
