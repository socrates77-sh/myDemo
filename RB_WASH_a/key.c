#define key_Global
#include "includes.h"


unsigned char KeyNew;
unsigned char KeyOld;
unsigned char KeyDebounce;

void KeyScan(void)
{
	if(fKeyT)
	{
		fKeyT = 0;
		if(ON_OFF)
		{
			KeyNew = 0x00;
		}
		else
		{
			KeyNew = 0x01;
		}
		
		if(KeyNew != KeyOld)
		{
			KeyDebounce++;
			if(KeyDebounce > 20)
			{
				KeyDebounce = 0;
				KeyOld = KeyNew;
				if(KeyOld == 0x01)
				{
					fWorkON = 1;
					fWorkONInit = 1;
					fDetection = 0;
					WorkONInitStep = 0;
				}
				else
				{
					fWorkON = 0;
					LEDOFF();
					RXDIS();
					TXDIS();
				}
			}
		}
		else
		{
			KeyDebounce = 0;
		}
	}
}


