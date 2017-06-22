
#include "mc3x-common.h"
/*****************************************************************
;       Function : Define variables
;*****************************************************************/
#ifndef _CONST_H_
#define _CONST_H_

//==============IO口定义===============

#define KEY_SEND_PLAY	P00D
//#define KEY_SEND_VOLSUB	P01D
#define KEY_SEND_PREV	P15D
#define KEY_SEND_NEXT	P14D
//#define KEY_SEND_VOLADD	P13D

#define LED_BLUE	P01D
#define BT_POWER	P02D
#define BEEP		P03D

#define IR_read		P10D
#define SDA_read  	P17D     //sda和scl  sensor i2c interface
#define SCL_read  	P16D

#define SCL_H    	DDR16 = 1       //设置为输入，上拉电阻将IO口置1
#define SCL_L     	DDR16 = 0;P16D=0 	   //输出低电平 
    
#define SDA_H      	DDR17 = 1
#define SDA_L      	DDR17 = 0;P17D=0

#define LED_STATE_MAX	10

#endif


