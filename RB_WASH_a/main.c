#include "includes.h"

void main(void)
{
	//ClrrRAM();
	init();
	P00 = 1;
	P13 = 1;
/*	测试WDT时间
	while(1)
	{
		CLRWDT();
		INTS =   BIN(0,0,0,0,1,0,0,0);		
		PAINTR = BIN(0,0,0,0,1,0,0,0);
		PORTA = PORTA;
		SLEEP();
		RAIF = 0;
		PAINTR = 0X00;	
		PC7=~PC7;
	}
*/
	while(1)
	{
		ClrWdt();
		KeyScan();
		WorkOnInit();
		Detection();
		Actuation();
	//	ConsecutiveFive();
	//	NeedSleep();
	}
}

void int_isr(void) __interrupt

{	
	if(T0SE)			// 定时1ms
	{
		T0SE = 0;
		T1CR = 0X05;
		fKeyT = 1;
		fWorkONInitT = 1;
		fDetectionT = 1;
		fMotorT = 1;
		fSleepT = 1;
	}
}