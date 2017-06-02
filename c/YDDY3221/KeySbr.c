#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"

extern void CloseDisCHG();
extern void InitPWMSbr();
extern void InitADC();
void NoKeySbr();
void KeyShortSbr();
void KeySbr()
{
//	DispCnt = 0;
//	if (!FT5s) return;
//	if (pKey)		//未检测到按键
//		{
//		if (FKeyAck) {NoKeySbr(); return;}		//;按键已响应
//		if ((KeyLongth != 0)||(KeyCnt >3)) KeyShortSbr();
//		else NoKeySbr();
//		return;
//		}
//	if (++KeyCnt < 10) return;
//	KeyCnt = 0;
//	if (++KeyLongth < 8) return;
//	//;------------------------------------------------------
//	//;长按键
//KeyLongthSbr:
//	KeyLongth = 0;
//	if (FKeyAck) return;
//	FKeyAck = 1;
//	if (pLedW) pLedW = 0;
//	else pLedW = 1;
}
//;------------------------------------------------------
//	;短按键
void KeyShortSbr()
{
//	FKeyAck = 1;
//	if (FVIN) return;
//
//	if (FPwr) CloseDisCHG();
//	else
//		{
//		LoadCnt = 0;
//		FPwr = 1;
//		ILow0A1Dly10s = 0;
//		T500ms = 0;
//		if (!FBatLow3)
//			{
//			BatLowCnt = 6;
//			FDisBatLow = 1;
//			}
//		else
//			{
//			GIE = 0;
//			T1IE = 1;
//			T1CR = 0x8F;
//			T1LOAD = CT_1ms;
//		
//			T0CR = 0x88;
//			T0LOAD = CT0;
//			T0CNT = 0;
//			InitPWMSbr();
//			PWM0OE = 1;
//		
//			FStop = 0;
//			TStop5s = 0;
//			InitADC();
//			GIE = 1;
//			}
//		}
}

void NoKeySbr()
{
	FKeyAck = 0;
	KeyCnt = 0;
	KeyLongth = 0;
}


