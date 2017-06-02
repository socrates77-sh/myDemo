
#include <mc32p21.h>
#include "CONST.h"
#include "externVar.h"

void InitialSys(void)
{
    OEP0 = 0xff;
    OEP1 = 0xff; // ���÷���
    PUP0 = 0x00;
    PUP1 = 0x00; // ������������
    IOP0 = 0;
    IOP1 = 0;    // ��������
    MCR = 0x05; // �����ⲿ�жϷ�ʽ
    ANSEL = 0x00; // ����IO���Ƿ�Ϊģ������� ��AD��
    T0CR = 0x00; //���ö�ʱ��0
    T1LOAD = 249; // ���ö�ʱ���Լ�PWM����
    T0DATA = 12;
    T1CR = 0x00; // ���ö�ʱ��1
    T1LOAD = 159;
    T1DATA = 25;
    ADCR0 = 0x0f;
    ADCR1 = 0x03; // ѡ��VDD���ο�
     TC0EN = 1;
    T0IE = 1;
    TC1EN = 1;
    PWM0OE = 1;
}
/*;-----------------------------------------------------------
;��ʼ��RAM
;-----------------------------------------------------------*/

/*
void InitalRAM(void)
{
    __asm
        movai   0x12
        movra   FSR0   
    InitalRAM0:
        clrr    INDF0                       
        incr    FSR0
        movai   0xc0
        rsubar  FSR0
        jbset   C
        goto    InitalRAM0
    __endasm;
}*/



