
#include <mc3x-common.h>
#include "CONST.H"
/*****************************************************************
;	Function : Define variables
;*****************************************************************/
#ifndef _EXTERNVAR_H_
#define _EXTERNVAR_H_

extern uchar	ABuf,StatusBuf;
extern uchar 	Keycode; //键值
extern uchar 	DisplayMode; // LED显示模式

extern uchar 	MasterTime_1ms;
extern uchar 	MasterTime_10ms;
extern uchar 	MasterTime_100ms;
extern uchar 	MasterTime_1s;
extern uchar 	sleeptime; // 睡眠计时

extern uchar 	key_cnt; // 连击次数
extern uchar 	key_time; // 按键时间
extern uchar 	key_press_time;  // 长按键时间
extern uchar 	short_press_time; // 连击间隔时间

extern uint 	BAT_avgAD; // 电池检测AD平均值
extern uint 	Load_avgAD; // 负载检测AD平均值
extern uint 	Last_BATAD; // 上一次电池电压值
extern uint     Load_avgAD2;

extern uchar 	NoLoadCount; // 判断无负载计数

extern uchar	ZNB602Register[6];


typedef  struct
{
    uchar bit0         : 1;
    uchar bit1         : 1;
    uchar bit2         : 1;
    uchar bit3         : 1;
    uchar bit4         : 1;	
    uchar bit5         : 1; 
    uchar bit6         : 1; 	
    uchar bit7         : 1; 	
} bitn;

extern volatile bitn	Flag,Flag1;
#define Load_Flag    		Flag.bit0 // 1有手机 0无
#define Power_Flag    		Flag.bit1 // 1有前置电源 0没有
#define Sleep_Flag    		Flag.bit2 
#define key_flag_bak  		Flag.bit3
#define key_flag      		Flag.bit4
#define key_ack       		Flag.bit5 // 按键连击有效标志位
#define LightSwitch_Flag    Flag.bit6 // 照明模式
#define InQt_Flag       	Flag.bit7 // 电量指示


#define LEDOFF_Flag         Flag1.bit0 // 记录短按键标识 1表示有短按过 0无
#define time_1s_Flag    	Flag1.bit1
#define time_100ms_Flag   	Flag1.bit2
#define F_loadcheck			Flag1.bit3
#define F_CHargeFull		Flag1.bit4
#define F_IIC_ASK			Flag1.bit5 // IIC answerback


#endif