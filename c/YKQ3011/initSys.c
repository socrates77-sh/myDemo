
#include <mc30p011.h>
#include "externVar.H"
#include "CONST.H"

void InitialSys()
{
	//;端口初始化-------------------------------------------------
	//;P0 --------------------------------------------------------
	pRed = 1;
	pGreen = 1;
	pBlue = 1;
	
	DDR0 = 0;
	DDR1 = 0;
	DDR1 |= 0x08;
	PDCON = 0xFF;                    
	PUCON = 0xFF;
	ODCON = 0;
	//;T0---------------------------------------------------------
	//;20us,8M/2/2 = 0.5us	40*0.5us=20us
	//;-----------------------------------------------------------
	T0CR = 1;
	T0CNT = CT0;
    T0IE = 1;		//;开定时中断
	//;T1---------------------------------------------------------
	//;BUZ输出，产生音乐输出
	//;BUZ输出，产生4KHz
	//;8/2/128 = 32us	125
	//;-----------------------------------------------------------
	TMCR = 0;
   	T1CR = 0x86;
   	T1LOAD = 249;
   	T1DATA = 0;
	//;WDT--------------------------------------------------------
	//;-----------------------------------------------------------
	MCR = 0x80;                    

	KBIM = 0;                      
}
/*;-----------------------------------------------------------
;初始化RAM
;-----------------------------------------------------------*/
void InitalRAM()
{
	/*
	__asm
		movai	0x15
		movra	FSR   
	InitalRAM0:
		clrr	INDF                       
		incr	FSR
		movai	0xc0
		rsubar	FSR
		jbset	Z
		goto	InitalRAM0
	__endasm;
*/
	T1s = 250;

}
//;-----------------------------------------------------------
	
