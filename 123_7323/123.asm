;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Mon Mar 19 16:22:33 2018
;--------------------------------------------------------
; MC32 port for the RISC core
;--------------------------------------------------------
;	.file	"123.c"
	list	p=4K7323
	radix dec
	include "4K7323.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_Sub_GetAdc
	extern	_Sub_LedDisp
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
	extern	__mulchar
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Sub_PT6964PowerOnAllDisp2s
	global	_Sub_TA6932Disp
	global	_Sub_SendDispDataToTA6932
	global	_Sub_Buzzer
	global	_Sub_KeyScan
	global	_Sub_SetLongKeyGetRealTimeClockSetMode
	global	_Sub_Initial
	global	_Sub_IoInitial
	global	_Sub_AlarmEvent
	global	_Sub_Write1302
	global	_Sub_Read1302
	global	_main
	global	_Sub_SendByteToDS1302
	global	_Sub_GetByteFromDS1302
	global	_Sub_LoopDelay
	global	_Sub_TC2Initial
	global	_Sub_Up_AlLongKeyGetAlarmSetMode
	global	_Sub_SetAlarmAddTimer
	global	_Sub_Up_AlShortLongKeyAlarmSet
	global	_Sub_RealTimeClockAdd
	global	_Sub_Up_AlShortLongKeyClockSet
	global	_Sub_SetAlarmDecTimer
	global	_Sub_DownShortLongKeyAlarmSet
	global	_Sub_RealTimeClockDec
	global	_Sub_DownShortLongKeyClockSet
	global	_Sub_SetKeyRealTimeClockEnter
	global	_Sub_SetKeyAlarmEnter
	global	_Sub_BuzzerBBB
	global	_Sub_SendByteToPT6964
	global	_Sub_GetByteFromPT6964
	global	_int_isr
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
UD_123_0	udata
_UserFlag	res	1

UD_123_1	udata
_UserFlag1	res	1

UD_123_2	udata
_GV_2msClock	res	1

UD_123_3	udata
_GV_10msClock	res	1

UD_123_4	udata
_GV_100msClock	res	1

UD_123_5	udata
_GV_200msClock	res	1

UD_123_6	udata
_GV_250msClock	res	1

UD_123_7	udata
_GV_500msClock	res	1

UD_123_8	udata
_GV_BuzzerPeriod	res	1

UD_123_9	udata
_GV_BuzzerBBPeriod	res	1

UD_123_10	udata
_GV_KeyDebounce	res	1

UD_123_11	udata
_GV_PreKey	res	1

UD_123_12	udata
_GV_CurKey	res	1

UD_123_13	udata
_GV_LongKeyTimer	res	2

UD_123_14	udata
_GV_Mode	res	1

UD_123_15	udata
_GV_RealTimeClockSetStep	res	1

UD_123_16	udata
_GV_AlarmClockSetStep	res	1

UD_123_17	udata
_GV_BuzzerIndex	res	1

UD_123_18	udata
_GV_BuzzerDuty	res	1

UD_123_19	udata
_GV_GetByteFromDs1302	res	1

UD_123_20	udata
_GV_GetPT6964Data	res	1

UD_123_21	udata
_GV_SetYearSingleDig	res	1

UD_123_22	udata
_GV_SetYearTenDig	res	1

UD_123_23	udata
_GV_SetYearHundredsDig	res	1

UD_123_24	udata
_GV_RunYearSingleDig	res	1

UD_123_25	udata
_GV_RunYearTenDig	res	1

UD_123_26	udata
_GV_RunYearHundredsDig	res	1

UD_123_27	udata
_GV_SetMonthSingleDig	res	1

UD_123_28	udata
_GV_SetMonthTenDig	res	1

UD_123_29	udata
_GV_RunMonthSingleDig	res	1

UD_123_30	udata
_GV_RunMonthTenDig	res	1

UD_123_31	udata
_GV_SetDaySingleDig	res	1

UD_123_32	udata
_GV_SetDayTenDig	res	1

UD_123_33	udata
_GV_RunDaySingleDig	res	1

UD_123_34	udata
_GV_RunDayTenDig	res	1

UD_123_35	udata
_GV_SetRealTimeClockHrSingleDig	res	1

UD_123_36	udata
_GV_SetRealTimeClockHrTenDig	res	1

UD_123_37	udata
_GV_SetRealTimeClockMinSingleDig	res	1

UD_123_38	udata
_GV_SetRealTimeClockMinTenDig	res	1

UD_123_39	udata
_GV_RunRealTimeClockHrSingleDig	res	1

UD_123_40	udata
_GV_RunRealTimeClockHrTenDig	res	1

UD_123_41	udata
_GV_RunRealTimeClockMinSingleDig	res	1

UD_123_42	udata
_GV_RunRealTimeClockMinTenDig	res	1

UD_123_43	udata
_GV_SetAlarmClockHrSingleDig	res	1

UD_123_44	udata
_GV_SetAlarmClockHrTenDig	res	1

UD_123_45	udata
_GV_SetAlarmClockMinSingleDig	res	1

UD_123_46	udata
_GV_SetAlarmClockMinTenDig	res	1

UD_123_47	udata
_GV_RunAlarmClockHrSingleDig	res	1

UD_123_48	udata
_GV_RunAlarmClockHrTenDig	res	1

UD_123_49	udata
_GV_RunAlarmClockMinSingleDig	res	1

UD_123_50	udata
_GV_RunAlarmClockMinTenDig	res	1

UD_123_51	udata
_GV_15sNoOperationCnt	res	1

UD_123_52	udata
_GV_DisplayBrightnessLevel	res	1

UD_123_53	udata
_GV_SnoozeTimer	res	1

UD_123_54	udata
_DATA_ID	res	2

UD_123_55	udata
_LV_Temp	res	2

UD_123_56	udata
_ABuf	res	1

UD_123_57	udata
_StatusBuf	res	1

UD_123_58	udata
_FSR_TEMP	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_123_0	udata
r0x1069	res	1
r0x106A	res	1
r0x1067	res	1
r0x1068	res	1
r0x1066	res	1
r0x1048	res	1
r0x1049	res	1
r0x105A	res	1
r0x105B	res	1
r0x105C	res	1
r0x1064	res	1
r0x1065	res	1
r0x105D	res	1
r0x105E	res	1
r0x105F	res	1
r0x1060	res	1
r0x1061	res	1
r0x1062	res	1
r0x1063	res	1
r0x1045	res	1
r0x1046	res	1
r0x1047	res	1
r0x1059	res	1
r0x104A	res	1
r0x104B	res	1
r0x104C	res	1
r0x104D	res	1
r0x104E	res	1
r0x104F	res	1
r0x1050	res	1
r0x1051	res	1
r0x1052	res	1
r0x1053	res	1
r0x1054	res	1
r0x1055	res	1
r0x1056	res	1
r0x1057	res	1
r0x1058	res	1
r0x106B	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_123_0	idata
_GV_SetYearthousandDig
	db	0x02


ID_123_1	idata
_GV_RunYearthousandDig
	db	0x02


ID_123_2	idata
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
;@main Sub_SendDispDataToTA6932  Allocated to registers ;size:2
;@main Sub_TA6932Disp            Allocated to registers ;size:2
;@main Sub_LedDisp               Allocated to registers ;size:2
;@main Sub_Buzzer                Allocated to registers ;size:2
;@main Sub_PT6964PowerOnAllDisp2s Allocated to registers ;size:2
;@main Sub_IoInitial             Allocated to registers ;size:2
;@main Sub_SetLongKeyGetRealTimeClockSetMode Allocated to registers ;size:2
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
;@Allocation info for local variables in function 'Sub_SendByteToDS1302'
;@Sub_SendByteToDS1302 LV_SendTodata             Allocated to registers r0x1067 ;size:1
;@Sub_SendByteToDS1302 i                         Allocated to registers r0x1068 ;size:1
;@Sub_SendByteToDS1302 LV_TempE                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_SendByteToDS1302';
;@Allocation info for local variables in function 'Sub_GetByteFromDS1302'
;@Sub_GetByteFromDS1302 i                         Allocated to registers r0x1066 ;size:1
;@end Allocation info for local variables in function 'Sub_GetByteFromDS1302';
;@Allocation info for local variables in function 'Sub_Read1302'
;@Sub_Read1302 LV_Addr                   Allocated to registers r0x1048 ;size:1
;@Sub_Read1302 i                         Allocated to registers r0x1049 ;size:1
;@Sub_Read1302 LV_TempE                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_Read1302';
;@Allocation info for local variables in function 'Sub_Write1302'
;@Sub_Write1302 LV_Data                   Allocated to registers r0x105B ;size:1
;@Sub_Write1302 LV_Addr                   Allocated to registers r0x105A ;size:1
;@Sub_Write1302 i                         Allocated to registers r0x105C ;size:1
;@Sub_Write1302 LV_TempE                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_Write1302';
;@Allocation info for local variables in function 'Sub_AlarmEvent'
;@end Allocation info for local variables in function 'Sub_AlarmEvent';
;@Allocation info for local variables in function 'Sub_IoInitial'
;@end Allocation info for local variables in function 'Sub_IoInitial';
;@Allocation info for local variables in function 'Sub_LoopDelay'
;@end Allocation info for local variables in function 'Sub_LoopDelay';
;@Allocation info for local variables in function 'Sub_TC2Initial'
;@end Allocation info for local variables in function 'Sub_TC2Initial';
;@Allocation info for local variables in function 'Sub_Initial'
;@end Allocation info for local variables in function 'Sub_Initial';
;@Allocation info for local variables in function 'Sub_Up_AlLongKeyGetAlarmSetMode'
;@end Allocation info for local variables in function 'Sub_Up_AlLongKeyGetAlarmSetMode';
;@Allocation info for local variables in function 'Sub_SetAlarmAddTimer'
;@end Allocation info for local variables in function 'Sub_SetAlarmAddTimer';
;@Allocation info for local variables in function 'Sub_Up_AlShortLongKeyAlarmSet'
;@end Allocation info for local variables in function 'Sub_Up_AlShortLongKeyAlarmSet';
;@Allocation info for local variables in function 'Sub_RealTimeClockAdd'
;@Sub_RealTimeClockAdd LV_TempYear               Allocated to registers r0x105B ;size:1
;@Sub_RealTimeClockAdd LV_TempMonth              Allocated to registers r0x105A ;size:1
;@Sub_RealTimeClockAdd LV_TempA                  Allocated to registers r0x105A ;size:1
;@Sub_RealTimeClockAdd LV_TempB                  Allocated to registers r0x105C ;size:1
;@end Allocation info for local variables in function 'Sub_RealTimeClockAdd';
;@Allocation info for local variables in function 'Sub_Up_AlShortLongKeyClockSet'
;@end Allocation info for local variables in function 'Sub_Up_AlShortLongKeyClockSet';
;@Allocation info for local variables in function 'Sub_SetAlarmDecTimer'
;@end Allocation info for local variables in function 'Sub_SetAlarmDecTimer';
;@Allocation info for local variables in function 'Sub_DownShortLongKeyAlarmSet'
;@end Allocation info for local variables in function 'Sub_DownShortLongKeyAlarmSet';
;@Allocation info for local variables in function 'Sub_RealTimeClockDec'
;@Sub_RealTimeClockDec LV_TempYear               Allocated to registers r0x105B ;size:1
;@Sub_RealTimeClockDec LV_TempMonth              Allocated to registers r0x105A ;size:1
;@Sub_RealTimeClockDec LV_TempA                  Allocated to registers r0x105A ;size:1
;@Sub_RealTimeClockDec LV_TempB                  Allocated to registers r0x105C ;size:1
;@end Allocation info for local variables in function 'Sub_RealTimeClockDec';
;@Allocation info for local variables in function 'Sub_DownShortLongKeyClockSet'
;@end Allocation info for local variables in function 'Sub_DownShortLongKeyClockSet';
;@Allocation info for local variables in function 'Sub_SetLongKeyGetRealTimeClockSetMode'
;@Sub_SetLongKeyGetRealTimeClockSetMode LV_TempA                  Allocated to registers ;size:1
;@Sub_SetLongKeyGetRealTimeClockSetMode LV_TempB                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_SetLongKeyGetRealTimeClockSetMode';
;@Allocation info for local variables in function 'Sub_SetKeyRealTimeClockEnter'
;@Sub_SetKeyRealTimeClockEnter LV_TempYear               Allocated to registers r0x105F ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempMonth              Allocated to registers r0x1061 ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempDay                Allocated to registers r0x105E ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempA                  Allocated to registers r0x105E ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempB                  Allocated to registers r0x1060 ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TenTemp                Allocated to registers r0x105D ;size:1
;@end Allocation info for local variables in function 'Sub_SetKeyRealTimeClockEnter';
;@Allocation info for local variables in function 'Sub_SetKeyAlarmEnter'
;@end Allocation info for local variables in function 'Sub_SetKeyAlarmEnter';
;@Allocation info for local variables in function 'Sub_KeyScan'
;@Sub_KeyScan LV_TempB                  Allocated to registers r0x1063 ;size:1
;@end Allocation info for local variables in function 'Sub_KeyScan';
;@Allocation info for local variables in function 'Sub_BuzzerBBB'
;@end Allocation info for local variables in function 'Sub_BuzzerBBB';
;@Allocation info for local variables in function 'Sub_Buzzer'
;@end Allocation info for local variables in function 'Sub_Buzzer';
;@Allocation info for local variables in function 'Sub_SendByteToPT6964'
;@Sub_SendByteToPT6964 LV_SendTodata             Allocated to registers r0x1045 ;size:1
;@Sub_SendByteToPT6964 i                         Allocated to registers r0x1046 ;size:1
;@end Allocation info for local variables in function 'Sub_SendByteToPT6964';
;@Allocation info for local variables in function 'Sub_GetByteFromPT6964'
;@Sub_GetByteFromPT6964 LV_TempPT6964             Allocated to registers r0x1059 ;size:1
;@end Allocation info for local variables in function 'Sub_GetByteFromPT6964';
;@Allocation info for local variables in function 'Sub_SendDispDataToTA6932'
;@Sub_SendDispDataToTA6932 LV_TempA                  Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_TempB                  Allocated to registers ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig1_SG1_8             Allocated to registers r0x104A ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig2_SG1_8             Allocated to registers r0x104B ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig3_SG1_8             Allocated to registers r0x104C ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig4_SG1_8             Allocated to registers r0x104D ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig5_SG1_8             Allocated to registers r0x104E ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig6_SG1_8             Allocated to registers r0x104F ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig7_SG1_8             Allocated to registers r0x1050 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig8_SG1_8             Allocated to registers r0x1051 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig9_SG1_8             Allocated to registers r0x1052 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig10_SG1_8            Allocated to registers r0x1053 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig11_SG1_8            Allocated to registers r0x1054 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig12_SG1_8            Allocated to registers r0x1055 ;size:1
;@Sub_SendDispDataToTA6932 LV_Dig13_SG1_8            Allocated to registers r0x1056 ;size:1
;@end Allocation info for local variables in function 'Sub_SendDispDataToTA6932';
;@Allocation info for local variables in function 'Sub_TA6932Disp'
;@end Allocation info for local variables in function 'Sub_TA6932Disp';
;@Allocation info for local variables in function 'Sub_PT6964PowerOnAllDisp2s'
;@Sub_PT6964PowerOnAllDisp2s LV_Dig1_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig2_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig3_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig4_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig5_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig6_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig7_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig8_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig9_SG1_8             Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig10_SG1_8            Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig11_SG1_8            Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig12_SG1_8            Allocated to registers ;size:1
;@Sub_PT6964PowerOnAllDisp2s LV_Dig13_SG1_8            Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_PT6964PowerOnAllDisp2s';
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
;   r0x106B
;   r0x106C
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	4220; "123.c"	__endasm;
	movra _ABuf
	swapar _STATUS
	movra _StatusBuf
	
;	.line	4221; "123.c"	if(T0IF)
	JBSET	_INTFbits,0
	GOTO	_01293_DS_
;	.line	4223; "123.c"	T0IF = 0;
	BCLR	_INTFbits,0
;	.line	4225; "123.c"	PO_Buzzer = !PO_Buzzer;
	CLRR	r0x106B
	JBCLR	_IOP2bits,1
	INCR	r0x106B
	MOVAR	r0x106B
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x106B
;;1	MOVRA	r0x106C
;;100	MOVAR	r0x106C
	RRAR	r0x106B
	JBSET	PFLAG,0
	BCLR	_IOP2bits,1
	JBCLR	PFLAG,0
	BSET	_IOP2bits,1
;	.line	4226; "123.c"	if(++GV_2msClock >= 16)
	INCR	_GV_2msClock
;;unsigned compare: left < lit(0x10=16), size=1
	MOVAI	0x10
	RSUBAR	_GV_2msClock
	JBSET	PFLAG,0
	GOTO	_01293_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	4228; "123.c"	GV_2msClock = 0;
	CLRR	_GV_2msClock
;	.line	4229; "123.c"	BF_TccClock2ms = 1;
	BSET	_UserFlag,0
_01293_DS_
;	.line	4237; "123.c"	__endasm;
	swapar _StatusBuf
	movra _STATUS
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_123	code
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
;   r0x1069
;   r0x106A
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	217; "123.c"	Sub_Initial();
	CALL	_Sub_Initial
_00125_DS_
;	.line	221; "123.c"	ClrWdt(); //(feed the doggie )
	clrwdt
;	.line	223; "123.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00125_DS_
;	.line	225; "123.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	227; "123.c"	Sub_KeyScan();
	CALL	_Sub_KeyScan
;	.line	228; "123.c"	Sub_Buzzer();
	CALL	_Sub_Buzzer
;	.line	231; "123.c"	if(++GV_10msClock>=5) //
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00106_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	233; "123.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	234; "123.c"	Sub_TA6932Disp();
	CALL	_Sub_TA6932Disp
_00106_DS_
;	.line	238; "123.c"	if(++GV_100msClock>=50) //
	INCR	_GV_100msClock
;;unsigned compare: left < lit(0x32=50), size=1
	MOVAI	0x32
	RSUBAR	_GV_100msClock
	JBSET	PFLAG,0
	GOTO	_00108_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	240; "123.c"	GV_100msClock = 0;
	CLRR	_GV_100msClock
;	.line	241; "123.c"	Sub_AlarmEvent();
	CALL	_Sub_AlarmEvent
_00108_DS_
;	.line	245; "123.c"	if(++GV_200msClock>=100) //
	INCR	_GV_200msClock
;;unsigned compare: left < lit(0x64=100), size=1
	MOVAI	0x64
	RSUBAR	_GV_200msClock
	JBSET	PFLAG,0
	GOTO	_00110_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	247; "123.c"	GV_200msClock = 0;
	CLRR	_GV_200msClock
_00110_DS_
;	.line	251; "123.c"	if(++GV_250msClock>=125) //Per 250ms
	INCR	_GV_250msClock
;;unsigned compare: left < lit(0x7D=125), size=1
	MOVAI	0x7d
	RSUBAR	_GV_250msClock
	JBSET	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	253; "123.c"	GV_250msClock = 0;
	CLRR	_GV_250msClock
;	.line	254; "123.c"	BF_Clock250ms  = !BF_Clock250ms;
	CLRR	r0x1069
	JBCLR	_UserFlag1,0
	INCR	r0x1069
	MOVAR	r0x1069
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1069
	MOVRA	r0x106A
;;103	MOVAR	r0x106A
	RRAR	r0x1069
	JBSET	PFLAG,0
	BCLR	_UserFlag1,0
	JBCLR	PFLAG,0
	BSET	_UserFlag1,0
_00112_DS_
;	.line	258; "123.c"	if(++GV_500msClock >= 249)//
	INCR	_GV_500msClock
;;unsigned compare: left < lit(0xF9=249), size=1
	MOVAI	0xf9
	RSUBAR	_GV_500msClock
	JBSET	PFLAG,0
	GOTO	_00125_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	260; "123.c"	GV_500msClock = 0;
	CLRR	_GV_500msClock
;	.line	261; "123.c"	BF_Clock500ms  = !BF_Clock500ms;
	CLRR	r0x1069
	JBCLR	_UserFlag,1
	INCR	r0x1069
	MOVAR	r0x1069
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1069
	MOVRA	r0x106A
;;101	MOVAR	r0x106A
	RRAR	r0x1069
	JBSET	PFLAG,0
	BCLR	_UserFlag,1
	JBCLR	PFLAG,0
	BSET	_UserFlag,1
;	.line	263; "123.c"	if((GV_15sNoOperationCnt)&&(GV_Mode))//Automatically return to normal mode at 15 seconds without operation in setting mode.
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
;	.line	265; "123.c"	if(--GV_15sNoOperationCnt == 0)
	DECR	_GV_15sNoOperationCnt
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBSET	PFLAG,2
	GOTO	_00116_DS_
;	.line	267; "123.c"	GV_Mode = 0;//0=Normal mode; 1=clock set mode; 2=Alarm set mode
	CLRR	_GV_Mode
_00116_DS_
;	.line	271; "123.c"	if(GV_SnoozeTimer)
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBCLR	PFLAG,2
	GOTO	_00125_DS_
;	.line	273; "123.c"	GV_SnoozeTimer--;
	DECR	_GV_SnoozeTimer
	GOTO	_00125_DS_
	RETURN	
; exit point of _main

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
;	.line	4128; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	4129; "123.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	4130; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	4131; "123.c"	Nop();
	nop
;	.line	4132; "123.c"	Nop();
	nop
;	.line	4133; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	4134; "123.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	4136; "123.c"	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4137; "123.c"	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4139; "123.c"	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4140; "123.c"	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4142; "123.c"	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4143; "123.c"	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4145; "123.c"	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4146; "123.c"	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4148; "123.c"	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4149; "123.c"	Sub_SendByteToPT6964(LV_Dig10_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4151; "123.c"	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4152; "123.c"	Sub_SendByteToPT6964(LV_Dig12_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4154; "123.c"	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
	MOVAI	0xff
	CALL	_Sub_SendByteToPT6964
;	.line	4155; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	4164; "123.c"	Nop();
	nop
;	.line	4165; "123.c"	Nop();
	nop
;	.line	4166; "123.c"	SetSTB0();  
	BCLR	_IOP2bits,3
;	.line	4167; "123.c"	if(GV_DisplayBrightnessLevel==0)
	MOVAI	0x00
	ORAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,2
	GOTO	_01284_DS_
;	.line	4169; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
	MOVAI	0x8f
	CALL	_Sub_SendByteToPT6964
	GOTO	_01285_DS_
_01284_DS_
;	.line	4171; "123.c"	else if(GV_DisplayBrightnessLevel==1)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01281_DS_
;	.line	4173; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
	MOVAI	0x8a
	CALL	_Sub_SendByteToPT6964
	GOTO	_01285_DS_
_01281_DS_
;	.line	4175; "123.c"	else if(GV_DisplayBrightnessLevel==2)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01285_DS_
;	.line	4177; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
	MOVAI	0x88
	CALL	_Sub_SendByteToPT6964
_01285_DS_
;	.line	4197; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
	RETURN	
; exit point of _Sub_PT6964PowerOnAllDisp2s

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
;	.line	4081; "123.c"	Sub_SendDispDataToTA6932();	   	   	   	   	   	   	   	   	   	
	CALL	_Sub_SendDispDataToTA6932
	RETURN	
; exit point of _Sub_TA6932Disp

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
;15 compiler assigned registers:
;   r0x104A
;   r0x104B
;   r0x104C
;   r0x104D
;   r0x104E
;   r0x104F
;   r0x1050
;   r0x1051
;   r0x1052
;   r0x1053
;   r0x1054
;   r0x1055
;   r0x1056
;   r0x1057
;   r0x1058
;; Starting pCode block
_Sub_SendDispDataToTA6932	;Function start
; 2 exit points
;	.line	3324; "123.c"	LV_Dig1_SG1_8 = 0;
	CLRR	r0x104A
;	.line	3325; "123.c"	LV_Dig2_SG1_8 = 0;
	CLRR	r0x104B
;	.line	3326; "123.c"	LV_Dig3_SG1_8 = 0;
	CLRR	r0x104C
;	.line	3327; "123.c"	LV_Dig4_SG1_8 = 0;
	CLRR	r0x104D
;	.line	3328; "123.c"	LV_Dig5_SG1_8 = 0;
	CLRR	r0x104E
;	.line	3329; "123.c"	LV_Dig6_SG1_8 = 0;
	CLRR	r0x104F
;	.line	3330; "123.c"	LV_Dig7_SG1_8 = 0;
	CLRR	r0x1050
;	.line	3331; "123.c"	LV_Dig8_SG1_8 = 0;
	CLRR	r0x1051
;	.line	3332; "123.c"	LV_Dig9_SG1_8 = 0;
	CLRR	r0x1052
;	.line	3333; "123.c"	LV_Dig10_SG1_8 = 0;
	CLRR	r0x1053
;	.line	3334; "123.c"	LV_Dig11_SG1_8 = 0;
	CLRR	r0x1054
;	.line	3335; "123.c"	LV_Dig12_SG1_8 = 0;
	CLRR	r0x1055
;	.line	3336; "123.c"	LV_Dig13_SG1_8 = 0;
	CLRR	r0x1056
;	.line	3341; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01260_DS_
;	.line	3343; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_01201_DS_
;	.line	3346; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_RunAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
	MOVAR	_GV_RunAlarmClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1051
;	.line	3347; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_RunAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit 	
	MOVAR	_GV_RunAlarmClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1050
;	.line	3348; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons	
	BSET	r0x1050,7
;	.line	3350; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_RunAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
	MOVAR	_GV_RunAlarmClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104F
;	.line	3351; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_RunAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit  	
	MOVAR	_GV_RunAlarmClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104E
;	.line	3352; "123.c"	if(BF_RunAlarmAM_PM)//Ϊ0ʱ=AM��Ϊ1=PM
	JBSET	_UserFlag1,3
	GOTO	_01198_DS_
;	.line	3354; "123.c"	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 Alarm clock PM  icons
	BSET	r0x104F,7
;	.line	3355; "123.c"	BF_RunRealTimeClockAM_PM = 1;
	BSET	_UserFlag,3
	GOTO	_01202_DS_
_01198_DS_
;	.line	3359; "123.c"	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 Alarm clock AM  icons
	BSET	r0x104E,7
;	.line	3360; "123.c"	BF_RunRealTimeClockAM_PM = 0;  	   	
	BCLR	_UserFlag,3
	GOTO	_01202_DS_
_01201_DS_
;	.line	3366; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	3367; "123.c"	GV_RunYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunYearSingleDig
;	.line	3368; "123.c"	GV_RunYearTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunYearTenDig
;	.line	3369; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_RunYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
	MOVAR	_GV_RunYearSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1051
;	.line	3370; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_RunYearTenDig];     //Dig7 Year Ten Digit
	MOVAR	_GV_RunYearTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1050
;	.line	3371; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_RunYearHundredsDig];//Dig6 Year Hundreds Digit
	MOVAR	_GV_RunYearHundredsDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104F
;	.line	3372; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_RunYearthousandDig];//Dig5 Year thousand Digit
	MOVAR	_GV_RunYearthousandDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104E
_01202_DS_
;	.line	3376; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	3377; "123.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	3378; "123.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	3379; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_RunMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104B
;	.line	3380; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_RunMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104A
;	.line	3381; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_01204_DS_
;	.line	3383; "123.c"	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
	BSET	r0x104B,7
;	.line	3384; "123.c"	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  )
	BSET	r0x104A,7
_01204_DS_
;	.line	3390; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	3391; "123.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	3392; "123.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	3393; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_RunDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104D
;	.line	3394; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_RunDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104C
;	.line	3399; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	3400; "123.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	3403; "123.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	CLRR	_GV_RunRealTimeClockHrTenDig
;	.line	3405; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1053
;	.line	3406; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
	MOVAR	(_C_NumberTable + 0)
	MOVRA	r0x1052
;	.line	3414; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
	MOVAI	0x8f
	MOVRA	r0x1056
;	.line	3417; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	3418; "123.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	3419; "123.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	3420; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1055
;	.line	3421; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
	MOVAR	_GV_RunRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1054
;	.line	3424; "123.c"	if(BF_Clock500ms)//On H3,H4
	JBSET	_UserFlag,1
	GOTO	_01261_DS_
;	.line	3426; "123.c"	LV_Dig3_SG1_8 |= 0x80;//1000 0000;//Dig3/H3
	BSET	r0x104C,7
;	.line	3427; "123.c"	LV_Dig4_SG1_8 |= 0x80;//1000 0000;//Dig4/H4	   	   	   	   	
	BSET	r0x104D,7
	GOTO	_01261_DS_
_01260_DS_
;	.line	3430; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01257_DS_
;	.line	3432; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_SetYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
	MOVAR	_GV_SetYearSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1051
;	.line	3433; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_SetYearTenDig];     //Dig7 Year Ten Digit
	MOVAR	_GV_SetYearTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1050
;	.line	3434; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_SetYearHundredsDig];//Dig6 Year Hundreds Digit
	MOVAR	_GV_SetYearHundredsDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104F
;	.line	3435; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_SetYearthousandDig];//Dig5 Year thousand Digit
	MOVAR	_GV_SetYearthousandDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104E
;	.line	3439; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_SetMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_SetMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104B
;	.line	3440; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_SetMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_SetMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104A
;	.line	3446; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_SetDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_SetDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104D
;	.line	3447; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_SetDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_SetDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104C
;	.line	3452; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	   	
	MOVAR	_GV_SetRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1053
;	.line	3453; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit 
	MOVAR	_GV_SetRealTimeClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1052
;	.line	3454; "123.c"	if(BF_SetRealTimeClockAM_PM) 
	JBSET	_UserFlag,2
	GOTO	_01211_DS_
;	.line	3456; "123.c"	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
	MOVAI	0xf1
	MOVRA	r0x1056
	GOTO	_01212_DS_
_01211_DS_
;	.line	3460; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
	MOVAI	0x8f
	MOVRA	r0x1056
_01212_DS_
;	.line	3464; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_SetRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1055
;	.line	3465; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 	   	   	   	   	   	   	   	
	MOVAR	_GV_SetRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1054
;	.line	3468; "123.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_01261_DS_
	JBCLR	_UserFlag,7
	GOTO	_01261_DS_
;	.line	3470; "123.c"	if(BF_Clock500ms == 0)//Off Real Time Clock Digit
	JBCLR	_UserFlag,1
	GOTO	_01261_DS_
;	.line	3472; "123.c"	if(GV_RealTimeClockSetStep==0) 	
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_01225_DS_
;	.line	3474; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1057
	MOVAR	r0x1057
	MOVRA	r0x1051
;	.line	3475; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
	MOVAR	r0x1057
	MOVRA	r0x1050
;	.line	3476; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
	MOVAR	r0x1057
	MOVRA	r0x104F
;	.line	3477; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display      	   	   	   	   	   	   	   	
	MOVAR	r0x1057
	MOVRA	r0x104E
	GOTO	_01261_DS_
_01225_DS_
;	.line	3479; "123.c"	else if(GV_RealTimeClockSetStep==1)  	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01222_DS_
;	.line	3481; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1057
	MOVAR	r0x1057
	MOVRA	r0x104B
;	.line	3482; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	   	   	   	   	   	   	   	   	
	MOVAR	r0x1057
	MOVRA	r0x104A
	GOTO	_01261_DS_
_01222_DS_
;	.line	3484; "123.c"	else if(GV_RealTimeClockSetStep==2)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01219_DS_
;	.line	3486; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1057
	MOVAR	r0x1057
	MOVRA	r0x104D
;	.line	3487; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display    	   	   	   	   	   	   	   	
	MOVAR	r0x1057
	MOVRA	r0x104C
	GOTO	_01261_DS_
_01219_DS_
;	.line	3489; "123.c"	else if(GV_RealTimeClockSetStep==3)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_01216_DS_
;	.line	3491; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display      	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1053
	MOVRA	r0x1052
	MOVRA	r0x1057
;;109	MOVAR	r0x1057
;;110	MOVAR	r0x1057
;	.line	3492; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display    	   	   	   	   	   	   	   	
	GOTO	_01261_DS_
_01216_DS_
;	.line	3494; "123.c"	else if(GV_RealTimeClockSetStep==4)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_01261_DS_
;	.line	3496; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1055
	MOVRA	r0x1054
	MOVRA	r0x1057
;;107	MOVAR	r0x1057
;;108	MOVAR	r0x1057
;	.line	3497; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display      	   	   	   	   	   	   	   	
	GOTO	_01261_DS_
_01257_DS_
;	.line	3537; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01261_DS_
;	.line	3539; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_SetAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
	MOVAR	_GV_SetAlarmClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1051
;	.line	3540; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_SetAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit
	MOVAR	_GV_SetAlarmClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1050
;	.line	3542; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
	BSET	r0x1050,7
;	.line	3544; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_SetAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
	MOVAR	_GV_SetAlarmClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104F
;	.line	3545; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_SetAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit
	MOVAR	_GV_SetAlarmClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104E
;	.line	3547; "123.c"	if(BF_SetAlarmAM_PM)//Ϊ0ʱ=AM��Ϊ1=PM
	JBSET	_UserFlag1,2
	GOTO	_01233_DS_
;	.line	3549; "123.c"	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 PM  icons
	BSET	r0x104F,7
	GOTO	_01234_DS_
_01233_DS_
;	.line	3553; "123.c"	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 AM  icons   	   	
	BSET	r0x104E,7
_01234_DS_
;	.line	3557; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	3558; "123.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	3559; "123.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	3560; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_RunMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104B
;	.line	3561; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_RunMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104A
;	.line	3565; "123.c"	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
	BSET	r0x104B,7
;	.line	3566; "123.c"	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  ) 	   	
	BSET	r0x104A,7
;	.line	3569; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	3570; "123.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	3571; "123.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	3572; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_RunDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104D
;	.line	3573; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_RunDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x104C
;	.line	3578; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	3579; "123.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	3582; "123.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	CLRR	_GV_RunRealTimeClockHrTenDig
;	.line	3584; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1053
;	.line	3585; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
	MOVAR	(_C_NumberTable + 0)
	MOVRA	r0x1052
;	.line	3593; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	RTC AM
	MOVAI	0x8f
	MOVRA	r0x1056
;	.line	3597; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	3598; "123.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	3599; "123.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	3600; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1055
;	.line	3601; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
	MOVAR	_GV_RunRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x1057
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x1058
	MOVAR	r0x1057
	MOVRA	FSR
	BCLR	PFLAG,7
	JBCLR	r0x1058,0
	BSET	PFLAG,7
	MOVAR	INDF
	MOVRA	r0x1054
;	.line	3604; "123.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_01261_DS_
	JBCLR	_UserFlag,7
	GOTO	_01261_DS_
;	.line	3606; "123.c"	if(BF_Clock500ms == 0)//Off Alarm Timer set Digit
	JBCLR	_UserFlag,1
	GOTO	_01261_DS_
;	.line	3608; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_01247_DS_
;	.line	3610; "123.c"	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
	JBSET	_UserFlag1,5
	GOTO	_01239_DS_
;	.line	3612; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
	BSET	r0x1050,7
	GOTO	_01261_DS_
_01239_DS_
;	.line	3616; "123.c"	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
	BCLR	r0x1050,7
	GOTO	_01261_DS_
_01247_DS_
;	.line	3619; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01244_DS_
;	.line	3621; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x104F
	MOVRA	r0x104E
	MOVRA	r0x1057
;;105	MOVAR	r0x1057
;;106	MOVAR	r0x1057
;	.line	3622; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
	GOTO	_01261_DS_
_01244_DS_
;	.line	3624; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01261_DS_
;	.line	3626; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
	MOVAR	(_C_NumberTable + 11)
	MOVRA	r0x1051
	MOVRA	r0x1050
	MOVRA	r0x1057
;;102	MOVAR	r0x1057
;;104	MOVAR	r0x1057
_01261_DS_
;	.line	3993; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	3994; "123.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	3995; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	3997; "123.c"	Nop();
	nop
;	.line	3998; "123.c"	Nop();
	nop
;	.line	3999; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	4000; "123.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	4002; "123.c"	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
	MOVAR	r0x104A
	CALL	_Sub_SendByteToPT6964
;	.line	4003; "123.c"	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
	MOVAR	r0x104B
	CALL	_Sub_SendByteToPT6964
;	.line	4005; "123.c"	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
	MOVAR	r0x104C
	CALL	_Sub_SendByteToPT6964
;	.line	4006; "123.c"	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
	MOVAR	r0x104D
	CALL	_Sub_SendByteToPT6964
;	.line	4008; "123.c"	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
	MOVAR	r0x104E
	CALL	_Sub_SendByteToPT6964
;	.line	4009; "123.c"	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
	MOVAR	r0x104F
	CALL	_Sub_SendByteToPT6964
;	.line	4011; "123.c"	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
	MOVAR	r0x1050
	CALL	_Sub_SendByteToPT6964
;	.line	4012; "123.c"	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
	MOVAR	r0x1051
	CALL	_Sub_SendByteToPT6964
;	.line	4014; "123.c"	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
	MOVAR	r0x1052
	CALL	_Sub_SendByteToPT6964
;	.line	4015; "123.c"	Sub_SendByteToPT6964(LV_Dig10_SG1_8);
	MOVAR	r0x1053
	CALL	_Sub_SendByteToPT6964
;	.line	4017; "123.c"	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
	MOVAR	r0x1054
	CALL	_Sub_SendByteToPT6964
;	.line	4018; "123.c"	Sub_SendByteToPT6964(LV_Dig12_SG1_8);
	MOVAR	r0x1055
	CALL	_Sub_SendByteToPT6964
;	.line	4020; "123.c"	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
	MOVAR	r0x1056
	CALL	_Sub_SendByteToPT6964
;	.line	4022; "123.c"	SetSTB1(); 	
	BSET	_IOP2bits,3
;	.line	4030; "123.c"	Nop();
	nop
;	.line	4031; "123.c"	Nop(); 	   	   	   	   	   	   	   	   	
	nop
;	.line	4032; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	4033; "123.c"	if(GV_DisplayBrightnessLevel==0)
	MOVAI	0x00
	ORAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,2
	GOTO	_01268_DS_
;	.line	4035; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
	MOVAI	0x8f
	CALL	_Sub_SendByteToPT6964
	GOTO	_01269_DS_
_01268_DS_
;	.line	4037; "123.c"	else if(GV_DisplayBrightnessLevel==1)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01265_DS_
;	.line	4039; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
	MOVAI	0x8a
	CALL	_Sub_SendByteToPT6964
	GOTO	_01269_DS_
_01265_DS_
;	.line	4041; "123.c"	else if(GV_DisplayBrightnessLevel==2)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01269_DS_
;	.line	4043; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
	MOVAI	0x88
	CALL	_Sub_SendByteToPT6964
_01269_DS_
;	.line	4063; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
	RETURN	
; exit point of _Sub_SendDispDataToTA6932

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_GetByteFromPT6964	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1059
;; Starting pCode block
_Sub_GetByteFromPT6964	;Function start
; 2 exit points
;	.line	3272; "123.c"	GV_GetPT6964Data = 0;
	CLRR	_GV_GetPT6964Data
;	.line	3273; "123.c"	SetDIOInput();
	BCLR	_OEP1bits,5
;	.line	3274; "123.c"	Nop();
	nop
;	.line	3275; "123.c"	Nop();
	nop
;	.line	3276; "123.c"	for(LV_TempPT6964=0x80; LV_TempPT6964; LV_TempPT6964>>=1)
	MOVAI	0x80
	MOVRA	r0x1059
_01189_DS_
	MOVAI	0x00
	ORAR	r0x1059
	JBCLR	PFLAG,2
	GOTO	_01192_DS_
;	.line	3278; "123.c"	GV_GetPT6964Data<<=1;
	BCLR	PFLAG,0
	RLR	_GV_GetPT6964Data
;	.line	3279; "123.c"	SetSCK1();
	BSET	_IOP1bits,4
;	.line	3280; "123.c"	Nop();
	nop
;	.line	3281; "123.c"	Nop();
	nop
;	.line	3282; "123.c"	if(GetDIO()) {GV_GetPT6964Data++; }
	JBSET	_IOP1bits,5
	GOTO	_01188_DS_
	INCR	_GV_GetPT6964Data
_01188_DS_
;	.line	3283; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	3284; "123.c"	Nop();
	nop
;	.line	3285; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	3276; "123.c"	for(LV_TempPT6964=0x80; LV_TempPT6964; LV_TempPT6964>>=1)
	BCLR	PFLAG,0
	RRR	r0x1059
	GOTO	_01189_DS_
_01192_DS_
;	.line	3288; "123.c"	SetDIOOutput();
	BSET	_OEP1bits,5
;	.line	3289; "123.c"	Nop();
	nop
;	.line	3290; "123.c"	Nop();
	nop
	RETURN	
; exit point of _Sub_GetByteFromPT6964

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SendByteToPT6964	;Function start
; 2 exit points
;has an exit
;3 compiler assigned registers:
;   r0x1045
;   r0x1046
;   r0x1047
;; Starting pCode block
_Sub_SendByteToPT6964	;Function start
; 2 exit points
;	.line	3240; "123.c"	void Sub_SendByteToPT6964(unsigned char	LV_SendTodata)  
	MOVRA	r0x1045
;	.line	3243; "123.c"	SetDIOOutput();  
	BSET	_OEP1bits,5
;	.line	3244; "123.c"	SetDIO0();
	BCLR	_IOP1bits,5
;	.line	3245; "123.c"	for(i=0x01; i; i<<=1)
	MOVAI	0x01
	MOVRA	r0x1046
_01179_DS_
	MOVAI	0x00
	ORAR	r0x1046
	JBCLR	PFLAG,2
	GOTO	_01182_DS_
;	.line	3247; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	3248; "123.c"	if(i & LV_SendTodata) {SetDIO1();} else {SetDIO0();}
	MOVAR	r0x1045
	ANDAR	r0x1046
	MOVRA	r0x1047
	MOVAI	0x00
	ORAR	r0x1047
	JBCLR	PFLAG,2
	GOTO	_01177_DS_
	BSET	_IOP1bits,5
	GOTO	_01178_DS_
_01177_DS_
	BCLR	_IOP1bits,5
_01178_DS_
;	.line	3249; "123.c"	SetSCK1();
	BSET	_IOP1bits,4
;	.line	3250; "123.c"	Nop();
	nop
;	.line	3251; "123.c"	Nop();
	nop
;	.line	3252; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	3245; "123.c"	for(i=0x01; i; i<<=1)
	BCLR	PFLAG,0
	RLR	r0x1046
	GOTO	_01179_DS_
_01182_DS_
;	.line	3254; "123.c"	SetDIO0();
	BCLR	_IOP1bits,5
	RETURN	
; exit point of _Sub_SendByteToPT6964

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Buzzer	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_BuzzerBBB
;   _Sub_BuzzerBBB
;; Starting pCode block
_Sub_Buzzer	;Function start
; 2 exit points
;	.line	3205; "123.c"	if(BF_BuzzerBBB)
	JBSET	_UserFlag1,4
	GOTO	_01169_DS_
;	.line	3207; "123.c"	Sub_BuzzerBBB();
	CALL	_Sub_BuzzerBBB
	GOTO	_01171_DS_
_01169_DS_
;	.line	3211; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
;	.line	3212; "123.c"	GV_BuzzerDuty = 0;
	CLRR	_GV_BuzzerDuty
;	.line	3213; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
_01171_DS_
	RETURN	
; exit point of _Sub_Buzzer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_BuzzerBBB	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_BuzzerBBB	;Function start
; 2 exit points
;	.line	3055; "123.c"	if(GV_BuzzerIndex==0)
	MOVAI	0x00
	ORAR	_GV_BuzzerIndex
	JBSET	PFLAG,2
	GOTO	_01161_DS_
;	.line	3057; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	3058; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	3059; "123.c"	GV_BuzzerIndex = 1;
	MOVAI	0x01
	MOVRA	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01161_DS_
;	.line	3061; "123.c"	else if(GV_BuzzerIndex==1)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01158_DS_
;	.line	3063; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3065; "123.c"	GV_BuzzerIndex = 2;
	MOVAI	0x02
	MOVRA	_GV_BuzzerIndex
;	.line	3066; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	3067; "123.c"	GV_BuzzerDuty = 50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
	GOTO	_01163_DS_
_01158_DS_
;	.line	3070; "123.c"	else if(GV_BuzzerIndex==2)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01155_DS_
;	.line	3072; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3074; "123.c"	GV_BuzzerIndex = 3;
	MOVAI	0x03
	MOVRA	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01155_DS_
;	.line	3077; "123.c"	else if(GV_BuzzerIndex==3)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_01152_DS_
;	.line	3079; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	3080; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	3081; "123.c"	GV_BuzzerIndex = 4;
	MOVAI	0x04
	MOVRA	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01152_DS_
;	.line	3083; "123.c"	else if(GV_BuzzerIndex==4)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_01149_DS_
;	.line	3085; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3087; "123.c"	GV_BuzzerIndex = 5;
	MOVAI	0x05
	MOVRA	_GV_BuzzerIndex
;	.line	3088; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	3089; "123.c"	GV_BuzzerDuty = 50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
	GOTO	_01163_DS_
_01149_DS_
;	.line	3092; "123.c"	else if(GV_BuzzerIndex==5)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_01146_DS_
;	.line	3094; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3096; "123.c"	GV_BuzzerIndex = 6;
	MOVAI	0x06
	MOVRA	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01146_DS_
;	.line	3099; "123.c"	else if(GV_BuzzerIndex==6)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_01143_DS_
;	.line	3101; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	3102; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	3103; "123.c"	GV_BuzzerIndex = 7;
	MOVAI	0x07
	MOVRA	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01143_DS_
;	.line	3105; "123.c"	else if(GV_BuzzerIndex==7)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	3107; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3109; "123.c"	GV_BuzzerIndex = 8;
	MOVAI	0x08
	MOVRA	_GV_BuzzerIndex
;	.line	3110; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	3111; "123.c"	GV_BuzzerDuty = 150;
	MOVAI	0x96
	MOVRA	_GV_BuzzerDuty
	GOTO	_01163_DS_
_01140_DS_
;	.line	3114; "123.c"	else if(GV_BuzzerIndex==8)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_01137_DS_
;	.line	3116; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01163_DS_
;	.line	3118; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
	GOTO	_01163_DS_
_01137_DS_
;	.line	3123; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
_01163_DS_
	RETURN	
; exit point of _Sub_BuzzerBBB

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_KeyScan	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Up_AlLongKeyGetAlarmSetMode
;   _Sub_Up_AlShortLongKeyClockSet
;   _Sub_Up_AlShortLongKeyAlarmSet
;   _Sub_RealTimeClockAdd
;   _Sub_SetAlarmAddTimer
;   _Sub_DownShortLongKeyClockSet
;   _Sub_DownShortLongKeyAlarmSet
;   _Sub_RealTimeClockDec
;   _Sub_SetAlarmDecTimer
;   _Sub_SetLongKeyGetRealTimeClockSetMode
;   _Sub_SetKeyRealTimeClockEnter
;   _Sub_SetKeyAlarmEnter
;   _Sub_Up_AlLongKeyGetAlarmSetMode
;   _Sub_Up_AlShortLongKeyClockSet
;   _Sub_Up_AlShortLongKeyAlarmSet
;   _Sub_RealTimeClockAdd
;   _Sub_SetAlarmAddTimer
;   _Sub_DownShortLongKeyClockSet
;   _Sub_DownShortLongKeyAlarmSet
;   _Sub_RealTimeClockDec
;   _Sub_SetAlarmDecTimer
;   _Sub_SetLongKeyGetRealTimeClockSetMode
;   _Sub_SetKeyRealTimeClockEnter
;   _Sub_SetKeyAlarmEnter
;1 compiler assigned register :
;   r0x1063
;; Starting pCode block
_Sub_KeyScan	;Function start
; 2 exit points
;	.line	2682; "123.c"	Nop();
	nop
;	.line	2683; "123.c"	Nop();
	nop
;	.line	2684; "123.c"	Nop();
	nop
;	.line	2685; "123.c"	Nop();
	nop
;	.line	2686; "123.c"	Nop();
	nop
;	.line	2687; "123.c"	Nop();
	nop
;	.line	2688; "123.c"	Nop();
	nop
;	.line	2689; "123.c"	Nop();
	nop
;	.line	2690; "123.c"	Nop();
	nop
;	.line	2691; "123.c"	Nop();
	nop
;	.line	2695; "123.c"	LV_TempB = IOP0;
	MOVAR	_IOP0
	MOVRA	r0x1063
;	.line	2696; "123.c"	LV_TempB = LV_TempB>>4;
	SWAPAR	r0x1063
	ANDAI	0x0f
	MOVRA	r0x1063
;	.line	2697; "123.c"	LV_TempB = LV_TempB&0X0C;
	MOVAI	0x0c
	ANDRA	r0x1063
;	.line	2698; "123.c"	LV_TempB = LV_TempB|IOP2;
	MOVAR	_IOP2
	ORRA	r0x1063
;	.line	2699; "123.c"	LV_TempB = LV_TempB<<1;
	BCLR	PFLAG,0
	RLR	r0x1063
;	.line	2700; "123.c"	LV_TempB = LV_TempB & C_KeysNaturalState;//0b0111 1000;
	MOVAI	0x78
	ANDRA	r0x1063
;	.line	2702; "123.c"	if(GV_CurKey != LV_TempB)
	MOVAR	r0x1063
	XORAR	_GV_CurKey
	JBSET	PFLAG,2
	GOTO	_01119_DS_
	GOTO	_00993_DS_
_01119_DS_
;	.line	2704; "123.c"	GV_KeyDebounce = 0;
	CLRR	_GV_KeyDebounce
;	.line	2705; "123.c"	GV_CurKey = LV_TempB;
	MOVAR	r0x1063
	MOVRA	_GV_CurKey
;	.line	2706; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	2707; "123.c"	BF_Up_AlLongKeyPressesd = 0;
	BCLR	_UserFlag,5
;	.line	2708; "123.c"	BF_DownLongKeyPressesd = 0;
	BCLR	_UserFlag,7
;	.line	2709; "123.c"	BF_SetLongKeyPressesd = 0;
	BCLR	_UserFlag1,1
;	.line	2711; "123.c"	return;
	GOTO	_01061_DS_
_00993_DS_
;	.line	2714; "123.c"	if(++GV_KeyDebounce < 30) return;  	
	INCR	_GV_KeyDebounce
;;unsigned compare: left < lit(0x1E=30), size=1
	MOVAI	0x1e
	RSUBAR	_GV_KeyDebounce
	JBCLR	PFLAG,0
	GOTO	_00995_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_01061_DS_
_00995_DS_
;	.line	2715; "123.c"	if(GV_PreKey == C_KeysNaturalState)
	MOVAR	_GV_PreKey
	XORAI	0x78
	JBSET	PFLAG,2
	GOTO	_01060_DS_
;	.line	2718; "123.c"	if(GV_CurKey == 0x38)//0011 1000 Short/long UP/AL key Pressed,return;
	MOVAR	_GV_CurKey
	XORAI	0x38
	JBSET	PFLAG,2
	GOTO	_01015_DS_
;	.line	2720; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01002_DS_
;	.line	2722; "123.c"	Sub_Up_AlLongKeyGetAlarmSetMode();//Long key return
	CALL	_Sub_Up_AlLongKeyGetAlarmSetMode
;	.line	2723; "123.c"	return;	 
	GOTO	_01061_DS_
_01002_DS_
;	.line	2725; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00999_DS_
;	.line	2727; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2728; "123.c"	Sub_Up_AlShortLongKeyClockSet();//Long/Short key return
	CALL	_Sub_Up_AlShortLongKeyClockSet
;	.line	2729; "123.c"	return;	 
	GOTO	_01061_DS_
_00999_DS_
;	.line	2731; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01016_DS_
;	.line	2733; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2734; "123.c"	Sub_Up_AlShortLongKeyAlarmSet();//Long/Short key return
	CALL	_Sub_Up_AlShortLongKeyAlarmSet
;	.line	2735; "123.c"	return;	
	GOTO	_01061_DS_
_01015_DS_
;	.line	2765; "123.c"	if(BF_Up_AlKeyPressesd)
	JBSET	_UserFlag,4
	GOTO	_01016_DS_
;	.line	2767; "123.c"	BF_Up_AlKeyPressesd = 0;
	BCLR	_UserFlag,4
;	.line	2768; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_01016_DS_
;	.line	2772; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01007_DS_
;	.line	2774; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2775; "123.c"	Sub_RealTimeClockAdd();	//Long/Short key return	 
	CALL	_Sub_RealTimeClockAdd
	GOTO	_01016_DS_
_01007_DS_
;	.line	2777; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01016_DS_
;	.line	2779; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2780; "123.c"	Sub_SetAlarmAddTimer();	//Long/Short key return
	CALL	_Sub_SetAlarmAddTimer
_01016_DS_
;	.line	2807; "123.c"	if(GV_CurKey == 0x58)//0101 1000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x58
	JBSET	PFLAG,2
	GOTO	_01036_DS_
;	.line	2809; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_01037_DS_
;	.line	2813; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01020_DS_
;	.line	2815; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2816; "123.c"	Sub_DownShortLongKeyClockSet();//Long/Short key return
	CALL	_Sub_DownShortLongKeyClockSet
;	.line	2817; "123.c"	return;	
	GOTO	_01061_DS_
_01020_DS_
;	.line	2819; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	2821; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2822; "123.c"	Sub_DownShortLongKeyAlarmSet();//Long/Short key return
	CALL	_Sub_DownShortLongKeyAlarmSet
;	.line	2823; "123.c"	return;	
	GOTO	_01061_DS_
_01036_DS_
;	.line	2852; "123.c"	if(BF_DownKeyPressesd)
	JBSET	_UserFlag,6
	GOTO	_01037_DS_
;	.line	2854; "123.c"	BF_DownKeyPressesd = 0;
	BCLR	_UserFlag,6
;	.line	2856; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_01037_DS_
;	.line	2860; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01028_DS_
;	.line	2862; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2863; "123.c"	Sub_RealTimeClockDec();	//Long/Short key return	
	CALL	_Sub_RealTimeClockDec
	GOTO	_01037_DS_
_01028_DS_
;	.line	2865; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	2867; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2868; "123.c"	Sub_SetAlarmDecTimer();	//Long/Short key return	
	CALL	_Sub_SetAlarmDecTimer
_01037_DS_
;	.line	2892; "123.c"	if(GV_CurKey == 0x68)//0110 1000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x68
	JBSET	PFLAG,2
	GOTO	_01047_DS_
;	.line	2894; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01044_DS_
;	.line	2896; "123.c"	Sub_SetLongKeyGetRealTimeClockSetMode();
	CALL	_Sub_SetLongKeyGetRealTimeClockSetMode
;	.line	2897; "123.c"	return;
	GOTO	_01061_DS_
_01044_DS_
;	.line	2899; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01041_DS_
;	.line	2901; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2902; "123.c"	Sub_SetKeyRealTimeClockEnter();//Long/Short key return 	
	CALL	_Sub_SetKeyRealTimeClockEnter
	GOTO	_01047_DS_
_01041_DS_
;	.line	2904; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01047_DS_
;	.line	2906; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	2907; "123.c"	Sub_SetKeyAlarmEnter();//Long/Short key return 	
	CALL	_Sub_SetKeyAlarmEnter
_01047_DS_
;	.line	2935; "123.c"	if(GV_CurKey == 0x70)//0111 0000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x70
	JBSET	PFLAG,2
	GOTO	_01060_DS_
;	.line	2937; "123.c"	if(BF_BuzzerBBB)
	JBSET	_UserFlag1,4
	GOTO	_01055_DS_
;	.line	2939; "123.c"	BF_BuzzerBBB = 0;
	BCLR	_UserFlag1,4
;	.line	2940; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
;	.line	2941; "123.c"	GV_BuzzerDuty = 0;
	CLRR	_GV_BuzzerDuty
;	.line	2942; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	2943; "123.c"	if(GV_SnoozeTimer == 0)
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBSET	PFLAG,2
	GOTO	_01060_DS_
;	.line	2945; "123.c"	GV_SnoozeTimer = C_SnoozeTimer;//0.5s*120=60s
	MOVAI	0x78
	MOVRA	_GV_SnoozeTimer
	GOTO	_01060_DS_
_01055_DS_
;	.line	2950; "123.c"	if(GV_Mode == 0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01060_DS_
;	.line	2952; "123.c"	if(++GV_DisplayBrightnessLevel > 2)//������ģʽ�µ�������Ļ�ƹ�����3��λѭ������
	INCR	_GV_DisplayBrightnessLevel
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,0
	GOTO	_01060_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2954; "123.c"	GV_DisplayBrightnessLevel = 0;
	CLRR	_GV_DisplayBrightnessLevel
_01060_DS_
;	.line	2962; "123.c"	GV_PreKey = GV_CurKey; 	
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
_01061_DS_
	RETURN	
; exit point of _Sub_KeyScan

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetKeyAlarmEnter	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x105A
;   r0x105B
;; Starting pCode block
_Sub_SetKeyAlarmEnter	;Function start
; 2 exit points
;	.line	2589; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_00985_DS_
;	.line	2591; "123.c"	BF_RunAlarmOnOff = BF_SetAlarmOnOff;
	CLRR	r0x105A
	JBCLR	_UserFlag1,5
	INCR	r0x105A
	MOVAR	r0x105A
	MOVRA	r0x105B
	RRAR	r0x105B
	JBSET	PFLAG,0
	BCLR	_UserFlag1,6
	JBCLR	PFLAG,0
	BSET	_UserFlag1,6
;	.line	2592; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_00977_DS_
;	.line	2594; "123.c"	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
	MOVAR	_GV_RunAlarmClockHrSingleDig
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	2595; "123.c"	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;
	MOVAR	_GV_RunAlarmClockHrTenDig
	MOVRA	_GV_SetAlarmClockHrTenDig
;	.line	2596; "123.c"	BF_SetAlarmAM_PM = BF_RunAlarmAM_PM;
	CLRR	r0x105A
	JBCLR	_UserFlag1,3
	INCR	r0x105A
	MOVAR	r0x105A
	MOVRA	r0x105B
	RRAR	r0x105B
	JBSET	PFLAG,0
	BCLR	_UserFlag1,2
	JBCLR	PFLAG,0
	BSET	_UserFlag1,2
;	.line	2597; "123.c"	GV_AlarmClockSetStep++;
	INCR	_GV_AlarmClockSetStep
	GOTO	_00978_DS_
_00977_DS_
;	.line	2601; "123.c"	GV_Mode = 0;//0=Normal mode;mode;
	CLRR	_GV_Mode
_00978_DS_
;	.line	2603; "123.c"	GV_PreKey = GV_CurKey;     	   	
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
	GOTO	_00987_DS_
_00985_DS_
;	.line	2605; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00982_DS_
;	.line	2607; "123.c"	GV_RunAlarmClockHrSingleDig = GV_SetAlarmClockHrSingleDig;
	MOVAR	_GV_SetAlarmClockHrSingleDig
	MOVRA	_GV_RunAlarmClockHrSingleDig
;	.line	2608; "123.c"	GV_RunAlarmClockHrTenDig = GV_SetAlarmClockHrTenDig;
	MOVAR	_GV_SetAlarmClockHrTenDig
	MOVRA	_GV_RunAlarmClockHrTenDig
;	.line	2609; "123.c"	BF_RunAlarmAM_PM = BF_SetAlarmAM_PM;
	CLRR	r0x105A
	JBCLR	_UserFlag1,2
	INCR	r0x105A
	MOVAR	r0x105A
	MOVRA	r0x105B
	RRAR	r0x105B
	JBSET	PFLAG,0
	BCLR	_UserFlag1,3
	JBCLR	PFLAG,0
	BSET	_UserFlag1,3
;	.line	2611; "123.c"	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
	MOVAR	_GV_RunAlarmClockMinSingleDig
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	2612; "123.c"	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
	MOVAR	_GV_RunAlarmClockMinTenDig
	MOVRA	_GV_SetAlarmClockMinTenDig
;	.line	2613; "123.c"	GV_AlarmClockSetStep++;    	   	
	INCR	_GV_AlarmClockSetStep
	GOTO	_00987_DS_
_00982_DS_
;	.line	2615; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00987_DS_
;	.line	2617; "123.c"	GV_RunAlarmClockMinSingleDig = GV_SetAlarmClockMinSingleDig;
	MOVAR	_GV_SetAlarmClockMinSingleDig
	MOVRA	_GV_RunAlarmClockMinSingleDig
;	.line	2618; "123.c"	GV_RunAlarmClockMinTenDig = GV_SetAlarmClockMinTenDig;
	MOVAR	_GV_SetAlarmClockMinTenDig
	MOVRA	_GV_RunAlarmClockMinTenDig
;	.line	2619; "123.c"	GV_Mode = 0;//0=Normal mode;mode;
	CLRR	_GV_Mode
;	.line	2620; "123.c"	GV_AlarmClockSetStep = 0;      	   	
	CLRR	_GV_AlarmClockSetStep
_00987_DS_
	RETURN	
; exit point of _Sub_SetKeyAlarmEnter

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetKeyRealTimeClockEnter	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;   _Sub_Write1302
;7 compiler assigned registers:
;   r0x105D
;   STK00
;   r0x105E
;   r0x105F
;   r0x1060
;   r0x1061
;   r0x1062
;; Starting pCode block
_Sub_SetKeyRealTimeClockEnter	;Function start
; 2 exit points
;	.line	2131; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00907_DS_
;	.line	2133; "123.c"	LV_TenTemp = GV_SetYearTenDig;
	MOVAR	_GV_SetYearTenDig
	MOVRA	r0x105D
;	.line	2134; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x105D
	ANDAI	0xf0
	MOVRA	r0x105D
;	.line	2135; "123.c"	GV_GetByteFromDs1302 = (GV_SetYearSingleDig | LV_TenTemp);
	MOVAR	r0x105D
	ORAR	_GV_SetYearSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	2136; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2137; "123.c"	Nop();
	nop
;	.line	2138; "123.c"	Nop();
	nop
;	.line	2139; "123.c"	Sub_Write1302(C_DS1302_Year,GV_GetByteFromDs1302); 	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x8c
	CALL	_Sub_Write1302
;	.line	2140; "123.c"	Nop();
	nop
;	.line	2141; "123.c"	Nop();
	nop
;	.line	2142; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2143; "123.c"	Nop();
	nop
;	.line	2144; "123.c"	Nop();     	   	
	nop
	GOTO	_00908_DS_
_00907_DS_
;	.line	2146; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00904_DS_
;	.line	2148; "123.c"	LV_TenTemp = GV_SetMonthTenDig;
	MOVAR	_GV_SetMonthTenDig
	MOVRA	r0x105D
;	.line	2149; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x105D
	ANDAI	0xf0
	MOVRA	r0x105D
;	.line	2150; "123.c"	GV_GetByteFromDs1302 = (GV_SetMonthSingleDig | LV_TenTemp);
	MOVAR	r0x105D
	ORAR	_GV_SetMonthSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	2151; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2152; "123.c"	Nop();
	nop
;	.line	2153; "123.c"	Nop();
	nop
;	.line	2154; "123.c"	Sub_Write1302(C_DS1302_Month,GV_GetByteFromDs1302);	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x88
	CALL	_Sub_Write1302
;	.line	2155; "123.c"	Nop();
	nop
;	.line	2156; "123.c"	Nop();
	nop
;	.line	2157; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2158; "123.c"	Nop();
	nop
;	.line	2159; "123.c"	Nop();
	nop
;	.line	2161; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	2162; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105E
;	.line	2163; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105E
	ANDAI	0x0f
	MOVRA	r0x105F
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x105F
	CALL	__mulchar
	MOVRA	r0x1060
;	.line	2164; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	r0x105E
	MOVRA	r0x105F
;	.line	2165; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	r0x1060
	ADDRA	r0x105F
;	.line	2167; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	2168; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105E
;	.line	2169; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105E
	ANDAI	0x0f
	MOVRA	r0x1061
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1061
	CALL	__mulchar
	MOVRA	r0x1060
;	.line	2170; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	r0x105E
	MOVRA	r0x1061
;	.line	2171; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;
	MOVAR	r0x1060
	ADDRA	r0x1061
;	.line	2173; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	2174; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105E
;	.line	2175; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105E
	ANDAI	0x0f
	MOVRA	r0x1062
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1062
	CALL	__mulchar
	MOVRA	r0x1060
;	.line	2176; "123.c"	LV_TempDay = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDRA	r0x105E
;	.line	2177; "123.c"	LV_TempDay = LV_TempDay + LV_TempB;	
	MOVAR	r0x1060
	ADDRA	r0x105E
;	.line	2194; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x1061
	JBCLR	PFLAG,2
	GOTO	_00908_DS_
;	.line	2198; "123.c"	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
	MOVAR	r0x1061
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00959_DS_
	GOTO	_00880_DS_
_00959_DS_
	MOVAR	r0x1061
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00960_DS_
	GOTO	_00880_DS_
_00960_DS_
	MOVAR	r0x1061
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00961_DS_
	GOTO	_00880_DS_
_00961_DS_
	MOVAR	r0x1061
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00962_DS_
	GOTO	_00880_DS_
_00962_DS_
	MOVAR	r0x1061
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00963_DS_
	GOTO	_00880_DS_
_00963_DS_
	MOVAR	r0x1061
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00964_DS_
	GOTO	_00880_DS_
_00964_DS_
	MOVAR	r0x1061
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00881_DS_
;;unsigned compare: left < lit(0x20=32), size=1
_00880_DS_
;	.line	2200; "123.c"	if(LV_TempDay >= 32)
	MOVAI	0x20
	RSUBAR	r0x105E
	JBSET	PFLAG,0
	GOTO	_00908_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2202; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	2203; "123.c"	GV_SetDayTenDig = 3;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00908_DS_
_00881_DS_
;	.line	2206; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x1061
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00878_DS_
;	.line	2208; "123.c"	if(LV_TempYear % 4)//�ܱ�4������Ϊ����(2��Ϊ29��),����Ϊƽ��(2��Ϊ28��)
	MOVAR	r0x105F
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00868_DS_
;;unsigned compare: left < lit(0x1E=30), size=1
;	.line	2210; "123.c"	if(LV_TempDay >= 30)
	MOVAI	0x1e
	RSUBAR	r0x105E
	JBSET	PFLAG,0
	GOTO	_00908_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2212; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	2213; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00908_DS_
;;unsigned compare: left < lit(0x1D=29), size=1
_00868_DS_
;	.line	2218; "123.c"	if(LV_TempDay >= 29)
	MOVAI	0x1d
	RSUBAR	r0x105E
	JBSET	PFLAG,0
	GOTO	_00908_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2220; "123.c"	GV_SetDaySingleDig = 8;
	MOVAI	0x08
	MOVRA	_GV_SetDaySingleDig
;	.line	2221; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00908_DS_
_00878_DS_
;	.line	2225; "123.c"	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
	MOVAR	r0x1061
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00969_DS_
	GOTO	_00872_DS_
_00969_DS_
	MOVAR	r0x1061
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00970_DS_
	GOTO	_00872_DS_
_00970_DS_
	MOVAR	r0x1061
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00971_DS_
	GOTO	_00872_DS_
_00971_DS_
	MOVAR	r0x1061
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00908_DS_
;;unsigned compare: left < lit(0x1F=31), size=1
_00872_DS_
;	.line	2227; "123.c"	if(LV_TempDay >= 31)
	MOVAI	0x1f
	RSUBAR	r0x105E
	JBSET	PFLAG,0
	GOTO	_00908_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2229; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	2230; "123.c"	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00908_DS_
_00904_DS_
;	.line	2290; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00901_DS_
;	.line	2292; "123.c"	LV_TenTemp = GV_SetDayTenDig;
	MOVAR	_GV_SetDayTenDig
	MOVRA	r0x105D
;	.line	2293; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x105D
	ANDAI	0xf0
	MOVRA	r0x105D
;	.line	2294; "123.c"	GV_GetByteFromDs1302 = (GV_SetDaySingleDig | LV_TenTemp);
	MOVAR	r0x105D
	ORAR	_GV_SetDaySingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	2295; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2296; "123.c"	Nop();
	nop
;	.line	2297; "123.c"	Nop();
	nop
;	.line	2298; "123.c"	Sub_Write1302(C_DS1302_Day,GV_GetByteFromDs1302);  	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x86
	CALL	_Sub_Write1302
;	.line	2299; "123.c"	Nop();
	nop
;	.line	2300; "123.c"	Nop();
	nop
;	.line	2301; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2302; "123.c"	Nop();
	nop
;	.line	2303; "123.c"	Nop();     	   	
	nop
	GOTO	_00908_DS_
_00901_DS_
;	.line	2305; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00898_DS_
;	.line	2307; "123.c"	LV_TenTemp = GV_SetRealTimeClockHrTenDig;
	MOVAR	_GV_SetRealTimeClockHrTenDig
	MOVRA	r0x105D
;	.line	2308; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x105D
	ANDAI	0xf0
	MOVRA	r0x105D
;	.line	2309; "123.c"	if(BF_SetRealTimeClockAM_PM)//Ϊ0ʱ=AM��Ϊ1=PM
	JBSET	_UserFlag,2
	GOTO	_00893_DS_
;	.line	2311; "123.c"	LV_TenTemp |= 0xA0;//(RTCʱ�Ĵ�����Bit7=0Ϊ24Сʱ�ƣ�Bit7=1Ϊ12Сʱ�ƣ�Ϊ12Сʱ��ʱ��ʱ�Ĵ�����Bit5Ϊ0ʱ=AM��Ϊ1=PM
	MOVAI	0xa0
	ORRA	r0x105D
	GOTO	_00894_DS_
_00893_DS_
;	.line	2315; "123.c"	LV_TenTemp |= 0x80;//(RTCʱ�Ĵ�����Bit7=0Ϊ24Сʱ�ƣ�Bit7=1Ϊ12Сʱ�ƣ�Ϊ12Сʱ��ʱ��ʱ�Ĵ�����Bit5Ϊ0ʱ=AM��Ϊ1=PM����)
	BSET	r0x105D,7
_00894_DS_
;	.line	2318; "123.c"	GV_GetByteFromDs1302 = (GV_SetRealTimeClockHrSingleDig | LV_TenTemp);
	MOVAR	r0x105D
	ORAR	_GV_SetRealTimeClockHrSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	2319; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2320; "123.c"	Nop();
	nop
;	.line	2321; "123.c"	Nop();
	nop
;	.line	2322; "123.c"	Sub_Write1302(C_DS1302_Hour,GV_GetByteFromDs1302); 	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x84
	CALL	_Sub_Write1302
;	.line	2323; "123.c"	Nop();
	nop
;	.line	2324; "123.c"	Nop();
	nop
;	.line	2325; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2326; "123.c"	Nop();
	nop
;	.line	2327; "123.c"	Nop();     	   	
	nop
	GOTO	_00908_DS_
_00898_DS_
;	.line	2329; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00908_DS_
;	.line	2331; "123.c"	LV_TenTemp = GV_SetRealTimeClockMinTenDig;
	MOVAR	_GV_SetRealTimeClockMinTenDig
	MOVRA	r0x105D
;	.line	2332; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x105D
	ANDAI	0xf0
	MOVRA	r0x105D
;	.line	2333; "123.c"	GV_GetByteFromDs1302 = (GV_SetRealTimeClockMinSingleDig | LV_TenTemp);
	MOVAR	r0x105D
	ORAR	_GV_SetRealTimeClockMinSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	2334; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2335; "123.c"	Nop();
	nop
;	.line	2336; "123.c"	Nop();
	nop
;	.line	2337; "123.c"	Sub_Write1302(C_DS1302_Minute,GV_GetByteFromDs1302);   	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x82
	CALL	_Sub_Write1302
;	.line	2338; "123.c"	Nop();
	nop
;	.line	2339; "123.c"	Nop();
	nop
;	.line	2340; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	2341; "123.c"	Nop();
	nop
;	.line	2342; "123.c"	Nop();     	   	
	nop
_00908_DS_
;	.line	2568; "123.c"	if(++GV_RealTimeClockSetStep >= 5)
	INCR	_GV_RealTimeClockSetStep
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,0
	GOTO	_00911_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2570; "123.c"	GV_RealTimeClockSetStep = 0;
	CLRR	_GV_RealTimeClockSetStep
;	.line	2571; "123.c"	GV_Mode = 0;//0=Normal mode;mode;  	   	 
	CLRR	_GV_Mode
_00911_DS_
	RETURN	
; exit point of _Sub_SetKeyRealTimeClockEnter

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetLongKeyGetRealTimeClockSetMode	;Function start
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
;   _Sub_Read1302
;; Starting pCode block
_Sub_SetLongKeyGetRealTimeClockSetMode	;Function start
; 2 exit points
;	.line	2075; "123.c"	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x5DC=1500), size=2
	MOVAI	0x05
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00856_DS_
	MOVAI	0xdc
	RSUBAR	_GV_LongKeyTimer
_00856_DS_
	JBCLR	PFLAG,0
	GOTO	_00846_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00850_DS_
_00846_DS_
;	.line	2076; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
;	.line	2079; "123.c"	GV_RealTimeClockSetStep = 0;
	CLRR	_GV_RealTimeClockSetStep
;	.line	2081; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	2082; "123.c"	GV_SetYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetYearSingleDig
;	.line	2083; "123.c"	GV_SetYearTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetYearTenDig
;	.line	2086; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	2087; "123.c"	GV_SetMonthSingleDig = GV_GetByteFromDs1302  &0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetMonthSingleDig
;	.line	2088; "123.c"	GV_SetMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetMonthTenDig
;	.line	2090; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	2091; "123.c"	GV_SetDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetDaySingleDig
;	.line	2092; "123.c"	GV_SetDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetDayTenDig
;	.line	2094; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	2095; "123.c"	GV_SetRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	2100; "123.c"	LV_TempA = GV_GetByteFromDs1302 & 0x02;//Get AM/PM
	JBSET	_GV_GetByteFromDs1302,1
	GOTO	_00848_DS_
;	.line	2104; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
	GOTO	_00849_DS_
_00848_DS_
;	.line	2108; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
_00849_DS_
;	.line	2110; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	2111; "123.c"	GV_SetRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	2112; "123.c"	GV_SetRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetRealTimeClockMinTenDig
;	.line	2114; "123.c"	GV_Mode = 1;//1=Clock set mode
	MOVAI	0x01
	MOVRA	_GV_Mode
_00850_DS_
	RETURN	
; exit point of _Sub_SetLongKeyGetRealTimeClockSetMode

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_DownShortLongKeyClockSet	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_RealTimeClockDec
;   _Sub_RealTimeClockDec
;   _Sub_RealTimeClockDec
;   _Sub_RealTimeClockDec
;; Starting pCode block
_Sub_DownShortLongKeyClockSet	;Function start
; 2 exit points
;	.line	2031; "123.c"	BF_DownKeyPressesd = 1;
	BSET	_UserFlag,6
;	.line	2032; "123.c"	if(BF_DownLongKeyPressesd)//
	JBSET	_UserFlag,7
	GOTO	_00829_DS_
;	.line	2034; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00839_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00839_DS_
	JBCLR	PFLAG,0
	GOTO	_00825_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00831_DS_
_00825_DS_
;	.line	2037; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	2038; "123.c"	Sub_RealTimeClockDec();
	CALL	_Sub_RealTimeClockDec
	GOTO	_00831_DS_
_00829_DS_
;	.line	2043; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00840_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00840_DS_
	JBCLR	PFLAG,0
	GOTO	_00827_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00831_DS_
_00827_DS_
;	.line	2046; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	2047; "123.c"	BF_DownLongKeyPressesd = 1;
	BSET	_UserFlag,7
;	.line	2048; "123.c"	Sub_RealTimeClockDec();
	CALL	_Sub_RealTimeClockDec
_00831_DS_
	RETURN	
; exit point of _Sub_DownShortLongKeyClockSet

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_RealTimeClockDec	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;5 compiler assigned registers:
;   r0x105A
;   r0x105B
;   STK00
;   r0x105C
;   r0x105D
;; Starting pCode block
_Sub_RealTimeClockDec	;Function start
; 2 exit points
;	.line	1587; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00714_DS_
;	.line	1589; "123.c"	if(GV_SetYearSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetYearSingleDig
	JBCLR	PFLAG,2
	GOTO	_00619_DS_
;	.line	1591; "123.c"	GV_SetYearSingleDig--;
	DECR	_GV_SetYearSingleDig
	GOTO	_00716_DS_
_00619_DS_
;	.line	1595; "123.c"	if(GV_SetYearTenDig)
	MOVAI	0x00
	ORAR	_GV_SetYearTenDig
	JBCLR	PFLAG,2
	GOTO	_00616_DS_
;	.line	1597; "123.c"	GV_SetYearSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearSingleDig
;	.line	1598; "123.c"	GV_SetYearTenDig--;
	DECR	_GV_SetYearTenDig
	GOTO	_00716_DS_
_00616_DS_
;	.line	1602; "123.c"	GV_SetYearSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearSingleDig
;	.line	1603; "123.c"	GV_SetYearTenDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearTenDig
	GOTO	_00716_DS_
_00714_DS_
;	.line	1607; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00711_DS_
;	.line	1609; "123.c"	if(GV_SetMonthSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetMonthSingleDig
	JBCLR	PFLAG,2
	GOTO	_00624_DS_
;	.line	1611; "123.c"	GV_SetMonthSingleDig--;
	DECR	_GV_SetMonthSingleDig
	GOTO	_00625_DS_
_00624_DS_
;	.line	1615; "123.c"	if(GV_SetMonthTenDig)
	MOVAI	0x00
	ORAR	_GV_SetMonthTenDig
	JBCLR	PFLAG,2
	GOTO	_00625_DS_
;	.line	1617; "123.c"	GV_SetMonthSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetMonthSingleDig
;	.line	1618; "123.c"	GV_SetMonthTenDig--;
	DECR	_GV_SetMonthTenDig
_00625_DS_
;	.line	1622; "123.c"	if((GV_SetMonthSingleDig==0)&&(GV_SetMonthTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetMonthTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1624; "123.c"	GV_SetMonthSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetMonthSingleDig
;	.line	1625; "123.c"	GV_SetMonthTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetMonthTenDig
	GOTO	_00716_DS_
_00711_DS_
;	.line	1628; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00708_DS_
;	.line	1630; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	1631; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105A
;	.line	1632; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105A
	ANDAI	0x0f
	MOVRA	r0x105B
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x105B
	CALL	__mulchar
	MOVRA	r0x105C
;	.line	1633; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	r0x105A
	MOVRA	r0x105B
;	.line	1634; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	r0x105C
	ADDRA	r0x105B
;	.line	1636; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	1637; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105A
;	.line	1638; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105A
	ANDAI	0x0f
	MOVRA	r0x105D
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x105D
	CALL	__mulchar
	MOVRA	r0x105C
;	.line	1639; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDRA	r0x105A
;	.line	1640; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;	 
	MOVAR	r0x105C
	ADDRA	r0x105A
;	.line	1642; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x105A
	JBCLR	PFLAG,2
	GOTO	_00716_DS_
;	.line	1646; "123.c"	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
	MOVAR	r0x105A
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00810_DS_
	GOTO	_00672_DS_
_00810_DS_
	MOVAR	r0x105A
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00811_DS_
	GOTO	_00672_DS_
_00811_DS_
	MOVAR	r0x105A
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00812_DS_
	GOTO	_00672_DS_
_00812_DS_
	MOVAR	r0x105A
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00813_DS_
	GOTO	_00672_DS_
_00813_DS_
	MOVAR	r0x105A
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00814_DS_
	GOTO	_00672_DS_
_00814_DS_
	MOVAR	r0x105A
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00815_DS_
	GOTO	_00672_DS_
_00815_DS_
	MOVAR	r0x105A
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00673_DS_
_00672_DS_
;	.line	1648; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00632_DS_
;	.line	1650; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00633_DS_
_00632_DS_
;	.line	1654; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00633_DS_
;	.line	1656; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1657; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00633_DS_
;	.line	1660; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1662; "123.c"	GV_SetDaySingleDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1663; "123.c"	GV_SetDayTenDig = 0x03;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00716_DS_
_00673_DS_
;	.line	1666; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x105A
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00670_DS_
;	.line	1668; "123.c"	if(LV_TempYear % 4)//�ܱ�4������Ϊ����(2��Ϊ29��),����Ϊƽ��(2��Ϊ28��)
	MOVAR	r0x105B
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00654_DS_
;	.line	1670; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00640_DS_
;	.line	1672; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00641_DS_
_00640_DS_
;	.line	1676; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00641_DS_
;	.line	1678; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1679; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00641_DS_
;	.line	1682; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1684; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1685; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00716_DS_
_00654_DS_
;	.line	1690; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00648_DS_
;	.line	1692; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00649_DS_
_00648_DS_
;	.line	1696; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00649_DS_
;	.line	1698; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1699; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00649_DS_
;	.line	1702; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1704; "123.c"	GV_SetDaySingleDig = 8;
	MOVAI	0x08
	MOVRA	_GV_SetDaySingleDig
;	.line	1705; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00716_DS_
_00670_DS_
;	.line	1710; "123.c"	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
	MOVAR	r0x105A
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00817_DS_
	GOTO	_00664_DS_
_00817_DS_
	MOVAR	r0x105A
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00818_DS_
	GOTO	_00664_DS_
_00818_DS_
	MOVAR	r0x105A
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00819_DS_
	GOTO	_00664_DS_
_00819_DS_
	MOVAR	r0x105A
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00716_DS_
_00664_DS_
;	.line	1712; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00659_DS_
;	.line	1714; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00660_DS_
_00659_DS_
;	.line	1718; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00660_DS_
;	.line	1720; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1721; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00660_DS_
;	.line	1724; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1726; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1727; "123.c"	GV_SetDayTenDig = 3;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00716_DS_
_00708_DS_
;	.line	1735; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00705_DS_
;	.line	1737; "123.c"	if(GV_SetRealTimeClockHrSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrSingleDig
	JBCLR	PFLAG,2
	GOTO	_00688_DS_
;	.line	1739; "123.c"	GV_SetRealTimeClockHrSingleDig--;
	DECR	_GV_SetRealTimeClockHrSingleDig
	GOTO	_00689_DS_
_00688_DS_
;	.line	1743; "123.c"	if(GV_SetRealTimeClockHrTenDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrTenDig
	JBCLR	PFLAG,2
	GOTO	_00685_DS_
;	.line	1745; "123.c"	GV_SetRealTimeClockHrSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1746; "123.c"	GV_SetRealTimeClockHrTenDig--;
	DECR	_GV_SetRealTimeClockHrTenDig
	GOTO	_00689_DS_
_00685_DS_
;	.line	1750; "123.c"	GV_SetRealTimeClockHrSingleDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1751; "123.c"	GV_SetRealTimeClockHrTenDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrTenDig
_00689_DS_
;	.line	1755; "123.c"	if((GV_SetRealTimeClockHrSingleDig==0)&&(GV_SetRealTimeClockHrTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1757; "123.c"	if(BF_SetRealTimeClockAM_PM)
	JBSET	_UserFlag,2
	GOTO	_00691_DS_
;	.line	1759; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
	GOTO	_00692_DS_
_00691_DS_
;	.line	1763; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
_00692_DS_
;	.line	1765; "123.c"	GV_SetRealTimeClockHrSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1766; "123.c"	GV_SetRealTimeClockHrTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrTenDig
	GOTO	_00716_DS_
_00705_DS_
;	.line	1769; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00716_DS_
;	.line	1771; "123.c"	if(GV_SetRealTimeClockMinSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinSingleDig
	JBCLR	PFLAG,2
	GOTO	_00700_DS_
;	.line	1773; "123.c"	GV_SetRealTimeClockMinSingleDig--;
	DECR	_GV_SetRealTimeClockMinSingleDig
	GOTO	_00716_DS_
_00700_DS_
;	.line	1777; "123.c"	if(GV_SetRealTimeClockMinTenDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinTenDig
	JBCLR	PFLAG,2
	GOTO	_00697_DS_
;	.line	1779; "123.c"	GV_SetRealTimeClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	1780; "123.c"	GV_SetRealTimeClockMinTenDig--;
	DECR	_GV_SetRealTimeClockMinTenDig
	GOTO	_00716_DS_
_00697_DS_
;	.line	1784; "123.c"	GV_SetRealTimeClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	1785; "123.c"	GV_SetRealTimeClockMinTenDig = 5;
	MOVAI	0x05
	MOVRA	_GV_SetRealTimeClockMinTenDig
_00716_DS_
	RETURN	
; exit point of _Sub_RealTimeClockDec

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_DownShortLongKeyAlarmSet	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_SetAlarmDecTimer
;   _Sub_SetAlarmDecTimer
;   _Sub_SetAlarmDecTimer
;   _Sub_SetAlarmDecTimer
;; Starting pCode block
_Sub_DownShortLongKeyAlarmSet	;Function start
; 2 exit points
;	.line	1554; "123.c"	BF_DownKeyPressesd = 1;
	BSET	_UserFlag,6
;	.line	1555; "123.c"	if(BF_DownLongKeyPressesd)//
	JBSET	_UserFlag,7
	GOTO	_00599_DS_
;	.line	1557; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00609_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00609_DS_
	JBCLR	PFLAG,0
	GOTO	_00595_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00601_DS_
_00595_DS_
;	.line	1559; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1560; "123.c"	Sub_SetAlarmDecTimer();
	CALL	_Sub_SetAlarmDecTimer
	GOTO	_00601_DS_
_00599_DS_
;	.line	1565; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00610_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00610_DS_
	JBCLR	PFLAG,0
	GOTO	_00597_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00601_DS_
_00597_DS_
;	.line	1567; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1568; "123.c"	BF_DownLongKeyPressesd = 1;
	BSET	_UserFlag,7
;	.line	1569; "123.c"	Sub_SetAlarmDecTimer();
	CALL	_Sub_SetAlarmDecTimer
_00601_DS_
	RETURN	
; exit point of _Sub_DownShortLongKeyAlarmSet

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetAlarmDecTimer	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_SetAlarmDecTimer	;Function start
; 2 exit points
;	.line	1429; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBCLR	PFLAG,2
	GOTO	_00589_DS_
;	.line	1433; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00584_DS_
;	.line	1435; "123.c"	if(GV_SetAlarmClockHrSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrSingleDig
	JBCLR	PFLAG,2
	GOTO	_00567_DS_
;	.line	1437; "123.c"	GV_SetAlarmClockHrSingleDig--;
	DECR	_GV_SetAlarmClockHrSingleDig
	GOTO	_00568_DS_
_00567_DS_
;	.line	1441; "123.c"	if(GV_SetAlarmClockHrTenDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrTenDig
	JBCLR	PFLAG,2
	GOTO	_00568_DS_
;	.line	1443; "123.c"	GV_SetAlarmClockHrSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	1444; "123.c"	GV_SetAlarmClockHrTenDig--;
	DECR	_GV_SetAlarmClockHrTenDig
_00568_DS_
;	.line	1447; "123.c"	if((GV_SetAlarmClockHrSingleDig==0)&&(GV_SetAlarmClockHrTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00589_DS_
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00589_DS_
;	.line	1449; "123.c"	if(BF_SetAlarmAM_PM)
	JBSET	_UserFlag1,2
	GOTO	_00570_DS_
;	.line	1451; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
	GOTO	_00571_DS_
_00570_DS_
;	.line	1455; "123.c"	BF_SetAlarmAM_PM = 1;
	BSET	_UserFlag1,2
_00571_DS_
;	.line	1457; "123.c"	GV_SetAlarmClockHrSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	1458; "123.c"	GV_SetAlarmClockHrTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetAlarmClockHrTenDig
	GOTO	_00589_DS_
_00584_DS_
;	.line	1461; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00589_DS_
;	.line	1463; "123.c"	if(GV_SetAlarmClockMinSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinSingleDig
	JBCLR	PFLAG,2
	GOTO	_00579_DS_
;	.line	1465; "123.c"	GV_SetAlarmClockMinSingleDig--;
	DECR	_GV_SetAlarmClockMinSingleDig
	GOTO	_00589_DS_
_00579_DS_
;	.line	1469; "123.c"	if(GV_SetAlarmClockMinTenDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinTenDig
	JBCLR	PFLAG,2
	GOTO	_00576_DS_
;	.line	1471; "123.c"	GV_SetAlarmClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	1472; "123.c"	GV_SetAlarmClockMinTenDig--;
	DECR	_GV_SetAlarmClockMinTenDig
	GOTO	_00589_DS_
_00576_DS_
;	.line	1476; "123.c"	GV_SetAlarmClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	1477; "123.c"	GV_SetAlarmClockMinTenDig = 5;
	MOVAI	0x05
	MOVRA	_GV_SetAlarmClockMinTenDig
_00589_DS_
	RETURN	
; exit point of _Sub_SetAlarmDecTimer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Up_AlShortLongKeyClockSet	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_RealTimeClockAdd
;   _Sub_RealTimeClockAdd
;   _Sub_RealTimeClockAdd
;   _Sub_RealTimeClockAdd
;; Starting pCode block
_Sub_Up_AlShortLongKeyClockSet	;Function start
; 2 exit points
;	.line	1397; "123.c"	BF_Up_AlKeyPressesd = 1;
	BSET	_UserFlag,4
;	.line	1398; "123.c"	if(BF_Up_AlLongKeyPressesd)//
	JBSET	_UserFlag,5
	GOTO	_00548_DS_
;	.line	1400; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00558_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00558_DS_
	JBCLR	PFLAG,0
	GOTO	_00544_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00550_DS_
_00544_DS_
;	.line	1402; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1403; "123.c"	Sub_RealTimeClockAdd();
	CALL	_Sub_RealTimeClockAdd
	GOTO	_00550_DS_
_00548_DS_
;	.line	1408; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00559_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00559_DS_
	JBCLR	PFLAG,0
	GOTO	_00546_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00550_DS_
_00546_DS_
;	.line	1410; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1411; "123.c"	BF_Up_AlLongKeyPressesd = 1;
	BSET	_UserFlag,5
;	.line	1412; "123.c"	Sub_RealTimeClockAdd();
	CALL	_Sub_RealTimeClockAdd
_00550_DS_
	RETURN	
; exit point of _Sub_Up_AlShortLongKeyClockSet

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_RealTimeClockAdd	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;   _Sub_Read1302
;   __mulchar
;5 compiler assigned registers:
;   r0x105A
;   r0x105B
;   STK00
;   r0x105C
;   r0x105D
;; Starting pCode block
_Sub_RealTimeClockAdd	;Function start
; 2 exit points
;	.line	995; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00428_DS_
;	.line	997; "123.c"	GV_SetYearSingleDig++;
	INCR	_GV_SetYearSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	998; "123.c"	if(GV_SetYearSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetYearSingleDig
	JBSET	PFLAG,0
	GOTO	_00351_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1000; "123.c"	GV_SetYearSingleDig = 0;
	CLRR	_GV_SetYearSingleDig
;	.line	1001; "123.c"	GV_SetYearTenDig++;
	INCR	_GV_SetYearTenDig
_00351_DS_
;	.line	1003; "123.c"	if((GV_SetYearSingleDig == 0)&&(GV_SetYearTenDig >= 10))
	MOVAI	0x00
	ORAR	_GV_SetYearSingleDig
	JBSET	PFLAG,2
	GOTO	_00430_DS_
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetYearTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1005; "123.c"	GV_SetYearSingleDig = 0;
	CLRR	_GV_SetYearSingleDig
;	.line	1006; "123.c"	GV_SetYearTenDig = 0;
	CLRR	_GV_SetYearTenDig
	GOTO	_00430_DS_
_00428_DS_
;	.line	1009; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00425_DS_
;	.line	1011; "123.c"	GV_SetMonthSingleDig++;
	INCR	_GV_SetMonthSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	1012; "123.c"	if(GV_SetMonthSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,0
	GOTO	_00356_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1014; "123.c"	GV_SetMonthSingleDig = 0;
	CLRR	_GV_SetMonthSingleDig
;	.line	1015; "123.c"	GV_SetMonthTenDig++;
	INCR	_GV_SetMonthTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00356_DS_
;	.line	1017; "123.c"	if((GV_SetMonthSingleDig >= 3)&&(GV_SetMonthTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetMonthTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1019; "123.c"	GV_SetMonthSingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetMonthSingleDig
;	.line	1020; "123.c"	GV_SetMonthTenDig = 0;
	CLRR	_GV_SetMonthTenDig
	GOTO	_00430_DS_
_00425_DS_
;	.line	1023; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00422_DS_
;	.line	1025; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	1026; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105A
;	.line	1027; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105A
	ANDAI	0x0f
	MOVRA	r0x105B
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x105B
	CALL	__mulchar
	MOVRA	r0x105C
;	.line	1028; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	r0x105A
	MOVRA	r0x105B
;	.line	1029; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	r0x105C
	ADDRA	r0x105B
;	.line	1031; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	1032; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	r0x105A
;	.line	1033; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEXʮ����ת��ʮ�����Ƶĳ���
	SWAPAR	r0x105A
	ANDAI	0x0f
	MOVRA	r0x105D
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x105D
	CALL	__mulchar
	MOVRA	r0x105C
;	.line	1034; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDRA	r0x105A
;	.line	1035; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;
	MOVAR	r0x105C
	ADDRA	r0x105A
;	.line	1037; "123.c"	GV_SetDaySingleDig++; 
	INCR	_GV_SetDaySingleDig
;	.line	1039; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x105A
	JBCLR	PFLAG,2
	GOTO	_00430_DS_
;	.line	1043; "123.c"	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
	MOVAR	r0x105A
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00521_DS_
	GOTO	_00391_DS_
_00521_DS_
	MOVAR	r0x105A
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00522_DS_
	GOTO	_00391_DS_
_00522_DS_
	MOVAR	r0x105A
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00523_DS_
	GOTO	_00391_DS_
_00523_DS_
	MOVAR	r0x105A
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00524_DS_
	GOTO	_00391_DS_
_00524_DS_
	MOVAR	r0x105A
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00525_DS_
	GOTO	_00391_DS_
_00525_DS_
	MOVAR	r0x105A
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00526_DS_
	GOTO	_00391_DS_
_00526_DS_
	MOVAR	r0x105A
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00392_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00391_DS_
;	.line	1045; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00361_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1047; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1048; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x2=2), size=1
_00361_DS_
;	.line	1050; "123.c"	if((GV_SetDaySingleDig >= 2)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x02
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1052; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1053; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00430_DS_
_00392_DS_
;	.line	1056; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x105A
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00389_DS_
;	.line	1058; "123.c"	if(LV_TempYear % 4)//�ܱ�4������Ϊ����(2��Ϊ29��),����Ϊƽ��(2��Ϊ28��)
	MOVAR	r0x105B
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00376_DS_
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	1060; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00366_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1062; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1063; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
_00366_DS_
;	.line	1065; "123.c"	if((GV_SetDaySingleDig == 0)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00430_DS_
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1067; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1068; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00430_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00376_DS_
;	.line	1073; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00371_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1075; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1076; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x9=9), size=1
_00371_DS_
;	.line	1078; "123.c"	if((GV_SetDaySingleDig >= 9)&&(GV_SetDayTenDig >= 2))
	MOVAI	0x09
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x2=2), size=1
	MOVAI	0x02
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1080; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1081; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00430_DS_
_00389_DS_
;	.line	1085; "123.c"	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
	MOVAR	r0x105A
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00536_DS_
	GOTO	_00383_DS_
_00536_DS_
	MOVAR	r0x105A
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00537_DS_
	GOTO	_00383_DS_
_00537_DS_
	MOVAR	r0x105A
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00538_DS_
	GOTO	_00383_DS_
_00538_DS_
	MOVAR	r0x105A
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00430_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00383_DS_
;	.line	1087; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00379_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1089; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1090; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x1=1), size=1
_00379_DS_
;	.line	1092; "123.c"	if((GV_SetDaySingleDig >= 1)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x01
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1094; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1095; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00430_DS_
_00422_DS_
;	.line	1174; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00419_DS_
;	.line	1176; "123.c"	GV_SetRealTimeClockHrSingleDig++;
	INCR	_GV_SetRealTimeClockHrSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	1177; "123.c"	if(GV_SetRealTimeClockHrSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00404_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1179; "123.c"	GV_SetRealTimeClockHrSingleDig = 0;
	CLRR	_GV_SetRealTimeClockHrSingleDig
;	.line	1180; "123.c"	GV_SetRealTimeClockHrTenDig++;
	INCR	_GV_SetRealTimeClockHrTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00404_DS_
;	.line	1182; "123.c"	if((GV_SetRealTimeClockHrSingleDig >= 3)&&(GV_SetRealTimeClockHrTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetRealTimeClockHrTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1184; "123.c"	GV_SetRealTimeClockHrSingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1185; "123.c"	GV_SetRealTimeClockHrTenDig = 0;
	CLRR	_GV_SetRealTimeClockHrTenDig
;	.line	1186; "123.c"	if(BF_SetRealTimeClockAM_PM)
	JBSET	_UserFlag,2
	GOTO	_00406_DS_
;	.line	1188; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
	GOTO	_00430_DS_
_00406_DS_
;	.line	1192; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
	GOTO	_00430_DS_
_00419_DS_
;	.line	1196; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00430_DS_
;	.line	1198; "123.c"	GV_SetRealTimeClockMinSingleDig++;
	INCR	_GV_SetRealTimeClockMinSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	1199; "123.c"	if(GV_SetRealTimeClockMinSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetRealTimeClockMinSingleDig
	JBSET	PFLAG,0
	GOTO	_00412_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1201; "123.c"	GV_SetRealTimeClockMinSingleDig = 0;
	CLRR	_GV_SetRealTimeClockMinSingleDig
;	.line	1202; "123.c"	GV_SetRealTimeClockMinTenDig++;
	INCR	_GV_SetRealTimeClockMinTenDig
_00412_DS_
;	.line	1204; "123.c"	if((GV_SetRealTimeClockMinSingleDig == 0)&&(GV_SetRealTimeClockMinTenDig >= 6))
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00430_DS_
;;unsigned compare: left < lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_GV_SetRealTimeClockMinTenDig
	JBSET	PFLAG,0
	GOTO	_00430_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1206; "123.c"	GV_SetRealTimeClockMinSingleDig = 0;
	CLRR	_GV_SetRealTimeClockMinSingleDig
;	.line	1207; "123.c"	GV_SetRealTimeClockMinTenDig = 0;
	CLRR	_GV_SetRealTimeClockMinTenDig
_00430_DS_
	RETURN	
; exit point of _Sub_RealTimeClockAdd

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Up_AlShortLongKeyAlarmSet	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sub_SetAlarmAddTimer
;   _Sub_SetAlarmAddTimer
;   _Sub_SetAlarmAddTimer
;   _Sub_SetAlarmAddTimer
;2 compiler assigned registers:
;   r0x105A
;   r0x105B
;; Starting pCode block
_Sub_Up_AlShortLongKeyAlarmSet	;Function start
; 2 exit points
;	.line	915; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_00327_DS_
;	.line	917; "123.c"	BF_SetAlarmOnOff = !BF_SetAlarmOnOff;//0 = Set alarm off; 1 = Set alarm on
	CLRR	r0x105A
	JBCLR	_UserFlag1,5
	INCR	r0x105A
	MOVAR	r0x105A
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x105A
;;1	MOVRA	r0x105B
;;99	MOVAR	r0x105B
	RRAR	r0x105A
	JBSET	PFLAG,0
	BCLR	_UserFlag1,5
	JBCLR	PFLAG,0
	BSET	_UserFlag1,5
;	.line	918; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
	GOTO	_00329_DS_
_00327_DS_
;	.line	920; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00343_DS_
	GOTO	_00329_DS_
_00343_DS_
;	.line	924; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00329_DS_
;	.line	926; "123.c"	BF_Up_AlKeyPressesd = 1;
	BSET	_UserFlag,4
;	.line	927; "123.c"	if(BF_Up_AlLongKeyPressesd)//
	JBSET	_UserFlag,5
	GOTO	_00319_DS_
;	.line	929; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00344_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00344_DS_
	JBCLR	PFLAG,0
	GOTO	_00315_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00329_DS_
_00315_DS_
;	.line	931; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	932; "123.c"	Sub_SetAlarmAddTimer();
	CALL	_Sub_SetAlarmAddTimer
	GOTO	_00329_DS_
_00319_DS_
;	.line	937; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00345_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00345_DS_
	JBCLR	PFLAG,0
	GOTO	_00317_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00329_DS_
_00317_DS_
;	.line	939; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	940; "123.c"	BF_Up_AlLongKeyPressesd = 1;
	BSET	_UserFlag,5
;	.line	941; "123.c"	Sub_SetAlarmAddTimer();
	CALL	_Sub_SetAlarmAddTimer
_00329_DS_
	RETURN	
; exit point of _Sub_Up_AlShortLongKeyAlarmSet

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetAlarmAddTimer	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_SetAlarmAddTimer	;Function start
; 2 exit points
;	.line	815; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBCLR	PFLAG,2
	GOTO	_00309_DS_
;	.line	819; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00304_DS_
;	.line	821; "123.c"	if(++GV_SetAlarmClockHrSingleDig >= 10)
	INCR	_GV_SetAlarmClockHrSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00289_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	823; "123.c"	GV_SetAlarmClockHrSingleDig = 0;
	CLRR	_GV_SetAlarmClockHrSingleDig
;	.line	824; "123.c"	GV_SetAlarmClockHrTenDig++;
	INCR	_GV_SetAlarmClockHrTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00289_DS_
;	.line	826; "123.c"	if((GV_SetAlarmClockHrSingleDig >= 3)&&(GV_SetAlarmClockHrTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00309_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetAlarmClockHrTenDig
	JBSET	PFLAG,0
	GOTO	_00309_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	828; "123.c"	if(BF_SetAlarmAM_PM)
	JBSET	_UserFlag1,2
	GOTO	_00291_DS_
;	.line	830; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
	GOTO	_00292_DS_
_00291_DS_
;	.line	834; "123.c"	BF_SetAlarmAM_PM = 1;
	BSET	_UserFlag1,2
_00292_DS_
;	.line	837; "123.c"	GV_SetAlarmClockHrTenDig = 0x00;
	CLRR	_GV_SetAlarmClockHrTenDig
;	.line	838; "123.c"	GV_SetAlarmClockHrSingleDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetAlarmClockHrSingleDig
	GOTO	_00309_DS_
_00304_DS_
;	.line	841; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00309_DS_
;	.line	843; "123.c"	if(++GV_SetAlarmClockMinSingleDig >= 10)
	INCR	_GV_SetAlarmClockMinSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetAlarmClockMinSingleDig
	JBSET	PFLAG,0
	GOTO	_00297_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	845; "123.c"	GV_SetAlarmClockMinSingleDig = 0;
	CLRR	_GV_SetAlarmClockMinSingleDig
;	.line	846; "123.c"	GV_SetAlarmClockMinTenDig++;
	INCR	_GV_SetAlarmClockMinTenDig
_00297_DS_
;	.line	848; "123.c"	if((GV_SetAlarmClockMinSingleDig == 0)&&(GV_SetAlarmClockMinTenDig >= 6))
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00309_DS_
;;unsigned compare: left < lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_GV_SetAlarmClockMinTenDig
	JBSET	PFLAG,0
	GOTO	_00309_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	850; "123.c"	GV_SetAlarmClockMinSingleDig = 0;
	CLRR	_GV_SetAlarmClockMinSingleDig
;	.line	851; "123.c"	GV_SetAlarmClockMinTenDig = 0;
	CLRR	_GV_SetAlarmClockMinTenDig
_00309_DS_
	RETURN	
; exit point of _Sub_SetAlarmAddTimer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Up_AlLongKeyGetAlarmSetMode	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x105A
;   r0x105B
;; Starting pCode block
_Sub_Up_AlLongKeyGetAlarmSetMode	;Function start
; 2 exit points
;	.line	789; "123.c"	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x5DC=1500), size=2
	MOVAI	0x05
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00283_DS_
	MOVAI	0xdc
	RSUBAR	_GV_LongKeyTimer
_00283_DS_
	JBCLR	PFLAG,0
	GOTO	_00278_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00279_DS_
_00278_DS_
;	.line	790; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
;	.line	792; "123.c"	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
	MOVAR	_GV_RunAlarmClockMinSingleDig
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	793; "123.c"	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
	MOVAR	_GV_RunAlarmClockMinTenDig
	MOVRA	_GV_SetAlarmClockMinTenDig
;	.line	795; "123.c"	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
	MOVAR	_GV_RunAlarmClockHrSingleDig
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	796; "123.c"	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;   	
	MOVAR	_GV_RunAlarmClockHrTenDig
	MOVRA	_GV_SetAlarmClockHrTenDig
;	.line	798; "123.c"	BF_SetAlarmOnOff = BF_RunAlarmOnOff;
	CLRR	r0x105A
	JBCLR	_UserFlag1,6
	INCR	r0x105A
	MOVAR	r0x105A
	MOVRA	r0x105B
	RRAR	r0x105B
	JBSET	PFLAG,0
	BCLR	_UserFlag1,5
	JBCLR	PFLAG,0
	BSET	_UserFlag1,5
;	.line	799; "123.c"	GV_AlarmClockSetStep = 0;
	CLRR	_GV_AlarmClockSetStep
;	.line	800; "123.c"	GV_Mode = 2;//2=Alarm set mode
	MOVAI	0x02
	MOVRA	_GV_Mode
_00279_DS_
	RETURN	
; exit point of _Sub_Up_AlLongKeyGetAlarmSetMode

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
;	.line	722; "123.c"	Sub_IoInitial();
	CALL	_Sub_IoInitial
;	.line	724; "123.c"	Sub_TC2Initial();
	CALL	_Sub_TC2Initial
;	.line	727; "123.c"	GIE = 1;  //FGIE = 1;  //Enable interrupt
	BSET	_MCRbits,7
;	.line	729; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	730; "123.c"	Sub_Write1302(C_DS1302_Second,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x80
	CALL	_Sub_Write1302
;	.line	731; "123.c"	Sub_Write1302(C_DS1302_Minute,0x00);   	
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x82
	CALL	_Sub_Write1302
;	.line	732; "123.c"	Sub_Write1302(C_DS1302_Hour,C_DS1302_AM12HrData);//(RTCʱ�Ĵ�����Bit7=0Ϊ24Сʱ�ƣ�Bit7=1Ϊ12Сʱ�ƣ���Ϊ12Сʱ��ʱ��ʱ�Ĵ�����Bit5Ϊ0ʱ=AM��Ϊ1=PM����)	
	MOVAI	0x92
	MOVRA	STK00
	MOVAI	0x84
	CALL	_Sub_Write1302
;	.line	733; "123.c"	Sub_Write1302(C_DS1302_Day,0x01);  	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x86
	CALL	_Sub_Write1302
;	.line	734; "123.c"	Sub_Write1302(C_DS1302_Month,0x01);	   	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x88
	CALL	_Sub_Write1302
;	.line	735; "123.c"	Sub_Write1302(C_DS1302_Year,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8c
	CALL	_Sub_Write1302
;	.line	736; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	739; "123.c"	GV_RunAlarmClockHrSingleDig = 2;
	MOVAI	0x02
	MOVRA	_GV_RunAlarmClockHrSingleDig
;	.line	740; "123.c"	GV_RunAlarmClockHrTenDig = 1;
	MOVAI	0x01
	MOVRA	_GV_RunAlarmClockHrTenDig
;	.line	742; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
;	.line	743; "123.c"	BF_SetAlarmOnOff = 0;
	BCLR	_UserFlag1,5
;	.line	744; "123.c"	BF_RunAlarmAM_PM = 0;
	BCLR	_UserFlag1,3
;	.line	745; "123.c"	BF_RunAlarmOnOff = 0;
	BCLR	_UserFlag1,6
;	.line	747; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
;	.line	750; "123.c"	GV_200msClock = 100;
	MOVAI	0x64
	MOVRA	_GV_200msClock
_00269_DS_
;	.line	751; "123.c"	while(GV_200msClock)
	MOVAI	0x00
	ORAR	_GV_200msClock
	JBCLR	PFLAG,2
	GOTO	_00272_DS_
;	.line	753; "123.c"	ClrWdt();   //(feed the doggie )
	clrwdt
;	.line	754; "123.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00269_DS_
;	.line	756; "123.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	757; "123.c"	if(++GV_10msClock>=5)
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00269_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	759; "123.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	760; "123.c"	Sub_PT6964PowerOnAllDisp2s();
	CALL	_Sub_PT6964PowerOnAllDisp2s
;	.line	761; "123.c"	GV_200msClock--;
	DECR	_GV_200msClock
	GOTO	_00269_DS_
_00272_DS_
	RETURN	
; exit point of _Sub_Initial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_TC2Initial	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_TC2Initial	;Function start
; 2 exit points
;	.line	674; "123.c"	T0IE=0;//FTC2IEN = 0;      	// Disable TC2 interrupt service
	BCLR	_INTEbits,0
;	.line	675; "123.c"	TC0EN=0;//FTC2ENB = 0;     	// Disable TC2 timer
	BCLR	_T0CRbits,7
;	.line	676; "123.c"	T0CR=0x0a;//TC2M = 0x34;   	// Set TC2 clock = Foscu / 4
	MOVAI	0x0a
	MOVRA	_T0CR
;	.line	677; "123.c"	T0LOAD=0x8b;//TC2R = 0x8B;     	// 0x8B;Set TC2 interval = 125us
	MOVAI	0x8b
	MOVRA	_T0LOAD
;	.line	678; "123.c"	T0IE=1;//FTC2IEN = 1;      	// Enable TC2 interrupt service
	BSET	_INTEbits,0
;	.line	679; "123.c"	T0IF=0;//FTC2IRQ = 0;      	// Clear TC2 interrupt request flag
	BCLR	_INTFbits,0
;	.line	680; "123.c"	TC0EN=1;//FTC2ENB = 1;     	// Enable TC2 timer
	BSET	_T0CRbits,7
	RETURN	
; exit point of _Sub_TC2Initial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_LoopDelay	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_LoopDelay	;Function start
; 2 exit points
;	.line	547; "123.c"	LV_Temp=0;
	CLRR	_LV_Temp
	CLRR	(_LV_Temp + 1)
;;unsigned compare: left < lit(0x1388=5000), size=2
_00247_DS_
;	.line	548; "123.c"	while(LV_Temp<5000)
	MOVAI	0x13
	RSUBAR	(_LV_Temp + 1)
	JBSET	PFLAG,2
	GOTO	_00256_DS_
	MOVAI	0x88
	RSUBAR	_LV_Temp
_00256_DS_
	JBCLR	PFLAG,0
	GOTO	_00250_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	550; "123.c"	Nop();
	nop
;	.line	551; "123.c"	Nop();
	nop
;	.line	552; "123.c"	Nop();
	nop
;	.line	553; "123.c"	Nop();
	nop
;	.line	554; "123.c"	Nop();
	nop
;	.line	555; "123.c"	Nop();
	nop
;	.line	556; "123.c"	Nop();
	nop
;	.line	557; "123.c"	Nop();
	nop
;	.line	559; "123.c"	LV_Temp++;
	INCR	_LV_Temp
	JBCLR	PFLAG,2
	INCR	(_LV_Temp + 1)
;	.line	560; "123.c"	ClrWdt();//WDTR = 0x5a;
	clrwdt
	GOTO	_00247_DS_
_00250_DS_
	RETURN	
; exit point of _Sub_LoopDelay

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_IoInitial	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sub_IoInitial	;Function start
; 2 exit points
;	.line	509; "123.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	510; "123.c"	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
	CLRR	_OEP0
;	.line	511; "123.c"	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
	MOVAI	0xff
	MOVRA	_PUP0
;	.line	512; "123.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	514; "123.c"	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	515; "123.c"	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
	MOVAI	0xbc
	MOVRA	_OEP1
;	.line	516; "123.c"	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
	MOVAI	0x43
	MOVRA	_PUP1
;	.line	517; "123.c"	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	519; "123.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	520; "123.c"	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
	MOVAI	0x0a
	MOVRA	_OEP2
;	.line	521; "123.c"	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
	MOVAI	0xf5
	MOVRA	_PUP2
;	.line	522; "123.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	529; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
	RETURN	
; exit point of _Sub_IoInitial

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_AlarmEvent	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1064
;   r0x1065
;; Starting pCode block
_Sub_AlarmEvent	;Function start
; 2 exit points
;	.line	469; "123.c"	BF_BuzzerBBB = 0;
	BCLR	_UserFlag1,4
;	.line	471; "123.c"	if(GV_Mode) return;
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00201_DS_
	GOTO	_00216_DS_
_00201_DS_
;	.line	472; "123.c"	if(BF_RunAlarmOnOff == 0) return;
	JBCLR	_UserFlag1,6
	GOTO	_00203_DS_
	GOTO	_00216_DS_
_00203_DS_
;	.line	473; "123.c"	if(GV_SnoozeTimer) return;
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBCLR	PFLAG,2
	GOTO	_00205_DS_
	GOTO	_00216_DS_
_00205_DS_
;	.line	474; "123.c"	if(BF_RunRealTimeClockAM_PM != BF_RunAlarmAM_PM) return;
	CLRR	r0x1064
	JBCLR	_UserFlag,3
	INCR	r0x1064
	CLRR	r0x1065
	JBCLR	_UserFlag1,3
	INCR	r0x1065
	MOVAR	r0x1065
	XORAR	r0x1064
	JBSET	PFLAG,2
	GOTO	_00234_DS_
	GOTO	_00207_DS_
_00234_DS_
	GOTO	_00216_DS_
_00207_DS_
;	.line	475; "123.c"	if(GV_RunAlarmClockHrTenDig != GV_RunRealTimeClockHrTenDig) return;
	MOVAR	_GV_RunRealTimeClockHrTenDig
	XORAR	_GV_RunAlarmClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00235_DS_
	GOTO	_00209_DS_
_00235_DS_
	GOTO	_00216_DS_
_00209_DS_
;	.line	476; "123.c"	if(GV_RunAlarmClockHrSingleDig != GV_RunRealTimeClockHrSingleDig) return;
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	XORAR	_GV_RunAlarmClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00236_DS_
	GOTO	_00211_DS_
_00236_DS_
	GOTO	_00216_DS_
_00211_DS_
;	.line	477; "123.c"	if(GV_RunAlarmClockMinTenDig != GV_RunRealTimeClockMinTenDig) return;
	MOVAR	_GV_RunRealTimeClockMinTenDig
	XORAR	_GV_RunAlarmClockMinTenDig
	JBSET	PFLAG,2
	GOTO	_00237_DS_
	GOTO	_00213_DS_
_00237_DS_
	GOTO	_00216_DS_
_00213_DS_
;	.line	478; "123.c"	if(GV_RunAlarmClockMinSingleDig != GV_RunRealTimeClockMinSingleDig) return;
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	XORAR	_GV_RunAlarmClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00238_DS_
	GOTO	_00215_DS_
_00238_DS_
	GOTO	_00216_DS_
_00215_DS_
;	.line	480; "123.c"	BF_BuzzerBBB = 1;
	BSET	_UserFlag1,4
_00216_DS_
	RETURN	
; exit point of _Sub_AlarmEvent

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Write1302	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x105A
;   STK00
;   r0x105B
;   r0x105C
;; Starting pCode block
_Sub_Write1302	;Function start
; 2 exit points
;	.line	409; "123.c"	void Sub_Write1302(unsigned char LV_Addr,unsigned char LV_Data) // ������д��DS1302ĳ����ַ
	MOVRA	r0x105A
	MOVAR	STK00
	MOVRA	r0x105B
;	.line	412; "123.c"	PO_1381A_SCLK =0;  	
	BCLR	_IOP1bits,2
;	.line	413; "123.c"	Enable1381A_RESET();
	BSET	_IOP1bits,7
;	.line	418; "123.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	419; "123.c"	for(i=8; i>0; i--)
	MOVAI	0x08
	MOVRA	r0x105C
_00176_DS_
	MOVAI	0x00
	ORAR	r0x105C
	JBCLR	PFLAG,2
	GOTO	_00195_DS_
;	.line	421; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	423; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x105A,0
	GOTO	_00171_DS_
;	.line	424; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00172_DS_
_00171_DS_
;	.line	426; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00172_DS_
;	.line	427; "123.c"	Nop();
	nop
;	.line	428; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	429; "123.c"	LV_Addr >>= 1;
	BCLR	PFLAG,0
	RRR	r0x105A
;	.line	430; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	419; "123.c"	for(i=8; i>0; i--)
	DECR	r0x105C
	GOTO	_00176_DS_
_00195_DS_
;	.line	433; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x105A
_00180_DS_
	MOVAI	0x00
	ORAR	r0x105A
	JBCLR	PFLAG,2
	GOTO	_00183_DS_
;	.line	435; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	437; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x105B,0
	GOTO	_00174_DS_
;	.line	438; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00175_DS_
_00174_DS_
;	.line	440; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00175_DS_
;	.line	441; "123.c"	Nop();
	nop
;	.line	442; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	443; "123.c"	LV_Data >>= 1;
	BCLR	PFLAG,0
	RRR	r0x105B
;	.line	444; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	433; "123.c"	for(i=8;i>0;i--)
	DECR	r0x105A
	GOTO	_00180_DS_
_00183_DS_
;	.line	446; "123.c"	Disable1381A_RESET();
	BCLR	_IOP1bits,7
	RETURN	
; exit point of _Sub_Write1302

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Read1302	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1048
;   r0x1049
;; Starting pCode block
_Sub_Read1302	;Function start
; 2 exit points
;	.line	360; "123.c"	void Sub_Read1302(unsigned char	LV_Addr) // ��DS1302ĳ����ַ������
	MOVRA	r0x1048
;	.line	363; "123.c"	PO_1381A_SCLK = 0; 	
	BCLR	_IOP1bits,2
;	.line	364; "123.c"	Enable1381A_RESET();
	BSET	_IOP1bits,7
;	.line	366; "123.c"	LV_Addr=(LV_Addr|0x01); // ��ַ������ 
	BSET	r0x1048,0
;	.line	367; "123.c"	PO_1381A_DAT = 0;
	BCLR	_IOP1bits,3
;	.line	368; "123.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	369; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x1049
_00158_DS_
	MOVAI	0x00
	ORAR	r0x1049
	JBCLR	PFLAG,2
	GOTO	_00161_DS_
;	.line	371; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	373; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x1048,0
	GOTO	_00154_DS_
;	.line	374; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00155_DS_
_00154_DS_
;	.line	376; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00155_DS_
;	.line	377; "123.c"	Nop();
	nop
;	.line	378; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	379; "123.c"	LV_Addr >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1048
;	.line	380; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	369; "123.c"	for(i=8;i>0;i--)
	DECR	r0x1049
	GOTO	_00158_DS_
_00161_DS_
;	.line	383; "123.c"	Set1381A_I_O_ForInput();
	BCLR	_OEP1bits,3
;	.line	384; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x1048
_00162_DS_
	MOVAI	0x00
	ORAR	r0x1048
	JBCLR	PFLAG,2
	GOTO	_00165_DS_
;	.line	386; "123.c"	if(PI_PD2_DAT)
	JBSET	_IOP1bits,3
	GOTO	_00157_DS_
;	.line	387; "123.c"	{GV_GetByteFromDs1302 = GV_GetByteFromDs1302|0x80;} 
	BSET	_GV_GetByteFromDs1302,7
_00157_DS_
;	.line	388; "123.c"	PO_1381A_SCLK = 1;
	BSET	_IOP1bits,2
;	.line	389; "123.c"	Nop();
	nop
;	.line	390; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	391; "123.c"	GV_GetByteFromDs1302 = GV_GetByteFromDs1302 >> 1;  	   	   	   	
	BCLR	PFLAG,0
	RRR	_GV_GetByteFromDs1302
;	.line	392; "123.c"	PO_1381A_SCLK = 0;
	BCLR	_IOP1bits,2
;	.line	384; "123.c"	for(i=8;i>0;i--)
	DECR	r0x1048
	GOTO	_00162_DS_
_00165_DS_
;	.line	394; "123.c"	PO_1381A_SCLK = 0;
	BCLR	_IOP1bits,2
;	.line	395; "123.c"	Disable1381A_RESET();
	BCLR	_IOP1bits,7
	RETURN	
; exit point of _Sub_Read1302

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_GetByteFromDS1302	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1066
;; Starting pCode block
_Sub_GetByteFromDS1302	;Function start
; 2 exit points
;	.line	336; "123.c"	Set1381A_I_O_ForInput();
	BCLR	_OEP1bits,3
;	.line	337; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x1066
_00144_DS_
	MOVAI	0x00
	ORAR	r0x1066
	JBCLR	PFLAG,2
	GOTO	_00148_DS_
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	339; "123.c"	GV_GetByteFromDs1302 = GV_GetByteFromDs1302 >> 1;  	   	
	BCLR	PFLAG,0
	RRR	_GV_GetByteFromDs1302
;	.line	340; "123.c"	if(PI_PD2_DAT)
	JBSET	_IOP1bits,3
	GOTO	_00143_DS_
;	.line	341; "123.c"	{GV_GetByteFromDs1302 = GV_GetByteFromDs1302|0x80;} 
	BSET	_GV_GetByteFromDs1302,7
_00143_DS_
;	.line	342; "123.c"	PO_1381A_SCLK = 1;
	BSET	_IOP1bits,2
;	.line	343; "123.c"	Nop();
	nop
;	.line	344; "123.c"	Nop();
	nop
;	.line	345; "123.c"	PO_1381A_SCLK = 0;
	BCLR	_IOP1bits,2
;	.line	337; "123.c"	for(i=8;i>0;i--)
	DECR	r0x1066
	GOTO	_00144_DS_
_00148_DS_
	RETURN	
; exit point of _Sub_GetByteFromDS1302

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SendByteToDS1302	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1067
;   r0x1068
;; Starting pCode block
_Sub_SendByteToDS1302	;Function start
; 2 exit points
;	.line	302; "123.c"	void Sub_SendByteToDS1302(unsigned char	LV_SendTodata)  
	MOVRA	r0x1067
;	.line	305; "123.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	306; "123.c"	for(i=8; i>0; i--)
	MOVAI	0x08
	MOVRA	r0x1068
_00133_DS_
	MOVAI	0x00
	ORAR	r0x1068
	JBCLR	PFLAG,2
	GOTO	_00137_DS_
;	.line	308; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	310; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x1067,0
	GOTO	_00131_DS_
;	.line	311; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00132_DS_
_00131_DS_
;	.line	313; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00132_DS_
;	.line	314; "123.c"	Nop();
	nop
;	.line	315; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	316; "123.c"	LV_SendTodata >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1067
;	.line	317; "123.c"	PO_1381A_SCLK = 1; 	   	
	BSET	_IOP1bits,2
;	.line	306; "123.c"	for(i=8; i>0; i--)
	DECR	r0x1068
	GOTO	_00133_DS_
_00137_DS_
	RETURN	
; exit point of _Sub_SendByteToDS1302


;	code size estimation:
;	 2962+    0 =  2962 instructions ( 5924 byte)

	end
