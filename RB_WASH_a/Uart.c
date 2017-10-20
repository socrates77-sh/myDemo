#define Uart_Global
#include "includes.h"

void InitUart(void)
{
	T0SE = 1;		//
	DDR12 = 0;		// 256 级
	T1DATA = BIN(1,1,1,0,0,0,0,0);	// 16/2 最小间隔 0.125us
	UartTx = 1;
	UartDelay(108);
	UartDelay(108);
	GIE = 0;
}
void EndUart(void)
{
	T1DATA = 0x00;
	P12PD = 1;
	GIE = 1;
}
void UartDelay(unsigned char SetBaud)	// 
{

	T0CR = 0;
	while(T0CR < SetBaud)
	{
		ClrWdt();	
	}

}

void UartSendByte(unsigned char Data)
{
	unsigned char i;
	unsigned char temp = Data;
	UartTx = 0;
	UartDelay(88);
	for(i=0;i<8;i++)
	{
		if(temp & 0x01)
		{
			UartTx = 1;
		}
		else
		{
			UartTx = 0;
		}
		temp >>= 1;
		UartDelay(88);
	}
	UartTx = 1;
	UartDelay(88);
	UartDelay(88);
	UartDelay(88);
}



void UartSendInt(const unsigned char *String)
{
	unsigned char temp;
	while(*String != '\0')
	{
		temp = *String;
		UartSendByte(temp);
		String++;
	}
}

