#include"mc30p6080_1.h"
#define  CHRG      P16D
#define  STDBY     P17D
#define  KEY1      P15D
#define  LED       P10D
#define  LED1      P00D
#define  LED2      P02D
#define  KEY2      P14D
#define  BZV       P12D
#define  OUT       P11D

typedef  struct
{
    unsigned char  bit0         : 1;
    unsigned char  bit1         : 1;
    unsigned char  bit2         : 1; 
    unsigned char  bit3         : 1;
    unsigned char  bit4         : 1; 
    unsigned char  bit5         : 1; 
    unsigned char  bit6         : 1;     
    unsigned char  bit7         : 1;     
} bitn;
volatile bitn  Flag;
volatile bitn  Flag1;
#define   flag_pwm       Flag.bit0
#define   flag_640us     Flag.bit1
#define   flag_kai       Flag.bit2
#define   FLAG_CHANGE    Flag.bit3
#define   FLAG_SOUND     Flag.bit4
#define   flag_256us     Flag.bit5     	   
#define   FLAG_1       	 Flag.bit6
#define	  FLAG_2       	       	 Flag.bit7

#define	       	FALG_LVD       	       	Flag1.bit0
#define	       	flag_cd        	       	Flag1.bit1
volatile    unsigned int timcd;


unsigned char ABuf,StatusBuf;
unsigned char work,soudbuff,buff;
unsigned int  time,time1,zstime,wxbuff,KeyBuff;
void Sys_Init(void)            	 
{
       	P1 = 0;
       	DDR0 = 0xfa;//1111 1010
       	DDR1 = 0xf8;//1111 1000   
       	PUCON=0x07;//0000 0111
       	PDCON = 0xff;
       	ODCON = 0;
       	
       	T0CR = 0x02;//1/4m*8*2 = 4us
       	TM0CR = 0x00; 
       	T0CNT = 96;    	               	
       	KBIM = 0;
       	T0IE = 1;
    INTFLAG = 0;
       	GIE = 1;
       	MCR = 0x39;//001 1100 1

       	T1CR = 0xc2;//1100 0100 1/4*16*2 = 8us         	
       	T1LOAD = 128; 
       	T1IE = 1;
       	timcd = 0;     	       	       	   
}

void int_isr(void) __interrupt
{      	
       	
    __asm
    movra     _ABuf
    swapar    _STATUS
    movra     _StatusBuf
    __endasm;     
    //===============TIMER0===============
    if(T0IF)
    {//640us
       	T0IF = 0;
       	       	T0CNT = 96;   
       	       	if((!CHRG)&&STDBY)
       	       	{      	       	       	       	       	       	
       	       	       	timcd++;
       	       	       	if(timcd<3900)
       	       	       	{      	
       	       	       	   flag_cd = 1;   
       	       	       	}      	       	
       	       	       	else
       	       	       	{
       	       	       	       	timcd = 3900;
       	       	       	       	flag_cd = 0;
       	       	       	}      	       	       	       	       	       	
       	       	       	LED1 = 1;
       	       	       	LED2 = 0;
       	       	       	LVDEN = 1;
       	       	       	FALG_LVD = 0;
       	       	}
       	       	else if((!STDBY)&&CHRG)
       	       	{      	       	       	       	       	       	       	       	       	
       	       	       	LED1 = 0;
       	       	       	LED2 = 1;   
       	       	       	FALG_LVD = 0;LVDEN = 1;        	       	
       	       	}
       	       	else 
       	       	{
       	       	       	timcd = 0;
       	       	       	flag_cd = 0;           	       	
       	    if(flag_kai || FLAG_SOUND) 
               	{      	       	       	       	       	       	
       	       	       	zstime++;
       	       	       	if(LVDF)
       	       	       	{
       	       	       	       	FALG_LVD = 1;
       	       	       	       	LVDEN = 0;     	       	       	       	
       	       	       	}
               	       	if(FALG_LVD)
               	       	{
               	       	       	LED2 = 0;
               	       	       	if(zstime>=3125)zstime = 0;
               	       	       	if(zstime<1562)LED1 = 1;       	       	       	       	       	       	       	       	
               	       	       	else LED1 = 0; 
               	       	}
               	       	else 
               	       	{
               	       	       	LED1 = 0;
               	       	       	if(zstime>=4688)zstime = 0;
               	       	       	if(zstime<2344)LED2 = 1;       	       	       	       	       	       	       	       	       	       	       	       	       	 
               	       	       	else LED2 = 0; 
               	       	}
       	       	       	
               	}
       	       	}
       	       	
       	       	
       	       	if(!flag_cd)
       	       	{
       	       	if(!KEY2)
            {
       	       	       	buff++;
               	if(buff>47)
               	{  
       	       	       	       	buff = 48;
       	       	       	       	FLAG_SOUND = 1;                	       	       	       	       	       	
               	       	       	flag_640us = 1;
       	       	       	       	time1++;
       	       	       	       	if(time1>13594)
       	       	       	       	{
       	       	       	       	       	time1 = 13594;
       	       	       	       	       	FLAG_1 = 0;
       	       	       	       	       	FLAG_2 = 1;
       	       	       	       	}
       	       	       	       	else if(time1<6797)
       	       	       	       	{
       	       	       	       	       	FLAG_1 = 0;
       	       	       	       	       	FLAG_2 = 0;
       	       	       	       	}
       	       	       	       	else
       	       	       	       	{
       	       	       	       	       	FLAG_1 = 1;
       	       	       	       	       	FLAG_2 = 0;
       	       	       	       	}      	       	       	       	       	       	       	 
               	       	       	time++;        	       	       	       	
               	       	if(time>212)time = 0;
               	       	else if(time<106)LED = 1;
               	       	else LED = 0;          	       	
               	       	OUT = 0;       	       	       	       	               	       	       	       	       	       	       	       	       	       	               	       	               	  
       	       	       	}              	
       	       	}      	       	
       	       	else
            { 
       	       	       	if(soudbuff == 1)time1 = 0;
               	       	else if(soudbuff == 2)time1 = 6797;                    	       	       	       	       	               	
               	buff = 0;
       	       	       	FLAG_SOUND = 0;        	       	       	
               	OUT = 1;       	       	       	               	
               	time = 0;
       	       	       	if(!flag_kai)LED = 0;
               	BZV = 0;
       	       	       	T1DATA0 = 0;           	       	       	       	       	       	       	       	               	       	
            }
       	       	}      	       	       	       	       	       	       	       	       	       	       	       	       	       	
       	}
       	if(T1IF)
       	{//256us
       	       	T1IF = 0;
       	       	flag_pwm = 1;
       	       	if(!FLAG_SOUND)
       	       	{
       	       	       	flag_256us = 1;        	       	       	       	
       	       	wxbuff++; 
       	       	if(wxbuff>19531)wxbuff = 19531;
       	       	       	if(!flag_cd)
       	       	       	{              	       	       	       	       	       	       	       	
               	       	if(!KEY1)
               	       	{      	       	       	       	       	   
               	       	       	KeyBuff++;
               	       	       	if(KeyBuff>=5859&&KeyBuff<6000)  // ³¤°´1.5Ãë
               	       	       	{
               	       	       	       	flag_kai = 0;
               	       	       	       	work = 1;      	       	       	       	
               	       	       	       	KeyBuff = 6000;
               	       	       	       	wxbuff = 0;
               	       	       	       	FLAG_CHANGE = 1;
               	       	       	} 
               	       	       	if(KeyBuff>7000)KeyBuff = 7000;        	       	       	
               	       	 }
               	       	 else
               	       	 {     	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	   
               	       	       	if(KeyBuff>118&&KeyBuff<5859)
               	       	       	{
               	       	       	       	if(!flag_kai)
               	       	       	       	{ 
               	       	       	       	       	flag_kai = 1;          	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	               	       	       	       	       	 
               	       	       	       	}
               	       	       	       	else
               	       	       	       	{
               	       	       	       	       	if(wxbuff<11719)
               	       	       	       	       	{
               	       	       	       	       	       	work++;
               	       	       	       	       	       	if(work>6)work=1;
               	       	       	       	       	       	FLAG_CHANGE = 1;
               	       	       	       	       	}
               	       	       	       	       	else
               	       	       	       	       	{
               	       	       	       	       	       	flag_kai = 0;
               	       	       	       	       	       	FLAG_CHANGE = 1;
               	       	       	       	       	}      	       	       	       	       	
               	       	       	       	}
               	       	       	       	wxbuff = 0; 
               	       	       	}      	       	       	       	
               	       	   KeyBuff=0;          	       	       	   
               	       	}
       	       	       	}
       	       	}      	       	       	
       	}              	    
    __asm
    swapar    _StatusBuf
    movra     _STATUS
    swapr     _ABuf
    swapar    _ABuf
    __endasm;
}
void delay640us(unsigned int i1)
{
		unsigned int i;
		i = i1;
       	while(i--)
       	{
       	       	while(!flag_640us)
       	       	{
       	       	       	if(!FLAG_SOUND) return;
       	       	}      	
       	       	flag_640us=0;
       	}
}
unsigned char const SY1[12]=
{
       	154,64,
       	139,54,
       	118,46,
       	103,37,
       	82,28,
       	141,77         	
};
void SY_1(void)
{
       	unsigned char i;
       	i = 0;
       	T1CR = 0xc3;//1/4*8*2 = 4us
       	while(1)
       	{
       	       	
       	       	T1LOAD = SY1[i];
       	       	T1DATA0 = SY1[i+1];
       	       	while(!flag_pwm);
       	       	flag_pwm = 0;
       	       	i += 2;
       	       	if(i>10)i = 0;
       	       	if(!FLAG_SOUND)return;
       	       	if(FLAG_1)
       	       	{
       	       	       	soudbuff = 2;
       	       	       	return;
       	       	}
       	}
}
unsigned char const SY2[10]=
{
       	218,24,
       	57,24,
       	216,183,
       	57,24,
       	59,25          	
};
void SY_2(void) 
{
       	unsigned char i;
       	i = 0;
       	T1CR = 0xc4;//1/4*8*2 = 8us
       	while(1)
       	{
       	       	T1LOAD = SY2[i];
       	       	T1DATA0 = SY2[i+1];
       	       	while(!flag_pwm);
       	       	flag_pwm = 0;
       	       	i += 2;
       	       	if(i>8)i = 0;
       	       	if(!FLAG_SOUND)return;
       	       	if(FLAG_2)
       	       	{
       	       	   soudbuff = 3;
       	       	       	return;
       	       	}
       	}
}
void mod3(void)
{      	  
       	unsigned char i;       	
       	for(i=0;i<46;i++)
       	{
       	       	T1LOAD = 32;
        T1DATA0 = 16;
        while(T1LOAD<52)
        {
            T1LOAD++;
            T1DATA0 = T1LOAD>>1;       	       	       	
            delay640us(4);
       	       	       	if(!FLAG_SOUND)return;
        }
       	       	T1LOAD = 52;
       	       	T1DATA0 = 26;
       	while(T1LOAD>32)
       	{
            T1LOAD--;
            T1DATA0 = T1LOAD>>1;       	       	       	
            delay640us(4);
       	       	       	if(!FLAG_SOUND)return;
       	}        
       	} 
       	soudbuff = 4;          	
}
void mod4(void)
{      	
       	T1LOAD = 44;
    T1DATA0 = 22;      	
       	delay640us(6797);
       	if(!FLAG_SOUND)return;
       	soudbuff = 5;          	       	       	
}
void mod5(void)
{      	
       	unsigned char i;       	
       	for(i=0;i<181;i++)
       	{      	       	
        T1LOAD = 32;
        T1DATA0 = 16;
        while(T1LOAD<52)
        {
            T1LOAD++;
            T1DATA0 = T1LOAD>>1;       	       	       	
            delay640us(1);
       	       	       	if(!FLAG_SOUND)return;
        }
       	       	T1LOAD = 52;
       	       	T1DATA0 = 26;
       	while(T1LOAD>32)
       	{
            T1LOAD--;
            T1DATA0 = T1LOAD>>1;       	       	       	
            delay640us(1);
       	       	       	if(!FLAG_SOUND)return;
       	}
       	}
       	time1 = 0;
       	soudbuff = 1;          	
}
void IC_SLEEP(void)
{
       	GIE = 0;
       	T0IE = 0;
       	T1IE = 0;
       	INTIE = 0;
       	KBIM = 0xf0;//12
       	KBIE = 1;
       	INTFLAG = 0;
       	LVDEN = 0;
       	P1 = P1;
       	__asm
       	STOP
       	__endasm;
       	LVDEN = 1; 
       	KBIE = 0;
       	KBIM = 0;
       	INTFLAG = 0;
       	T0IE = 1;
       	T1IE = 1;
       	       	FALG_LVD = 0;
       	GIE = 1;
}
unsigned char sleeptime;
unsigned int tne5,tne6;
void main()
{   
    Sys_Init();
       	flag_256us = 0;        	               	 
       	LED = 0;
       	T1DATA2 = 0;
       	T1DATA0 = 0;
       	tne5 = 0;
       	tne6 = 0;
       	BZV = 0;
       	OUT = 1;
       	flag_pwm = 0;     
       	FLAG_SOUND = 0;        	
       	soudbuff = 1;
       	flag_640us = 0;
    time1 = 0; 
       	zstime = 0;
       	work = 1;
       	LED1 = 0;
       	LED2 = 0;
       	flag_kai = 0;     
       	LVDEN = 1;      
       	FALG_LVD = 0;
       	flag_cd = 0;           	       	
       	while(1)
       	{      	       	       	       	       	       	       	       	       	       	               	       	       	   
       	       	if(FLAG_SOUND)
       	       	{
       	       	       	PWMCR = 0x00;
       	       	       	if(soudbuff == 1)
       	       	       	{
       	       	       	       	SY_1();        	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	    
       	       	       	}
       	       	       	else if(soudbuff == 2)
       	       	       	{      	       	       	       	       	       	       	       	
       	       	       	       	SY_2();        	       	       	       	       	       	       	       	       	       	       	       	    
       	       	       	}
       	       	       	else if(soudbuff == 3)
       	       	       	{
       	       	       	       	T1CR = 0xc4;
       	       	       	       	mod3();        	       	       	       	
       	       	       	}
       	       	       	else if(soudbuff == 4)
       	       	       	{
       	       	       	       	T1CR = 0xc4;
       	       	       	       	mod4();        	       	       	       	       	       	       	       	
       	       	       	}
       	       	       	else if(soudbuff == 5)
       	       	       	{ 
       	       	       	       	T1CR = 0xc4;           	       	       	       	
       	       	       	       	mod5();        	       	       	       	       	       	       	       	
       	       	       	}      	       	       	       	       	       	       	       	       	       	       	       	
       	       	}
       	       	else
       	       	{
       	       	       	T1CR = 0xc2;//1100 0100 1/4*16*2 = 8us         	       	       	
       	       	       	T1LOAD = 128;
       	       	       	PWMCR = 0xa1;
       	       	FLAG_CHANGE = 0;       	       	
       	       	if(!flag_kai)
       	       	{
       	       	       	T1DATA2 = 0;           	       	       	       	       	       	       	               	       	       	
       	       	       	zstime = 0;
               	       	       	if(KEY1 && KeyBuff == 0&&KEY2&&buff == 0&&CHRG&&STDBY)
               	       	       	{      	       	       	       	       	       	
               	       	       	       	if(flag_256us)
               	       	       	       	{
               	       	       	       	       	flag_256us = 0;
       	       	       	       	       	       	       	LED1 = 0;
       	       	       	       	       	       	LED2 = 0; 
               	       	       	       	sleeptime++;
               	       	       	       	if(sleeptime>250)
               	       	       	       	{
               	       	       	       	       	sleeptime = 251;
               	       	       	       	       	IC_SLEEP();
               	       	       	       	}
               	       	       	       	}
               	       	       	}  
       	       	       	       	       	else sleeptime = 0;    	       	       	
       	       	}
       	       	else
       	       	{ 
       	       	       	sleeptime = 0;         	       	       	
               	       	if(work == 1)T1DATA2 = 128;
               	       	else if(work == 2)T1DATA2 = 64;
               	       	else if(work == 3)T1DATA2 = 26;
               	       	else if(work == 4)T1DATA2 = 6;
               	       	else if(work == 5)
               	       	{
       	       	       	       	       	tne6 = 0;
       	       	       	       	       	if(flag_256us)
       	       	       	       	       	{
       	       	       	       	       	       	flag_256us = 0;
       	       	       	       	       	       	tne5++;
       	       	       	       	       	       	if(tne5>1704)tne5 = 0;
       	       	       	       	       	       	else if(tne5<852)
               	       	       	T1DATA2 = 96;                  	       	       	       	       	       	       	       	
               	       	       	else T1DATA2 = 0;                      	       	       	
       	       	       	       	       	}      	       	       	       	       	
               	       	}
               	       	else if(work == 6)
               	       	{
       	       	       	       	       	tne5 = 0;
       	       	       	       	       	if(flag_256us)
       	       	       	       	       	{
       	       	       	       	       	       	flag_256us = 0;
       	       	       	       	       	       	tne6++;
       	       	       	       	       	       	if(tne6>532)tne6 = 0;
       	       	       	       	       	       	else if(tne6<266)
               	       	       	T1DATA2 = 96;                  	       	       	       	       	       	       	       	
               	       	       	else T1DATA2 = 0;                      	       	       	
       	       	       	       	       	}              	       	       	       	       	       	       	       	
               	       	}
       	       	}
       	       	}      	       	       	       	       	       	       	       	       	
       	}
}







