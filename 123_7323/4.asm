;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Mon Mar 19 14:47:05 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"4.c"
	list	p=4K7323
	radix dec
	include "4K7323.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_Sub_Read1302
	extern	_Sub_GetAdc
	extern	_Sub_KeyScan
	extern	_Sub_AlarmEvent
	extern	_Sub_LedDisp
	extern	_Sub_Buzzer
	extern	_PFLAGbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_OSCMbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_IOP2bits
	extern	_OEP2bits
	extern	_PUP2bits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_T2CRbits
	extern	_T3CRbits
	extern	_PWMCR0bits
	extern	_PWMCR1bits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ANSELbits
	extern	_LEDCR0bits
	extern	_LEDCR1bits
	extern	_LCDCR0bits
	extern	_LCDCR1bits
	extern	_LCDIOS0bits
	extern	_LCDIOS1bits
	extern	_LCDIOS2bits
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_STATUS
	extern	_PFLAG
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_OSCM
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_IOP2
	extern	_OEP2
	extern	_PUP2
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
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_ANSEL
	extern	_LEDCR0
	extern	_LEDCR1
	extern	_LCDCR0
	extern	_LCDCR1
	extern	_LCDIOS0
	extern	_LCDIOS1
	extern	_LCDIOS2
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Sub_TA6932Disp
	global	_Sub_SendByteToPT6964
	global	_Sub_PT6964PowerOnAllDisp2s
	global	_Sub_IoInitial
	global	_Sub_Write1302
	global	_Sub_Initial
	global	_main
	global	_Sub_TC2Initial
	global	_Sub_SendDispDataToTA6932
	global	_UserFlag
	global	_UserFlag1
	global	_GV_2msClock
	global	_GV_10msClock
	global	_GV_100msClock
	global	_GV_200msClock
	global	_GV_250msClock
	global	_GV_500msClock
	global	_GV_BuzzerPeriod
	global	_GV_BuzzerBBPeriod
	global	_GV_KeyDebounce
	global	_GV_PreKey
	global	_GV_CurKey
	global	_GV_LongKeyTimer
	global	_GV_Mode
	global	_GV_RealTimeClockSetStep
	global	_GV_AlarmClockSetStep
	global	_GV_BuzzerIndex
	global	_GV_BuzzerDuty
	global	_GV_GetByteFromDs1302
	global	_GV_GetPT6964Data
	global	_GV_SetYearSingleDig
	global	_GV_SetYearTenDig
	global	_GV_SetYearHundredsDig
	global	_GV_SetYearthousandDig
	global	_GV_RunYearSingleDig
	global	_GV_RunYearTenDig
	global	_GV_RunYearHundredsDig
	global	_GV_RunYearthousandDig
	global	_GV_SetMonthSingleDig
	global	_GV_SetMonthTenDig
	global	_GV_RunMonthSingleDig
	global	_GV_RunMonthTenDig
	global	_GV_SetDaySingleDig
	global	_GV_SetDayTenDig
	global	_GV_RunDaySingleDig
	global	_GV_RunDayTenDig
	global	_GV_SetRealTimeClockHrSingleDig
	global	_GV_SetRealTimeClockHrTenDig
	global	_GV_SetRealTimeClockMinSingleDig
	global	_GV_SetRealTimeClockMinTenDig
	global	_GV_RunRealTimeClockHrSingleDig
	global	_GV_RunRealTimeClockHrTenDig
	global	_GV_RunRealTimeClockMinSingleDig
	global	_GV_RunRealTimeClockMinTenDig
	global	_GV_SetAlarmClockHrSingleDig
	global	_GV_SetAlarmClockHrTenDig
	global	_GV_SetAlarmClockMinSingleDig
	global	_GV_SetAlarmClockMinTenDig
	global	_GV_RunAlarmClockHrSingleDig
	global	_GV_RunAlarmClockHrTenDig
	global	_GV_RunAlarmClockMinSingleDig
	global	_GV_RunAlarmClockMinTenDig
	global	_GV_15sNoOperationCnt
	global	_GV_DisplayBrightnessLevel
	global	_GV_SnoozeTimer
	global	_DATA_ID
	global	_LV_Temp
	global	_ABuf
	global	_StatusBuf
	global	_FSR_TEMP
	global	_LV_Dig1_SG1_8
	global	_LV_Dig2_SG1_8
	global	_LV_Dig3_SG1_8
	global	_LV_Dig4_SG1_8
	global	_LV_Dig5_SG1_8
	global	_LV_Dig6_SG1_8
	global	_LV_Dig7_SG1_8
	global	_LV_Dig8_SG1_8
	global	_LV_Dig9_SG1_8
	global	_LV_Dig10_SG1_8
	global	_LV_Dig11_SG1_8
	global	_LV_Dig12_SG1_8
	global	_LV_Dig13_SG1_8
	global	_C_NumberTable

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
UD_4_0	udata
_UserFlag	res	1

UD_4_1	udata
_UserFlag1	res	1

UD_4_2	udata
_GV_2msClock	res	1

UD_4_3	udata
_GV_10msClock	res	1

UD_4_4	udata
_GV_100msClock	res	1

UD_4_5	udata
_GV_200msClock	res	1

UD_4_6	udata
_GV_250msClock	res	1

UD_4_7	udata
_GV_500msClock	res	1

UD_4_8	udata
_GV_BuzzerPeriod	res	1

UD_4_9	udata
_GV_BuzzerBBPeriod	res	1

UD_4_10	udata
_GV_KeyDebounce	res	1

UD_4_11	udata
_GV_PreKey	res	1

UD_4_12	udata
_GV_CurKey	res	1

UD_4_13	udata
_GV_LongKeyTimer	res	2

UD_4_14	udata
_GV_Mode	res	1

UD_4_15	udata
_GV_RealTimeClockSetStep	res	1

UD_4_16	udata
_GV_AlarmClockSetStep	res	1

UD_4_17	udata
_GV_BuzzerIndex	res	1

UD_4_18	udata
_GV_BuzzerDuty	res	1

UD_4_19	udata
_GV_GetByteFromDs1302	res	1

UD_4_20	udata
_GV_GetPT6964Data	res	1

UD_4_21	udata
_GV_SetYearSingleDig	res	1

UD_4_22	udata
_GV_SetYearTenDig	res	1

UD_4_23	udata
_GV_SetYearHundredsDig	res	1

UD_4_24	udata
_GV_RunYearSingleDig	res	1

UD_4_25	udata
_GV_RunYearTenDig	res	1

UD_4_26	udata
_GV_RunYearHundredsDig	res	1

UD_4_27	udata
_GV_SetMonthSingleDig	res	1

UD_4_28	udata
_GV_SetMonthTenDig	res	1

UD_4_29	udata
_GV_RunMonthSingleDig	res	1

UD_4_30	udata
_GV_RunMonthTenDig	res	1

UD_4_31	udata
_GV_SetDaySingleDig	res	1

UD_4_32	udata
_GV_SetDayTenDig	res	1

UD_4_33	udata
_GV_RunDaySingleDig	res	1

UD_4_34	udata
_GV_RunDayTenDig	res	1

UD_4_35	udata
_GV_SetRealTimeClockHrSingleDig	res	1

UD_4_36	udata
_GV_SetRealTimeClockHrTenDig	res	1

UD_4_37	udata
_GV_SetRealTimeClockMinSingleDig	res	1

UD_4_38	udata
_GV_SetRealTimeClockMinTenDig	res	1

UD_4_39	udata
_GV_RunRealTimeClockHrSingleDig	res	1

UD_4_40	udata
_GV_RunRealTimeClockHrTenDig	res	1

UD_4_41	udata
_GV_RunRealTimeClockMinSingleDig	res	1

UD_4_42	udata
_GV_RunRealTimeClockMinTenDig	res	1

UD_4_43	udata
_GV_SetAlarmClockHrSingleDig	res	1

UD_4_44	udata
_GV_SetAlarmClockHrTenDig	res	1

UD_4_45	udata
_GV_SetAlarmClockMinSingleDig	res	1

UD_4_46	udata
_GV_SetAlarmClockMinTenDig	res	1

UD_4_47	udata
_GV_RunAlarmClockHrSingleDig	res	1

UD_4_48	udata
_GV_RunAlarmClockHrTenDig	res	1

UD_4_49	udata
_GV_RunAlarmClockMinSingleDig	res	1

UD_4_50	udata
_GV_RunAlarmClockMinTenDig	res	1

UD_4_51	udata
_GV_15sNoOperationCnt	res	1

UD_4_52	udata
_GV_DisplayBrightnessLevel	res	1

UD_4_53	udata
_GV_SnoozeTimer	res	1

UD_4_54	udata
_DATA_ID	res	2

UD_4_55	udata
_LV_Temp	res	2

UD_4_56	udata
_ABuf	res	1

UD_4_57	udata
_StatusBuf	res	1

UD_4_58	udata
_FSR_TEMP	res	1

UD_4_59	udata
_LV_Dig1_SG1_8	res	1

UD_4_60	udata
_LV_Dig2_SG1_8	res	1

UD_4_61	udata
_LV_Dig3_SG1_8	res	1

UD_4_62	udata
_LV_Dig4_SG1_8	res	1

UD_4_63	udata
_LV_Dig5_SG1_8	res	1

UD_4_64	udata
_LV_Dig6_SG1_8	res	1

UD_4_65	udata
_LV_Dig7_SG1_8	res	1

UD_4_66	udata
_LV_Dig8_SG1_8	res	1

UD_4_67	udata
_LV_Dig9_SG1_8	res	1

UD_4_68	udata
_LV_Dig10_SG1_8	res	1

UD_4_69	udata
_LV_Dig11_SG1_8	res	1

UD_4_70	udata
_LV_Dig12_SG1_8	res	1

UD_4_71	udata
_LV_Dig13_SG1_8	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_4_0	udata
r0x102B	res	1
r0x102C	res	1
r0x1028	res	1
r0x1029	res	1
r0x102A	res	1
r0x1027	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_4_0	idata
_GV_SetYearthousandDig
	db	0x02


ID_4_1	idata
_GV_RunYearthousandDig
	db	0x02


ID_4_2	idata
_C_NumberTable
	db	0x3f
	db	0x06
	db	0x5b
	db	0x4f
	db	0x66
	db	0x6d
	db	0x7d
	db	0x07
	db	0x7f
	db	0x6f
	db	0x00
	db	0x00


;@Allocation info for local variables in function 'main'
;@main Sub_Read1302              Allocated to registers ;size:2
;@main Sub_Write1302             Allocated to registers ;size:2
;@main Sub_Initial               Allocated to registers ;size:2
;@main Sub_GetAdc                Allocated to registers ;size:2
;@main Sub_KeyScan               Allocated to registers ;size:2
;@main Sub_AlarmEvent            Allocated to registers ;size:2
;@main Sub_TA6932Disp            Allocated to registers ;size:2
;@main Sub_LedDisp               Allocated to registers ;size:2
;@main Sub_Buzzer                Allocated to registers ;size:2
;@main Sub_PT6964PowerOnAllDisp2s Allocated to registers ;size:2
;@main Sub_IoInitial             Allocated to registers ;size:2
;@main Sub_SendByteToPT6964      Allocated to registers ;size:2
;@main main                      Allocated to registers ;size:2
;@main PFLAGbits                 Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main IOP2bits                  Allocated to registers ;size:1
;@main OEP2bits                  Allocated to registers ;size:1
;@main PUP2bits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main T2CRbits                  Allocated to registers ;size:1
;@main T3CRbits                  Allocated to registers ;size:1
;@main PWMCR0bits                Allocated to registers ;size:1
;@main PWMCR1bits                Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main ANSELbits                 Allocated to registers ;size:1
;@main LEDCR0bits                Allocated to registers ;size:1
;@main LEDCR1bits                Allocated to registers ;size:1
;@main LCDCR0bits                Allocated to registers ;size:1
;@main LCDCR1bits                Allocated to registers ;size:1
;@main LCDIOS0bits               Allocated to registers ;size:1
;@main LCDIOS1bits               Allocated to registers ;size:1
;@main LCDIOS2bits               Allocated to registers ;size:1
;@main UserFlag                  Allocated to registers ;size:1
;@main UserFlag1                 Allocated to registers ;size:1
;@main GV_2msClock               Allocated to registers ;size:1
;@main GV_10msClock              Allocated to registers ;size:1
;@main GV_100msClock             Allocated to registers ;size:1
;@main GV_200msClock             Allocated to registers ;size:1
;@main GV_250msClock             Allocated to registers ;size:1
;@main GV_500msClock             Allocated to registers ;size:1
;@main GV_BuzzerPeriod           Allocated to registers ;size:1
;@main GV_BuzzerBBPeriod         Allocated to registers ;size:1
;@main GV_KeyDebounce            Allocated to registers ;size:1
;@main GV_PreKey                 Allocated to registers ;size:1
;@main GV_CurKey                 Allocated to registers ;size:1
;@main GV_LongKeyTimer           Allocated to registers ;size:2
;@main GV_Mode                   Allocated to registers ;size:1
;@main GV_RealTimeClockSetStep   Allocated to registers ;size:1
;@main GV_AlarmClockSetStep      Allocated to registers ;size:1
;@main GV_BuzzerIndex            Allocated to registers ;size:1
;@main GV_BuzzerDuty             Allocated to registers ;size:1
;@main GV_GetByteFromDs1302      Allocated to registers ;size:1
;@main GV_GetPT6964Data          Allocated to registers ;size:1
;@main GV_SetYearSingleDig       Allocated to registers ;size:1
;@main GV_SetYearTenDig          Allocated to registers ;size:1
;@main GV_SetYearHundredsDig     Allocated to registers ;size:1
;@main GV_SetYearthousandDig     Allocated to registers ;size:1
;@main GV_RunYearSingleDig       Allocated to registers ;size:1
;@main GV_RunYearTenDig          Allocated to registers ;size:1
;@main GV_RunYearHundredsDig     Allocated to registers ;size:1
;@main GV_RunYearthousandDig     Allocated to registers ;size:1
;@main GV_SetMonthSingleDig      Allocated to registers ;size:1
;@main GV_SetMonthTenDig         Allocated to registers ;size:1
;@main GV_RunMonthSingleDig      Allocated to registers ;size:1
;@main GV_RunMonthTenDig         Allocated to registers ;size:1
;@main GV_SetDaySingleDig        Allocated to registers ;size:1
;@main GV_SetDayTenDig           Allocated to registers ;size:1
;@main GV_RunDaySingleDig        Allocated to registers ;size:1
;@main GV_RunDayTenDig           Allocated to registers ;size:1
;@main GV_SetRealTimeClockHrSingleDig Allocated to registers ;size:1
;@main GV_SetRealTimeClockHrTenDig Allocated to registers ;size:1
;@main GV_SetRealTimeClockMinSingleDig Allocated to registers ;size:1
;@main GV_SetRealTimeClockMinTenDig Allocated to registers ;size:1
;@main GV_RunRealTimeClockHrSingleDig Allocated to registers ;size:1
;@main GV_RunRealTimeClockHrTenDig Allocated to registers ;size:1
;@main GV_RunRealTimeClockMinSingleDig Allocated to registers ;size:1
;@main GV_RunRealTimeClockMinTenDig Allocated to registers ;size:1
;@main GV_SetAlarmClockHrSingleDig Allocated to registers ;size:1
;@main GV_SetAlarmClockHrTenDig  Allocated to registers ;size:1
;@main GV_SetAlarmClockMinSingleDig Allocated to registers ;size:1
;@main GV_SetAlarmClockMinTenDig Allocated to registers ;size:1
;@main GV_RunAlarmClockHrSingleDig Allocated to registers ;size:1
;@main GV_RunAlarmClockHrTenDig  Allocated to registers ;size:1
;@main GV_RunAlarmClockMinSingleDig Allocated to registers ;size:1
;@main GV_RunAlarmClockMinTenDig Allocated to registers ;size:1
;@main GV_15sNoOperationCnt      Allocated to registers ;size:1
;@main GV_DisplayBrightnessLevel Allocated to registers ;size:1
;@main GV_SnoozeTimer            Allocated to registers ;size:1
;@main DATA_ID                   Allocated to registers ;size:2
;@main LV_Temp                   Allocated to registers ;size:2
;@main ABuf                      Allocated to registers ;size:1
;@main StatusBuf                 Allocated to registers ;size:1
;@main FSR_TEMP                  Allocated to registers ;size:1
;@main LV_Dig1_SG1_8             Allocated to registers ;size:1
;@main LV_Dig2_SG1_8             Allocated to registers ;size:1
;@main LV_Dig3_SG1_8             Allocated to registers ;size:1
;@main LV_Dig4_SG1_8             Allocated to registers ;size:1
;@main LV_Dig5_SG1_8             Allocated to registers ;size:1
;@main LV_Dig6_SG1_8             Allocated to registers ;size:1
;@main LV_Dig7_SG1_8             Allocated to registers ;size:1
;@main LV_Dig8_SG1_8             Allocated to registers ;size:1
;@main LV_Dig9_SG1_8             Allocated to registers ;size:1
;@main LV_Dig10_SG1_8            Allocated to registers ;size:1
;@main LV_Dig11_SG1_8            Allocated to registers ;size:1
;@main LV_Dig12_SG1_8            Allocated to registers ;size:1
;@main LV_Dig13_SG1_8            Allocated to registers ;size:1
;@main C_NumberTable             Allocated to registers ;size:12
;@main INDF                      Allocated to registers ;size:1
;@main INDF0                     Allocated to registers ;size:1
;@main INDF1                     Allocated to registers ;size:1
;@main INDF2                     Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main PFLAG                     Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main IOP2                      Allocated to registers ;size:1
;@main OEP2                      Allocated to registers ;size:1
;@main PUP2                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@main T2CR                      Allocated to registers ;size:1
;@main T2CNT                     Allocated to registers ;size:1
;@main T2LOAD                    Allocated to registers ;size:1
;@main T2DATA                    Allocated to registers ;size:1
;@main T3CR                      Allocated to registers ;size:1
;@main T3CNT                     Allocated to registers ;size:1
;@main T3LOAD                    Allocated to registers ;size:1
;@main PWM0DE                    Allocated to registers ;size:1
;@main PWM1DE                    Allocated to registers ;size:1
;@main PWM2DE                    Allocated to registers ;size:1
;@main PWMCR0                    Allocated to registers ;size:1
;@main PWMCR1                    Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main ANSEL                     Allocated to registers ;size:1
;@main LEDCR0                    Allocated to registers ;size:1
;@main LEDCR1                    Allocated to registers ;size:1
;@main LCDCR0                    Allocated to registers ;size:1
;@main LCDCR1                    Allocated to registers ;size:1
;@main LCDIOS0                   Allocated to registers ;size:1
;@main LCDIOS1                   Allocated to registers ;size:1
;@main LCDIOS2                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'Sub_Initial'
;@end Allocation info for local variables in function 'Sub_Initial';
;@Allocation info for local variables in function 'Sub_Write1302'
;@Sub_Write1302 LV_Data                   Allocated to registers r0x1029 ;size:1
;@Sub_Write1302 LV_Addr                   Allocated to registers r0x1028 ;size:1
;@Sub_Write1302 i                         Allocated to registers r0x102A ;size:1
;@Sub_Write1302 LV_TempE                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_Write1302';
;@Allocation info for local variables in function 'Sub_IoInitial'
;@end Allocation info for local variables in function 'Sub_IoInitial';
;@Allocation info for local variables in function 'Sub_TC2Initial'
;@end Allocation info for local variables in function 'Sub_TC2Initial';
;@Allocation info for local variables in function 'Sub_PT6964PowerOnAllDisp2s'
;@end Allocation info for local variables in function 'Sub_PT6964PowerOnAllDisp2s';
;@Allocation info for local variables in function 'Sub_SendByteToPT6964'
;@Sub_SendByteToPT6964 LV_SendTodata             Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_SendByteToPT6964';
;@Allocation info for local variables in function 'Sub_TA6932Disp'
;@end Allocation info for local variables in function 'Sub_TA6932Disp';
;@Allocation info for local variables in function 'Sub_SendDispDataToTA6932'
;@Sub_SendDispDataToTA6932 LV_TempA                  Allocated to registers r0x1027 ;size:1
;@Sub_SendDispDataToTA6932 LV_TempB                  Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig1_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig2_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig3_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig4_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig5_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig6_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig7_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig8_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig9_SG1_8             Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig10_SG1_8            Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig11_SG1_8            Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig12_SG1_8            Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig13_SG1_8            Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_SendDispDataToTA6932';

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
; code
;--------------------------------------------------------
code_4	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Initial
;   _Sub_KeyScan
;   _Sub_Buzzer
;   _Sub_TA6932Disp
;   _Sub_AlarmEvent
;   _Sub_Initial
;   _Sub_KeyScan
;   _Sub_Buzzer
;   _Sub_TA6932Disp
;   _Sub_AlarmEvent
;2 compiler assigned registers:
;   r0x102B
;   r0x102C
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	174; "4.c"	Sub_Initial();
	CALL	_Sub_Initial
_00125_DS_
;	.line	178; "4.c"	ClrWdt(); //(feed the doggie )
	clrwdt
;	.line	180; "4.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00125_DS_
;	.line	182; "4.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	184; "4.c"	Sub_KeyScan();
	CALL	_Sub_KeyScan
;	.line	185; "4.c"	Sub_Buzzer();
	CALL	_Sub_Buzzer
;	.line	188; "4.c"	if(++GV_10msClock>=5) //
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00106_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	190; "4.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	191; "4.c"	Sub_TA6932Disp();
	CALL	_Sub_TA6932Disp
_00106_DS_
;	.line	195; "4.c"	if(++GV_100msClock>=50) //
	INCR	_GV_100msClock
;;unsigned compare: left < lit(0x32=50), size=1
	MOVAI	0x32
	RSUBAR	_GV_100msClock
	JBSET	PFLAG,0
	GOTO	_00108_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	197; "4.c"	GV_100msClock = 0;
	CLRR	_GV_100msClock
;	.line	198; "4.c"	Sub_AlarmEvent();
	CALL	_Sub_AlarmEvent
_00108_DS_
;	.line	202; "4.c"	if(++GV_200msClock>=100) //
	INCR	_GV_200msClock
;;unsigned compare: left < lit(0x64=100), size=1
	MOVAI	0x64
	RSUBAR	_GV_200msClock
	JBSET	PFLAG,0
	GOTO	_00110_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	204; "4.c"	GV_200msClock = 0;
	CLRR	_GV_200msClock
_00110_DS_
;	.line	208; "4.c"	if(++GV_250msClock>=125) //Per 250ms
	INCR	_GV_250msClock
;;unsigned compare: left < lit(0x7D=125), size=1
	MOVAI	0x7d
	RSUBAR	_GV_250msClock
	JBSET	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	210; "4.c"	GV_250msClock = 0;
	CLRR	_GV_250msClock
;	.line	211; "4.c"	BF_Clock250ms  = !BF_Clock250ms;
	CLRR	r0x102B
	JBCLR	_UserFlag1,0
	INCR	r0x102B
	MOVAR	r0x102B
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x102B
	MOVRA	r0x102C
;;100	MOVAR	r0x102C
	RRAR	r0x102B
	JBSET	PFLAG,0
	BCLR	_UserFlag1,0
	JBCLR	PFLAG,0
	BSET	_UserFlag1,0
_00112_DS_
;	.line	215; "4.c"	if(++GV_500msClock >= 249)//
	INCR	_GV_500msClock
;;unsigned compare: left < lit(0xF9=249), size=1
	MOVAI	0xf9
	RSUBAR	_GV_500msClock
	JBSET	PFLAG,0
	GOTO	_00125_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	217; "4.c"	GV_500msClock = 0;
	CLRR	_GV_500msClock
;	.line	218; "4.c"	BF_Clock500ms  = !BF_Clock500ms;
	CLRR	r0x102B
	JBCLR	_UserFlag,1
	INCR	r0x102B
	MOVAR	r0x102B
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x102B
	MOVRA	r0x102C
;;99	MOVAR	r0x102C
	RRAR	r0x102B
	JBSET	PFLAG,0
	BCLR	_UserFlag,1
	JBCLR	PFLAG,0
	BSET	_UserFlag,1
;	.line	220; "4.c"	if((GV_15sNoOperationCnt)&&(GV_Mode))//Automatically return to normal mode at 15 seconds without operation in setting mode.
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
;	.line	222; "4.c"	if(--GV_15sNoOperationCnt == 0)
	DECR	_GV_15sNoOperationCnt
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBSET	PFLAG,2
	GOTO	_00116_DS_
;	.line	224; "4.c"	GV_Mode = 0;//0=Normal mode; 1=clock set mode; 2=Alarm set mode
	CLRR	_GV_Mode
_00116_DS_
;	.line	228; "4.c"	if(GV_SnoozeTimer)
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBCLR	PFLAG,2
	GOTO	_00125_DS_
;	.line	230; "4.c"	GV_SnoozeTimer--;
	DECR	_GV_SnoozeTimer
	GOTO	_00125_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SendDispDataToTA6932	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_Read1302
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;1 compiler assigned register :
;   r0x1027
;; Starting pCode block
_Sub_SendDispDataToTA6932	;Function start
; 2 exit points
;	.line	515; "4.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_00263_DS_
;	.line	517; "4.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_00204_DS_
;	.line	526; "4.c"	if(BF_RunAlarmAM_PM)//为0时=AM；为1=PM
	JBSET	_UserFlag1,3
	GOTO	_00201_DS_
;	.line	529; "4.c"	BF_RunRealTimeClockAM_PM = 1;
	BSET	_UserFlag,3
	GOTO	_00205_DS_
_00201_DS_
;	.line	534; "4.c"	BF_RunRealTimeClockAM_PM = 0;  	   	
	BCLR	_UserFlag,3
	GOTO	_00205_DS_
_00204_DS_
;	.line	540; "4.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	541; "4.c"	GV_RunYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunYearSingleDig
;	.line	542; "4.c"	GV_RunYearTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunYearTenDig
_00205_DS_
;	.line	550; "4.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	551; "4.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	552; "4.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	555; "4.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	MOVAI	(_UserFlag1 + 0)
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	(_UserFlag1+1),0
	BSET	PFLAG,7
	MOVAR	INDF
	ANDAI	0x40
	JBSET	PFLAG,2
;	.line	564; "4.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	565; "4.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	566; "4.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	573; "4.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	574; "4.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	575; "4.c"	LV_TempA = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	r0x1027
;	.line	577; "4.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	MOVAI	0x01
	ANDAR	r0x1027
	MOVRA	_GV_RunRealTimeClockHrTenDig
;	.line	581; "4.c"	LV_TempA = LV_TempA & 0x02;//0000 0010
	MOVAI	0x02
	ANDRA	r0x1027
;	.line	591; "4.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	592; "4.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	593; "4.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	598; "4.c"	if(BF_Clock500ms)//On H3,H4
	MOVAI	(_UserFlag + 0)
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	(_UserFlag+1),0
	BSET	PFLAG,7
	MOVAR	INDF
	ANDAI	0x02
	JBSET	PFLAG,2
;	.line	601; "4.c"	LV_Dig4_SG1_8 |= 0x80;//1000 0000;//Dig4/H4	   	   	   	   	
	GOTO	_00264_DS_
_00263_DS_
;	.line	604; "4.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00260_DS_
;	.line	628; "4.c"	if(BF_SetRealTimeClockAM_PM) 
	MOVAI	(_UserFlag + 0)
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	(_UserFlag+1),0
	BSET	PFLAG,7
	MOVAR	INDF
	ANDAI	0x04
	JBSET	PFLAG,2
;	.line	642; "4.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_00264_DS_
	JBCLR	_UserFlag,7
	GOTO	_00264_DS_
;	.line	644; "4.c"	if(BF_Clock500ms == 0)//Off Real Time Clock Digit
	JBCLR	_UserFlag,1
	GOTO	_00264_DS_
;	.line	646; "4.c"	if(GV_RealTimeClockSetStep==0) 	
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBCLR	PFLAG,2
	GOTO	_00264_DS_
;	.line	653; "4.c"	else if(GV_RealTimeClockSetStep==1)  	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00309_DS_
	GOTO	_00264_DS_
_00309_DS_
;	.line	658; "4.c"	else if(GV_RealTimeClockSetStep==2)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00310_DS_
	GOTO	_00264_DS_
_00310_DS_
;	.line	663; "4.c"	else if(GV_RealTimeClockSetStep==3)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00311_DS_
	GOTO	_00264_DS_
_00311_DS_
;	.line	668; "4.c"	else if(GV_RealTimeClockSetStep==4)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00312_DS_
_00312_DS_
;	.line	671; "4.c"	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display      	   	   	   	   	   	   	   	
	GOTO	_00264_DS_
_00260_DS_
;	.line	711; "4.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00264_DS_
;	.line	721; "4.c"	if(BF_SetAlarmAM_PM)//为0时=AM；为1=PM
	MOVAI	(_UserFlag1 + 0)
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	(_UserFlag1+1),0
	BSET	PFLAG,7
	MOVAR	INDF
	ANDAI	0x04
	JBSET	PFLAG,2
;	.line	731; "4.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	732; "4.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	733; "4.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	743; "4.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	744; "4.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	745; "4.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	752; "4.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	753; "4.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	754; "4.c"	LV_TempA = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	r0x1027
;	.line	756; "4.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	MOVAI	0x01
	ANDAR	r0x1027
	MOVRA	_GV_RunRealTimeClockHrTenDig
;	.line	760; "4.c"	LV_TempA = LV_TempA & 0x02;//0000 0010
	MOVAI	0x02
	ANDRA	r0x1027
;	.line	771; "4.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	772; "4.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	773; "4.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	778; "4.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_00264_DS_
	JBCLR	_UserFlag,7
	GOTO	_00264_DS_
;	.line	780; "4.c"	if(BF_Clock500ms == 0)//Off Alarm Timer set Digit
	JBCLR	_UserFlag,1
	GOTO	_00264_DS_
;	.line	782; "4.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_00250_DS_
;	.line	784; "4.c"	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
	MOVAI	(_UserFlag1 + 0)
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	(_UserFlag1+1),0
	BSET	PFLAG,7
	MOVAR	INDF
	ANDAI	0x20
	JBSET	PFLAG,2
;	.line	790; "4.c"	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
	GOTO	_00264_DS_
_00250_DS_
;	.line	793; "4.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00264_DS_
_00264_DS_
;	.line	841; "4.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	842; "4.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	843; "4.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	845; "4.c"	Nop();
	nop
;	.line	846; "4.c"	Nop();
	nop
;	.line	847; "4.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	848; "4.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	870; "4.c"	SetSTB1(); 	
	BSET	_IOP2bits,3
	RETURN	
; exit point of _Sub_SendDispDataToTA6932

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_TA6932Disp	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_SendDispDataToTA6932
;   _Sub_SendDispDataToTA6932
;; Starting pCode block
_Sub_TA6932Disp	;Function start
; 2 exit points
;	.line	472; "4.c"	Sub_SendDispDataToTA6932();	   	   	   	   	   	   	   	   	   	
	CALL	_Sub_SendDispDataToTA6932
	RETURN	
; exit point of _Sub_TA6932Disp

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SendByteToPT6964	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_SendByteToPT6964	;Function start
; 2 exit points
;	.line	467; "4.c"	}
	RETURN	
; exit point of _Sub_SendByteToPT6964

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_PT6964PowerOnAllDisp2s	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;   _Sub_SendByteToPT6964
;; Starting pCode block
_Sub_PT6964PowerOnAllDisp2s	;Function start
; 2 exit points
;	.line	364; "4.c"	LV_Dig1_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig1_SG1_8
;	.line	365; "4.c"	LV_Dig2_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig2_SG1_8
;	.line	366; "4.c"	LV_Dig3_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig3_SG1_8
;	.line	367; "4.c"	LV_Dig4_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig4_SG1_8
;	.line	368; "4.c"	LV_Dig5_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig5_SG1_8
;	.line	369; "4.c"	LV_Dig6_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig6_SG1_8
;	.line	370; "4.c"	LV_Dig7_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig7_SG1_8
;	.line	371; "4.c"	LV_Dig8_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig8_SG1_8
;	.line	372; "4.c"	LV_Dig9_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig9_SG1_8
;	.line	373; "4.c"	LV_Dig10_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig10_SG1_8
;	.line	374; "4.c"	LV_Dig11_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig11_SG1_8
;	.line	375; "4.c"	LV_Dig12_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig12_SG1_8
;	.line	376; "4.c"	LV_Dig13_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig13_SG1_8
;	.line	379; "4.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	380; "4.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	381; "4.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	382; "4.c"	Nop();
	nop
;	.line	383; "4.c"	Nop();
	nop
;	.line	384; "4.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	385; "4.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	387; "4.c"	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
	MOVAR	_LV_Dig1_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	388; "4.c"	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
	MOVAR	_LV_Dig2_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	390; "4.c"	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
	MOVAR	_LV_Dig3_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	391; "4.c"	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
	MOVAR	_LV_Dig4_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	393; "4.c"	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
	MOVAR	_LV_Dig5_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	394; "4.c"	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
	MOVAR	_LV_Dig6_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	396; "4.c"	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
	MOVAR	_LV_Dig7_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	397; "4.c"	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
	MOVAR	_LV_Dig8_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	399; "4.c"	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
	MOVAR	_LV_Dig9_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	400; "4.c"	Sub_SendByteToPT6964(LV_Dig10_SG1_8);
	MOVAR	_LV_Dig10_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	402; "4.c"	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
	MOVAR	_LV_Dig11_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	403; "4.c"	Sub_SendByteToPT6964(LV_Dig12_SG1_8);
	MOVAR	_LV_Dig12_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	405; "4.c"	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
	MOVAR	_LV_Dig13_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	406; "4.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	415; "4.c"	Nop();
	nop
;	.line	416; "4.c"	Nop();
	nop
;	.line	417; "4.c"	SetSTB0();  
	BCLR	_IOP2bits,3
;	.line	418; "4.c"	if(GV_DisplayBrightnessLevel==0)
	MOVAI	0x00
	ORAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,2
	GOTO	_00186_DS_
;	.line	420; "4.c"	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
	MOVAI	0x8f
	CALL	_Sub_SendByteToPT6964
	GOTO	_00187_DS_
_00186_DS_
;	.line	422; "4.c"	else if(GV_DisplayBrightnessLevel==1)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00183_DS_
;	.line	424; "4.c"	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
	MOVAI	0x8a
	CALL	_Sub_SendByteToPT6964
	GOTO	_00187_DS_
_00183_DS_
;	.line	426; "4.c"	else if(GV_DisplayBrightnessLevel==2)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00187_DS_
;	.line	428; "4.c"	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
	MOVAI	0x88
	CALL	_Sub_SendByteToPT6964
_00187_DS_
;	.line	448; "4.c"	SetSTB1();
	BSET	_IOP2bits,3
	RETURN	
; exit point of _Sub_PT6964PowerOnAllDisp2s

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_TC2Initial	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_TC2Initial	;Function start
; 2 exit points
;	.line	351; "4.c"	T0IE=0;//FTC2IEN = 0;      	// Disable TC2 interrupt service
	BCLR	_INTEbits,0
;	.line	352; "4.c"	TC0EN=0;//FTC2ENB = 0;     	// Disable TC2 timer
	BCLR	_T0CRbits,7
;	.line	353; "4.c"	T0CR=0x0a;//TC2M = 0x34;   	// Set TC2 clock = Foscu / 4
	MOVAI	0x0a
	MOVRA	_T0CR
;	.line	354; "4.c"	T0LOAD=0x8b;//TC2R = 0x8B;     	// 0x8B;Set TC2 interval = 125us
	MOVAI	0x8b
	MOVRA	_T0LOAD
;	.line	355; "4.c"	T0IE=1;//FTC2IEN = 1;      	// Enable TC2 interrupt service
	BSET	_INTEbits,0
;	.line	356; "4.c"	T0IF=0;//FTC2IRQ = 0;      	// Clear TC2 interrupt request flag
	BCLR	_INTFbits,0
;	.line	357; "4.c"	TC0EN=1;//FTC2ENB = 1;     	// Enable TC2 timer
	BSET	_T0CRbits,7
	RETURN	
; exit point of _Sub_TC2Initial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_IoInitial	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_IoInitial	;Function start
; 2 exit points
;	.line	326; "4.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	327; "4.c"	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
	CLRR	_OEP0
;	.line	328; "4.c"	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
	MOVAI	0xff
	MOVRA	_PUP0
;	.line	329; "4.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	331; "4.c"	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	332; "4.c"	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
	MOVAI	0xbc
	MOVRA	_OEP1
;	.line	333; "4.c"	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
	MOVAI	0x43
	MOVRA	_PUP1
;	.line	334; "4.c"	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	336; "4.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	337; "4.c"	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
	MOVAI	0x0a
	MOVRA	_OEP2
;	.line	338; "4.c"	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
	MOVAI	0xf5
	MOVRA	_PUP2
;	.line	339; "4.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	346; "4.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
	RETURN	
; exit point of _Sub_IoInitial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Write1302	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1028
;   STK00
;   r0x1029
;   r0x102A
;; Starting pCode block
_Sub_Write1302	;Function start
; 2 exit points
;	.line	284; "4.c"	void Sub_Write1302(unsigned char LV_Addr,unsigned char LV_Data) // 将数据写入DS1302某个地址
	MOVRA	r0x1028
	MOVAR	STK00
	MOVRA	r0x1029
;	.line	287; "4.c"	PO_1381A_SCLK =0;  	
	BCLR	_IOP1bits,2
;	.line	288; "4.c"	Enable1381A_RESET();
	BSET	_IOP1bits,7
;	.line	293; "4.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	294; "4.c"	for(i=8; i>0; i--)
	MOVAI	0x08
	MOVRA	r0x102A
_00148_DS_
	MOVAI	0x00
	ORAR	r0x102A
	JBCLR	PFLAG,2
	GOTO	_00167_DS_
;	.line	296; "4.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	298; "4.c"	if(LV_TempE & 0x01)
	JBSET	r0x1028,0
	GOTO	_00143_DS_
;	.line	299; "4.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00144_DS_
_00143_DS_
;	.line	301; "4.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00144_DS_
;	.line	302; "4.c"	Nop();
	nop
;	.line	303; "4.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	304; "4.c"	LV_Addr >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1028
;	.line	305; "4.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	294; "4.c"	for(i=8; i>0; i--)
	DECR	r0x102A
	GOTO	_00148_DS_
_00167_DS_
;	.line	308; "4.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x1028
_00152_DS_
	MOVAI	0x00
	ORAR	r0x1028
	JBCLR	PFLAG,2
	GOTO	_00155_DS_
;	.line	310; "4.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	312; "4.c"	if(LV_TempE & 0x01)
	JBSET	r0x1029,0
	GOTO	_00146_DS_
;	.line	313; "4.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00147_DS_
_00146_DS_
;	.line	315; "4.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00147_DS_
;	.line	316; "4.c"	Nop();
	nop
;	.line	317; "4.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	318; "4.c"	LV_Data >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1029
;	.line	319; "4.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	308; "4.c"	for(i=8;i>0;i--)
	DECR	r0x1028
	GOTO	_00152_DS_
_00155_DS_
;	.line	321; "4.c"	Disable1381A_RESET();
	BCLR	_IOP1bits,7
	RETURN	
; exit point of _Sub_Write1302

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Initial	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_IoInitial
;   _Sub_TC2Initial
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_PT6964PowerOnAllDisp2s
;   _Sub_IoInitial
;   _Sub_TC2Initial
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_PT6964PowerOnAllDisp2s
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_Sub_Initial	;Function start
; 2 exit points
;	.line	239; "4.c"	Sub_IoInitial();
	CALL	_Sub_IoInitial
;	.line	241; "4.c"	Sub_TC2Initial();
	CALL	_Sub_TC2Initial
;	.line	244; "4.c"	GIE = 1;  //FGIE = 1;  //Enable interrupt
	BSET	_MCRbits,7
;	.line	246; "4.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	247; "4.c"	Sub_Write1302(C_DS1302_Second,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x80
	CALL	_Sub_Write1302
;	.line	248; "4.c"	Sub_Write1302(C_DS1302_Minute,0x00);   	
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x82
	CALL	_Sub_Write1302
;	.line	249; "4.c"	Sub_Write1302(C_DS1302_Hour,C_DS1302_AM12HrData);//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)	
	MOVAI	0x92
	MOVRA	STK00
	MOVAI	0x84
	CALL	_Sub_Write1302
;	.line	250; "4.c"	Sub_Write1302(C_DS1302_Day,0x01);  	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x86
	CALL	_Sub_Write1302
;	.line	251; "4.c"	Sub_Write1302(C_DS1302_Month,0x01);	   	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x88
	CALL	_Sub_Write1302
;	.line	252; "4.c"	Sub_Write1302(C_DS1302_Year,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8c
	CALL	_Sub_Write1302
;	.line	253; "4.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	256; "4.c"	GV_RunAlarmClockHrSingleDig = 2;
	MOVAI	0x02
	MOVRA	_GV_RunAlarmClockHrSingleDig
;	.line	257; "4.c"	GV_RunAlarmClockHrTenDig = 1;
	MOVAI	0x01
	MOVRA	_GV_RunAlarmClockHrTenDig
;	.line	259; "4.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
;	.line	260; "4.c"	BF_SetAlarmOnOff = 0;
	BCLR	_UserFlag1,5
;	.line	261; "4.c"	BF_RunAlarmAM_PM = 0;
	BCLR	_UserFlag1,3
;	.line	262; "4.c"	BF_RunAlarmOnOff = 0;
	BCLR	_UserFlag1,6
;	.line	264; "4.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
;	.line	267; "4.c"	GV_200msClock = 100;
	MOVAI	0x64
	MOVRA	_GV_200msClock
_00134_DS_
;	.line	268; "4.c"	while(GV_200msClock)
	MOVAI	0x00
	ORAR	_GV_200msClock
	JBCLR	PFLAG,2
	GOTO	_00137_DS_
;	.line	270; "4.c"	ClrWdt();   //(feed the doggie )
	clrwdt
;	.line	271; "4.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00134_DS_
;	.line	273; "4.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	274; "4.c"	if(++GV_10msClock>=5)
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00134_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	276; "4.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	277; "4.c"	Sub_PT6964PowerOnAllDisp2s();
	CALL	_Sub_PT6964PowerOnAllDisp2s
;	.line	278; "4.c"	GV_200msClock--;
	DECR	_GV_200msClock
	GOTO	_00134_DS_
_00137_DS_
	RETURN	
; exit point of _Sub_Initial


;	code size estimation:
;	  510+    0 =   510 instructions ( 1020 byte)

	end
