/******************************************************************
;32P21移动电源 模板
;******************************************************************/
#include <mc32p21.h>
#include  "VAR.H"
#include  "CONST.H"

extern void InitialSys();
extern void InitalRAM();
extern void CHGPinCHKSbr();
extern void DisplaySbr();
extern void ADCSbr();
extern void WorkCtrlSbr();
extern void T500msSbr();
extern void DisplaySbr();

void main()
{
	INTE = 0;  		//关中断
	ClrWdt();
	InitialSys();
	InitalRAM();
	GIE = 1;
	
	for(;;)
		{
		if (FStop)
			{
			INTE = 0;INT1IE = 1;KBIM6 = 1;KBIE = 1;
			pLed1 = 1;pLed2 = 1;pLedC = 1;
			pLed1C = 1;pLed2C = 1;pLedCC = 1;
			pPwr = 0;pCHG = 0;pKey = 1;
			Nop();
			Nop();
			Nop();
			Stop();
			Nop();
			Nop();
			Nop();
			FStop = 0;INT1IE = 0;T1IE = 1;
			}
		//;5ms程序-----------------------------------------------
		if (F1ms)
			{
			F1ms = 0;
			ClrWdt();
			CHGPinCHKSbr();
			DisplaySbr();
			ADCSbr();
			if (ADCnt == 0) WorkCtrlSbr();		//;17*2=34ms???
			if (++T500ms >= C250ms)
				{
				T500ms = 0;
				T500msSbr();
				}
			}
		}
}

