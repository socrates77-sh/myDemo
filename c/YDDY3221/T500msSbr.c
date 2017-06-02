#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"
extern void CHGOverSbr();	
extern void CloseDisCHG(void);	
void T500msSbr()
{
	FF250 = !FF250;
	if (!FF250) return;
	FFlash = !FFlash;
	if (!FT5s)
		{
		if (++PwrON5s >= 6) FT5s = 1;
		return;
		}
	if (BatLowCnt == 0)
		{
		if (FDisBatLow)
			{
			FDisBatLow = 0;
			pLed1C = 0;
			pLed2C = 0;
			pLedCC = 1;
			}
		}
	else --BatLowCnt;
		
	if (FVIN)
		{
		FPwr = 0;
		pDisCHG = 0;
		PWM0OE = 0;
		TStop5s = 0;
		FStop = 0;
		if (FCHGOver) return;
		if (FCHGI)
			{
			if (++CHGI100ms1min >=120) CHGOverSbr();
			}
		else CHGI100ms1min = 0;
		if (FCHGV)
			{
			if (++CHGV4d2T1min >= 120) CHGOverSbr();
			}
		else CHGV4d2T1min = 0;
		return;
		}
		
	PWM1OE = 0;
	FCHGI = 0;
	FCHGV = 0;
	CHGV4d2T1min = 0;
	CHGI100ms1min = 0;
	
	if (FPwr)
		{
		TStop5s = 0;
		FStop = 0;
		if (FILow)
			{
			if (++ILow0A1Dly10s >= 20) CloseDisCHG();
			}
		else ILow0A1Dly10s = 0;
		return;
		}
	FPwr = 0;
	pDisCHG = 0;
	PWM0OE = 0;
	if (pLedW) return;
	
	if (++TStop5s >= 10) FStop = 1;
}
