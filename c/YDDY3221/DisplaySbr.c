#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"

extern void KeySbr();

void Led1Ligt()
{
	pLedC = 0;
	pLed1C = 1;
	pLed1 = 1;
}
void Led2Ligt()
{
	pLedC = 1;
	pLed1C = 1;
	pLed1 = 0;
}
void Led3Ligt()
{
	pLedC = 1;
	pLed2C = 1;
	pLed2 = 0;
}
void Led4Ligt()
{
 	pLedC = 0;
	pLed2C = 1;
	pLed2 = 1;
}
void DisplaySbr()
{
	pLed1C = 0;
	pLed2C = 0;
	pLedCC = 1;
	
	if (++DispCnt == 5) {KeySbr();return;}

	FLight = 0;
	if (!FT5s)
		{
		if (FFlash) FLight = 1;
		}
	else
		{
		if (FVIN) Buf2 = BatStatus - CBAT350;
		else
			{
			if (!FPwr) return;
			if (FDisBatLow)
				{
				if (!FF250) return;
				}
			else Buf2 = BatStatus - CBAT350;
			}
		}

	if (DispCnt == 1)
		{
		if (FLight||FFlash||(Buf2 != 0)) Led1Ligt();
		if ((Buf2 == 0)&&(FPwr)) Led1Ligt();
		return;
		}
	if (DispCnt == 2)
		{
		if (FLight||(Buf2 > 1)) {Led2Ligt();return;}
		if (Buf2 < 1) return;
		if (FPwr||FFlash) Led2Ligt();
		}
	if (DispCnt == 3)
		{
		if (FLight||(Buf2 > 2)) Led3Ligt();
		if (Buf2 < 2) return;
		if (FPwr||FFlash) Led3Ligt();
		return;
		}
	if (FLight) Led4Ligt();
	if (Buf2 < 3) return;
	if (Buf2 == 3)
		{
		if (FPwr||FFlash) Led4Ligt();
		return;
		}
	if (FPwr||(!FVIN)||FCHGOver||FFlash) Led4Ligt();
	/*
	switch (DispCnt)
		{
		case 1:
			if (FLight||FFlash||(Buf2 != 0)) Led1Ligt();
			if ((Buf2 == 0)&&(FPwr)) Led1Ligt();
			break;
		case 2:
			if (FLight||(Buf2 > 1)) {Led2Ligt();break;}
			if (Buf2 < 1) break;
			if (FPwr||FFlash) Led2Ligt();
			break;
		case 3:
			if (FLight||(Buf2 > 2)) Led3Ligt();
			if (Buf2 < 2) break;
			if (FPwr||FFlash) Led3Ligt();
			break;
		default:
			if (FLight) Led4Ligt();
			if (Buf2 < 3) return;
			if (Buf2 == 3)
				{
				if (FPwr||FFlash) Led4Ligt();
				break;
				}
			if (FPwr||(!FVIN)||FCHGOver||FFlash) Led4Ligt();
			break;
		}
	*/
}


 	
