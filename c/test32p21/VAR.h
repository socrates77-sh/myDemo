

#include <mc3x-common.h>
#include "CONST.H"
/*****************************************************************
;	Function : Define variables
;*****************************************************************/
#ifndef _VAR_H_
#define _VAR_H_

uchar	ABuf,StatusBuf;
uchar 	Keycode; //��ֵ
uchar 	DisplayMode; // LED��ʾģʽ

uchar 	MasterTime_1ms;
uchar 	MasterTime_10ms;
uchar 	MasterTime_100ms;
uchar 	MasterTime_1s;
uchar 	sleeptime; // ˯�߼�ʱ

uchar 	key_cnt; // ��������
uchar 	key_time; // ����ʱ��
uchar 	key_press_time;  // ������ʱ��
uchar 	short_press_time; // �������ʱ��

uint 	BAT_avgAD; // ��ؼ��ADƽ��ֵ
uint 	Load_avgAD; // ���ؼ��ADƽ��ֵ
uint 	Last_BATAD; // ��һ�ε�ص�ѹֵ
uint    Load_avgAD2;

uchar 	NoLoadCount; // �ж��޸��ؼ���

uchar	ZNB602Register[6];


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

volatile bitn	Flag,Flag1;
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