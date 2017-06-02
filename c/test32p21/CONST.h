
/****************************************************************
;	Function : Define const IO口
;*****************************************************************/
//#include "mc32p21.h"
//#include <mc3x-common.h>

#ifndef _CONST_H_
#define _CONST_H_

//typedef unsigned char uchar;
//typedef unsigned int  uint;
//#define NOP()  _asm_("nop")
//#define STOP() _asm_("stop")

#define ON 1
#define OFF 0

#define ONLED   1
#define OFFLED  0

#define KEY_EFFECT  50

#define	ZNB602ID	0x7a
#define ZNB602Addr	0x00
#define IIC_Freq    2 // 调节IIC频率

//==============按键值===============
#define NOKEY		0  //无按键
#define SHORTKEY	1  //短按
#define LONGKEY		2  //长按
#define DoubleKEY	3  // 2次连击

#define BATCh	4 // AD通道
#define LoadCh2	2
#define LoadCh1	3

//无负载计数值
#define JudgeNoLoadCnt	50
//检测负载电流时的AD值范围
#define CurrLmt_ADMin  	1
#define CurrLmt_ADMax  	29
#define CurrLmt_ADMax2  27

#define LowVoltageAD	530
//#define BATAhAD0		585
#define BATAhAD1 		640 // 3.5
#define BATAhAD2 		655 // 3.75
#define BATAhAD3 		722 // 3.95
#define BATAhAD4		764 //4.18

#define SET_I2C_DATA_OUTPUT   P00OE = 1
#define SET_I2C_DATA_INPUT	  P00OE = 0
//==================IO口定义==============
#define LED1           P14 //输出
#define LED2           P15 //输出 
#define LED3           P13 //输出 
#define LED4           P12 //输出 
//#define STDBY          P16 // 起始为低 有5V为高
#define CHRG   		   P11 //前置电源检测  0 active
#define KEY_I          P16 
#define BatteryCheck   P04 //电池电量检测 AD
#define ControlBoost   P03 //控制升压IC
#define PhoneCheck	   P02		
#define LightLED	   P01 // 放电指示灯
#define SDA			   P00
#define SCL			   P10



#endif