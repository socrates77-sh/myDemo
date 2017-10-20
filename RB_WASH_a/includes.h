#ifndef _includes_h_
#define _includes_h_


#include "mc30p011.h"
#include "macro.h"
#include "ad.h"
#include "Init.h"
#include "key.h"
#include "led.h"
#include "test.h"
#include "sleep.h"
#include "Uart.h"


#define RX	 			P00
#define RXENBPIN		P01
#define ON_OFF			P02
#define POSITION		P15
#define TX1				P14
#define TX2				P13
#define UartTx			P17

#define TEST			P00
#define LED1			P01
#define LED2			P02
#define MOS1			P10
#define MOS2			P11
#define MOS3			P12
#define UartRx			P16



#define LEDOFF()	{LED1 = 1 ; P02 = 1;}
#define LEDON()	    {LED1 = 0 ; P02 = 0;}

#define RXENB()	     {RXENBPIN = 0 ;}
#define RXDIS()	     {RXENBPIN = 1 ;}

#define TXENB()    	 {TX1 = 0 ; TX2 = 0;}
#define TXDIS()	     {TX1 = 1 ; TX2 = 1;}

#define MOSENB()	{MOS1 = 1 ;MOS2 = 1 ;MOS3 = 1 ;}
#define MOSDIS()	{MOS1 = 0 ;MOS2 = 0 ;MOS3 = 0 ;}
#endif