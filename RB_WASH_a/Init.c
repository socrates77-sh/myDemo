#define  Init_Global
#include "includes.h"

void init(void)
{
	INDF = BIN(0,0,0,0,1,1,0,0);		//  wdt 18*16    Fcpu 4/4
	T0CNT = BIN(1,0,0,0,0,0,0,0);		//设置模拟、数字口
	PDCON = BIN(1,1,1,0,1,0,0,1);		//设置输入输出
	ODCON = BIN(1,1,1,1,1,1,1,1);
	PUCON = BIN(0,0,0,0,0,0,0,0);		//设置加强型驱动
	INTECON = BIN(0,0,0,0,0,0,0,0);		//设置开漏输出
	INTFLAG = BIN(0,0,0,0,0,0,0,0);		//设置下拉电阻
	T0CR =  BIN(0,0,0,0,1,1,0,1);		//设置上拉电阻
	
	DDR0 = BIN(0,1,1,0,0,0,0,0);
	DDR1 = BIN(0,0,0,0,0,0,0,0);
	TMCR = BIN(0,0,0,0,0,0,0,0);
	T1CR = BIN(0,0,1,0,0,0,0,0);
		
	/*
		开启T0 T1定时器中断，T0作为系统时基，T1作为定时器时基
	*/
	T1CNT = BIN(0,0,1,0,0,0,0,1);
	T1LOAD = BIN(0,0,0,0,0,0,0,1);
	T1DATA  = BIN(1,1,0,0,0,0,0,0);
}


void ClrrRAM(void)
{
__asm
	jbclr		STATUS,05h
	movar	0x20
	movra	FSR
	clrr	INDF
	incr	FSR
	movra	0x80
	xorar	FSR
	jbset	STATUS,02h
	goto	$-5
	
	jbclr		STATUS,05h
	movar	0xa0
	movra	FSR
	clrr	INDF
	incr	FSR
	movai	0xc0
	xorar	FSR
	jbset	STATUS,02h
	goto	$-5
	jbclr		STATUS,05h
__endasm;
	
}

