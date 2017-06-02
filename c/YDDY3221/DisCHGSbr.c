#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"

void AdjVoutSbr();
/*;--------------------------------------------------------------
;放电控制
;电流小于100mA超过20s结束
;放电自动调整
;--------------------------------------------------------------*/
void DisCHGSbr()
{
	AdjVoutSbr();
	if (ADIOut < COUTI_90mA) FILow = 1;
	else {FILow = 0;ILow0A1Dly10s = 0;}
}
//;--------------------------------------------------------------
void AdjVoutSbr()
{
	if (ADVOut > COUTU5V+2)
		{
		if (--DisPWM == 0) ++DisPWM;
		T0DATA = DisPWM;
		return;
		}	
	if (ADVOut < COUTU5V-2)
		{
		if (ADVOut < COUTU4d5V) DisPWM += 5;
		if (++DisPWM >= CT0-5) DisPWM = CT0-5;
		T0DATA = DisPWM;
		}
	pPwr = 1;
	FPwr1st = 1;
}

void InitPWMSbr()
{
	DisPWM = CNPWM0DATA;
	T0DATA = DisPWM;
}


