
#include <mc3x-common.h>
#include "CONST.H"
/*****************************************************************
;	Function : Define variables
;*****************************************************************/
#ifndef _EXTERNVAR_H_
#define _EXTERNVAR_H_

extern uchar	ABuf,StatusBuf;
extern uchar 	Keycode; //��ֵ
extern uchar 	DisplayMode; // LED��ʾģʽ

extern uchar 	MasterTime_1ms;
extern uchar 	MasterTime_10ms;
extern uchar 	MasterTime_100ms;
extern uchar 	MasterTime_1s;
extern uchar 	sleeptime; // ˯�߼�ʱ

extern uchar 	key_cnt; // ��������
extern uchar 	key_time; // ����ʱ��
extern uchar 	key_press_time;  // ������ʱ��
extern uchar 	short_press_time; // �������ʱ��

extern uint 	BAT_avgAD; // ��ؼ��ADƽ��ֵ
extern uint 	Load_avgAD; // ���ؼ��ADƽ��ֵ
extern uint 	Last_BATAD; // ��һ�ε�ص�ѹֵ
extern uint     Load_avgAD2;

extern uchar 	NoLoadCount; // �ж��޸��ؼ���

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
#define Load_Flag    		Flag.bit0 // 1���ֻ� 0��
#define Power_Flag    		Flag.bit1 // 1��ǰ�õ�Դ 0û��
#define Sleep_Flag    		Flag.bit2 
#define key_flag_bak  		Flag.bit3
#define key_flag      		Flag.bit4
#define key_ack       		Flag.bit5 // ����������Ч��־λ
#define LightSwitch_Flag    Flag.bit6 // ����ģʽ
#define InQt_Flag       	Flag.bit7 // ����ָʾ


#define LEDOFF_Flag         Flag1.bit0 // ��¼�̰�����ʶ 1��ʾ�ж̰��� 0��
#define time_1s_Flag    	Flag1.bit1
#define time_100ms_Flag   	Flag1.bit2
#define F_loadcheck			Flag1.bit3
#define F_CHargeFull		Flag1.bit4
#define F_IIC_ASK			Flag1.bit5 // IIC answerback


#endif