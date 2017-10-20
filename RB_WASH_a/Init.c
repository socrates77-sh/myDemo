#define  Init_Global
#include "includes.h"

void init(void)
{
	INDF = BIN(0,0,0,0,1,1,0,0);		//  wdt 18*16    Fcpu 4/4
	T0CNT = BIN(1,0,0,0,0,0,0,0);		//����ģ�⡢���ֿ�
	PDCON = BIN(1,1,1,0,1,0,0,1);		//�����������
	ODCON = BIN(1,1,1,1,1,1,1,1);
	PUCON = BIN(0,0,0,0,0,0,0,0);		//���ü�ǿ������
	INTECON = BIN(0,0,0,0,0,0,0,0);		//���ÿ�©���
	INTFLAG = BIN(0,0,0,0,0,0,0,0);		//������������
	T0CR =  BIN(0,0,0,0,1,1,0,1);		//������������
	
	DDR0 = BIN(0,1,1,0,0,0,0,0);
	DDR1 = BIN(0,0,0,0,0,0,0,0);
	TMCR = BIN(0,0,0,0,0,0,0,0);
	T1CR = BIN(0,0,1,0,0,0,0,0);
		
	/*
		����T0 T1��ʱ���жϣ�T0��Ϊϵͳʱ����T1��Ϊ��ʱ��ʱ��
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

