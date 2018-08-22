;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (Dec 19 2017) (MINGW32)
; This file was generated Mon Mar 19 15:06:03 2018
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
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Sub_PT6964PowerOnAllDisp2s
	global	_Sub_TA6932Disp
	global	_Sub_Buzzer
	global	_Sub_KeyScan
	global	_Sub_Initial
	global	_Sub_IoInitial
	global	_Sub_AlarmEvent
	global	_Sub_Write1302
	global	_Sub_Read1302
	global	_main
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
	global	_Sub_SetLongKeyGetRealTimeClockSetMode
	global	_Sub_SetKeyRealTimeClockEnter
	global	_Sub_SetKeyAlarmEnter
	global	_Sub_BuzzerBBB
	global	_Sub_SendByteToPT6964
	global	_Sub_GetByteFromPT6964
	global	_Sub_SendDispDataToTA6932
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
	global	_LV_TempA
	global	_LV_TempB
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
_GV_SetYearthousandDig	res	1

UD_123_25	udata
_GV_RunYearSingleDig	res	1

UD_123_26	udata
_GV_RunYearTenDig	res	1

UD_123_27	udata
_GV_RunYearHundredsDig	res	1

UD_123_28	udata
_GV_RunYearthousandDig	res	1

UD_123_29	udata
_GV_SetMonthSingleDig	res	1

UD_123_30	udata
_GV_SetMonthTenDig	res	1

UD_123_31	udata
_GV_RunMonthSingleDig	res	1

UD_123_32	udata
_GV_RunMonthTenDig	res	1

UD_123_33	udata
_GV_SetDaySingleDig	res	1

UD_123_34	udata
_GV_SetDayTenDig	res	1

UD_123_35	udata
_GV_RunDaySingleDig	res	1

UD_123_36	udata
_GV_RunDayTenDig	res	1

UD_123_37	udata
_GV_SetRealTimeClockHrSingleDig	res	1

UD_123_38	udata
_GV_SetRealTimeClockHrTenDig	res	1

UD_123_39	udata
_GV_SetRealTimeClockMinSingleDig	res	1

UD_123_40	udata
_GV_SetRealTimeClockMinTenDig	res	1

UD_123_41	udata
_GV_RunRealTimeClockHrSingleDig	res	1

UD_123_42	udata
_GV_RunRealTimeClockHrTenDig	res	1

UD_123_43	udata
_GV_RunRealTimeClockMinSingleDig	res	1

UD_123_44	udata
_GV_RunRealTimeClockMinTenDig	res	1

UD_123_45	udata
_GV_SetAlarmClockHrSingleDig	res	1

UD_123_46	udata
_GV_SetAlarmClockHrTenDig	res	1

UD_123_47	udata
_GV_SetAlarmClockMinSingleDig	res	1

UD_123_48	udata
_GV_SetAlarmClockMinTenDig	res	1

UD_123_49	udata
_GV_RunAlarmClockHrSingleDig	res	1

UD_123_50	udata
_GV_RunAlarmClockHrTenDig	res	1

UD_123_51	udata
_GV_RunAlarmClockMinSingleDig	res	1

UD_123_52	udata
_GV_RunAlarmClockMinTenDig	res	1

UD_123_53	udata
_GV_15sNoOperationCnt	res	1

UD_123_54	udata
_GV_DisplayBrightnessLevel	res	1

UD_123_55	udata
_GV_SnoozeTimer	res	1

UD_123_56	udata
_DATA_ID	res	2

UD_123_57	udata
_LV_Temp	res	2

UD_123_58	udata
_LV_Dig1_SG1_8	res	1

UD_123_59	udata
_LV_Dig2_SG1_8	res	1

UD_123_60	udata
_LV_Dig3_SG1_8	res	1

UD_123_61	udata
_LV_Dig4_SG1_8	res	1

UD_123_62	udata
_LV_Dig5_SG1_8	res	1

UD_123_63	udata
_LV_Dig6_SG1_8	res	1

UD_123_64	udata
_LV_Dig7_SG1_8	res	1

UD_123_65	udata
_LV_Dig8_SG1_8	res	1

UD_123_66	udata
_LV_Dig9_SG1_8	res	1

UD_123_67	udata
_LV_Dig10_SG1_8	res	1

UD_123_68	udata
_LV_Dig11_SG1_8	res	1

UD_123_69	udata
_LV_Dig12_SG1_8	res	1

UD_123_70	udata
_LV_Dig13_SG1_8	res	1

UD_123_71	udata
_LV_TempA	res	1

UD_123_72	udata
_LV_TempB	res	1

UD_123_73	udata
_ABuf	res	1

UD_123_74	udata
_StatusBuf	res	1

UD_123_75	udata
_FSR_TEMP	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_123_0	udata
r0x105A	res	1
r0x105B	res	1
r0x104B	res	1
r0x104C	res	1
r0x1050	res	1
r0x1051	res	1
r0x1052	res	1
r0x1058	res	1
r0x1059	res	1
r0x1053	res	1
r0x1054	res	1
r0x1055	res	1
r0x1056	res	1
r0x1057	res	1
r0x1048	res	1
r0x1049	res	1
r0x104A	res	1
r0x104F	res	1
r0x104D	res	1
r0x104E	res	1
r0x105C	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_123_0	code	0x0FF0
_C_NumberTable
	dw 0x3f
	dw 0x06
	dw 0x5b
	dw 0x4f
	dw 0x66
	dw 0x6d
	dw 0x7d
	dw 0x07
	dw 0x7f
	dw 0x6f
	dw 0x00
	dw 0x00


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
;@main LV_TempA                  Allocated to registers ;size:1
;@main LV_TempB                  Allocated to registers ;size:1
;@main ABuf                      Allocated to registers ;size:1
;@main StatusBuf                 Allocated to registers ;size:1
;@main FSR_TEMP                  Allocated to registers ;size:1
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
;@Allocation info for local variables in function 'Sub_Read1302'
;@Sub_Read1302 LV_Addr                   Allocated to registers r0x104B ;size:1
;@Sub_Read1302 i                         Allocated to registers r0x104C ;size:1
;@Sub_Read1302 LV_TempE                  Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sub_Read1302';
;@Allocation info for local variables in function 'Sub_Write1302'
;@Sub_Write1302 LV_Data                   Allocated to registers r0x1051 ;size:1
;@Sub_Write1302 LV_Addr                   Allocated to registers r0x1050 ;size:1
;@Sub_Write1302 i                         Allocated to registers r0x1052 ;size:1
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
;@Sub_RealTimeClockAdd LV_TempYear               Allocated to registers r0x1050 ;size:1
;@Sub_RealTimeClockAdd LV_TempMonth              Allocated to registers r0x1051 ;size:1
;@end Allocation info for local variables in function 'Sub_RealTimeClockAdd';
;@Allocation info for local variables in function 'Sub_Up_AlShortLongKeyClockSet'
;@end Allocation info for local variables in function 'Sub_Up_AlShortLongKeyClockSet';
;@Allocation info for local variables in function 'Sub_SetAlarmDecTimer'
;@end Allocation info for local variables in function 'Sub_SetAlarmDecTimer';
;@Allocation info for local variables in function 'Sub_DownShortLongKeyAlarmSet'
;@end Allocation info for local variables in function 'Sub_DownShortLongKeyAlarmSet';
;@Allocation info for local variables in function 'Sub_RealTimeClockDec'
;@Sub_RealTimeClockDec LV_TempYear               Allocated to registers r0x1050 ;size:1
;@Sub_RealTimeClockDec LV_TempMonth              Allocated to registers r0x1051 ;size:1
;@end Allocation info for local variables in function 'Sub_RealTimeClockDec';
;@Allocation info for local variables in function 'Sub_DownShortLongKeyClockSet'
;@end Allocation info for local variables in function 'Sub_DownShortLongKeyClockSet';
;@Allocation info for local variables in function 'Sub_SetLongKeyGetRealTimeClockSetMode'
;@end Allocation info for local variables in function 'Sub_SetLongKeyGetRealTimeClockSetMode';
;@Allocation info for local variables in function 'Sub_SetKeyRealTimeClockEnter'
;@Sub_SetKeyRealTimeClockEnter LV_TempYear               Allocated to registers r0x1054 ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempMonth              Allocated to registers r0x1055 ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TempDay                Allocated to registers r0x1056 ;size:1
;@Sub_SetKeyRealTimeClockEnter LV_TenTemp                Allocated to registers r0x1053 ;size:1
;@end Allocation info for local variables in function 'Sub_SetKeyRealTimeClockEnter';
;@Allocation info for local variables in function 'Sub_SetKeyAlarmEnter'
;@end Allocation info for local variables in function 'Sub_SetKeyAlarmEnter';
;@Allocation info for local variables in function 'Sub_KeyScan'
;@Sub_KeyScan LV_TempB                  Allocated to registers r0x1057 ;size:1
;@end Allocation info for local variables in function 'Sub_KeyScan';
;@Allocation info for local variables in function 'Sub_BuzzerBBB'
;@end Allocation info for local variables in function 'Sub_BuzzerBBB';
;@Allocation info for local variables in function 'Sub_Buzzer'
;@end Allocation info for local variables in function 'Sub_Buzzer';
;@Allocation info for local variables in function 'Sub_SendByteToPT6964'
;@Sub_SendByteToPT6964 LV_SendTodata             Allocated to registers r0x1048 ;size:1
;@Sub_SendByteToPT6964 i                         Allocated to registers r0x1049 ;size:1
;@end Allocation info for local variables in function 'Sub_SendByteToPT6964';
;@Allocation info for local variables in function 'Sub_GetByteFromPT6964'
;@Sub_GetByteFromPT6964 LV_TempPT6964             Allocated to registers r0x104F ;size:1
;@end Allocation info for local variables in function 'Sub_GetByteFromPT6964';
;@Allocation info for local variables in function 'Sub_SendDispDataToTA6932'
;@end Allocation info for local variables in function 'Sub_SendDispDataToTA6932';
;@Allocation info for local variables in function 'Sub_TA6932Disp'
;@end Allocation info for local variables in function 'Sub_TA6932Disp';
;@Allocation info for local variables in function 'Sub_PT6964PowerOnAllDisp2s'
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
;   r0x105C
;   r0x105D
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	2463; "123.c"	__endasm;
	movra _ABuf
	swapar _STATUS
	movra _StatusBuf
	
;	.line	2464; "123.c"	if(T0IF)
	JBSET	_INTFbits,0
	GOTO	_01270_DS_
;	.line	2466; "123.c"	T0IF = 0;
	BCLR	_INTFbits,0
;	.line	2468; "123.c"	PO_Buzzer = !PO_Buzzer;
	CLRR	r0x105C
	JBCLR	_IOP2bits,1
	INCR	r0x105C
	MOVAR	r0x105C
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x105C
;;1	MOVRA	r0x105D
;;100	MOVAR	r0x105D
	RRAR	r0x105C
	JBSET	PFLAG,0
	BCLR	_IOP2bits,1
	JBCLR	PFLAG,0
	BSET	_IOP2bits,1
;	.line	2469; "123.c"	if(++GV_2msClock >= 16)
	INCR	_GV_2msClock
;;unsigned compare: left < lit(0x10=16), size=1
	MOVAI	0x10
	RSUBAR	_GV_2msClock
	JBSET	PFLAG,0
	GOTO	_01270_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	2471; "123.c"	GV_2msClock = 0;
	CLRR	_GV_2msClock
;	.line	2472; "123.c"	BF_TccClock2ms = 1;
	BSET	_UserFlag,0
_01270_DS_
;	.line	2480; "123.c"	__endasm;
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
;   r0x105A
;   r0x105B
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	216; "123.c"	Sub_Initial();
	CALL	_Sub_Initial
_00125_DS_
;	.line	220; "123.c"	ClrWdt(); //(feed the doggie )
	clrwdt
;	.line	222; "123.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00125_DS_
;	.line	224; "123.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	226; "123.c"	Sub_KeyScan();
	CALL	_Sub_KeyScan
;	.line	227; "123.c"	Sub_Buzzer();
	CALL	_Sub_Buzzer
;	.line	230; "123.c"	if(++GV_10msClock>=5) //
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00106_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	232; "123.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	233; "123.c"	Sub_TA6932Disp();
	CALL	_Sub_TA6932Disp
_00106_DS_
;	.line	237; "123.c"	if(++GV_100msClock>=50) //
	INCR	_GV_100msClock
;;unsigned compare: left < lit(0x32=50), size=1
	MOVAI	0x32
	RSUBAR	_GV_100msClock
	JBSET	PFLAG,0
	GOTO	_00108_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	239; "123.c"	GV_100msClock = 0;
	CLRR	_GV_100msClock
;	.line	240; "123.c"	Sub_AlarmEvent();
	CALL	_Sub_AlarmEvent
_00108_DS_
;	.line	244; "123.c"	if(++GV_200msClock>=100) //
	INCR	_GV_200msClock
;;unsigned compare: left < lit(0x64=100), size=1
	MOVAI	0x64
	RSUBAR	_GV_200msClock
	JBSET	PFLAG,0
	GOTO	_00110_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	246; "123.c"	GV_200msClock = 0;
	CLRR	_GV_200msClock
_00110_DS_
;	.line	250; "123.c"	if(++GV_250msClock>=125) //Per 250ms
	INCR	_GV_250msClock
;;unsigned compare: left < lit(0x7D=125), size=1
	MOVAI	0x7d
	RSUBAR	_GV_250msClock
	JBSET	PFLAG,0
	GOTO	_00112_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	252; "123.c"	GV_250msClock = 0;
	CLRR	_GV_250msClock
;	.line	253; "123.c"	BF_Clock250ms  = !BF_Clock250ms;
	CLRR	r0x105A
	JBCLR	_UserFlag1,0
	INCR	r0x105A
	MOVAR	r0x105A
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x105A
	MOVRA	r0x105B
;;102	MOVAR	r0x105B
	RRAR	r0x105A
	JBSET	PFLAG,0
	BCLR	_UserFlag1,0
	JBCLR	PFLAG,0
	BSET	_UserFlag1,0
_00112_DS_
;	.line	257; "123.c"	if(++GV_500msClock >= 249)//
	INCR	_GV_500msClock
;;unsigned compare: left < lit(0xF9=249), size=1
	MOVAI	0xf9
	RSUBAR	_GV_500msClock
	JBSET	PFLAG,0
	GOTO	_00125_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	259; "123.c"	GV_500msClock = 0;
	CLRR	_GV_500msClock
;	.line	260; "123.c"	BF_Clock500ms  = !BF_Clock500ms;
	CLRR	r0x105A
	JBCLR	_UserFlag,1
	INCR	r0x105A
	MOVAR	r0x105A
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x105A
	MOVRA	r0x105B
;;101	MOVAR	r0x105B
	RRAR	r0x105A
	JBSET	PFLAG,0
	BCLR	_UserFlag,1
	JBCLR	PFLAG,0
	BSET	_UserFlag,1
;	.line	262; "123.c"	if((GV_15sNoOperationCnt)&&(GV_Mode))//Automatically return to normal mode at 15 seconds without operation in setting mode.
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00116_DS_
;	.line	264; "123.c"	if(--GV_15sNoOperationCnt == 0)
	DECR	_GV_15sNoOperationCnt
	MOVAI	0x00
	ORAR	_GV_15sNoOperationCnt
	JBSET	PFLAG,2
	GOTO	_00116_DS_
;	.line	266; "123.c"	GV_Mode = 0;//0=Normal mode; 1=clock set mode; 2=Alarm set mode
	CLRR	_GV_Mode
_00116_DS_
;	.line	270; "123.c"	if(GV_SnoozeTimer)
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBCLR	PFLAG,2
	GOTO	_00125_DS_
;	.line	272; "123.c"	GV_SnoozeTimer--;
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
;	.line	2376; "123.c"	LV_Dig1_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig1_SG1_8
;	.line	2377; "123.c"	LV_Dig2_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig2_SG1_8
;	.line	2378; "123.c"	LV_Dig3_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig3_SG1_8
;	.line	2379; "123.c"	LV_Dig4_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig4_SG1_8
;	.line	2380; "123.c"	LV_Dig5_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig5_SG1_8
;	.line	2381; "123.c"	LV_Dig6_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig6_SG1_8
;	.line	2382; "123.c"	LV_Dig7_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig7_SG1_8
;	.line	2383; "123.c"	LV_Dig8_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig8_SG1_8
;	.line	2384; "123.c"	LV_Dig9_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig9_SG1_8
;	.line	2385; "123.c"	LV_Dig10_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig10_SG1_8
;	.line	2386; "123.c"	LV_Dig11_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig11_SG1_8
;	.line	2387; "123.c"	LV_Dig12_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig12_SG1_8
;	.line	2388; "123.c"	LV_Dig13_SG1_8 = 0xff;
	MOVAI	0xff
	MOVRA	_LV_Dig13_SG1_8
;	.line	2391; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	2392; "123.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	2393; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	2394; "123.c"	Nop();
	nop
;	.line	2395; "123.c"	Nop();
	nop
;	.line	2396; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	2397; "123.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	2399; "123.c"	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
	MOVAR	_LV_Dig1_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2400; "123.c"	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
	MOVAR	_LV_Dig2_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2402; "123.c"	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
	MOVAR	_LV_Dig3_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2403; "123.c"	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
	MOVAR	_LV_Dig4_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2405; "123.c"	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
	MOVAR	_LV_Dig5_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2406; "123.c"	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
	MOVAR	_LV_Dig6_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2408; "123.c"	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
	MOVAR	_LV_Dig7_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2409; "123.c"	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
	MOVAR	_LV_Dig8_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2411; "123.c"	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
	MOVAR	_LV_Dig9_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2412; "123.c"	Sub_SendByteToPT6964(LV_Dig10_SG1_8);
	MOVAR	_LV_Dig10_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2414; "123.c"	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
	MOVAR	_LV_Dig11_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2415; "123.c"	Sub_SendByteToPT6964(LV_Dig12_SG1_8);
	MOVAR	_LV_Dig12_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2417; "123.c"	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
	MOVAR	_LV_Dig13_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2418; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	2420; "123.c"	Nop();
	nop
;	.line	2421; "123.c"	Nop();
	nop
;	.line	2422; "123.c"	SetSTB0();  
	BCLR	_IOP2bits,3
;	.line	2423; "123.c"	if(GV_DisplayBrightnessLevel==0)
	MOVAI	0x00
	ORAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,2
	GOTO	_01261_DS_
;	.line	2425; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
	MOVAI	0x8f
	CALL	_Sub_SendByteToPT6964
	GOTO	_01262_DS_
_01261_DS_
;	.line	2427; "123.c"	else if(GV_DisplayBrightnessLevel==1)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01258_DS_
;	.line	2429; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
	MOVAI	0x8a
	CALL	_Sub_SendByteToPT6964
	GOTO	_01262_DS_
_01258_DS_
;	.line	2431; "123.c"	else if(GV_DisplayBrightnessLevel==2)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01262_DS_
;	.line	2433; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
	MOVAI	0x88
	CALL	_Sub_SendByteToPT6964
_01262_DS_
;	.line	2440; "123.c"	SetSTB1();
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
;	.line	2356; "123.c"	Sub_SendDispDataToTA6932();	   	   	   	   	   	   	   	   	   	
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
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
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
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   _Sub_Read1302
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
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
;4 compiler assigned registers:
;   r0x104D
;   r0x104E
;   STK01
;   STK00
;; Starting pCode block
_Sub_SendDispDataToTA6932	;Function start
; 2 exit points
;	.line	1998; "123.c"	LV_Dig1_SG1_8 = 0;
	CLRR	_LV_Dig1_SG1_8
;	.line	1999; "123.c"	LV_Dig2_SG1_8 = 0;
	CLRR	_LV_Dig2_SG1_8
;	.line	2000; "123.c"	LV_Dig3_SG1_8 = 0;
	CLRR	_LV_Dig3_SG1_8
;	.line	2001; "123.c"	LV_Dig4_SG1_8 = 0;
	CLRR	_LV_Dig4_SG1_8
;	.line	2002; "123.c"	LV_Dig5_SG1_8 = 0;
	CLRR	_LV_Dig5_SG1_8
;	.line	2003; "123.c"	LV_Dig6_SG1_8 = 0;
	CLRR	_LV_Dig6_SG1_8
;	.line	2004; "123.c"	LV_Dig7_SG1_8 = 0;
	CLRR	_LV_Dig7_SG1_8
;	.line	2005; "123.c"	LV_Dig8_SG1_8 = 0;
	CLRR	_LV_Dig8_SG1_8
;	.line	2006; "123.c"	LV_Dig9_SG1_8 = 0;
	CLRR	_LV_Dig9_SG1_8
;	.line	2007; "123.c"	LV_Dig10_SG1_8 = 0;
	CLRR	_LV_Dig10_SG1_8
;	.line	2008; "123.c"	LV_Dig11_SG1_8 = 0;
	CLRR	_LV_Dig11_SG1_8
;	.line	2009; "123.c"	LV_Dig12_SG1_8 = 0;
	CLRR	_LV_Dig12_SG1_8
;	.line	2010; "123.c"	LV_Dig13_SG1_8 = 0;
	CLRR	_LV_Dig13_SG1_8
;	.line	2012; "123.c"	LV_TempA = 0;
	CLRR	_LV_TempA
;	.line	2013; "123.c"	LV_TempB = 0;
	CLRR	_LV_TempB
;	.line	2015; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01237_DS_
;	.line	2017; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_01178_DS_
;	.line	2020; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_RunAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
	MOVAR	_GV_RunAlarmClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2021; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_RunAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit 	
	MOVAR	_GV_RunAlarmClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
;	.line	2022; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons	
	BSET	_LV_Dig7_SG1_8,7
;	.line	2024; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_RunAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
	MOVAR	_GV_RunAlarmClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2025; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_RunAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit  	
	MOVAR	_GV_RunAlarmClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
;	.line	2026; "123.c"	if(BF_RunAlarmAM_PM)//为0时=AM；为1=PM
	JBSET	_UserFlag1,3
	GOTO	_01175_DS_
;	.line	2028; "123.c"	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 Alarm clock PM  icons
	BSET	_LV_Dig6_SG1_8,7
;	.line	2029; "123.c"	BF_RunRealTimeClockAM_PM = 1;
	BSET	_UserFlag,3
	GOTO	_01179_DS_
_01175_DS_
;	.line	2033; "123.c"	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 Alarm clock AM  icons
	BSET	_LV_Dig5_SG1_8,7
;	.line	2034; "123.c"	BF_RunRealTimeClockAM_PM = 0;  	   	
	BCLR	_UserFlag,3
	GOTO	_01179_DS_
_01178_DS_
;	.line	2040; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	2041; "123.c"	GV_RunYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunYearSingleDig
;	.line	2042; "123.c"	GV_RunYearTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunYearTenDig
;	.line	2043; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_RunYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
	MOVAR	_GV_RunYearSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2044; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_RunYearTenDig];     //Dig7 Year Ten Digit
	MOVAR	_GV_RunYearTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
;	.line	2045; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_RunYearHundredsDig];//Dig6 Year Hundreds Digit
	MOVAR	_GV_RunYearHundredsDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2046; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_RunYearthousandDig];//Dig5 Year thousand Digit
	MOVAR	_GV_RunYearthousandDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
_01179_DS_
;	.line	2050; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	2051; "123.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	2052; "123.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	2053; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_RunMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig2_SG1_8
;	.line	2054; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_RunMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig1_SG1_8
;	.line	2055; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_01181_DS_
;	.line	2057; "123.c"	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
	BSET	_LV_Dig2_SG1_8,7
;	.line	2058; "123.c"	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  )
	BSET	_LV_Dig1_SG1_8,7
_01181_DS_
;	.line	2061; "123.c"	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH      	   	
	BSET	_LV_Dig13_SG1_8,0
;	.line	2064; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	2065; "123.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	2066; "123.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	2067; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_RunDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig4_SG1_8
;	.line	2068; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_RunDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig3_SG1_8
;	.line	2070; "123.c"	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 DAY 	
	BSET	_LV_Dig13_SG1_8,7
;	.line	2073; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	2074; "123.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	2075; "123.c"	LV_TempA = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_LV_TempA
;	.line	2076; "123.c"	LV_TempB = LV_TempA;
	MOVAR	_LV_TempA
	MOVRA	_LV_TempB
;	.line	2077; "123.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	MOVAI	0x01
	ANDAR	_LV_TempB
	MOVRA	_GV_RunRealTimeClockHrTenDig
;	.line	2079; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig10_SG1_8
;	.line	2080; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
	MOVAR	_GV_RunRealTimeClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig9_SG1_8
;	.line	2081; "123.c"	LV_TempA = LV_TempA & 0x02;//0000 0010
	MOVAI	0x02
	ANDRA	_LV_TempA
;	.line	2082; "123.c"	if(LV_TempA) 
	MOVAI	0x00
	ORAR	_LV_TempA
	JBCLR	PFLAG,2
	GOTO	_01183_DS_
;	.line	2084; "123.c"	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
	MOVAI	0x70
	ORRA	_LV_Dig13_SG1_8
	GOTO	_01184_DS_
_01183_DS_
;	.line	2088; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
	MOVAI	0x0e
	ORRA	_LV_Dig13_SG1_8
_01184_DS_
;	.line	2091; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	2092; "123.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	2093; "123.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	2094; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig12_SG1_8
;	.line	2095; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
	MOVAR	_GV_RunRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig11_SG1_8
;	.line	2098; "123.c"	if(BF_Clock500ms)//On H3,H4
	JBSET	_UserFlag,1
	GOTO	_01238_DS_
;	.line	2100; "123.c"	LV_Dig3_SG1_8 |= 0x80;//1000 0000;//Dig3/H3
	BSET	_LV_Dig3_SG1_8,7
;	.line	2101; "123.c"	LV_Dig4_SG1_8 |= 0x80;//1000 0000;//Dig4/H4	   	   	   	   	
	BSET	_LV_Dig4_SG1_8,7
	GOTO	_01238_DS_
_01237_DS_
;	.line	2104; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01234_DS_
;	.line	2106; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_SetYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
	MOVAR	_GV_SetYearSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2107; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_SetYearTenDig];     //Dig7 Year Ten Digit
	MOVAR	_GV_SetYearTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
;	.line	2108; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_SetYearHundredsDig];//Dig6 Year Hundreds Digit
	MOVAR	_GV_SetYearHundredsDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2109; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_SetYearthousandDig];//Dig5 Year thousand Digit
	MOVAR	_GV_SetYearthousandDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
;	.line	2113; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_SetMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_SetMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig2_SG1_8
;	.line	2114; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_SetMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_SetMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig1_SG1_8
;	.line	2120; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_SetDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_SetDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig4_SG1_8
;	.line	2121; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_SetDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_SetDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig3_SG1_8
;	.line	2123; "123.c"	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 DAY
	MOVAI	0x81
	MOVRA	_LV_Dig13_SG1_8
;	.line	2126; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	   	
	MOVAR	_GV_SetRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig10_SG1_8
;	.line	2127; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit 
	MOVAR	_GV_SetRealTimeClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig9_SG1_8
;	.line	2128; "123.c"	if(BF_SetRealTimeClockAM_PM) 
	JBSET	_UserFlag,2
	GOTO	_01188_DS_
;	.line	2130; "123.c"	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
	MOVAI	0xf1
	MOVRA	_LV_Dig13_SG1_8
	GOTO	_01189_DS_
_01188_DS_
;	.line	2134; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
	MOVAI	0x8f
	MOVRA	_LV_Dig13_SG1_8
_01189_DS_
;	.line	2138; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_SetRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig12_SG1_8
;	.line	2139; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 	   	   	   	   	   	   	   	
	MOVAR	_GV_SetRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig11_SG1_8
;	.line	2142; "123.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_01238_DS_
	JBCLR	_UserFlag,7
	GOTO	_01238_DS_
;	.line	2144; "123.c"	if(BF_Clock500ms == 0)//Off Real Time Clock Digit
	JBCLR	_UserFlag,1
	GOTO	_01238_DS_
;	.line	2146; "123.c"	if(GV_RealTimeClockSetStep==0) 	
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_01202_DS_
;	.line	2148; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2149; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
;	.line	2150; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2151; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display      	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
	GOTO	_01238_DS_
_01202_DS_
;	.line	2153; "123.c"	else if(GV_RealTimeClockSetStep==1)  	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01199_DS_
;	.line	2155; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig2_SG1_8
;	.line	2156; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	   	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig1_SG1_8
	GOTO	_01238_DS_
_01199_DS_
;	.line	2158; "123.c"	else if(GV_RealTimeClockSetStep==2)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01196_DS_
;	.line	2160; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig4_SG1_8
;	.line	2161; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display    	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig3_SG1_8
	GOTO	_01238_DS_
_01196_DS_
;	.line	2163; "123.c"	else if(GV_RealTimeClockSetStep==3)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_01193_DS_
;	.line	2165; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display      	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig10_SG1_8
;	.line	2166; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display    	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig9_SG1_8
	GOTO	_01238_DS_
_01193_DS_
;	.line	2168; "123.c"	else if(GV_RealTimeClockSetStep==4)	
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_01238_DS_
;	.line	2170; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig12_SG1_8
;	.line	2171; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display      	   	   	   	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig11_SG1_8
	GOTO	_01238_DS_
_01234_DS_
;	.line	2182; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01238_DS_
;	.line	2184; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[GV_SetAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
	MOVAR	_GV_SetAlarmClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2185; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[GV_SetAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit
	MOVAR	_GV_SetAlarmClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
;	.line	2187; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
	BSET	_LV_Dig7_SG1_8,7
;	.line	2189; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[GV_SetAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
	MOVAR	_GV_SetAlarmClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2190; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[GV_SetAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit
	MOVAR	_GV_SetAlarmClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
;	.line	2192; "123.c"	if(BF_SetAlarmAM_PM)//为0时=AM；为1=PM
	JBSET	_UserFlag1,2
	GOTO	_01210_DS_
;	.line	2194; "123.c"	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 PM  icons
	BSET	_LV_Dig6_SG1_8,7
	GOTO	_01211_DS_
_01210_DS_
;	.line	2198; "123.c"	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 AM  icons   	   	
	BSET	_LV_Dig5_SG1_8,7
_01211_DS_
;	.line	2202; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	2203; "123.c"	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunMonthSingleDig
;	.line	2204; "123.c"	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunMonthTenDig
;	.line	2205; "123.c"	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
	MOVAR	_GV_RunMonthSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig2_SG1_8
;	.line	2206; "123.c"	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
	MOVAR	_GV_RunMonthTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig1_SG1_8
;	.line	2208; "123.c"	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH
	BSET	_LV_Dig13_SG1_8,0
;	.line	2210; "123.c"	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
	BSET	_LV_Dig2_SG1_8,7
;	.line	2211; "123.c"	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  ) 	   	
	BSET	_LV_Dig1_SG1_8,7
;	.line	2214; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	2215; "123.c"	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunDaySingleDig
;	.line	2216; "123.c"	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunDayTenDig
;	.line	2217; "123.c"	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
	MOVAR	_GV_RunDaySingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig4_SG1_8
;	.line	2218; "123.c"	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
	MOVAR	_GV_RunDayTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig3_SG1_8
;	.line	2220; "123.c"	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	DAY
	BSET	_LV_Dig13_SG1_8,7
;	.line	2223; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	2224; "123.c"	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockHrSingleDig
;	.line	2225; "123.c"	LV_TempA = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_LV_TempA
;	.line	2226; "123.c"	LV_TempB = LV_TempA;
	MOVAR	_LV_TempA
	MOVRA	_LV_TempB
;	.line	2227; "123.c"	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
	MOVAI	0x01
	ANDAR	_LV_TempB
	MOVRA	_GV_RunRealTimeClockHrTenDig
;	.line	2229; "123.c"	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig10_SG1_8
;	.line	2230; "123.c"	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
	MOVAR	_GV_RunRealTimeClockHrTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig9_SG1_8
;	.line	2231; "123.c"	LV_TempA = LV_TempA & 0x02;//0000 0010
	MOVAI	0x02
	ANDRA	_LV_TempA
;	.line	2232; "123.c"	if(LV_TempA) 
	MOVAI	0x00
	ORAR	_LV_TempA
	JBCLR	PFLAG,2
	GOTO	_01213_DS_
;	.line	2234; "123.c"	LV_Dig13_SG1_8 |= 0x07;//0111 0000;//Dig13/E13/F13/G13 	RTC PM
	MOVAI	0x07
	ORRA	_LV_Dig13_SG1_8
	GOTO	_01214_DS_
_01213_DS_
;	.line	2238; "123.c"	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	RTC AM
	MOVAI	0x0e
	ORRA	_LV_Dig13_SG1_8
_01214_DS_
;	.line	2242; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	2243; "123.c"	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_RunRealTimeClockMinSingleDig
;	.line	2244; "123.c"	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_RunRealTimeClockMinTenDig
;	.line	2245; "123.c"	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig12_SG1_8
;	.line	2246; "123.c"	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
	MOVAR	_GV_RunRealTimeClockMinTenDig
	ADDAI	(_C_NumberTable + 0)
	MOVRA	r0x104D
	MOVAI	high (_C_NumberTable + 0)
	JBCLR	PFLAG,0
	ADDAI	0x01
	MOVRA	r0x104E
	MOVAR	r0x104D
	MOVRA	STK01
	MOVAR	r0x104E
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig11_SG1_8
;	.line	2249; "123.c"	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
	JBCLR	_UserFlag,5
	GOTO	_01238_DS_
	JBCLR	_UserFlag,7
	GOTO	_01238_DS_
;	.line	2251; "123.c"	if(BF_Clock500ms == 0)//Off Alarm Timer set Digit
	JBCLR	_UserFlag,1
	GOTO	_01238_DS_
;	.line	2253; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_01224_DS_
;	.line	2255; "123.c"	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
	JBSET	_UserFlag1,5
	GOTO	_01216_DS_
;	.line	2257; "123.c"	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
	BSET	_LV_Dig7_SG1_8,7
	GOTO	_01238_DS_
_01216_DS_
;	.line	2261; "123.c"	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
	BCLR	_LV_Dig7_SG1_8,7
	GOTO	_01238_DS_
_01224_DS_
;	.line	2264; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01221_DS_
;	.line	2266; "123.c"	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig6_SG1_8
;	.line	2267; "123.c"	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig5_SG1_8
	GOTO	_01238_DS_
_01221_DS_
;	.line	2269; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01238_DS_
;	.line	2271; "123.c"	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig8_SG1_8
;	.line	2272; "123.c"	LV_Dig7_SG1_8 = C_NumberTable[11]; //Dig7 AlarmClockMinTen Digit No Display    	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
	MOVAI	(_C_NumberTable + 11)
	MOVRA	STK01
	MOVAI	high (_C_NumberTable + 11)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_LV_Dig7_SG1_8
_01238_DS_
;	.line	2288; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	2289; "123.c"	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
	MOVAI	0x40
	CALL	_Sub_SendByteToPT6964
;	.line	2290; "123.c"	SetSTB1();
	BSET	_IOP2bits,3
;	.line	2292; "123.c"	Nop();
	nop
;	.line	2293; "123.c"	Nop();
	nop
;	.line	2294; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	2295; "123.c"	Sub_SendByteToPT6964(C_Address0);//Address control command
	MOVAI	0xc0
	CALL	_Sub_SendByteToPT6964
;	.line	2297; "123.c"	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
	MOVAR	_LV_Dig1_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2298; "123.c"	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
	MOVAR	_LV_Dig2_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2300; "123.c"	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
	MOVAR	_LV_Dig3_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2301; "123.c"	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
	MOVAR	_LV_Dig4_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2303; "123.c"	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
	MOVAR	_LV_Dig5_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2304; "123.c"	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
	MOVAR	_LV_Dig6_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2306; "123.c"	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
	MOVAR	_LV_Dig7_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2307; "123.c"	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
	MOVAR	_LV_Dig8_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2309; "123.c"	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
	MOVAR	_LV_Dig9_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2310; "123.c"	Sub_SendByteToPT6964(LV_Dig10_SG1_8);
	MOVAR	_LV_Dig10_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2312; "123.c"	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
	MOVAR	_LV_Dig11_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2313; "123.c"	Sub_SendByteToPT6964(LV_Dig12_SG1_8);
	MOVAR	_LV_Dig12_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2315; "123.c"	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
	MOVAR	_LV_Dig13_SG1_8
	CALL	_Sub_SendByteToPT6964
;	.line	2317; "123.c"	SetSTB1(); 	
	BSET	_IOP2bits,3
;	.line	2319; "123.c"	Nop();
	nop
;	.line	2320; "123.c"	Nop(); 	   	   	   	   	   	   	   	   	
	nop
;	.line	2321; "123.c"	SetSTB0();
	BCLR	_IOP2bits,3
;	.line	2322; "123.c"	if(GV_DisplayBrightnessLevel==0)
	MOVAI	0x00
	ORAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,2
	GOTO	_01245_DS_
;	.line	2324; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
	MOVAI	0x8f
	CALL	_Sub_SendByteToPT6964
	GOTO	_01246_DS_
_01245_DS_
;	.line	2326; "123.c"	else if(GV_DisplayBrightnessLevel==1)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01242_DS_
;	.line	2328; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
	MOVAI	0x8a
	CALL	_Sub_SendByteToPT6964
	GOTO	_01246_DS_
_01242_DS_
;	.line	2330; "123.c"	else if(GV_DisplayBrightnessLevel==2)
	MOVAR	_GV_DisplayBrightnessLevel
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01246_DS_
;	.line	2332; "123.c"	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
	MOVAI	0x88
	CALL	_Sub_SendByteToPT6964
_01246_DS_
;	.line	2338; "123.c"	SetSTB1();
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
;   r0x104F
;; Starting pCode block
_Sub_GetByteFromPT6964	;Function start
; 2 exit points
;	.line	1963; "123.c"	GV_GetPT6964Data = 0;
	CLRR	_GV_GetPT6964Data
;	.line	1964; "123.c"	SetDIOInput();
	BCLR	_OEP1bits,5
;	.line	1965; "123.c"	Nop();
	nop
;	.line	1966; "123.c"	Nop();
	nop
;	.line	1967; "123.c"	for(LV_TempPT6964=0x80; LV_TempPT6964; LV_TempPT6964>>=1)
	MOVAI	0x80
	MOVRA	r0x104F
_01166_DS_
	MOVAI	0x00
	ORAR	r0x104F
	JBCLR	PFLAG,2
	GOTO	_01169_DS_
;	.line	1969; "123.c"	GV_GetPT6964Data<<=1;
	BCLR	PFLAG,0
	RLR	_GV_GetPT6964Data
;	.line	1970; "123.c"	SetSCK1();
	BSET	_IOP1bits,4
;	.line	1971; "123.c"	Nop();
	nop
;	.line	1972; "123.c"	Nop();
	nop
;	.line	1973; "123.c"	if(GetDIO()) {GV_GetPT6964Data++; }
	JBSET	_IOP1bits,5
	GOTO	_01165_DS_
	INCR	_GV_GetPT6964Data
_01165_DS_
;	.line	1974; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	1975; "123.c"	Nop();
	nop
;	.line	1976; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	1967; "123.c"	for(LV_TempPT6964=0x80; LV_TempPT6964; LV_TempPT6964>>=1)
	BCLR	PFLAG,0
	RRR	r0x104F
	GOTO	_01166_DS_
_01169_DS_
;	.line	1979; "123.c"	SetDIOOutput();
	BSET	_OEP1bits,5
;	.line	1980; "123.c"	Nop();
	nop
;	.line	1981; "123.c"	Nop();
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
;   r0x1048
;   r0x1049
;   r0x104A
;; Starting pCode block
_Sub_SendByteToPT6964	;Function start
; 2 exit points
;	.line	1931; "123.c"	void Sub_SendByteToPT6964(unsigned char	LV_SendTodata)  
	MOVRA	r0x1048
;	.line	1934; "123.c"	SetDIOOutput();  
	BSET	_OEP1bits,5
;	.line	1935; "123.c"	SetDIO0();
	BCLR	_IOP1bits,5
;	.line	1936; "123.c"	for(i=0x01; i; i<<=1)
	MOVAI	0x01
	MOVRA	r0x1049
_01156_DS_
	MOVAI	0x00
	ORAR	r0x1049
	JBCLR	PFLAG,2
	GOTO	_01159_DS_
;	.line	1938; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	1939; "123.c"	if(i & LV_SendTodata) {SetDIO1();} else {SetDIO0();}
	MOVAR	r0x1048
	ANDAR	r0x1049
	MOVRA	r0x104A
	MOVAI	0x00
	ORAR	r0x104A
	JBCLR	PFLAG,2
	GOTO	_01154_DS_
	BSET	_IOP1bits,5
	GOTO	_01155_DS_
_01154_DS_
	BCLR	_IOP1bits,5
_01155_DS_
;	.line	1940; "123.c"	SetSCK1();
	BSET	_IOP1bits,4
;	.line	1941; "123.c"	Nop();
	nop
;	.line	1942; "123.c"	Nop();
	nop
;	.line	1943; "123.c"	SetSCK0();
	BCLR	_IOP1bits,4
;	.line	1936; "123.c"	for(i=0x01; i; i<<=1)
	BCLR	PFLAG,0
	RLR	r0x1049
	GOTO	_01156_DS_
_01159_DS_
;	.line	1945; "123.c"	SetDIO0();
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
;	.line	1896; "123.c"	if(BF_BuzzerBBB)
	JBSET	_UserFlag1,4
	GOTO	_01146_DS_
;	.line	1898; "123.c"	Sub_BuzzerBBB();
	CALL	_Sub_BuzzerBBB
	GOTO	_01148_DS_
_01146_DS_
;	.line	1902; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
;	.line	1903; "123.c"	GV_BuzzerDuty = 0;
	CLRR	_GV_BuzzerDuty
;	.line	1904; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
_01148_DS_
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
;	.line	1808; "123.c"	if(GV_BuzzerIndex==0)
	MOVAI	0x00
	ORAR	_GV_BuzzerIndex
	JBSET	PFLAG,2
	GOTO	_01138_DS_
;	.line	1810; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	1811; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	1812; "123.c"	GV_BuzzerIndex = 1;
	MOVAI	0x01
	MOVRA	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01138_DS_
;	.line	1814; "123.c"	else if(GV_BuzzerIndex==1)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01135_DS_
;	.line	1816; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1818; "123.c"	GV_BuzzerIndex = 2;
	MOVAI	0x02
	MOVRA	_GV_BuzzerIndex
;	.line	1819; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	1820; "123.c"	GV_BuzzerDuty = 50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
	GOTO	_01140_DS_
_01135_DS_
;	.line	1823; "123.c"	else if(GV_BuzzerIndex==2)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01132_DS_
;	.line	1825; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1827; "123.c"	GV_BuzzerIndex = 3;
	MOVAI	0x03
	MOVRA	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01132_DS_
;	.line	1830; "123.c"	else if(GV_BuzzerIndex==3)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_01129_DS_
;	.line	1832; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	1833; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	1834; "123.c"	GV_BuzzerIndex = 4;
	MOVAI	0x04
	MOVRA	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01129_DS_
;	.line	1836; "123.c"	else if(GV_BuzzerIndex==4)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_01126_DS_
;	.line	1838; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1840; "123.c"	GV_BuzzerIndex = 5;
	MOVAI	0x05
	MOVRA	_GV_BuzzerIndex
;	.line	1841; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	1842; "123.c"	GV_BuzzerDuty = 50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
	GOTO	_01140_DS_
_01126_DS_
;	.line	1845; "123.c"	else if(GV_BuzzerIndex==5)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_01123_DS_
;	.line	1847; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1849; "123.c"	GV_BuzzerIndex = 6;
	MOVAI	0x06
	MOVRA	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01123_DS_
;	.line	1852; "123.c"	else if(GV_BuzzerIndex==6)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_01120_DS_
;	.line	1854; "123.c"	GV_BuzzerDuty=50;
	MOVAI	0x32
	MOVRA	_GV_BuzzerDuty
;	.line	1855; "123.c"	EnableBuzzer();
	BSET	_OEP2bits,1
;	.line	1856; "123.c"	GV_BuzzerIndex = 7;
	MOVAI	0x07
	MOVRA	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01120_DS_
;	.line	1858; "123.c"	else if(GV_BuzzerIndex==7)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_01117_DS_
;	.line	1860; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1862; "123.c"	GV_BuzzerIndex = 8;
	MOVAI	0x08
	MOVRA	_GV_BuzzerIndex
;	.line	1863; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	1864; "123.c"	GV_BuzzerDuty = 150;
	MOVAI	0x96
	MOVRA	_GV_BuzzerDuty
	GOTO	_01140_DS_
_01117_DS_
;	.line	1867; "123.c"	else if(GV_BuzzerIndex==8)
	MOVAR	_GV_BuzzerIndex
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_01114_DS_
;	.line	1869; "123.c"	if(--GV_BuzzerDuty == 0)
	DECR	_GV_BuzzerDuty
	MOVAI	0x00
	ORAR	_GV_BuzzerDuty
	JBSET	PFLAG,2
	GOTO	_01140_DS_
;	.line	1871; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
	GOTO	_01140_DS_
_01114_DS_
;	.line	1876; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
_01140_DS_
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
;   r0x1057
;; Starting pCode block
_Sub_KeyScan	;Function start
; 2 exit points
;	.line	1589; "123.c"	Nop();
	nop
;	.line	1590; "123.c"	Nop();
	nop
;	.line	1591; "123.c"	Nop();
	nop
;	.line	1592; "123.c"	Nop();
	nop
;	.line	1593; "123.c"	Nop();
	nop
;	.line	1594; "123.c"	Nop();
	nop
;	.line	1595; "123.c"	Nop();
	nop
;	.line	1596; "123.c"	Nop();
	nop
;	.line	1597; "123.c"	Nop();
	nop
;	.line	1598; "123.c"	Nop();
	nop
;	.line	1602; "123.c"	LV_TempB = IOP0;
	MOVAR	_IOP0
	MOVRA	r0x1057
;	.line	1603; "123.c"	LV_TempB = LV_TempB>>4;
	SWAPAR	r0x1057
	ANDAI	0x0f
	MOVRA	r0x1057
;	.line	1604; "123.c"	LV_TempB = LV_TempB&0X0C;
	MOVAI	0x0c
	ANDRA	r0x1057
;	.line	1605; "123.c"	LV_TempB = LV_TempB|IOP2;
	MOVAR	_IOP2
	ORRA	r0x1057
;	.line	1606; "123.c"	LV_TempB = LV_TempB<<1;
	BCLR	PFLAG,0
	RLR	r0x1057
;	.line	1607; "123.c"	LV_TempB = LV_TempB & C_KeysNaturalState;//0b0111 1000;
	MOVAI	0x78
	ANDRA	r0x1057
;	.line	1609; "123.c"	if(GV_CurKey != LV_TempB)
	MOVAR	r0x1057
	XORAR	_GV_CurKey
	JBSET	PFLAG,2
	GOTO	_01096_DS_
	GOTO	_00970_DS_
_01096_DS_
;	.line	1611; "123.c"	GV_KeyDebounce = 0;
	CLRR	_GV_KeyDebounce
;	.line	1612; "123.c"	GV_CurKey = LV_TempB;
	MOVAR	r0x1057
	MOVRA	_GV_CurKey
;	.line	1613; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1614; "123.c"	BF_Up_AlLongKeyPressesd = 0;
	BCLR	_UserFlag,5
;	.line	1615; "123.c"	BF_DownLongKeyPressesd = 0;
	BCLR	_UserFlag,7
;	.line	1616; "123.c"	BF_SetLongKeyPressesd = 0;
	BCLR	_UserFlag1,1
;	.line	1618; "123.c"	return;
	GOTO	_01038_DS_
_00970_DS_
;	.line	1621; "123.c"	if(++GV_KeyDebounce < 30) return;  	
	INCR	_GV_KeyDebounce
;;unsigned compare: left < lit(0x1E=30), size=1
	MOVAI	0x1e
	RSUBAR	_GV_KeyDebounce
	JBCLR	PFLAG,0
	GOTO	_00972_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_01038_DS_
_00972_DS_
;	.line	1622; "123.c"	if(GV_PreKey == C_KeysNaturalState)
	MOVAR	_GV_PreKey
	XORAI	0x78
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	1625; "123.c"	if(GV_CurKey == 0x38)//0011 1000 Short/long UP/AL key Pressed,return;
	MOVAR	_GV_CurKey
	XORAI	0x38
	JBSET	PFLAG,2
	GOTO	_00992_DS_
;	.line	1627; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_00979_DS_
;	.line	1629; "123.c"	Sub_Up_AlLongKeyGetAlarmSetMode();//Long key return
	CALL	_Sub_Up_AlLongKeyGetAlarmSetMode
;	.line	1630; "123.c"	return;	 
	GOTO	_01038_DS_
_00979_DS_
;	.line	1632; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00976_DS_
;	.line	1634; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1635; "123.c"	Sub_Up_AlShortLongKeyClockSet();//Long/Short key return
	CALL	_Sub_Up_AlShortLongKeyClockSet
;	.line	1636; "123.c"	return;	 
	GOTO	_01038_DS_
_00976_DS_
;	.line	1638; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00993_DS_
;	.line	1640; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1641; "123.c"	Sub_Up_AlShortLongKeyAlarmSet();//Long/Short key return
	CALL	_Sub_Up_AlShortLongKeyAlarmSet
;	.line	1642; "123.c"	return;	
	GOTO	_01038_DS_
_00992_DS_
;	.line	1652; "123.c"	if(BF_Up_AlKeyPressesd)
	JBSET	_UserFlag,4
	GOTO	_00993_DS_
;	.line	1654; "123.c"	BF_Up_AlKeyPressesd = 0;
	BCLR	_UserFlag,4
;	.line	1655; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00993_DS_
;	.line	1659; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00984_DS_
;	.line	1661; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1662; "123.c"	Sub_RealTimeClockAdd();	//Long/Short key return	 
	CALL	_Sub_RealTimeClockAdd
	GOTO	_00993_DS_
_00984_DS_
;	.line	1664; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00993_DS_
;	.line	1666; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1667; "123.c"	Sub_SetAlarmAddTimer();	//Long/Short key return
	CALL	_Sub_SetAlarmAddTimer
_00993_DS_
;	.line	1678; "123.c"	if(GV_CurKey == 0x58)//0101 1000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x58
	JBSET	PFLAG,2
	GOTO	_01013_DS_
;	.line	1680; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_01014_DS_
;	.line	1684; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00997_DS_
;	.line	1686; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1687; "123.c"	Sub_DownShortLongKeyClockSet();//Long/Short key return
	CALL	_Sub_DownShortLongKeyClockSet
;	.line	1688; "123.c"	return;	
	GOTO	_01038_DS_
_00997_DS_
;	.line	1690; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01014_DS_
;	.line	1692; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1693; "123.c"	Sub_DownShortLongKeyAlarmSet();//Long/Short key return
	CALL	_Sub_DownShortLongKeyAlarmSet
;	.line	1694; "123.c"	return;	
	GOTO	_01038_DS_
_01013_DS_
;	.line	1705; "123.c"	if(BF_DownKeyPressesd)
	JBSET	_UserFlag,6
	GOTO	_01014_DS_
;	.line	1707; "123.c"	BF_DownKeyPressesd = 0;
	BCLR	_UserFlag,6
;	.line	1709; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_01014_DS_
;	.line	1713; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01005_DS_
;	.line	1715; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1716; "123.c"	Sub_RealTimeClockDec();	//Long/Short key return	
	CALL	_Sub_RealTimeClockDec
	GOTO	_01014_DS_
_01005_DS_
;	.line	1718; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01014_DS_
;	.line	1720; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1721; "123.c"	Sub_SetAlarmDecTimer();	//Long/Short key return	
	CALL	_Sub_SetAlarmDecTimer
_01014_DS_
;	.line	1730; "123.c"	if(GV_CurKey == 0x68)//0110 1000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x68
	JBSET	PFLAG,2
	GOTO	_01024_DS_
;	.line	1732; "123.c"	if(GV_Mode==0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01021_DS_
;	.line	1734; "123.c"	Sub_SetLongKeyGetRealTimeClockSetMode();
	CALL	_Sub_SetLongKeyGetRealTimeClockSetMode
;	.line	1735; "123.c"	return;
	GOTO	_01038_DS_
_01021_DS_
;	.line	1737; "123.c"	else if(GV_Mode==1)
	MOVAR	_GV_Mode
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_01018_DS_
;	.line	1739; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1740; "123.c"	Sub_SetKeyRealTimeClockEnter();//Long/Short key return 	
	CALL	_Sub_SetKeyRealTimeClockEnter
	GOTO	_01024_DS_
_01018_DS_
;	.line	1742; "123.c"	else if(GV_Mode==2)
	MOVAR	_GV_Mode
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_01024_DS_
;	.line	1744; "123.c"	GV_15sNoOperationCnt = C_15sNoOperationCnt;
	MOVAI	0x1e
	MOVRA	_GV_15sNoOperationCnt
;	.line	1745; "123.c"	Sub_SetKeyAlarmEnter();//Long/Short key return 	
	CALL	_Sub_SetKeyAlarmEnter
_01024_DS_
;	.line	1755; "123.c"	if(GV_CurKey == 0x70)//0111 0000 ShortKey,no return;
	MOVAR	_GV_CurKey
	XORAI	0x70
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	1757; "123.c"	if(BF_BuzzerBBB)
	JBSET	_UserFlag1,4
	GOTO	_01032_DS_
;	.line	1759; "123.c"	BF_BuzzerBBB = 0;
	BCLR	_UserFlag1,4
;	.line	1760; "123.c"	GV_BuzzerIndex = 0;
	CLRR	_GV_BuzzerIndex
;	.line	1761; "123.c"	GV_BuzzerDuty = 0;
	CLRR	_GV_BuzzerDuty
;	.line	1762; "123.c"	DisableBuzzer();
	BCLR	_OEP2bits,1
;	.line	1763; "123.c"	if(GV_SnoozeTimer == 0)
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	1765; "123.c"	GV_SnoozeTimer = C_SnoozeTimer;//0.5s*120=60s
	MOVAI	0x78
	MOVRA	_GV_SnoozeTimer
	GOTO	_01037_DS_
_01032_DS_
;	.line	1770; "123.c"	if(GV_Mode == 0)
	MOVAI	0x00
	ORAR	_GV_Mode
	JBSET	PFLAG,2
	GOTO	_01037_DS_
;	.line	1772; "123.c"	if(++GV_DisplayBrightnessLevel > 2)//在正常模式下单按作屏幕灯光亮度3档位循环调试
	INCR	_GV_DisplayBrightnessLevel
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_DisplayBrightnessLevel
	JBSET	PFLAG,0
	GOTO	_01037_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1774; "123.c"	GV_DisplayBrightnessLevel = 0;
	CLRR	_GV_DisplayBrightnessLevel
_01037_DS_
;	.line	1782; "123.c"	GV_PreKey = GV_CurKey; 	
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
_01038_DS_
	RETURN	
; exit point of _Sub_KeyScan

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_SetKeyAlarmEnter	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1050
;   r0x1051
;; Starting pCode block
_Sub_SetKeyAlarmEnter	;Function start
; 2 exit points
;	.line	1532; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_00962_DS_
;	.line	1534; "123.c"	BF_RunAlarmOnOff = BF_SetAlarmOnOff;
	CLRR	r0x1050
	JBCLR	_UserFlag1,5
	INCR	r0x1050
	MOVAR	r0x1050
	MOVRA	r0x1051
	RRAR	r0x1051
	JBSET	PFLAG,0
	BCLR	_UserFlag1,6
	JBCLR	PFLAG,0
	BSET	_UserFlag1,6
;	.line	1535; "123.c"	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
	JBSET	_UserFlag1,6
	GOTO	_00954_DS_
;	.line	1537; "123.c"	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
	MOVAR	_GV_RunAlarmClockHrSingleDig
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	1538; "123.c"	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;
	MOVAR	_GV_RunAlarmClockHrTenDig
	MOVRA	_GV_SetAlarmClockHrTenDig
;	.line	1539; "123.c"	BF_SetAlarmAM_PM = BF_RunAlarmAM_PM;
	CLRR	r0x1050
	JBCLR	_UserFlag1,3
	INCR	r0x1050
	MOVAR	r0x1050
	MOVRA	r0x1051
	RRAR	r0x1051
	JBSET	PFLAG,0
	BCLR	_UserFlag1,2
	JBCLR	PFLAG,0
	BSET	_UserFlag1,2
;	.line	1540; "123.c"	GV_AlarmClockSetStep++;
	INCR	_GV_AlarmClockSetStep
	GOTO	_00955_DS_
_00954_DS_
;	.line	1544; "123.c"	GV_Mode = 0;//0=Normal mode;mode;
	CLRR	_GV_Mode
_00955_DS_
;	.line	1546; "123.c"	GV_PreKey = GV_CurKey;     	   	
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
	GOTO	_00964_DS_
_00962_DS_
;	.line	1548; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00959_DS_
;	.line	1550; "123.c"	GV_RunAlarmClockHrSingleDig = GV_SetAlarmClockHrSingleDig;
	MOVAR	_GV_SetAlarmClockHrSingleDig
	MOVRA	_GV_RunAlarmClockHrSingleDig
;	.line	1551; "123.c"	GV_RunAlarmClockHrTenDig = GV_SetAlarmClockHrTenDig;
	MOVAR	_GV_SetAlarmClockHrTenDig
	MOVRA	_GV_RunAlarmClockHrTenDig
;	.line	1552; "123.c"	BF_RunAlarmAM_PM = BF_SetAlarmAM_PM;
	CLRR	r0x1050
	JBCLR	_UserFlag1,2
	INCR	r0x1050
	MOVAR	r0x1050
	MOVRA	r0x1051
	RRAR	r0x1051
	JBSET	PFLAG,0
	BCLR	_UserFlag1,3
	JBCLR	PFLAG,0
	BSET	_UserFlag1,3
;	.line	1554; "123.c"	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
	MOVAR	_GV_RunAlarmClockMinSingleDig
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	1555; "123.c"	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
	MOVAR	_GV_RunAlarmClockMinTenDig
	MOVRA	_GV_SetAlarmClockMinTenDig
;	.line	1556; "123.c"	GV_AlarmClockSetStep++;    	   	
	INCR	_GV_AlarmClockSetStep
	GOTO	_00964_DS_
_00959_DS_
;	.line	1558; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00964_DS_
;	.line	1560; "123.c"	GV_RunAlarmClockMinSingleDig = GV_SetAlarmClockMinSingleDig;
	MOVAR	_GV_SetAlarmClockMinSingleDig
	MOVRA	_GV_RunAlarmClockMinSingleDig
;	.line	1561; "123.c"	GV_RunAlarmClockMinTenDig = GV_SetAlarmClockMinTenDig;
	MOVAR	_GV_SetAlarmClockMinTenDig
	MOVRA	_GV_RunAlarmClockMinTenDig
;	.line	1562; "123.c"	GV_Mode = 0;//0=Normal mode;mode;
	CLRR	_GV_Mode
;	.line	1563; "123.c"	GV_AlarmClockSetStep = 0;      	   	
	CLRR	_GV_AlarmClockSetStep
_00964_DS_
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
;5 compiler assigned registers:
;   r0x1053
;   STK00
;   r0x1054
;   r0x1055
;   r0x1056
;; Starting pCode block
_Sub_SetKeyRealTimeClockEnter	;Function start
; 2 exit points
;	.line	1359; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00884_DS_
;	.line	1361; "123.c"	LV_TenTemp = GV_SetYearTenDig;
	MOVAR	_GV_SetYearTenDig
	MOVRA	r0x1053
;	.line	1362; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x1053
	ANDAI	0xf0
	MOVRA	r0x1053
;	.line	1363; "123.c"	GV_GetByteFromDs1302 = (GV_SetYearSingleDig | LV_TenTemp);
	MOVAR	r0x1053
	ORAR	_GV_SetYearSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	1364; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1365; "123.c"	Nop();
	nop
;	.line	1366; "123.c"	Nop();
	nop
;	.line	1367; "123.c"	Sub_Write1302(C_DS1302_Year,GV_GetByteFromDs1302); 	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x8c
	CALL	_Sub_Write1302
;	.line	1368; "123.c"	Nop();
	nop
;	.line	1369; "123.c"	Nop();
	nop
;	.line	1370; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1371; "123.c"	Nop();
	nop
;	.line	1372; "123.c"	Nop();     	   	
	nop
	GOTO	_00885_DS_
_00884_DS_
;	.line	1374; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00881_DS_
;	.line	1376; "123.c"	LV_TenTemp = GV_SetMonthTenDig;
	MOVAR	_GV_SetMonthTenDig
	MOVRA	r0x1053
;	.line	1377; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x1053
	ANDAI	0xf0
	MOVRA	r0x1053
;	.line	1378; "123.c"	GV_GetByteFromDs1302 = (GV_SetMonthSingleDig | LV_TenTemp);
	MOVAR	r0x1053
	ORAR	_GV_SetMonthSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	1379; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1380; "123.c"	Nop();
	nop
;	.line	1381; "123.c"	Nop();
	nop
;	.line	1382; "123.c"	Sub_Write1302(C_DS1302_Month,GV_GetByteFromDs1302);	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x88
	CALL	_Sub_Write1302
;	.line	1383; "123.c"	Nop();
	nop
;	.line	1384; "123.c"	Nop();
	nop
;	.line	1385; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1386; "123.c"	Nop();
	nop
;	.line	1387; "123.c"	Nop();
	nop
;	.line	1389; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	1390; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	1391; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1054
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1054
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	1392; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1054
;	.line	1393; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	_LV_TempB
	ADDRA	r0x1054
;	.line	1395; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	1396; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	1397; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1055
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1055
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	1398; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1055
;	.line	1399; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;
	MOVAR	_LV_TempB
	ADDRA	r0x1055
;	.line	1401; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	1402; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	1403; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1056
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1056
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	1404; "123.c"	LV_TempDay = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1056
;	.line	1405; "123.c"	LV_TempDay = LV_TempDay + LV_TempB;	
	MOVAR	_LV_TempB
	ADDRA	r0x1056
;	.line	1407; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x1055
	JBCLR	PFLAG,2
	GOTO	_00885_DS_
;	.line	1411; "123.c"	else if((LV_TempMonth==1)||(LV_TempMonth==3)||(LV_TempMonth==5)||(LV_TempMonth==7)||(LV_TempMonth==8)||(LV_TempMonth==10)||(LV_TempMonth==12))
	MOVAR	r0x1055
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00936_DS_
	GOTO	_00857_DS_
_00936_DS_
	MOVAR	r0x1055
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00937_DS_
	GOTO	_00857_DS_
_00937_DS_
	MOVAR	r0x1055
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00938_DS_
	GOTO	_00857_DS_
_00938_DS_
	MOVAR	r0x1055
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00939_DS_
	GOTO	_00857_DS_
_00939_DS_
	MOVAR	r0x1055
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00940_DS_
	GOTO	_00857_DS_
_00940_DS_
	MOVAR	r0x1055
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00941_DS_
	GOTO	_00857_DS_
_00941_DS_
	MOVAR	r0x1055
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00858_DS_
;;unsigned compare: left < lit(0x20=32), size=1
_00857_DS_
;	.line	1413; "123.c"	if(LV_TempDay >= 32)
	MOVAI	0x20
	RSUBAR	r0x1056
	JBSET	PFLAG,0
	GOTO	_00885_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1415; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1416; "123.c"	GV_SetDayTenDig = 3;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00885_DS_
_00858_DS_
;	.line	1419; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x1055
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00855_DS_
;	.line	1421; "123.c"	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
	MOVAR	r0x1054
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00845_DS_
;;unsigned compare: left < lit(0x1E=30), size=1
;	.line	1423; "123.c"	if(LV_TempDay >= 30)
	MOVAI	0x1e
	RSUBAR	r0x1056
	JBSET	PFLAG,0
	GOTO	_00885_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1425; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1426; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00885_DS_
;;unsigned compare: left < lit(0x1D=29), size=1
_00845_DS_
;	.line	1431; "123.c"	if(LV_TempDay >= 29)
	MOVAI	0x1d
	RSUBAR	r0x1056
	JBSET	PFLAG,0
	GOTO	_00885_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1433; "123.c"	GV_SetDaySingleDig = 8;
	MOVAI	0x08
	MOVRA	_GV_SetDaySingleDig
;	.line	1434; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00885_DS_
_00855_DS_
;	.line	1438; "123.c"	else if((LV_TempMonth==4)||(LV_TempMonth==6)||(LV_TempMonth==9)||(LV_TempMonth==11))
	MOVAR	r0x1055
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00946_DS_
	GOTO	_00849_DS_
_00946_DS_
	MOVAR	r0x1055
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00947_DS_
	GOTO	_00849_DS_
_00947_DS_
	MOVAR	r0x1055
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00948_DS_
	GOTO	_00849_DS_
_00948_DS_
	MOVAR	r0x1055
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00885_DS_
;;unsigned compare: left < lit(0x1F=31), size=1
_00849_DS_
;	.line	1440; "123.c"	if(LV_TempDay >= 31)
	MOVAI	0x1f
	RSUBAR	r0x1056
	JBSET	PFLAG,0
	GOTO	_00885_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1442; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1443; "123.c"	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00885_DS_
_00881_DS_
;	.line	1451; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00878_DS_
;	.line	1453; "123.c"	LV_TenTemp = GV_SetDayTenDig;
	MOVAR	_GV_SetDayTenDig
	MOVRA	r0x1053
;	.line	1454; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x1053
	ANDAI	0xf0
	MOVRA	r0x1053
;	.line	1455; "123.c"	GV_GetByteFromDs1302 = (GV_SetDaySingleDig | LV_TenTemp);
	MOVAR	r0x1053
	ORAR	_GV_SetDaySingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	1456; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1457; "123.c"	Nop();
	nop
;	.line	1458; "123.c"	Nop();
	nop
;	.line	1459; "123.c"	Sub_Write1302(C_DS1302_Day,GV_GetByteFromDs1302);  	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x86
	CALL	_Sub_Write1302
;	.line	1460; "123.c"	Nop();
	nop
;	.line	1461; "123.c"	Nop();
	nop
;	.line	1462; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1463; "123.c"	Nop();
	nop
;	.line	1464; "123.c"	Nop();     	   	
	nop
	GOTO	_00885_DS_
_00878_DS_
;	.line	1466; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00875_DS_
;	.line	1468; "123.c"	LV_TenTemp = GV_SetRealTimeClockHrTenDig;
	MOVAR	_GV_SetRealTimeClockHrTenDig
	MOVRA	r0x1053
;	.line	1469; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x1053
	ANDAI	0xf0
	MOVRA	r0x1053
;	.line	1470; "123.c"	if(BF_SetRealTimeClockAM_PM)//为0时=AM；为1=PM
	JBSET	_UserFlag,2
	GOTO	_00870_DS_
;	.line	1472; "123.c"	LV_TenTemp |= 0xA0;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM
	MOVAI	0xa0
	ORRA	r0x1053
	GOTO	_00871_DS_
_00870_DS_
;	.line	1476; "123.c"	LV_TenTemp |= 0x80;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)
	BSET	r0x1053,7
_00871_DS_
;	.line	1479; "123.c"	GV_GetByteFromDs1302 = (GV_SetRealTimeClockHrSingleDig | LV_TenTemp);
	MOVAR	r0x1053
	ORAR	_GV_SetRealTimeClockHrSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	1480; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1481; "123.c"	Nop();
	nop
;	.line	1482; "123.c"	Nop();
	nop
;	.line	1483; "123.c"	Sub_Write1302(C_DS1302_Hour,GV_GetByteFromDs1302); 	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x84
	CALL	_Sub_Write1302
;	.line	1484; "123.c"	Nop();
	nop
;	.line	1485; "123.c"	Nop();
	nop
;	.line	1486; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1487; "123.c"	Nop();
	nop
;	.line	1488; "123.c"	Nop();     	   	
	nop
	GOTO	_00885_DS_
_00875_DS_
;	.line	1490; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00885_DS_
;	.line	1492; "123.c"	LV_TenTemp = GV_SetRealTimeClockMinTenDig;
	MOVAR	_GV_SetRealTimeClockMinTenDig
	MOVRA	r0x1053
;	.line	1493; "123.c"	LV_TenTemp <<= 4;
	SWAPAR	r0x1053
	ANDAI	0xf0
	MOVRA	r0x1053
;	.line	1494; "123.c"	GV_GetByteFromDs1302 = (GV_SetRealTimeClockMinSingleDig | LV_TenTemp);
	MOVAR	r0x1053
	ORAR	_GV_SetRealTimeClockMinSingleDig
	MOVRA	_GV_GetByteFromDs1302
;	.line	1495; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1496; "123.c"	Nop();
	nop
;	.line	1497; "123.c"	Nop();
	nop
;	.line	1498; "123.c"	Sub_Write1302(C_DS1302_Minute,GV_GetByteFromDs1302);   	   	
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	STK00
	MOVAI	0x82
	CALL	_Sub_Write1302
;	.line	1499; "123.c"	Nop();
	nop
;	.line	1500; "123.c"	Nop();
	nop
;	.line	1501; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	1502; "123.c"	Nop();
	nop
;	.line	1503; "123.c"	Nop();     	   	
	nop
_00885_DS_
;	.line	1511; "123.c"	if(++GV_RealTimeClockSetStep >= 5)
	INCR	_GV_RealTimeClockSetStep
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,0
	GOTO	_00888_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	1513; "123.c"	GV_RealTimeClockSetStep = 0;
	CLRR	_GV_RealTimeClockSetStep
;	.line	1514; "123.c"	GV_Mode = 0;//0=Normal mode;mode;  	   	 
	CLRR	_GV_Mode
_00888_DS_
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
;	.line	1300; "123.c"	LV_TempA = 0;
	CLRR	_LV_TempA
;	.line	1301; "123.c"	LV_TempB = 0;
	CLRR	_LV_TempB
;	.line	1304; "123.c"	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x5DC=1500), size=2
	MOVAI	0x05
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00833_DS_
	MOVAI	0xdc
	RSUBAR	_GV_LongKeyTimer
_00833_DS_
	JBCLR	PFLAG,0
	GOTO	_00823_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00827_DS_
_00823_DS_
;	.line	1305; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
;	.line	1308; "123.c"	GV_RealTimeClockSetStep = 0;
	CLRR	_GV_RealTimeClockSetStep
;	.line	1310; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	1311; "123.c"	GV_SetYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetYearSingleDig
;	.line	1312; "123.c"	GV_SetYearTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetYearTenDig
;	.line	1315; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	1316; "123.c"	GV_SetMonthSingleDig = GV_GetByteFromDs1302  &0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetMonthSingleDig
;	.line	1317; "123.c"	GV_SetMonthTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetMonthTenDig
;	.line	1319; "123.c"	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
	MOVAI	0x86
	CALL	_Sub_Read1302
;	.line	1320; "123.c"	GV_SetDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetDaySingleDig
;	.line	1321; "123.c"	GV_SetDayTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetDayTenDig
;	.line	1323; "123.c"	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
	MOVAI	0x84
	CALL	_Sub_Read1302
;	.line	1324; "123.c"	GV_SetRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1326; "123.c"	LV_TempA = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_LV_TempA
;	.line	1327; "123.c"	LV_TempB = LV_TempA;
	MOVAR	_LV_TempA
	MOVRA	_LV_TempB
;	.line	1328; "123.c"	GV_SetRealTimeClockHrTenDig = LV_TempB & 0x01;
	MOVAI	0x01
	ANDAR	_LV_TempB
	MOVRA	_GV_SetRealTimeClockHrTenDig
;	.line	1329; "123.c"	LV_TempA = LV_TempA & 0x02;//Get AM/PM
	MOVAI	0x02
	ANDRA	_LV_TempA
;	.line	1330; "123.c"	if(LV_TempA)
	MOVAI	0x00
	ORAR	_LV_TempA
	JBCLR	PFLAG,2
	GOTO	_00825_DS_
;	.line	1332; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
	GOTO	_00826_DS_
_00825_DS_
;	.line	1336; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
_00826_DS_
;	.line	1338; "123.c"	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
	MOVAI	0x82
	CALL	_Sub_Read1302
;	.line	1339; "123.c"	GV_SetRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
	MOVAI	0x0f
	ANDAR	_GV_GetByteFromDs1302
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	1340; "123.c"	GV_SetRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
	SWAPAR	_GV_GetByteFromDs1302
	ANDAI	0x0f
	MOVRA	_GV_SetRealTimeClockMinTenDig
;	.line	1342; "123.c"	GV_Mode = 1;//1=Clock set mode
	MOVAI	0x01
	MOVRA	_GV_Mode
_00827_DS_
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
;	.line	1263; "123.c"	BF_DownKeyPressesd = 1;
	BSET	_UserFlag,6
;	.line	1264; "123.c"	if(BF_DownLongKeyPressesd)//
	JBSET	_UserFlag,7
	GOTO	_00806_DS_
;	.line	1266; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00816_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00816_DS_
	JBCLR	PFLAG,0
	GOTO	_00802_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00808_DS_
_00802_DS_
;	.line	1269; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1270; "123.c"	Sub_RealTimeClockDec();
	CALL	_Sub_RealTimeClockDec
	GOTO	_00808_DS_
_00806_DS_
;	.line	1275; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00817_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00817_DS_
	JBCLR	PFLAG,0
	GOTO	_00804_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00808_DS_
_00804_DS_
;	.line	1278; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1279; "123.c"	BF_DownLongKeyPressesd = 1;
	BSET	_UserFlag,7
;	.line	1280; "123.c"	Sub_RealTimeClockDec();
	CALL	_Sub_RealTimeClockDec
_00808_DS_
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
;3 compiler assigned registers:
;   r0x1050
;   STK00
;   r0x1051
;; Starting pCode block
_Sub_RealTimeClockDec	;Function start
; 2 exit points
;	.line	1044; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00691_DS_
;	.line	1046; "123.c"	if(GV_SetYearSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetYearSingleDig
	JBCLR	PFLAG,2
	GOTO	_00596_DS_
;	.line	1048; "123.c"	GV_SetYearSingleDig--;
	DECR	_GV_SetYearSingleDig
	GOTO	_00693_DS_
_00596_DS_
;	.line	1052; "123.c"	if(GV_SetYearTenDig)
	MOVAI	0x00
	ORAR	_GV_SetYearTenDig
	JBCLR	PFLAG,2
	GOTO	_00593_DS_
;	.line	1054; "123.c"	GV_SetYearSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearSingleDig
;	.line	1055; "123.c"	GV_SetYearTenDig--;
	DECR	_GV_SetYearTenDig
	GOTO	_00693_DS_
_00593_DS_
;	.line	1059; "123.c"	GV_SetYearSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearSingleDig
;	.line	1060; "123.c"	GV_SetYearTenDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetYearTenDig
	GOTO	_00693_DS_
_00691_DS_
;	.line	1064; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00688_DS_
;	.line	1066; "123.c"	if(GV_SetMonthSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetMonthSingleDig
	JBCLR	PFLAG,2
	GOTO	_00601_DS_
;	.line	1068; "123.c"	GV_SetMonthSingleDig--;
	DECR	_GV_SetMonthSingleDig
	GOTO	_00602_DS_
_00601_DS_
;	.line	1072; "123.c"	if(GV_SetMonthTenDig)
	MOVAI	0x00
	ORAR	_GV_SetMonthTenDig
	JBCLR	PFLAG,2
	GOTO	_00602_DS_
;	.line	1074; "123.c"	GV_SetMonthSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetMonthSingleDig
;	.line	1075; "123.c"	GV_SetMonthTenDig--;
	DECR	_GV_SetMonthTenDig
_00602_DS_
;	.line	1079; "123.c"	if((GV_SetMonthSingleDig==0)&&(GV_SetMonthTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetMonthTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1081; "123.c"	GV_SetMonthSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetMonthSingleDig
;	.line	1082; "123.c"	GV_SetMonthTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetMonthTenDig
	GOTO	_00693_DS_
_00688_DS_
;	.line	1085; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00685_DS_
;	.line	1087; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	1088; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	1089; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1050
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1050
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	1090; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1050
;	.line	1091; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	_LV_TempB
	ADDRA	r0x1050
;	.line	1093; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	1094; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	1095; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1051
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1051
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	1096; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1051
;	.line	1097; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;	 
	MOVAR	_LV_TempB
	ADDRA	r0x1051
;	.line	1099; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x1051
	JBCLR	PFLAG,2
	GOTO	_00693_DS_
;	.line	1103; "123.c"	else if((LV_TempMonth==1)||(LV_TempMonth==3)||(LV_TempMonth==5)||(LV_TempMonth==7)||(LV_TempMonth==8)||(LV_TempMonth==10)||(LV_TempMonth==12))
	MOVAR	r0x1051
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00787_DS_
	GOTO	_00649_DS_
_00787_DS_
	MOVAR	r0x1051
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00788_DS_
	GOTO	_00649_DS_
_00788_DS_
	MOVAR	r0x1051
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00789_DS_
	GOTO	_00649_DS_
_00789_DS_
	MOVAR	r0x1051
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00790_DS_
	GOTO	_00649_DS_
_00790_DS_
	MOVAR	r0x1051
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00791_DS_
	GOTO	_00649_DS_
_00791_DS_
	MOVAR	r0x1051
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00792_DS_
	GOTO	_00649_DS_
_00792_DS_
	MOVAR	r0x1051
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00650_DS_
_00649_DS_
;	.line	1105; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00609_DS_
;	.line	1107; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00610_DS_
_00609_DS_
;	.line	1111; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00610_DS_
;	.line	1113; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1114; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00610_DS_
;	.line	1117; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1119; "123.c"	GV_SetDaySingleDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	1120; "123.c"	GV_SetDayTenDig = 0x03;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00693_DS_
_00650_DS_
;	.line	1123; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x1051
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00647_DS_
;	.line	1125; "123.c"	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
	MOVAR	r0x1050
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00631_DS_
;	.line	1127; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00617_DS_
;	.line	1129; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00618_DS_
_00617_DS_
;	.line	1133; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00618_DS_
;	.line	1135; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1136; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00618_DS_
;	.line	1139; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1141; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1142; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00693_DS_
_00631_DS_
;	.line	1147; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00625_DS_
;	.line	1149; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00626_DS_
_00625_DS_
;	.line	1153; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00626_DS_
;	.line	1155; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1156; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00626_DS_
;	.line	1159; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1161; "123.c"	GV_SetDaySingleDig = 8;
	MOVAI	0x08
	MOVRA	_GV_SetDaySingleDig
;	.line	1162; "123.c"	GV_SetDayTenDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetDayTenDig
	GOTO	_00693_DS_
_00647_DS_
;	.line	1167; "123.c"	else if((LV_TempMonth==4)||(LV_TempMonth==6)||(LV_TempMonth==9)||(LV_TempMonth==11))
	MOVAR	r0x1051
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00794_DS_
	GOTO	_00641_DS_
_00794_DS_
	MOVAR	r0x1051
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00795_DS_
	GOTO	_00641_DS_
_00795_DS_
	MOVAR	r0x1051
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00796_DS_
	GOTO	_00641_DS_
_00796_DS_
	MOVAR	r0x1051
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00693_DS_
_00641_DS_
;	.line	1169; "123.c"	if(GV_SetDaySingleDig)
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBCLR	PFLAG,2
	GOTO	_00636_DS_
;	.line	1171; "123.c"	GV_SetDaySingleDig--;
	DECR	_GV_SetDaySingleDig
	GOTO	_00637_DS_
_00636_DS_
;	.line	1175; "123.c"	if(GV_SetDayTenDig)
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBCLR	PFLAG,2
	GOTO	_00637_DS_
;	.line	1177; "123.c"	GV_SetDaySingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetDaySingleDig
;	.line	1178; "123.c"	GV_SetDayTenDig--;
	DECR	_GV_SetDayTenDig
_00637_DS_
;	.line	1181; "123.c"	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetDayTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1183; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	1184; "123.c"	GV_SetDayTenDig = 3;
	MOVAI	0x03
	MOVRA	_GV_SetDayTenDig
	GOTO	_00693_DS_
_00685_DS_
;	.line	1192; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00682_DS_
;	.line	1194; "123.c"	if(GV_SetRealTimeClockHrSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrSingleDig
	JBCLR	PFLAG,2
	GOTO	_00665_DS_
;	.line	1196; "123.c"	GV_SetRealTimeClockHrSingleDig--;
	DECR	_GV_SetRealTimeClockHrSingleDig
	GOTO	_00666_DS_
_00665_DS_
;	.line	1200; "123.c"	if(GV_SetRealTimeClockHrTenDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrTenDig
	JBCLR	PFLAG,2
	GOTO	_00662_DS_
;	.line	1202; "123.c"	GV_SetRealTimeClockHrSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1203; "123.c"	GV_SetRealTimeClockHrTenDig--;
	DECR	_GV_SetRealTimeClockHrTenDig
	GOTO	_00666_DS_
_00662_DS_
;	.line	1207; "123.c"	GV_SetRealTimeClockHrSingleDig = 2;
	MOVAI	0x02
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1208; "123.c"	GV_SetRealTimeClockHrTenDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrTenDig
_00666_DS_
;	.line	1212; "123.c"	if((GV_SetRealTimeClockHrSingleDig==0)&&(GV_SetRealTimeClockHrTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1214; "123.c"	if(BF_SetRealTimeClockAM_PM)
	JBSET	_UserFlag,2
	GOTO	_00668_DS_
;	.line	1216; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
	GOTO	_00669_DS_
_00668_DS_
;	.line	1220; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
_00669_DS_
;	.line	1222; "123.c"	GV_SetRealTimeClockHrSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	1223; "123.c"	GV_SetRealTimeClockHrTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrTenDig
	GOTO	_00693_DS_
_00682_DS_
;	.line	1226; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00693_DS_
;	.line	1228; "123.c"	if(GV_SetRealTimeClockMinSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinSingleDig
	JBCLR	PFLAG,2
	GOTO	_00677_DS_
;	.line	1230; "123.c"	GV_SetRealTimeClockMinSingleDig--;
	DECR	_GV_SetRealTimeClockMinSingleDig
	GOTO	_00693_DS_
_00677_DS_
;	.line	1234; "123.c"	if(GV_SetRealTimeClockMinTenDig)
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinTenDig
	JBCLR	PFLAG,2
	GOTO	_00674_DS_
;	.line	1236; "123.c"	GV_SetRealTimeClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	1237; "123.c"	GV_SetRealTimeClockMinTenDig--;
	DECR	_GV_SetRealTimeClockMinTenDig
	GOTO	_00693_DS_
_00674_DS_
;	.line	1241; "123.c"	GV_SetRealTimeClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetRealTimeClockMinSingleDig
;	.line	1242; "123.c"	GV_SetRealTimeClockMinTenDig = 5;
	MOVAI	0x05
	MOVRA	_GV_SetRealTimeClockMinTenDig
_00693_DS_
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
;	.line	1011; "123.c"	BF_DownKeyPressesd = 1;
	BSET	_UserFlag,6
;	.line	1012; "123.c"	if(BF_DownLongKeyPressesd)//
	JBSET	_UserFlag,7
	GOTO	_00576_DS_
;	.line	1014; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00586_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00586_DS_
	JBCLR	PFLAG,0
	GOTO	_00572_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00578_DS_
_00572_DS_
;	.line	1016; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1017; "123.c"	Sub_SetAlarmDecTimer();
	CALL	_Sub_SetAlarmDecTimer
	GOTO	_00578_DS_
_00576_DS_
;	.line	1022; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00587_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00587_DS_
	JBCLR	PFLAG,0
	GOTO	_00574_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00578_DS_
_00574_DS_
;	.line	1024; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	1025; "123.c"	BF_DownLongKeyPressesd = 1;
	BSET	_UserFlag,7
;	.line	1026; "123.c"	Sub_SetAlarmDecTimer();
	CALL	_Sub_SetAlarmDecTimer
_00578_DS_
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
;	.line	939; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBCLR	PFLAG,2
	GOTO	_00566_DS_
;	.line	943; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00561_DS_
;	.line	945; "123.c"	if(GV_SetAlarmClockHrSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrSingleDig
	JBCLR	PFLAG,2
	GOTO	_00544_DS_
;	.line	947; "123.c"	GV_SetAlarmClockHrSingleDig--;
	DECR	_GV_SetAlarmClockHrSingleDig
	GOTO	_00545_DS_
_00544_DS_
;	.line	951; "123.c"	if(GV_SetAlarmClockHrTenDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrTenDig
	JBCLR	PFLAG,2
	GOTO	_00545_DS_
;	.line	953; "123.c"	GV_SetAlarmClockHrSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	954; "123.c"	GV_SetAlarmClockHrTenDig--;
	DECR	_GV_SetAlarmClockHrTenDig
_00545_DS_
;	.line	957; "123.c"	if((GV_SetAlarmClockHrSingleDig==0)&&(GV_SetAlarmClockHrTenDig==0))
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00566_DS_
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00566_DS_
;	.line	959; "123.c"	if(BF_SetAlarmAM_PM)
	JBSET	_UserFlag1,2
	GOTO	_00547_DS_
;	.line	961; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
	GOTO	_00548_DS_
_00547_DS_
;	.line	965; "123.c"	BF_SetAlarmAM_PM = 1;
	BSET	_UserFlag1,2
_00548_DS_
;	.line	967; "123.c"	GV_SetAlarmClockHrSingleDig = 0x02;
	MOVAI	0x02
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	968; "123.c"	GV_SetAlarmClockHrTenDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetAlarmClockHrTenDig
	GOTO	_00566_DS_
_00561_DS_
;	.line	971; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00566_DS_
;	.line	973; "123.c"	if(GV_SetAlarmClockMinSingleDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinSingleDig
	JBCLR	PFLAG,2
	GOTO	_00556_DS_
;	.line	975; "123.c"	GV_SetAlarmClockMinSingleDig--;
	DECR	_GV_SetAlarmClockMinSingleDig
	GOTO	_00566_DS_
_00556_DS_
;	.line	979; "123.c"	if(GV_SetAlarmClockMinTenDig)
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinTenDig
	JBCLR	PFLAG,2
	GOTO	_00553_DS_
;	.line	981; "123.c"	GV_SetAlarmClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	982; "123.c"	GV_SetAlarmClockMinTenDig--;
	DECR	_GV_SetAlarmClockMinTenDig
	GOTO	_00566_DS_
_00553_DS_
;	.line	986; "123.c"	GV_SetAlarmClockMinSingleDig = 9;
	MOVAI	0x09
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	987; "123.c"	GV_SetAlarmClockMinTenDig = 5;
	MOVAI	0x05
	MOVRA	_GV_SetAlarmClockMinTenDig
_00566_DS_
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
;	.line	907; "123.c"	BF_Up_AlKeyPressesd = 1;
	BSET	_UserFlag,4
;	.line	908; "123.c"	if(BF_Up_AlLongKeyPressesd)//
	JBSET	_UserFlag,5
	GOTO	_00525_DS_
;	.line	910; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00535_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00535_DS_
	JBCLR	PFLAG,0
	GOTO	_00521_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00527_DS_
_00521_DS_
;	.line	912; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	913; "123.c"	Sub_RealTimeClockAdd();
	CALL	_Sub_RealTimeClockAdd
	GOTO	_00527_DS_
_00525_DS_
;	.line	918; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00536_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00536_DS_
	JBCLR	PFLAG,0
	GOTO	_00523_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00527_DS_
_00523_DS_
;	.line	920; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	921; "123.c"	BF_Up_AlLongKeyPressesd = 1;
	BSET	_UserFlag,5
;	.line	922; "123.c"	Sub_RealTimeClockAdd();
	CALL	_Sub_RealTimeClockAdd
_00527_DS_
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
;3 compiler assigned registers:
;   r0x1050
;   STK00
;   r0x1051
;; Starting pCode block
_Sub_RealTimeClockAdd	;Function start
; 2 exit points
;	.line	741; "123.c"	if(GV_RealTimeClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_RealTimeClockSetStep
	JBSET	PFLAG,2
	GOTO	_00405_DS_
;	.line	743; "123.c"	GV_SetYearSingleDig++;
	INCR	_GV_SetYearSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	744; "123.c"	if(GV_SetYearSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetYearSingleDig
	JBSET	PFLAG,0
	GOTO	_00328_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	746; "123.c"	GV_SetYearSingleDig = 0;
	CLRR	_GV_SetYearSingleDig
;	.line	747; "123.c"	GV_SetYearTenDig++;
	INCR	_GV_SetYearTenDig
_00328_DS_
;	.line	749; "123.c"	if((GV_SetYearSingleDig == 0)&&(GV_SetYearTenDig >= 10))
	MOVAI	0x00
	ORAR	_GV_SetYearSingleDig
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetYearTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	751; "123.c"	GV_SetYearSingleDig = 0;
	CLRR	_GV_SetYearSingleDig
;	.line	752; "123.c"	GV_SetYearTenDig = 0;
	CLRR	_GV_SetYearTenDig
	GOTO	_00407_DS_
_00405_DS_
;	.line	755; "123.c"	else if(GV_RealTimeClockSetStep==1)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00402_DS_
;	.line	757; "123.c"	GV_SetMonthSingleDig++;
	INCR	_GV_SetMonthSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	758; "123.c"	if(GV_SetMonthSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,0
	GOTO	_00333_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	760; "123.c"	GV_SetMonthSingleDig = 0;
	CLRR	_GV_SetMonthSingleDig
;	.line	761; "123.c"	GV_SetMonthTenDig++;
	INCR	_GV_SetMonthTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00333_DS_
;	.line	763; "123.c"	if((GV_SetMonthSingleDig >= 3)&&(GV_SetMonthTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetMonthSingleDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetMonthTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	765; "123.c"	GV_SetMonthSingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetMonthSingleDig
;	.line	766; "123.c"	GV_SetMonthTenDig = 0;
	CLRR	_GV_SetMonthTenDig
	GOTO	_00407_DS_
_00402_DS_
;	.line	769; "123.c"	else if(GV_RealTimeClockSetStep==2)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00399_DS_
;	.line	771; "123.c"	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
	MOVAI	0x8c
	CALL	_Sub_Read1302
;	.line	772; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	773; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1050
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1050
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	774; "123.c"	LV_TempYear = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1050
;	.line	775; "123.c"	LV_TempYear = LV_TempYear + LV_TempB;
	MOVAR	_LV_TempB
	ADDRA	r0x1050
;	.line	777; "123.c"	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
	MOVAI	0x88
	CALL	_Sub_Read1302
;	.line	778; "123.c"	LV_TempA = GV_GetByteFromDs1302;
	MOVAR	_GV_GetByteFromDs1302
	MOVRA	_LV_TempA
;	.line	779; "123.c"	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
	SWAPAR	_LV_TempA
	ANDAI	0x0f
	MOVRA	r0x1051
	MOVAI	0x0a
	MOVRA	STK00
	MOVAR	r0x1051
	CALL	__mulchar
	MOVRA	_LV_TempB
;	.line	780; "123.c"	LV_TempMonth = LV_TempA & 0x0f;
	MOVAI	0x0f
	ANDAR	_LV_TempA
	MOVRA	r0x1051
;	.line	781; "123.c"	LV_TempMonth = LV_TempMonth + LV_TempB;
	MOVAR	_LV_TempB
	ADDRA	r0x1051
;	.line	783; "123.c"	GV_SetDaySingleDig++; 
	INCR	_GV_SetDaySingleDig
;	.line	785; "123.c"	if(LV_TempMonth==0)
	MOVAI	0x00
	ORAR	r0x1051
	JBCLR	PFLAG,2
	GOTO	_00407_DS_
;	.line	789; "123.c"	else if((LV_TempMonth==1)||(LV_TempMonth==3)||(LV_TempMonth==5)||(LV_TempMonth==7)||(LV_TempMonth==8)||(LV_TempMonth==10)||(LV_TempMonth==12))
	MOVAR	r0x1051
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00498_DS_
	GOTO	_00368_DS_
_00498_DS_
	MOVAR	r0x1051
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00499_DS_
	GOTO	_00368_DS_
_00499_DS_
	MOVAR	r0x1051
	XORAI	0x05
	JBSET	PFLAG,2
	GOTO	_00500_DS_
	GOTO	_00368_DS_
_00500_DS_
	MOVAR	r0x1051
	XORAI	0x07
	JBSET	PFLAG,2
	GOTO	_00501_DS_
	GOTO	_00368_DS_
_00501_DS_
	MOVAR	r0x1051
	XORAI	0x08
	JBSET	PFLAG,2
	GOTO	_00502_DS_
	GOTO	_00368_DS_
_00502_DS_
	MOVAR	r0x1051
	XORAI	0x0a
	JBSET	PFLAG,2
	GOTO	_00503_DS_
	GOTO	_00368_DS_
_00503_DS_
	MOVAR	r0x1051
	XORAI	0x0c
	JBSET	PFLAG,2
	GOTO	_00369_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00368_DS_
;	.line	791; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00338_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	793; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	794; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x2=2), size=1
_00338_DS_
;	.line	796; "123.c"	if((GV_SetDaySingleDig >= 2)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x02
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	798; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	799; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00407_DS_
_00369_DS_
;	.line	802; "123.c"	else if(LV_TempMonth==2)
	MOVAR	r0x1051
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00366_DS_
;	.line	804; "123.c"	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
	MOVAR	r0x1050
	ANDAI	0x03
	JBCLR	PFLAG,2
	GOTO	_00353_DS_
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	806; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00343_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	808; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	809; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
_00343_DS_
;	.line	811; "123.c"	if((GV_SetDaySingleDig == 0)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x00
	ORAR	_GV_SetDaySingleDig
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	813; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	814; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00407_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00353_DS_
;	.line	819; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00348_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	821; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	822; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x9=9), size=1
_00348_DS_
;	.line	824; "123.c"	if((GV_SetDaySingleDig >= 9)&&(GV_SetDayTenDig >= 2))
	MOVAI	0x09
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x2=2), size=1
	MOVAI	0x02
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	826; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	827; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00407_DS_
_00366_DS_
;	.line	831; "123.c"	else if((LV_TempMonth==4)||(LV_TempMonth==6)||(LV_TempMonth==9)||(LV_TempMonth==11))
	MOVAR	r0x1051
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00513_DS_
	GOTO	_00360_DS_
_00513_DS_
	MOVAR	r0x1051
	XORAI	0x06
	JBSET	PFLAG,2
	GOTO	_00514_DS_
	GOTO	_00360_DS_
_00514_DS_
	MOVAR	r0x1051
	XORAI	0x09
	JBSET	PFLAG,2
	GOTO	_00515_DS_
	GOTO	_00360_DS_
_00515_DS_
	MOVAR	r0x1051
	XORAI	0x0b
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;;unsigned compare: left < lit(0xA=10), size=1
_00360_DS_
;	.line	833; "123.c"	if(GV_SetDaySingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00356_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	835; "123.c"	GV_SetDaySingleDig = 0;
	CLRR	_GV_SetDaySingleDig
;	.line	836; "123.c"	GV_SetDayTenDig++;
	INCR	_GV_SetDayTenDig
;;unsigned compare: left < lit(0x1=1), size=1
_00356_DS_
;	.line	838; "123.c"	if((GV_SetDaySingleDig >= 1)&&(GV_SetDayTenDig >= 3))
	MOVAI	0x01
	RSUBAR	_GV_SetDaySingleDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x3=3), size=1
	MOVAI	0x03
	RSUBAR	_GV_SetDayTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	840; "123.c"	GV_SetDaySingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetDaySingleDig
;	.line	841; "123.c"	GV_SetDayTenDig = 0;
	CLRR	_GV_SetDayTenDig
	GOTO	_00407_DS_
_00399_DS_
;	.line	850; "123.c"	else if(GV_RealTimeClockSetStep==3)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x03
	JBSET	PFLAG,2
	GOTO	_00396_DS_
;	.line	852; "123.c"	GV_SetRealTimeClockHrSingleDig++;
	INCR	_GV_SetRealTimeClockHrSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	853; "123.c"	if(GV_SetRealTimeClockHrSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00381_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	855; "123.c"	GV_SetRealTimeClockHrSingleDig = 0;
	CLRR	_GV_SetRealTimeClockHrSingleDig
;	.line	856; "123.c"	GV_SetRealTimeClockHrTenDig++;
	INCR	_GV_SetRealTimeClockHrTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00381_DS_
;	.line	858; "123.c"	if((GV_SetRealTimeClockHrSingleDig >= 3)&&(GV_SetRealTimeClockHrTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetRealTimeClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetRealTimeClockHrTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	860; "123.c"	GV_SetRealTimeClockHrSingleDig = 1;
	MOVAI	0x01
	MOVRA	_GV_SetRealTimeClockHrSingleDig
;	.line	861; "123.c"	GV_SetRealTimeClockHrTenDig = 0;
	CLRR	_GV_SetRealTimeClockHrTenDig
;	.line	862; "123.c"	if(BF_SetRealTimeClockAM_PM)
	JBSET	_UserFlag,2
	GOTO	_00383_DS_
;	.line	864; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
	GOTO	_00407_DS_
_00383_DS_
;	.line	868; "123.c"	BF_SetRealTimeClockAM_PM = 1;
	BSET	_UserFlag,2
	GOTO	_00407_DS_
_00396_DS_
;	.line	872; "123.c"	else if(GV_RealTimeClockSetStep==4)
	MOVAR	_GV_RealTimeClockSetStep
	XORAI	0x04
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;	.line	874; "123.c"	GV_SetRealTimeClockMinSingleDig++;
	INCR	_GV_SetRealTimeClockMinSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	875; "123.c"	if(GV_SetRealTimeClockMinSingleDig >= 10)
	MOVAI	0x0a
	RSUBAR	_GV_SetRealTimeClockMinSingleDig
	JBSET	PFLAG,0
	GOTO	_00389_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	877; "123.c"	GV_SetRealTimeClockMinSingleDig = 0;
	CLRR	_GV_SetRealTimeClockMinSingleDig
;	.line	878; "123.c"	GV_SetRealTimeClockMinTenDig++;
	INCR	_GV_SetRealTimeClockMinTenDig
_00389_DS_
;	.line	880; "123.c"	if((GV_SetRealTimeClockMinSingleDig == 0)&&(GV_SetRealTimeClockMinTenDig >= 6))
	MOVAI	0x00
	ORAR	_GV_SetRealTimeClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00407_DS_
;;unsigned compare: left < lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_GV_SetRealTimeClockMinTenDig
	JBSET	PFLAG,0
	GOTO	_00407_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	882; "123.c"	GV_SetRealTimeClockMinSingleDig = 0;
	CLRR	_GV_SetRealTimeClockMinSingleDig
;	.line	883; "123.c"	GV_SetRealTimeClockMinTenDig = 0;
	CLRR	_GV_SetRealTimeClockMinTenDig
_00407_DS_
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
;   r0x1050
;   r0x1051
;; Starting pCode block
_Sub_Up_AlShortLongKeyAlarmSet	;Function start
; 2 exit points
;	.line	690; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBSET	PFLAG,2
	GOTO	_00304_DS_
;	.line	692; "123.c"	BF_SetAlarmOnOff = !BF_SetAlarmOnOff;//0 = Set alarm off; 1 = Set alarm on
	CLRR	r0x1050
	JBCLR	_UserFlag1,5
	INCR	r0x1050
	MOVAR	r0x1050
	MOVAI	0x00
	JBCLR	PFLAG,2
	MOVAI	0x01
	MOVRA	r0x1050
;;1	MOVRA	r0x1051
;;99	MOVAR	r0x1051
	RRAR	r0x1050
	JBSET	PFLAG,0
	BCLR	_UserFlag1,5
	JBCLR	PFLAG,0
	BSET	_UserFlag1,5
;	.line	693; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
	GOTO	_00306_DS_
_00304_DS_
;	.line	695; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00320_DS_
	GOTO	_00306_DS_
_00320_DS_
;	.line	699; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00306_DS_
;	.line	701; "123.c"	BF_Up_AlKeyPressesd = 1;
	BSET	_UserFlag,4
;	.line	702; "123.c"	if(BF_Up_AlLongKeyPressesd)//
	JBSET	_UserFlag,5
	GOTO	_00296_DS_
;	.line	704; "123.c"	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x7D=125), size=2
	MOVAI	0x00
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00321_DS_
	MOVAI	0x7d
	RSUBAR	_GV_LongKeyTimer
_00321_DS_
	JBCLR	PFLAG,0
	GOTO	_00292_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00306_DS_
_00292_DS_
;	.line	706; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	707; "123.c"	Sub_SetAlarmAddTimer();
	CALL	_Sub_SetAlarmAddTimer
	GOTO	_00306_DS_
_00296_DS_
;	.line	712; "123.c"	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x1F4=500), size=2
	MOVAI	0x01
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00322_DS_
	MOVAI	0xf4
	RSUBAR	_GV_LongKeyTimer
_00322_DS_
	JBCLR	PFLAG,0
	GOTO	_00294_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00306_DS_
_00294_DS_
;	.line	714; "123.c"	GV_LongKeyTimer = 0;
	CLRR	_GV_LongKeyTimer
	CLRR	(_GV_LongKeyTimer + 1)
;	.line	715; "123.c"	BF_Up_AlLongKeyPressesd = 1;
	BSET	_UserFlag,5
;	.line	716; "123.c"	Sub_SetAlarmAddTimer();
	CALL	_Sub_SetAlarmAddTimer
_00306_DS_
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
;	.line	630; "123.c"	if(GV_AlarmClockSetStep==0)
	MOVAI	0x00
	ORAR	_GV_AlarmClockSetStep
	JBCLR	PFLAG,2
	GOTO	_00286_DS_
;	.line	634; "123.c"	else if(GV_AlarmClockSetStep==1)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x01
	JBSET	PFLAG,2
	GOTO	_00281_DS_
;	.line	636; "123.c"	if(++GV_SetAlarmClockHrSingleDig >= 10)
	INCR	_GV_SetAlarmClockHrSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00266_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	638; "123.c"	GV_SetAlarmClockHrSingleDig = 0;
	CLRR	_GV_SetAlarmClockHrSingleDig
;	.line	639; "123.c"	GV_SetAlarmClockHrTenDig++;
	INCR	_GV_SetAlarmClockHrTenDig
;;unsigned compare: left < lit(0x3=3), size=1
_00266_DS_
;	.line	641; "123.c"	if((GV_SetAlarmClockHrSingleDig >= 3)&&(GV_SetAlarmClockHrTenDig >= 1))
	MOVAI	0x03
	RSUBAR	_GV_SetAlarmClockHrSingleDig
	JBSET	PFLAG,0
	GOTO	_00286_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1=1), size=1
	MOVAI	0x01
	RSUBAR	_GV_SetAlarmClockHrTenDig
	JBSET	PFLAG,0
	GOTO	_00286_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	643; "123.c"	if(BF_SetAlarmAM_PM)
	JBSET	_UserFlag1,2
	GOTO	_00268_DS_
;	.line	645; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
	GOTO	_00269_DS_
_00268_DS_
;	.line	649; "123.c"	BF_SetAlarmAM_PM = 1;
	BSET	_UserFlag1,2
_00269_DS_
;	.line	652; "123.c"	GV_SetAlarmClockHrTenDig = 0x00;
	CLRR	_GV_SetAlarmClockHrTenDig
;	.line	653; "123.c"	GV_SetAlarmClockHrSingleDig = 0x01;
	MOVAI	0x01
	MOVRA	_GV_SetAlarmClockHrSingleDig
	GOTO	_00286_DS_
_00281_DS_
;	.line	656; "123.c"	else if(GV_AlarmClockSetStep==2)
	MOVAR	_GV_AlarmClockSetStep
	XORAI	0x02
	JBSET	PFLAG,2
	GOTO	_00286_DS_
;	.line	658; "123.c"	if(++GV_SetAlarmClockMinSingleDig >= 10)
	INCR	_GV_SetAlarmClockMinSingleDig
;;unsigned compare: left < lit(0xA=10), size=1
	MOVAI	0x0a
	RSUBAR	_GV_SetAlarmClockMinSingleDig
	JBSET	PFLAG,0
	GOTO	_00274_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	660; "123.c"	GV_SetAlarmClockMinSingleDig = 0;
	CLRR	_GV_SetAlarmClockMinSingleDig
;	.line	661; "123.c"	GV_SetAlarmClockMinTenDig++;
	INCR	_GV_SetAlarmClockMinTenDig
_00274_DS_
;	.line	663; "123.c"	if((GV_SetAlarmClockMinSingleDig == 0)&&(GV_SetAlarmClockMinTenDig >= 6))
	MOVAI	0x00
	ORAR	_GV_SetAlarmClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00286_DS_
;;unsigned compare: left < lit(0x6=6), size=1
	MOVAI	0x06
	RSUBAR	_GV_SetAlarmClockMinTenDig
	JBSET	PFLAG,0
	GOTO	_00286_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	665; "123.c"	GV_SetAlarmClockMinSingleDig = 0;
	CLRR	_GV_SetAlarmClockMinSingleDig
;	.line	666; "123.c"	GV_SetAlarmClockMinTenDig = 0;
	CLRR	_GV_SetAlarmClockMinTenDig
_00286_DS_
	RETURN	
; exit point of _Sub_SetAlarmAddTimer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Up_AlLongKeyGetAlarmSetMode	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1050
;   r0x1051
;; Starting pCode block
_Sub_Up_AlLongKeyGetAlarmSetMode	;Function start
; 2 exit points
;	.line	604; "123.c"	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
	INCR	_GV_LongKeyTimer
	JBCLR	PFLAG,2
	INCR	(_GV_LongKeyTimer + 1)
;;unsigned compare: left < lit(0x5DC=1500), size=2
	MOVAI	0x05
	RSUBAR	(_GV_LongKeyTimer + 1)
	JBSET	PFLAG,2
	GOTO	_00260_DS_
	MOVAI	0xdc
	RSUBAR	_GV_LongKeyTimer
_00260_DS_
	JBCLR	PFLAG,0
	GOTO	_00255_DS_
;;genSkipc:3195: created from rifx:00DE608C
	GOTO	_00256_DS_
_00255_DS_
;	.line	605; "123.c"	GV_PreKey = GV_CurKey;
	MOVAR	_GV_CurKey
	MOVRA	_GV_PreKey
;	.line	607; "123.c"	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
	MOVAR	_GV_RunAlarmClockMinSingleDig
	MOVRA	_GV_SetAlarmClockMinSingleDig
;	.line	608; "123.c"	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
	MOVAR	_GV_RunAlarmClockMinTenDig
	MOVRA	_GV_SetAlarmClockMinTenDig
;	.line	610; "123.c"	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
	MOVAR	_GV_RunAlarmClockHrSingleDig
	MOVRA	_GV_SetAlarmClockHrSingleDig
;	.line	611; "123.c"	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;   	
	MOVAR	_GV_RunAlarmClockHrTenDig
	MOVRA	_GV_SetAlarmClockHrTenDig
;	.line	613; "123.c"	BF_SetAlarmOnOff = BF_RunAlarmOnOff;
	CLRR	r0x1050
	JBCLR	_UserFlag1,6
	INCR	r0x1050
	MOVAR	r0x1050
	MOVRA	r0x1051
	RRAR	r0x1051
	JBSET	PFLAG,0
	BCLR	_UserFlag1,5
	JBCLR	PFLAG,0
	BSET	_UserFlag1,5
;	.line	614; "123.c"	GV_AlarmClockSetStep = 0;
	CLRR	_GV_AlarmClockSetStep
;	.line	615; "123.c"	GV_Mode = 2;//2=Alarm set mode
	MOVAI	0x02
	MOVRA	_GV_Mode
_00256_DS_
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
;	.line	537; "123.c"	Sub_IoInitial();
	CALL	_Sub_IoInitial
;	.line	539; "123.c"	Sub_TC2Initial();
	CALL	_Sub_TC2Initial
;	.line	542; "123.c"	GIE = 1;  //FGIE = 1;  //Enable interrupt
	BSET	_MCRbits,7
;	.line	544; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	545; "123.c"	Sub_Write1302(C_DS1302_Second,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x80
	CALL	_Sub_Write1302
;	.line	546; "123.c"	Sub_Write1302(C_DS1302_Minute,0x00);   	
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x82
	CALL	_Sub_Write1302
;	.line	547; "123.c"	Sub_Write1302(C_DS1302_Hour,C_DS1302_AM12HrData);//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)	
	MOVAI	0x92
	MOVRA	STK00
	MOVAI	0x84
	CALL	_Sub_Write1302
;	.line	548; "123.c"	Sub_Write1302(C_DS1302_Day,0x01);  	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x86
	CALL	_Sub_Write1302
;	.line	549; "123.c"	Sub_Write1302(C_DS1302_Month,0x01);	   	   	
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x88
	CALL	_Sub_Write1302
;	.line	550; "123.c"	Sub_Write1302(C_DS1302_Year,0x00);
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x8c
	CALL	_Sub_Write1302
;	.line	551; "123.c"	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
	MOVAI	0x80
	MOVRA	STK00
	MOVAI	0x8e
	CALL	_Sub_Write1302
;	.line	554; "123.c"	GV_RunAlarmClockHrSingleDig = 2;
	MOVAI	0x02
	MOVRA	_GV_RunAlarmClockHrSingleDig
;	.line	555; "123.c"	GV_RunAlarmClockHrTenDig = 1;
	MOVAI	0x01
	MOVRA	_GV_RunAlarmClockHrTenDig
;	.line	557; "123.c"	BF_SetAlarmAM_PM = 0;
	BCLR	_UserFlag1,2
;	.line	558; "123.c"	BF_SetAlarmOnOff = 0;
	BCLR	_UserFlag1,5
;	.line	559; "123.c"	BF_RunAlarmAM_PM = 0;
	BCLR	_UserFlag1,3
;	.line	560; "123.c"	BF_RunAlarmOnOff = 0;
	BCLR	_UserFlag1,6
;	.line	562; "123.c"	BF_SetRealTimeClockAM_PM = 0;
	BCLR	_UserFlag,2
;	.line	565; "123.c"	GV_200msClock = 100;
	MOVAI	0x64
	MOVRA	_GV_200msClock
_00246_DS_
;	.line	566; "123.c"	while(GV_200msClock)
	MOVAI	0x00
	ORAR	_GV_200msClock
	JBCLR	PFLAG,2
	GOTO	_00249_DS_
;	.line	568; "123.c"	ClrWdt();   //(feed the doggie )
	clrwdt
;	.line	569; "123.c"	if(BF_TccClock2ms)  //
	JBSET	_UserFlag,0
	GOTO	_00246_DS_
;	.line	571; "123.c"	BF_TccClock2ms = 0;
	BCLR	_UserFlag,0
;	.line	572; "123.c"	if(++GV_10msClock>=5)
	INCR	_GV_10msClock
;;unsigned compare: left < lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_GV_10msClock
	JBSET	PFLAG,0
	GOTO	_00246_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	574; "123.c"	GV_10msClock = 0;
	CLRR	_GV_10msClock
;	.line	575; "123.c"	Sub_PT6964PowerOnAllDisp2s();
	CALL	_Sub_PT6964PowerOnAllDisp2s
;	.line	576; "123.c"	GV_200msClock--;
	DECR	_GV_200msClock
	GOTO	_00246_DS_
_00249_DS_
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
;	.line	513; "123.c"	T0IE=0;//FTC2IEN = 0;      	// Disable TC2 interrupt service
	BCLR	_INTEbits,0
;	.line	514; "123.c"	TC0EN=0;//FTC2ENB = 0;     	// Disable TC2 timer
	BCLR	_T0CRbits,7
;	.line	515; "123.c"	T0CR=0x0a;//TC2M = 0x34;   	// Set TC2 clock = Foscu / 4
	MOVAI	0x0a
	MOVRA	_T0CR
;	.line	516; "123.c"	T0LOAD=0x8b;//TC2R = 0x8B;     	// 0x8B;Set TC2 interval = 125us
	MOVAI	0x8b
	MOVRA	_T0LOAD
;	.line	517; "123.c"	T0IE=1;//FTC2IEN = 1;      	// Enable TC2 interrupt service
	BSET	_INTEbits,0
;	.line	518; "123.c"	T0IF=0;//FTC2IRQ = 0;      	// Clear TC2 interrupt request flag
	BCLR	_INTFbits,0
;	.line	519; "123.c"	TC0EN=1;//FTC2ENB = 1;     	// Enable TC2 timer
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
;	.line	480; "123.c"	LV_Temp=0;
	CLRR	_LV_Temp
	CLRR	(_LV_Temp + 1)
;;unsigned compare: left < lit(0x1388=5000), size=2
_00224_DS_
;	.line	481; "123.c"	while(LV_Temp<5000)
	MOVAI	0x13
	RSUBAR	(_LV_Temp + 1)
	JBSET	PFLAG,2
	GOTO	_00233_DS_
	MOVAI	0x88
	RSUBAR	_LV_Temp
_00233_DS_
	JBCLR	PFLAG,0
	GOTO	_00227_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	483; "123.c"	Nop();
	nop
;	.line	484; "123.c"	Nop();
	nop
;	.line	485; "123.c"	Nop();
	nop
;	.line	486; "123.c"	Nop();
	nop
;	.line	487; "123.c"	Nop();
	nop
;	.line	488; "123.c"	Nop();
	nop
;	.line	489; "123.c"	Nop();
	nop
;	.line	490; "123.c"	Nop();
	nop
;	.line	492; "123.c"	LV_Temp++;
	INCR	_LV_Temp
	JBCLR	PFLAG,2
	INCR	(_LV_Temp + 1)
;	.line	493; "123.c"	ClrWdt();//WDTR = 0x5a;
	clrwdt
	GOTO	_00224_DS_
_00227_DS_
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
;	.line	442; "123.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	443; "123.c"	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
	CLRR	_OEP0
;	.line	444; "123.c"	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
	MOVAI	0xff
	MOVRA	_PUP0
;	.line	445; "123.c"	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP0
;	.line	447; "123.c"	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	448; "123.c"	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
	MOVAI	0xbc
	MOVRA	_OEP1
;	.line	449; "123.c"	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
	MOVAI	0x43
	MOVRA	_PUP1
;	.line	450; "123.c"	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP1
;	.line	452; "123.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	453; "123.c"	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
	MOVAI	0x0a
	MOVRA	_OEP2
;	.line	454; "123.c"	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
	MOVAI	0xf5
	MOVRA	_PUP2
;	.line	455; "123.c"	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high
	MOVAI	0xff
	MOVRA	_IOP2
;	.line	462; "123.c"	DisableBuzzer();
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
;   r0x1058
;   r0x1059
;; Starting pCode block
_Sub_AlarmEvent	;Function start
; 2 exit points
;	.line	402; "123.c"	BF_BuzzerBBB = 0;
	BCLR	_UserFlag1,4
;	.line	404; "123.c"	if(GV_Mode) return;
	MOVAI	0x00
	ORAR	_GV_Mode
	JBCLR	PFLAG,2
	GOTO	_00178_DS_
	GOTO	_00193_DS_
_00178_DS_
;	.line	405; "123.c"	if(BF_RunAlarmOnOff == 0) return;
	JBCLR	_UserFlag1,6
	GOTO	_00180_DS_
	GOTO	_00193_DS_
_00180_DS_
;	.line	406; "123.c"	if(GV_SnoozeTimer) return;
	MOVAI	0x00
	ORAR	_GV_SnoozeTimer
	JBCLR	PFLAG,2
	GOTO	_00182_DS_
	GOTO	_00193_DS_
_00182_DS_
;	.line	407; "123.c"	if(BF_RunRealTimeClockAM_PM != BF_RunAlarmAM_PM) return;
	CLRR	r0x1058
	JBCLR	_UserFlag,3
	INCR	r0x1058
	CLRR	r0x1059
	JBCLR	_UserFlag1,3
	INCR	r0x1059
	MOVAR	r0x1059
	XORAR	r0x1058
	JBSET	PFLAG,2
	GOTO	_00211_DS_
	GOTO	_00184_DS_
_00211_DS_
	GOTO	_00193_DS_
_00184_DS_
;	.line	408; "123.c"	if(GV_RunAlarmClockHrTenDig != GV_RunRealTimeClockHrTenDig) return;
	MOVAR	_GV_RunRealTimeClockHrTenDig
	XORAR	_GV_RunAlarmClockHrTenDig
	JBSET	PFLAG,2
	GOTO	_00212_DS_
	GOTO	_00186_DS_
_00212_DS_
	GOTO	_00193_DS_
_00186_DS_
;	.line	409; "123.c"	if(GV_RunAlarmClockHrSingleDig != GV_RunRealTimeClockHrSingleDig) return;
	MOVAR	_GV_RunRealTimeClockHrSingleDig
	XORAR	_GV_RunAlarmClockHrSingleDig
	JBSET	PFLAG,2
	GOTO	_00213_DS_
	GOTO	_00188_DS_
_00213_DS_
	GOTO	_00193_DS_
_00188_DS_
;	.line	410; "123.c"	if(GV_RunAlarmClockMinTenDig != GV_RunRealTimeClockMinTenDig) return;
	MOVAR	_GV_RunRealTimeClockMinTenDig
	XORAR	_GV_RunAlarmClockMinTenDig
	JBSET	PFLAG,2
	GOTO	_00214_DS_
	GOTO	_00190_DS_
_00214_DS_
	GOTO	_00193_DS_
_00190_DS_
;	.line	411; "123.c"	if(GV_RunAlarmClockMinSingleDig != GV_RunRealTimeClockMinSingleDig) return;
	MOVAR	_GV_RunRealTimeClockMinSingleDig
	XORAR	_GV_RunAlarmClockMinSingleDig
	JBSET	PFLAG,2
	GOTO	_00215_DS_
	GOTO	_00192_DS_
_00215_DS_
	GOTO	_00193_DS_
_00192_DS_
;	.line	413; "123.c"	BF_BuzzerBBB = 1;
	BSET	_UserFlag1,4
_00193_DS_
	RETURN	
; exit point of _Sub_AlarmEvent

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sub_Write1302	;Function start
; 2 exit points
;has an exit
;4 compiler assigned registers:
;   r0x1050
;   STK00
;   r0x1051
;   r0x1052
;; Starting pCode block
_Sub_Write1302	;Function start
; 2 exit points
;	.line	342; "123.c"	void Sub_Write1302(unsigned char LV_Addr,unsigned char LV_Data) // 将数据写入DS1302某个地址
	MOVRA	r0x1050
	MOVAR	STK00
	MOVRA	r0x1051
;	.line	345; "123.c"	PO_1381A_SCLK =0;  	
	BCLR	_IOP1bits,2
;	.line	346; "123.c"	Enable1381A_RESET();
	BSET	_IOP1bits,7
;	.line	351; "123.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	352; "123.c"	for(i=8; i>0; i--)
	MOVAI	0x08
	MOVRA	r0x1052
_00153_DS_
	MOVAI	0x00
	ORAR	r0x1052
	JBCLR	PFLAG,2
	GOTO	_00172_DS_
;	.line	354; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	356; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x1050,0
	GOTO	_00148_DS_
;	.line	357; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00149_DS_
_00148_DS_
;	.line	359; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00149_DS_
;	.line	360; "123.c"	Nop();
	nop
;	.line	361; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	362; "123.c"	LV_Addr >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1050
;	.line	363; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	352; "123.c"	for(i=8; i>0; i--)
	DECR	r0x1052
	GOTO	_00153_DS_
_00172_DS_
;	.line	366; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x1050
_00157_DS_
	MOVAI	0x00
	ORAR	r0x1050
	JBCLR	PFLAG,2
	GOTO	_00160_DS_
;	.line	368; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	370; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x1051,0
	GOTO	_00151_DS_
;	.line	371; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00152_DS_
_00151_DS_
;	.line	373; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00152_DS_
;	.line	374; "123.c"	Nop();
	nop
;	.line	375; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	376; "123.c"	LV_Data >>= 1;
	BCLR	PFLAG,0
	RRR	r0x1051
;	.line	377; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	366; "123.c"	for(i=8;i>0;i--)
	DECR	r0x1050
	GOTO	_00157_DS_
_00160_DS_
;	.line	379; "123.c"	Disable1381A_RESET();
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
;   r0x104B
;   r0x104C
;; Starting pCode block
_Sub_Read1302	;Function start
; 2 exit points
;	.line	293; "123.c"	void Sub_Read1302(unsigned char	LV_Addr) // 读DS1302某个地址的数据
	MOVRA	r0x104B
;	.line	296; "123.c"	PO_1381A_SCLK = 0; 	
	BCLR	_IOP1bits,2
;	.line	297; "123.c"	Enable1381A_RESET();
	BSET	_IOP1bits,7
;	.line	299; "123.c"	LV_Addr=(LV_Addr|0x01); // 地址，命令 
	BSET	r0x104B,0
;	.line	300; "123.c"	PO_1381A_DAT = 0;
	BCLR	_IOP1bits,3
;	.line	301; "123.c"	Set1381A_I_O_ForOutput();
	BSET	_OEP1bits,3
;	.line	302; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x104C
_00135_DS_
	MOVAI	0x00
	ORAR	r0x104C
	JBCLR	PFLAG,2
	GOTO	_00138_DS_
;	.line	304; "123.c"	PO_1381A_SCLK = 0; 	   	
	BCLR	_IOP1bits,2
;	.line	306; "123.c"	if(LV_TempE & 0x01)
	JBSET	r0x104B,0
	GOTO	_00131_DS_
;	.line	307; "123.c"	{PO_1381A_DAT = 1;} 
	BSET	_IOP1bits,3
	GOTO	_00132_DS_
_00131_DS_
;	.line	309; "123.c"	{PO_1381A_DAT = 0;}
	BCLR	_IOP1bits,3
_00132_DS_
;	.line	310; "123.c"	Nop();
	nop
;	.line	311; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	312; "123.c"	LV_Addr >>= 1;
	BCLR	PFLAG,0
	RRR	r0x104B
;	.line	313; "123.c"	PO_1381A_SCLK = 1; 	
	BSET	_IOP1bits,2
;	.line	302; "123.c"	for(i=8;i>0;i--)
	DECR	r0x104C
	GOTO	_00135_DS_
_00138_DS_
;	.line	316; "123.c"	Set1381A_I_O_ForInput();
	BCLR	_OEP1bits,3
;	.line	317; "123.c"	for(i=8;i>0;i--)
	MOVAI	0x08
	MOVRA	r0x104B
_00139_DS_
	MOVAI	0x00
	ORAR	r0x104B
	JBCLR	PFLAG,2
	GOTO	_00142_DS_
;	.line	319; "123.c"	if(PI_PD2_DAT)
	JBSET	_IOP1bits,3
	GOTO	_00134_DS_
;	.line	320; "123.c"	{GV_GetByteFromDs1302 = GV_GetByteFromDs1302|0x80;} 
	BSET	_GV_GetByteFromDs1302,7
_00134_DS_
;	.line	321; "123.c"	PO_1381A_SCLK = 1;
	BSET	_IOP1bits,2
;	.line	322; "123.c"	Nop();
	nop
;	.line	323; "123.c"	Nop();
	nop
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	324; "123.c"	GV_GetByteFromDs1302 = GV_GetByteFromDs1302 >> 1;  	   	   	   	
	BCLR	PFLAG,0
	RRR	_GV_GetByteFromDs1302
;	.line	325; "123.c"	PO_1381A_SCLK = 0;
	BCLR	_IOP1bits,2
;	.line	317; "123.c"	for(i=8;i>0;i--)
	DECR	r0x104B
	GOTO	_00139_DS_
_00142_DS_
;	.line	327; "123.c"	PO_1381A_SCLK = 0;
	BCLR	_IOP1bits,2
;	.line	328; "123.c"	Disable1381A_RESET();
	BCLR	_IOP1bits,7
	RETURN	
; exit point of _Sub_Read1302


;	code size estimation:
;	 3106+    0 =  3106 instructions ( 6212 byte)

	end
