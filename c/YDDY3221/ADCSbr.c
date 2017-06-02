
#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"

void ADVStartSbr(uchar chnl);
void IChkSbr();
void BatChkSbr();
void CalADISbr();
void CalADVBatSbr();
void CalADVOutSbr();
void BatStatusSbr();
void InitADC();
extern CloseDisCHG();


void ADCSbr()
{
	ADON = 1;
	//IOutStartSbr:
	ADVStartSbr(CADIOut);
	CalADISbr();
	//VBatStartSbr:
	ADVStartSbr(CADVBat);
	CalADVBatSbr();
	//VOutStartSbr:
	ADVStartSbr(CADVOut);
	CalADVOutSbr();

	if (++ADCnt < 10) return;

	ADCnt = 0;
	ADVBat = ADVBatBuf/8;
	//movai	ADVBatBuf+1
	//movra	FSR0
	//call	DIV8Sbr()
	//movra	ADVBat

	ADVOut = ADVOutBuf/8;
	//movai	ADVOutBuf+1
	//movra	FSR0
	//call	DIV8Sbr
	//movra	ADVOut
	
	ADIOut = ADIOutBuf/8;
	//movai	ADIOutBuf+1
	//movra	FSR0
	//call	DIV8Sbr
	//movra	ADIOut
	InitADC();	
	
	IChkSbr();
	BatChkSbr();

	if (FVIN)
		{
		if (BatStatus <	CBAT350) BatStatus = CBAT350;
		return;
		}
	if (BatStatus == 0)
		{
		FBatLow3d2 = 1;
		FBatLow3 = 1;
		if ((FPwr)&&(BatLowCnt == 0)) CloseDisCHG();
		return;
		}
	FBatLow3 = 0;
	if (BatStatus > CBAT350)
		{
		FBatLow3d2 = 0;
		FDisBatLow = 0;
		}
	else
		{
		FBatLow3d2 = 1;
		FDisBatLow = 1;
		BatLowCnt = 6;
		}
}

void BatChkSbr()
{
	Buf0 = 0;
	if (ADVBat <= CBATU300) {BatStatusSbr();return;}
	
	++Buf0;
	if (ADVBat <= CBATU320) {BatStatusSbr();return;}

	++Buf0;
	if (ADVBat <= CBATU350) {BatStatusSbr();return;}

	++Buf0;
	if (ADVBat <= CBATU400) {BatStatusSbr();return;}

	++Buf0;
	if (ADVBat <= CBATU416) {BatStatusSbr();return;}

	++Buf0;
	BatStatusSbr();
}

void BatStatusSbr()
{
	if (pPwr)
		{
		if (BatStatus < Buf0) BatStatus = Buf0;
		return;
		}
	if (FVIN)
		{
		if (BatStatus > Buf0) BatStatus = Buf0;
		return;
		}
	BatStatus = Buf0;
}

void IChkSbr()
{
	if (!pPwr) return;
	
	if (ADIOut > COUTI_2A8)
		{
		if (++LoadCnt > 50)
			{
			--LoadCnt;
			CloseDisCHG();
			return;
			}
		}
	else LoadCnt = 0;
}

void CalADVBatSbr()
{
	if (ADCnt == 0)
		{
		ADVBatMin = Buf1;
		ADVBatMax = Buf1;
		return;
		}
	if (ADCnt == 1)
		{
		if (Buf1 < ADVBatMin) {ADVBatMin = Buf1;return;}
		if (Buf1 > ADVBatMax) {ADVBatMax = Buf1;return;}
		return;
		}
				
	if (Buf1 > ADVBatMax) {Buf0 = ADVBatMax;ADVBatMax = Buf1;}
	if (Buf1 < ADVBatMin) {Buf0 = ADVBatMin;ADVBatMin = Buf1;}
			
	ADVBatBuf += Buf0;
}


void CalADVOutSbr()
{
	if (ADCnt == 0)
		{
		ADVOutMin = Buf1;
		ADVOutMax = Buf1;
		return;
		}
	if (ADCnt == 1)
		{
		if (Buf1 < ADVOutMin) {ADVOutMin = Buf1;return;}
		if (Buf1 > ADVOutMax) {ADVOutMax = Buf1;return;}
		return;
		}
		
	if (Buf1 > ADVOutMax) {Buf0 = ADVOutMax;ADVOutMax = Buf1;}
	if (Buf1 < ADVOutMin) {Buf0 = ADVOutMin;ADVOutMin = Buf1;}
	
	ADVOutBuf += Buf0;
}

void CalADISbr()
{
	if (ADCnt == 0)
		{
		ADIMin = Buf1;
		ADIMax = Buf1;
		return;
		}
	if (ADCnt == 1)
		{
		if (Buf1 < ADIMin) {ADIMin = Buf1;return;}
		if (Buf1 > ADIMax) {ADIMax = Buf1;return;}
		return;
		}
	
	if (Buf1 > ADIMax) {Buf0 = ADIMax;ADIMax = Buf1;}
	if (Buf1 < ADIMin) {Buf0 = ADIMin;ADIMin = Buf1;}
	
	ADIOutBuf += Buf0;
}

void ADVStartSbr(uchar chnl)
{
	ADCR0 = chnl;
	ADON = 1;
	ADEOC = 0;
	
	while (!ADEOC){}
	__asm
		swapar	ADRH
		andai	0xf0
		movra	_Buf1
		movai	0x0f
		andar	ADRL
		orra	_Buf1
	__endasm;
}
void InitADC()
{
	ADVBatBuf = 0;
	ADVOutBuf = 0;
	ADIOutBuf = 0;
	ADCnt = 0;
}	
