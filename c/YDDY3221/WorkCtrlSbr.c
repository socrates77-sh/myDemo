#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"
void PwrInSbr();
void CHGOverSbr();
extern void DisCHGSbr();

/*;--------------------------------------------------------------
;34msִ��һ��
;--------------------------------------------------------------*/
void WorkCtrlSbr()
{
	if (FVIN) {PwrInSbr();return;}
	pCHG = 0;
	FCHGOver = 0;
	if (FPwr) {DisCHGSbr();return;}
}
//	;���е�س��״̬--------------------------------------
void PwrInSbr()
{
	pDisCHG = 0;
	PWM0OE = 0;
	pPwr = 0;
	FPwr = 0;
	FILow = 0;
	if (FCHGOver) {CHGOverSbr();return;}
	/*;----------------------------------------------------------
	;������
	;��ص�ѹ����4.24V������
	;��������30����С��100mA������
	-----------------------------------------------------------*/
//	if (!PWM1OE) 
//		{
//		GIE = 0;
//		T1IE = 0;
//		T1CR = 0x88;
//		T1LOAD =CT1;
//		CHGPWM = 1;
//		T1DATA = 1;
//		PWM1OE = 1;
//		T0CR = 0x8f;
//		T0LOAD = CT_1ms;
//		T0IE = 1;
//		GIE = 1;
//		return;
//		}
//	if (ADIOut > CBATI1A+2) --CHGPWM;
//	if (ADIOut < CBATI1A+2) ++CHGPWM;
//	T1DATA = CHGPWM;
//	if (ADIOut > CBATI100mA) FCHGI= 0;
//	else FCHGI = 1;
//	if (ADVBat > CBATU424) FCHGV = 1;
//	else FCHGV = 0;
}

void CHGOverSbr()
{
	FCHGOver = 1;
	PWM1OE = 0;
	pCHG = 0;
}


