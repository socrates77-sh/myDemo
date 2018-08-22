#include <mc32-common.h>
/*****************************************************************
;       Function : Define variables
;*****************************************************************/
#ifndef _RamDef_H_
#define _RamDef_H_
/************Ram Def PROCEDURE***********************
  Procedure in Main

  Name:  _RamDef.INC
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------*/ 

/*===================================================
  I/O Pin Assignment
  --------------------------------------------------*/
#define PO_Buzzer 		P21D
#define EnableBuzzer()	P21OE = 1
#define DisableBuzzer()	P21OE = 0

/*----------------------------------------------------
 Macro Declare
----------------------------------------------------*/

/*----------------------------------------------------
 CONSTANT DEFINITIONS
----------------------------------------------------*/
//---Adc Constant Definitions------------------------
#define C_AdcChanel0	0	//EQU 00000000b ;p40/AIN0
#define C_AdcChanel1	1	//EQU 00000001b ;p41/AIN1
#define C_AdcChanel2	2	//EQU 00000010b ;p42/AIN2
#define C_AdcChanel3	3	//EQU 00000011b ;p43/AIN3
#define C_AdcChanel4	4	//EQU 00000100b ;p44/AIN4
#define C_AdcChanel5	5	//EQU 00000101b ;p45/AIN5
#define C_AdcChanel6	6	//EQU 00000110b ;p46/AIN6
#define C_AdcChanel7	7	//EQU 00000111b ;p47/AIN7
#define C_AdcChanel8	8	//EQU 00001000b ;p50/AIN8
#define C_AdcChanel9	9	//EQU 00001001b ;p51/AIN9

#define C_KeysNaturalState	0x78	//0b0111 1000;
#define C_15sNoOperationCnt	30		//30*0.5s = 15s;
#define C_SnoozeTimer 120;//0.5s*120=60s

/*---------------------------------------------------
 CONSTANT DEFINITIONS
----------------------------------------------------*/
//#define C_PT6964Command1
#define C_Set4digits13segments	0x00	// 00xxxx00B 4digits,13segments
#define C_Set5digits12segments	0x01	// 00xxxx01B 5digits,12segments
#define C_Set6digits11segments	0x02	// 00xxxx10B 6digits,11segments
#define C_Set7digits10segments	0x03	// 00xxxx11B 7digits,10segments

//#define C_TA6932 Data W/R command
#define C_DataWrite	0x40// 01xx0000B Data write command(写数据到显示器寄存器，自动地址增加，普通模式)

//#define C_TA6932 Address control command
#define C_Address0 0xc0// 11xx0000B Address0

//#define C_TA6932 Display control command
#define C_DisplayOnDuty14_16	0x8F	//10xx1111B Display on/Puls Duty=14/16
#define C_DisplayOnDuty13_16	0x8E	//10xx1110B Display on/Puls Duty=13/16
#define C_DisplayOnDuty12_16	0x8D	//10xx1101B Display on/Puls Duty=12/16
#define C_DisplayOnDuty11_16	0x8C	//10xx1100B Display on/Puls Duty=11/16
#define C_DisplayOnDuty10_16	0x8B	//10xx1011B Display on/Puls Duty=10/16
#define C_DisplayOnDuty4_16		0x8A	//10xx1010B Display on/Puls Duty=4/16
#define C_DisplayOnDuty2_16		0x89	//10xx1001B Display on/Puls Duty=2/16
#define C_DisplayOnDuty1_16		0x88	//10xx1000B Display on/Puls Duty=1/16

#define C_DisplayOffDuty1_16	0x80	//10xx0000B Display off/Puls Duty=1/16

//#define HT1380A/1381A Data W/R command
//备注：HT1380A/1381A读写完全与DS1302一样
#define C_DS1302_Second	0x80	//second
#define C_DS1302_Minute 0x82	//minute
#define C_DS1302_Hour	0x84	//hour
#define C_DS1302_Week	0x8a	//week
#define C_DS1302_Day	0x86	//day
#define C_DS1302_Month	0x88	//month
#define C_DS1302_Year	0x8c	//year
#define C_DS1302_WriteProtect	0x8e	//Write Protect

#define C_DS1302_DisableWriteProtect	0x00	//Disable Write Protect
#define C_DS1302_EnableWriteProtect		0x80	//Enable Write Protect
#define C_DS1302_AM12HrData				0x92	//初始时间12：00(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)

#endif
/*----------------------------------------------------
 Extern Bit Variable Declare
----------------------------------------------------*/
//struct bitDefine{
//unsigned bit0:1;
//unsigned bit1:1;
//unsigned bit2:1;
//unsigned bit3:1;
//unsigned bit4:1;
//unsigned bit5:1;
//unsigned bit6:1;
//unsigned bit7:1;
//};

//struct bitDefine UserFlag,UserFlag1;
//#define BF_TccClock2ms (UserFlag.bit0)
//#define BF_LRSynMotor (UserFlag.bit1)
//extern struct bitDefine UserFlag;
//#define BF_TccClock2ms 			UserFlag.bit0
//#define BF_Clock500ms			UserFlag.bit1
//#define BF_SetRealTimeClockAM_PM UserFlag.bit2//0=AM；1=PM
//#define BF_RunRealTimeClockAM_PM UserFlag.bit3
//#define BF_Up_AlKeyPressesd		UserFlag.bit4
//#define BF_Up_AlLongKeyPressesd	UserFlag.bit5
//#define BF_DownKeyPressesd		UserFlag.bit6
//#define BF_DownLongKeyPressesd	UserFlag.bit7

//extern struct bitDefine UserFlag1;
//#define BF_Clock250ms			UserFlag1.bit0
//#define BF_SetLongKeyPressesd	UserFlag1.bit1
//#define BF_SetAlarmAM_PM		UserFlag1.bit2  //为0时=AM；为1=PM
//#define BF_RunAlarmAM_PM 		UserFlag1.bit3  //为0时=AM；为1=PM
//#define BF_BuzzerBBB 			UserFlag1.bit4
//#define BF_SetAlarmOnOff 		UserFlag1.bit5	//0 = Set alarm off; 1 = Set alarm on
//#define BF_RunAlarmOnOff		UserFlag1.bit6	//0 = Run alarm off; 1 = Run alarm on
//#define BF_SetRealTimeClockAM_PM	UserFlag1.bit7//为0时=AM；为1=PM

/*--------------------------------------------------
 Extern Variable Declare
--------------------------------------------------*/
//unsigned char	GV_2msClock;
//unsigned char	GV_10msClock;
//unsigned char	GV_100msClock;
//unsigned char	GV_200msClock;
//unsigned char	GV_250msClock;
//unsigned char	GV_500msClock;

//unsigned char	GV_BuzzerPeriod;
//unsigned char	GV_BuzzerBBPeriod;

//unsigned char	GV_KeyDebounce;
//unsigned char	GV_PreKey;
//unsigned char	GV_CurKey;
//unsigned int	GV_LongKeyTimer;
//
//unsigned char	GV_Mode;//0=Normal mode; 1=clock set mode; 2=Alarm set mode

//unsigned char	GV_RealTimeClockSetStep;
//unsigned char	GV_AlarmClockSetStep;

//unsigned char	GV_BuzzerIndex;
//unsigned char	GV_BuzzerDuty;
//
//unsigned char	GV_GetByteFromDs1302;
//unsigned char	GV_GetPT6964Data;

//unsigned char	GV_SetYearSingleDig;//Year Data
//unsigned char	GV_SetYearTenDig;
//unsigned char	GV_SetYearHundredsDig; 
//unsigned char	GV_SetYearthousandDig;
//unsigned char	GV_RunYearSingleDig;
//unsigned char	GV_RunYearTenDig;
//unsigned char	GV_RunYearHundredsDig; 
//unsigned char	GV_RunYearthousandDig;

//unsigned char	GV_SetMonthSingleDig;//Month Data
//unsigned char	GV_SetMonthTenDig;
//unsigned char	GV_RunMonthSingleDig;
//unsigned char	GV_RunMonthTenDig;
//
//unsigned char	GV_SetDaySingleDig;//Day Data
//unsigned char	GV_SetDayTenDig;
//unsigned char	GV_RunDaySingleDig;
//unsigned char	GV_RunDayTenDig;

//unsigned char	GV_SetRealTimeClockHrSingleDig;//RTC(RealTimeClock) Data
//unsigned char	GV_SetRealTimeClockHrTenDig;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)
//unsigned char	GV_SetRealTimeClockMinSingleDig;
//unsigned char	GV_SetRealTimeClockMinTenDig;
//unsigned char	GV_RunRealTimeClockHrSingleDig;
//unsigned char	GV_RunRealTimeClockHrTenDig;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)
//unsigned char	GV_RunRealTimeClockMinSingleDig;
//unsigned char	GV_RunRealTimeClockMinTenDig;
//
//unsigned char	GV_SetAlarmClockHrSingleDig;//alarm clock Data
//unsigned char	GV_SetAlarmClockHrTenDig;
//unsigned char	GV_SetAlarmClockMinSingleDig;
//unsigned char	GV_SetAlarmClockMinTenDig;
//unsigned char	GV_RunAlarmClockHrSingleDig;
//unsigned char	GV_RunAlarmClockHrTenDig;
//unsigned char	GV_RunAlarmClockMinSingleDig;
//unsigned char	GV_RunAlarmClockMinTenDig;
//
//unsigned char	GV_15sNoOperationCnt;//Automatically return to normal mode at 15 seconds without operation
//unsigned char	GV_SnoozeTimer;
//
//unsigned char	GV_DisplayBrightnessLevel;
////extern unsigned char	GV_5HrCntData0;
////extern unsigned char	GV_5HrCntData1;
//unsigned char 	DATA_ID[2];

//*****************************************************
// Function Declare
//*****************************************************

/*----------------------------------------------------
Remark:

GV_... = global variable
Example: GV_2msClock = global variable_2msClock

LV_... = local variable
Example: LV_TempB = local variable_TempB 
----------------------------------------------------*/

