
#include <mc32p21.h>
#include "CONST.h"
#include "externVar.h"

void InitialSys(void)
{
    OEP0 = 0xff;
    OEP1 = 0xff; // 设置方向
    PUP0 = 0x00;
    PUP1 = 0x00; // 设置上拉电阻
    IOP0 = 0;
    IOP1 = 0;    // 设置数据
    MCR = 0x05; // 设置外部中断方式
    ANSEL = 0x00; // 设置IO口是否为模拟输入口 做AD用
    T0CR = 0x00; //设置定时器0
    T1LOAD = 249; // 设置定时器以及PWM周期
    T0DATA = 12;
    T1CR = 0x00; // 设置定时器1
    T1LOAD = 159;
    T1DATA = 25;
    ADCR0 = 0x0f;
    ADCR1 = 0x03; // 选择VDD做参考
     TC0EN = 1;
    T0IE = 1;
    TC1EN = 1;
    PWM0OE = 1;
}
/*;-----------------------------------------------------------
;初始化RAM
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



