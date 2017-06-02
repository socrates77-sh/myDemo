#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"


void InitialSys()
{
	//;端口初始化-------------------------------------------------
	//;IOP0 --------------------------------------------------------
	pDisCHG = 0;
	pLedW = 0;
	pPwr = 0;
	pCHG = 0;
	OEP0 = 0xf2;
	OEP1 = 0x8d;
	PUP0 = 0;
	PUP1 = 0x40;
	ANSEL = 0x0d;
	/*;T0---------------------------------------------------------
	;不中断
	;25us:4M/8 = 1M = *250 	
	;-----------------------------------------------------------*/
	T0CR = 0x8f;
	T0LOAD = CT_1ms;
	T0DATA = 1;
	/*;T1---------------------------------------------------------
	;25us:16M = 0.0625us *100 = 6.25us	
	;-----------------------------------------------------------*/
	T1CR = 0x8f;
	T1LOAD = CT_1ms;
	T1DATA = 0;
	//;WDT--------------------------------------------------------
	//;-----------------------------------------------------------
	//;LVDCR
	KBIM = 0;
	MCR = 8;                   
	INTF = 0;
	OSCM = 0;
	ADCR1 = CADRefVDD;
}
/*;-----------------------------------------------------------
;初始化RAM
;-----------------------------------------------------------*/
void InitalRAM()
{
	__asm
		clrr	FSR0   
	InitalRAM0:
		clrr	INDF0                       
		incr	FSR0
		movai	0x7F
		rsubar	FSR0
		jbset	STATUS,2
		goto	InitalRAM0
	__endasm;

	T1IE = 1;
}
//;-----------------------------------------------------------
void CHGPinCHKSbr()
{
	if (!pVIN)
		{
		VinHiCnt = 0;
		if (++VinLowCnt >= 20)
			{
			FVIN = 0;
			FCHGOver = 0;
			}
		}
	else
		{
		VinLowCnt = 0;
		if (++VinHiCnt >= 20)
			{
			FBatLow3d2 = 0;
			FVIN = 1;
			}
		}
}

void CloseDisCHG()
{
	FBatLow3d2 = 0;
	FDisBatLow = 0;
	FPwr = 0;
	pPwr = 0;
	pDisCHG = 0;
	PWM0OE = 0;
}

