
/****************************************************************
;	Function : Define const IO��
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
#define IIC_Freq    2 // ����IICƵ��

//==============����ֵ===============
#define NOKEY		0  //�ް���
#define SHORTKEY	1  //�̰�
#define LONGKEY		2  //����
#define DoubleKEY	3  // 2������

#define BATCh	4 // ADͨ��
#define LoadCh2	2
#define LoadCh1	3

//�޸��ؼ���ֵ
#define JudgeNoLoadCnt	50
//��⸺�ص���ʱ��ADֵ��Χ
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
//==================IO�ڶ���==============
#define LED1           P14 //���
#define LED2           P15 //��� 
#define LED3           P13 //��� 
#define LED4           P12 //��� 
//#define STDBY          P16 // ��ʼΪ�� ��5VΪ��
#define CHRG   		   P11 //ǰ�õ�Դ���  0 active
#define KEY_I          P16 
#define BatteryCheck   P04 //��ص������ AD
#define ControlBoost   P03 //������ѹIC
#define PhoneCheck	   P02		
#define LightLED	   P01 // �ŵ�ָʾ��
#define SDA			   P00
#define SCL			   P10



#endif