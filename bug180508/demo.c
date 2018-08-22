#include "mc32p7311.h"
#include       	"VAR.H"
//引脚定义
#define  P_DC  	   	P02D
#define  P_BULE	   	P03D
#define  P_RED 	   	P04D
#define  P_GREEN   	   	P13D
#define  testio    	       	P02D

//寄存器定义
uchar       ABuf,StatusBuf,FSR_TEMP,i;
uchar  	   	Vol_H,Vol_M,Vol_L,Voltage_L,Voltage_M,Voltage_H,ad_cnt,R_changecnt,R_changecnt2;     
uint   	    ADL,R_difference,ADL_old,ADL_old2,temp,ADL_common;                 	
uchar  	   	display_cnt,R_ad_channel,R_Charge_cnt,R_Current_cnt;
uint   	   	ADH_temp,ADL_temp,AD_final,AD_temp;

#define  ON	   	1
#define  OFF   	   	0
/************************************************
函数名:初始化函数
说明:
************************************************/
void  Init_Sys(void)
{
//========= Io初始化 ==============
        OEP0=0xf8;
   	   	OEP1=0xfd;
   	   	IOP0=0x00;
   	   	IOP1=0x00;
   	   	PUP1=0x02;
   	   	PDP1=0x00;
   	   	PDP0=0x00;  
   	   	DRVCR=0x80;    	
//========= 寄存器初始化 ==============
   	   	Voltage_L=8;
   	   	Voltage_M=8;
   	   	Voltage_H=8;    
} 

       
/************************************************
函数名:定时器初始化
说明:
************************************************/
void  Init_timer(void)
{
   	   	T0LOAD  = 0x50;        	//1s检测刷新一次数
        T0CNT   = 0x50;
        T0CR    = 0x97;    	//16us一个指令
        T0IE    = 1;
   	   	T1LOAD  = 0x10;        	//1ms刷新一段
        T1CNT   = 0x10;
        T1CR    = 0x84;    	
        T1IE    = 1;        
        GIE     = 1;   	   	//1开总中断    	   	       	    
}

/************************************************
函数名:RAM初始化程序
说明:
************************************************/
void  Clr_Ram(void)
{
       	__asm
ClrRam:
       	movai  	0x00
       	;movra  	FSR

ClrRam_Loop:
       	;clrr   	INDF
   	   	;incr    FSR
   	   	movai  	0xff
       	;rsubar 	FSR    	       	       	
       	movra  	_FSR_TEMP
       	incr   	_FSR_TEMP
       	djzr   	_FSR_TEMP      	       	
       	goto   	ClrRam_Loop
       	       	
    __endasm;
}
/************************************************
函数名:判断电源有没有接入
说明:
************************************************/
void  DC_DET(void)
{
   	if(Device_flag==0)
   	{
   	   	if(P_DC==0)
   	   	{
   	   	   	Voltage_flag=1;
   	   	   	Device_flag=0;
   	   	   	Current_flag=0;
   	   	   	R_Charge_cnt=0;
   	   	}
   	   	else
   	   	{
   	   	   	Device_flag=1;
   	   	}
   	}
   	else
   	{
   	   	Voltage_flag=0;
   	   	R_Charge_cnt++;
   	   	if(R_Charge_cnt>6)
   	   	{
   	   	   	R_Charge_cnt=0;
   	   	   	Current_flag=1;
   	   	}
   	   	if(Current_flag)
   	   	{
   	   	   	if(P_DC==0)
   	   	   	{
   	   	   	   	Device_flag=0;
   	   	   	   	R_Charge_cnt=0;
   	   	   	}
   	   	}
   	}
}
/************************************************
函数名:AD初始化函数
说明:全部是4V基准
************************************************/
void  Charge_AD(void)
{
   	   	ANSEL0=0x02;
        ADCR0=0x19;
   	   	ADCR1=0xe2; 
   	   	ADCR2=0x0f;    	   	   	   	       	    
}
void  Voltage_AD(void)
{
   	   	ANSEL0=0x00;
        ADCR0=0xb9;
   	   	ADCR1=0xe2; 
   	   	ADCR2=0x0f;    	   	   	   	       	    
}
void  Current_AD(void)
{
   	   	ANSEL0=0x01;
        ADCR0=0x09;
   	   	ADCR1=0xe2; 
   	   	ADCR2=0x0f;    	   	   	   	       	    
}
/************************************************
函数名: 电压采集
说明: 几个脚的采集都是标准的
************************************************/ 
void AD_process()
{
   	ADL_common=0;
   	ad_cnt=0;
   	for(ad_cnt;ad_cnt<2;ad_cnt++)//更换通道前两次丢掉
   	{
   	   	if(ADEOC)
   	   	{
   	   	ADEOC=0;
   	   	ADIF=0;
   	   	}  	  
   	}
   	ad_cnt=0;
   	for(ad_cnt;ad_cnt<8;ad_cnt++)//8*16次，保存10位
   	{
   	   	ADH_temp=0;
   	   	ADL_temp=0;
   	   	AD_final=0;
   	   	AD_temp=0;
   	   	i=0;
   	   	for(i;i<16;i)
   	   	{
   	   	if(ADEOC)
   	   	{
   	   	ADEOC=0;
   	   	ADIF=0;        	   	   	
   	   	ADH_temp=ADRH;
   	   	ADL_temp=ADRL;
   	   	ADH_temp=ADH_temp<<4;
   	   	AD_temp=ADH_temp+ADL_temp;
   	   	AD_final=AD_temp+AD_final;
   	   	i++;
   	   	}
   	   	} 
   	AD_final=AD_final>>6;
   	AD_final=AD_final&0x3ff;   	
   	ADL_common=AD_final+ADL_common;
   	}      	
   	ADL=ADL_common>>3;
}
/************************************************
函数名: 实际电压采集
说明: 
************************************************/ 
void Voltage_process()
{
//47k对1.98k    	   	
   	//ADL=ADL+1;
   	ADL=ADL/5;
}
/************************************************
函数名: 充电电压采集
说明: 例如5.2V,小数点后面保留1位，所以计数扩大10呗
************************************************/ 
void Charge_process()
{
//100K,100K 
   	   	ADL=ADL*5; 	
   	ADL=ADL>>6;
}
/************************************************
函数名: 电流采集
说明: 
************************************************/ 
void Current_process()
{
//0.05R    	
   	ADL=ADL*5; 	
   	ADL=ADL>>5;
}

/************************************************
函数名: 数码管显示计算
说明: 
************************************************/ 
void Current_Data_process()
{
   	if(ADL_old>ADL)
   	{
   	   	R_difference=ADL_old-ADL;
   	   	F_plus=0;      	   	   	
   	}
   	else 
   	{
   	   	R_difference=ADL-ADL_old;
   	   	F_plus=1;   
   	}
   	if(R_difference==0)
   	{
   	   	R_changecnt=0; 	   	
   	}
   	else if(R_difference<2)
   	{
   	   	R_changecnt++;
   	   	if(R_changecnt>5)
   	   	{
   	   	   	R_changecnt=0;
   	   	   	ADL_old=ADL;
   	   	}
   	   	else
   	   	{
   	   	   	ADL=ADL_old;
   	   	}      	   	
   	}
   	else if(R_difference<6)
   	{
   	   	   	R_changecnt=0;
   	   	if(F_plus)
   	   	{
   	   	   	ADL=ADL_old++;
   	   	}
   	   	else
   	   	{
   	   	   	ADL=ADL_old--;
   	   	}

   	}      	
   	else 
   	{
   	   	R_changecnt=0;
   	   	ADL_old=ADL;
   	}
   	ADL_old=ADL;
}
/************************************************
函数名: 数码管显示计算
说明: 
************************************************/ 
void Voltage_Data_process()
{
   	if(ADL_old2>ADL)
   	{
   	   	R_difference=ADL_old2-ADL;
   	   	F_plus=0;      	   	   	
   	}
   	else 
   	{
   	   	R_difference=ADL-ADL_old2;
   	   	F_plus=1;   
   	}
   	if(R_difference==0)
   	{
   	   	R_changecnt2=0;    	   	
   	}
   	else if(R_difference<2)
   	{
   	   	R_changecnt2++;
   	   	if(R_changecnt2>5)
   	   	{
   	   	   	R_changecnt2=0;
   	   	   	ADL_old2=ADL;
   	   	}
   	   	else
   	   	{
   	   	   	ADL=ADL_old2;
   	   	}      	   	
   	}
   	else if(R_difference<6)
   	{
   	   	   	R_changecnt2=0;
   	   	if(F_plus)
   	   	{
   	   	   	ADL=ADL_old2++;
   	   	}
   	   	else
   	   	{
   	   	   	ADL=ADL_old2--;
   	   	}

   	}      	
   	else 
   	{
   
   	   	R_changecnt2=0;
   	   	ADL_old2=ADL;
   	}
   	ADL_old2=ADL;
}
/************************************************
函数名: 数据处理
说明: 
************************************************/
void Voltage_Data()
{
   	;
}
/************************************************
函数名: 数据处理
说明: 
************************************************/
void Current_Data()
{
   	if(ADL<4)
   	{
   	   	ADL=0;
   	   	R_Current_cnt++;
   	   	if(R_Current_cnt>4)
   	   	{
   	   	   	R_Current_cnt=0;
   	   	   	F_Current_0=1;
   	   	}
   	   	
   	}
   	else
   	{
   	   	   	R_Current_cnt=0;
   	   	F_Current_0=0;
   	}
}
/************************************************
函数名: 数据处理
说明: 
************************************************/
void Charge_Data()
{
   	   	;
}
/************************************************
函数名: 数码管显示计算
说明: 
************************************************/ 
void Display_count()
{
//数码管显示处理
   	Vol_L=0;
   	Vol_M=0;
   	Vol_H=0;
       	for(ADL;ADL>0;ADL--)
       	{
       	   	Vol_L++;
       	   	if(Vol_L==10)
       	   	{
   	   	   	   	Vol_L=0;
       	   	   	Vol_M++;
       	   	   	if(Vol_M==10)
       	   	   	{
   	   	   	   	   	Vol_M=0;
       	   	   	   	Vol_H++;   	   	   	   	   	   	
   	   	   	   	   	   	   	   	   	   	
       	   	   	}
       	   	}
       	}      	
    if(Current_flag&&(F_Current_0==0))
    {
       	{
       	Voltage_L=10;
       	Voltage_M=Vol_L;
   	   	Voltage_H=Vol_M;
   	  }
    } 
    else
    {
       	Voltage_L=Vol_L;
   	   	Voltage_M=Vol_M;
   	   	Voltage_H=Vol_H;
    }      	   	
}
/************************************************
函数名: 数码管显示
说明: 
************************************************/ 
void Display_led()
{      	
   	if(Voltage_L==1){ValueL_1;}            	
   	if(Voltage_L==2){ValueL_2;} 
   	if(Voltage_L==3){ValueL_3;}        	
   	if(Voltage_L==4){ValueL_4;}        	
   	if(Voltage_L==5){ValueL_5;}        	
   	if(Voltage_L==6){ValueL_6;}        	
   	if(Voltage_L==7){ValueL_7;}        	
   	if(Voltage_L==8){ValueL_8;}        	
   	if(Voltage_L==9){ValueL_9;}    	
   	if(Voltage_L==0){ValueL_0;}    	
   	if(Voltage_L==10){ValueL_A;} 
   	   	   	
   	if(Voltage_M==1){ValueM_1;}        	
   	if(Voltage_M==2){ValueM_2;} 
   	if(Voltage_M==3){ValueM_3;}        	
   	if(Voltage_M==4){ValueM_4;}        	
   	if(Voltage_M==5){ValueM_5;}        	
   	if(Voltage_M==6){ValueM_6;}        	
   	if(Voltage_M==7){ValueM_7;}        	
   	if(Voltage_M==8){ValueM_8;}        	
   	if(Voltage_M==9){ValueM_9;}    	
   	if(Voltage_M==0){ValueM_0;}    	   	   	
   	   	
   	if(Voltage_H==1){ValueH_1;}        	
   	if(Voltage_H==2){ValueH_2;} 
   	if(Voltage_H==3){ValueH_3;}        	
   	if(Voltage_H==4){ValueH_4;}        	
   	if(Voltage_H==5){ValueH_5;}        	
   	if(Voltage_H==6){ValueH_6;}        	
   	if(Voltage_H==7){ValueH_7;}        	
   	if(Voltage_H==8){ValueH_8;}        	
   	if(Voltage_H==9){ValueH_9;}
   	if(Current_flag&&(F_Current_0==0))
   	{
   	   	if(Voltage_H==0){ValueH_00;}
   	}
   	else
   	{
   	   	if(Voltage_H==0){ValueH_0;}
   	}      	
       	   	
}
/************************************************
函数名: 指示灯显示
说明: 
************************************************/ 
void LED_state()
{
   	if((ADL>148)||(ADL<109))
   	{
   	   	P_GREEN=ON;
   	   	P_BULE=OFF;
   	   	F_flash=1; 	
   	}
   	else if(ADL>131)
   	{
   	   	P_BULE=OFF;
   	   	P_RED=OFF;
   	   	P_GREEN=OFF;
   	   	F_flash=0; 	
   	}
   	else if(ADL>118)
   	{
   	   	P_GREEN=ON;
   	   	P_RED=OFF;
   	   	P_BULE=ON;
   	   	F_flash=0; 	
   	}
   	else if(ADL>108)
   	{
   	   	P_BULE=OFF;
   	   	P_GREEN=ON;
   	   	P_RED=ON;
   	   	F_flash=0; 	
   	}
   	else
   	{
   	   	;
   	}
}
/************************************************
函数名: 数码管显示
说明: 
************************************************/ 
void Display_delay(uint delay1)
{
       	for(temp=0;temp<delay1;temp++)
       	 {
       	       	  ;
       	 } 	
}
       	
/************************************************
函数名:主函数
说明:
************************************************/
void main()
{      	                 
       	Clr_Ram(); 
       	Init_Sys();
       	Display_led();
   	   	Init_timer();
   	   	
       	while(1) 
       	{
       	   	if(F_1S)
       	   	{
       	   	   	F_1S=0;
       	   	   	DC_DET();      	
   	   	   	if(Voltage_flag)       	   	  
   	   	   	{
   	   	   	   	   	R_Current_cnt=0;
   	   	   	   	   	   	F_Current_0=0;
   	   	   	   	Voltage_AD();
   	   	   	   	AD_process();
   	   	   	   	Voltage_process();  
       	   	   	   	Voltage_Data_process();
       	   	   	   	Voltage_Data();
       	   	   	   	LED_state();
       	   	   	   	Display_count();           	   	
           	   	   	Display_led();
   	   	   	}
   	   	   	else
   	   	   	{
   	   	   	   	if(Current_flag)
   	   	   	   	{
   	   	   	   	   	R_ad_channel++;
   	   	   	   	   	if(R_ad_channel<3)
   	   	   	   	   	{
   	   	   	   	   	   	Current_AD();
   	   	   	   	   	   	AD_process();
   	   	   	   	   	   	Current_process();  
       	   	   	   	   	   	Current_Data_process();
       	   	   	   	   	   	Current_Data();
       	   	   	   	   	   	if(F_Current_0==0)
       	   	   	   	   	   	{
           	   	   	   	   	   	Display_count();           	   	
           	   	   	   	   	   	Display_led();
       	   	   	   	   	}
       	   	   	   	}
       	   	   	   	else
       	   	   	   	{
       	   	   	   	   	Voltage_AD();
       	   	   	   	   	R_ad_channel=0;
       	   	   	   	   	AD_process();
   	   	   	   	   	   	Voltage_process();  
       	   	   	   	   	   	Voltage_Data_process();
       	   	   	   	   	   	Voltage_Data();
       	   	   	   	   	   	LED_state();
       	   	   	   	   	   	if(F_Current_0)
       	   	   	   	   	   	{
           	   	   	   	   	   	Display_count();           	   	
           	   	   	   	   	   	Display_led();
           	   	   	   	   	}
       	 
       	   	   	   	}
   	   	   	   	}
       	   	   	   	else
       	   	   	   	{
       	   	   	   	   	Charge_AD();
       	   	   	   	   	AD_process();  
       	   	   	   	   	Charge_process();
       	   	   	   	   	Voltage_Data_process();
       	   	   	   	   	Charge_Data();
       	   	   	   	   	Display_count();           	   	
           	   	   	   	Display_led();
       	   	   	   	}
   	   	   	}
   	   	  }
   	   	}
}
   	       	       	       	       	       	


/************************************************
函数名:中断程序
说明:
************************************************/
void int_isr(void) __interrupt
{
       	__asm
       	       	movra   _ABuf
       	       	swapar  _PFLAG
       	       	movra   _StatusBuf
       	__endasm;
//========= T0/T1中断 ==============     	
       	if(T0IF)
       	{      	       	
       	   	T0IF  = 0;
       	   	F_1S=1;  
       	   	if(F_flash)
       	   	{
       	   	   	P_RED=!P_RED;  	   
       	   	}          	       	
       	}
       	if(T1IF)
       	{
       	   	T1IF  = 0;
   	   	   	OEP1&=0x08;
   	   	   	IOP1&=0x08;
       	   	display_cnt++;
       	if(display_cnt==1)
       	{
       	   	if(Flag_l0){ValueL_A1;}        	   	
       	}
       	if(display_cnt==2)
       	{
       	   	if(Flag_l1){ValueL_B1;}        	   	
       	}
       	if(display_cnt==3)
       	{
       	   	if(Flag_l2){ValueL_C1;}        	   	
       	}
       	if(display_cnt==4)
       	{
       	   	if(Flag_l3){ValueL_D1;}        	   	
       	}
       	if(display_cnt==5)
       	{
       	   	if(Flag_l4){ValueL_E1;}        	   	
       	}
       	if(display_cnt==6)
       	{
       	   	if(Flag_l5){ValueL_F1;}        	   	
       	}
       	if(display_cnt==7)
       	{
       	   	if(Flag_l6){ValueL_G1;}        	   	
       	}          	
       	if(display_cnt==8)
       	{
       	   	if(Flag_m0){ValueM_A2;}        	   	
       	}
       	if(display_cnt==9)
       	{
       	   	if(Flag_m1){ValueM_B2;}        	   	
       	}
       	if(display_cnt==10)
       	{
       	   	if(Flag_m2){ValueM_C2;}        	   	
       	}
       	if(display_cnt==11)
       	{
       	   	if(Flag_m3){ValueM_D2;}        	   	
       	}
       	if(display_cnt==12)
       	{
       	   	if(Flag_m4){ValueM_E2;}        	   	
       	}
       	if(display_cnt==13)
       	{
       	   	if(Flag_m5){ValueM_F2;}        	   	
       	}
       	if(display_cnt==14)
       	{
       	   	if(Flag_m6){ValueM_G2;}        	   	
       	}
       	if(display_cnt==15)
       	{
       	   	if((Current_flag==0)||F_Current_0)
   	   	   	{ValueM_DP2;}          	   	
       	}          	
       	
       	if(display_cnt==16)
       	{
       	   	if(Flag_h0){ValueH_A3;}        	   	
       	}
       	if(display_cnt==17)
       	{
       	   	if(Flag_h1){ValueH_B3;}        	   	
       	}
       	if(display_cnt==18)
       	{
       	   	if(Flag_h2){ValueH_C3;}        	   	
       	}
       	if(display_cnt==19)
       	{
       	   	if(Flag_h3){ValueH_D3;}        	   	
       	}
       	if(display_cnt==20)
       	{
       	   	if(Flag_h4){ValueH_E3;}        	   	
       	}
       	if(display_cnt==21)
       	{
       	   	if(Flag_h5){ValueH_F3;}        	   	
       	}
       	if(display_cnt==22)
       	{
       	   	if(Flag_h6){ValueH_G3;}        	   	
       	}
       	if(display_cnt==23)
       	{
       	   	if(Current_flag&&(F_Current_0==0))
   	   	   	{
   	   	   	   	ValueH_DP3;        	   	   	   	
   	   	   	}
   	   	   	display_cnt=0;             	   	
       	}          	   	

       	}
//========= 外部中断 ==============

       	__asm
       	       	swapar  _StatusBuf
       	       	movra   _PFLAG
       	       	swapr   _ABuf
       	       	swapar  _ABuf
       	__endasm;
}