
  /*****************************************************************************
  * @file    DemoRoutine
  * @author  Sinomcu Team
  * @version V1.0
  * @date    2016-06-22
  * @brief   function  name
  ******************************************************************************
  * @attention   
  *  platform:sinomcu MC30P6080
  *  web: www.sinimcu.com
  *
  *****************************************************************************/

#include "MC30P6060.h"
#include  "const.h"
#include  "var.h"
//#include "HT_1.c"

const uchar Tab_data[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data1[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data2[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data3[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data4[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data5[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data6[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data7[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data8[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data9[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data10[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
const uchar Tab_data11[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
//const uchar Tab_data12[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};
//uchar Tab_data13[20]={1,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34,23,9,17,34};

//=====================================我的数据区
uchar iic_data;
//uchar iic_data2;

//=====================================IIC函数声明
//void I2C_delay(void);
//void I2C_Start(void);
//void I2C_Stop(void);
//void I2C_Ack(void);
//void I2C_NoAck(void);
//void I2C_SendByte(uchar SendByte);
//uchar I2C_ReceiveByte();
//void IIC_write_onebyte(uchar write_add,uchar write_data);
//void IIC_read_onebyte(uchar read_add);


//===以100uS为采样基准解码=====================
void Ir_Decode(void)
{
   	if(F_irokflag==0)      
   	{
   	   	if(F_irflag==0)      
   	   	{
   	   	   	if(IR_read==0)      
   	   	   	{
   	   	   	   	F_irflag = 1;
   	   	   	   	F_leadflag=0;
   	   	   	   	F_hlflag = 0;//电平状态,低电平为0
   	   	   	   	//R_irtimes,R_irbytes,R_irdata,R_ircount
   	   	   	   	R_irtimes = 0;
   	   	   	   	R_irbytes = 0;
   	   	   	   	R_irdata  = 0;
   	   	   	   	R_ircount = 0;          
   	   	   	}      
   	   	}
   	   	//有红外信号，开始解码
   	   	else
   	   	{
   	   	   	if(F_leadflag==0)     
   	   	   	{
   	   	   	   	if(F_hlflag==0)
   	   	   	   	{
   	   	   	   	   	R_ircount++;
   	   	   	   	   	if(R_ircount<100) 
   	   	   	   	   	{ 
   	   	   	   	   	   	if(IR_read==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	if(R_ircount>60)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	R_ircount = 0;
   	   	   	   	   	   	   	   	F_hlflag  = 1; 
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	}
   	   	   	   	   	} 
   	   	   	   	   	else
   	   	   	   	   	   	F_irflag=0; 
   	   	   	   	} 
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	R_ircount++; 
   	   	   	   	   	if(R_ircount<50)       
   	   	   	   	   	{
   	   	   	   	   	   	if(IR_read==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	if(R_ircount>40)
   	   	   	   	   	   	   	{ 
   	   	   	   	   	   	   	   	if(R_ircount<50)
   	   	   	   	   	   	   	   	{ 
   	   	   	   	   	   	   	   	   	R_ircount  = 0;
   	   	   	   	   	   	   	   	   	F_hlflag   = 0;
   	   	   	   	   	   	   	   	   	F_leadflag = 1;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	}  
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	   	F_irflag=0;
   	   	   	   	}
   	   	   	}
   	   	   	//========引导码正确，准备解数据=======
   	   	   	else
   	   	   	{
   	   	   	   	//========================================================   
   	   	   	   	if(F_hlflag==0)
   	   	   	   	{
   	   	   	   	   	R_ircount++;
   	   	   	   	   	if(R_ircount<10) 
   	   	   	   	   	{ 
   	   	   	   	   	   	if(IR_read==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	if(R_ircount>3)
   	   	   	   	   	   	   	{                                             
   	   	   	   	   	   	   	   	R_ircount = 0;
   	   	   	   	   	   	   	   	F_hlflag  = 1;                                              
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	}
   	   	   	   	   	} 
   	   	   	   	   	else
   	   	   	   	   	   	F_irflag=0;     
   	   	   	   	} 
   	   	   	   	//=========================================
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	R_ircount++; 
   	   	   	   	   	if(R_ircount<20)       
   	   	   	   	   	{
   	   	   	   	   	   	if(IR_read==0)
   	   	   	   	   	   	{  
   	   	   	   	   	   	   	if(R_ircount>2)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(R_ircount<8)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	R_ircount = 0;
   	   	   	   	   	   	   	   	   	F_hlflag = 0;                                            
   	   	   	   	   	   	   	   	   	R_irdata = R_irdata>>1;
   	   	   	   	   	   	   	   	   	R_irtimes++;
   	   	   	   	   	   	   	   	   	if(R_irtimes>7)
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	R_irtimes = 0;
   	   	   	   	   	   	   	   	   	   	R_irtable[R_irbytes]=R_irdata;
   	   	   	   	   	   	   	   	   	   	R_irbytes++;
   	   	   	   	   	   	   	   	   	   	if(R_irbytes>3)
   	   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	   	F_irokflag=1;
   	   	   	   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	R_ircount = 0;
   	   	   	   	   	   	   	   	   	F_hlflag  = 0;
   	   	   	   	   	   	   	   	   	R_irdata  = R_irdata>>1;
   	   	   	   	   	   	   	   	   	R_irdata  = R_irdata|0x80;
   	   	   	   	   	   	   	   	   	R_irtimes++;
   	   	   	   	   	   	   	   	   	if(R_irtimes>7)
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	R_irtimes = 0;
   	   	   	   	   	   	   	   	   	   	R_irtable[R_irbytes]=R_irdata;
   	   	   	   	   	   	   	   	   	   	R_irbytes++;
   	   	   	   	   	   	   	   	   	   	if(R_irbytes>3)
   	   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	   	F_irokflag=1;
   	   	   	   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}                                                                                                                                                            
   	   	   	   	   	   	}  
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	   	F_irflag=0;
   	   	   	   	}                                    
   	   	   	//=============================================    
   	   	   	}
   	   	}                                                                             
   	} 
   	else
   	{
   	   	if(F_irstopflag==0)     
   	   	{
   	   	   	if(F_hlflag==0)
   	   	   	{
   	   	   	   	R_ircount++;
   	   	   	   	if(R_ircount<100) 
   	   	   	   	{ 
   	   	   	   	   	if(IR_read==1)
   	   	   	   	   	{
   	   	   	   	   	   	if(R_ircount>60)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	R_ircount = 0;
   	   	   	   	   	   	   	F_hlflag  = 1; 
   	   	   	   	   	   	}
   	   	   	   	   	   	else
   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	}
   	   	   	   	} 
   	   	   	   	else
   	   	   	   	   	F_irflag=0; 
   	   	   	} 
   	   	   	else
   	   	   	{
   	   	   	   	R_ircount++; 
   	   	   	   	if(R_ircount<50)       
   	   	   	   	{
   	   	   	   	   	if(IR_read==0)
   	   	   	   	   	{
   	   	   	   	   	   	if(R_ircount>40)
   	   	   	   	   	   	{ 
   	   	   	   	   	   	   	if(R_ircount<50)
   	   	   	   	   	   	   	{ 
   	   	   	   	   	   	   	   	R_ircount  = 0;
   	   	   	   	   	   	   	   	F_hlflag   = 0;
   	   	   	   	   	   	   	   	F_leadflag = 1;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	   	}
   	   	   	   	   	   	else
   	   	   	   	   	   	   	F_irflag=0;
   	   	   	   	   	}  
   	   	   	   	}
   	   	   	   	else
   	   	   	   	   	F_irflag=0;
   	   	   	}
   	   	}  	   	   	



   	}        
}

//===============================================
void Timecontr(void)
{
   	R_timecontr1++;
   	if(R_timecontr1>249)
   	{
   	   	R_timecontr1 = 0;  //250ms
   	   	F_t25flag    = 1;
   	   	R_timecontr2++;
   	   	if(R_timecontr2>239)
   	   	{//===240*250ms=60s
   	   	   	R_timecontr2=0;
   	   	   	R_timecontr3++;
   	   	   	if(R_timecontr3>1) //29
   	   	   	{
   	   	   	   	R_timecontr3 = 0;
   	   	   	   	F_tofflag    = 1;
   	   	   	}       
   	   	}
   	} 
}

void Init_sys(void)
{
//-------IO INIT
   	P0    = 0xf1;  	//1111 0001
   	DDR0  = 0x00;  //0000 0000 	0--输出
   	PUCON = 0x00;  //0--上拉 

   	P1    = 0xff;
   	DDR1  = 0x01;  //0000 0001 	0--输出
   	PUCON = 0x00;  //0--上拉 
//-------TIMER0 INIT
   	T0CR  = 0x01;   
   	T0IE  = 1; 
//-------TIMER1 INIT
   	T1CR  = 0x00;   
   	TC1EN = 1;
//-------PWM INIT

    PWMCR = 0x42;      	//0100 0010
    PWM1E = 1;
    T1CR = 0xc8;
    T1LOAD = 249;  	//T1LOAD=249 -- 15.85K
    T1DATA0 = 0x10;
    T1DATA1 = 80;
}

  /****************************************
  * @brief     clear   	RAM   
  * @param  
  * @retval
  * **************************************/
void InitRam(void)
{
    __asm
   	movai  	0x3f
   	movra  	FSR
   	movai  	47
   	movra  	_GPR
   	decr   	FSR
   	clrr   	INDF
   	djzr   	_GPR
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	nop
   	goto   	$-3
   	clrr   	INDF
   	clrr   	_GPR
    __endasm;  
}
void stop(void)
{
        __asm
   	   	nop 
   	   	nop
   	   	bset   	P1,3  
   	   	nop
   	   	nop
   	   	nop
   	   	nop
   	   	nop
   	   	NOP    	 
   	   	nop
   	   	nop
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	NOP
   	   	nop
   	   	nop
   	   	nop
   	   	stop
   	   	nop
   	   	nop
        __endasm;
}

  /****************************************
  * @brief     main
  * @param  
  * @retval
  * **************************************/

void main (void)
{   
   	   	uint R0;
   	   	R0=0x01;
        GIE = 0;
   	   	DDR1 = R0;
   	   	DDR10 = R0;
        ClrWdt();
        InitRam();
        Init_sys();
        GIE = 1;
   	   	led_state = 7;
        while(1)
        {        
   	   	   	if(time_key == 0)
   	   	   	{
   	   	   	   	KEY_SEND_PREV = 1;
   	   	   	   	KEY_SEND_PLAY = 1;
   	   	   	   	KEY_SEND_NEXT = 1;
   	   	   	   	//KEY_SEND_VOLADD = 1;
   	   	   	   	//KEY_SEND_VOLSUB = 1;
   	   	   	}
   	   	   	if(F_irokflag)
   	   	   	{
   	   	   	   	F_irokflag = 0;
   	   	   	   	//uart_send_byte(0x55);
   	   	   	   	//IIC_write_onebyte(0,0x80);
   	   	   	   	//if(R_irtable[2]==0x5a)
   	   	   	   	if(time_beep == 0)
   	   	   	   	{
   	   	   	   	   	time_beep = 5;
   	   	   	   	
   	   	   	   	}
   	   	   	   	switch(R_irtable[2])
   	   	   	   	{
   	   	   	   	   	case 0x5a://LED ON
   	   	   	   	   	   	led_state = 6;
                        T1DATA0 = 0x80;
                        T1DATA1 = 0x80;
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x12://LED OFF
   	   	   	   	   	   	led_state = 0; 	
                        T1DATA0 = 0;
                        T1DATA1 = 0;   	   	   	   	   	
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x59://LED ADD
   	   	   	   	   	   	led_state++;
   	   	   	   	   	   	if(led_state>=LED_STATE_MAX)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	led_state = LED_STATE_MAX;
   	   	   	   	   	   	}
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x21://LED SUB
   	   	   	   	   	   	if(led_state>0)
   	   	   	   	   	   	   	led_state--;
   	   	   	   	   	   	if(led_state==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	led_state = 0;
   	   	   	   	   	   	}
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x47://30min
   	   	   	   	   	   	IIC_read_onebyte(0);
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x5c://AUDIO ON
       	   	   	   	   	BT_POWER = 1;  	   	   	   	   	   	
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x10://AUDIO OFF
   	   	   	   	   	   	BT_POWER = 0;      	   	   	   	   	   	
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x1e://VOL++
   	   	   	   	   	   	break;
   	   	   	   	   	   	/*if(time_key == 0)
   	   	   	   	   	   	{
       	   	   	   	   	   	KEY_SEND_VOLADD = 0;
       	   	   	   	   	   	time_key = 5;
   	   	   	   	   	   	   	key_id = 1;
   	   	   	   	   	   	}
   	   	   	   	   	   	break; */  	   	   	   	   	   	
   	   	   	   	   	case 0x5b://VOL--
   	   	   	   	   	   	break;
   	   	   	   	   	   	/*if(time_key == 0)
   	   	   	   	   	   	{
       	   	   	   	   	   	KEY_SEND_VOLSUB = 0;
       	   	   	   	   	   	time_key = 5;
   	   	   	   	   	   	   	key_id = 1;
   	   	   	   	   	   	}
   	   	   	   	   	   	break; */  	   	   	   	   	   	
   	   	   	   	   	case 0x22://PREV
   	   	   	   	   	   	if(time_key == 0)
   	   	   	   	   	   	{
       	   	   	   	   	   	KEY_SEND_PREV = 0;
       	   	   	   	   	   	time_key = 5;
   	   	   	   	   	   	   	key_id = 1;
   	   	   	   	   	   	}
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x1c://PLAY
   	   	   	   	   	   	if(time_key == 0)
   	   	   	   	   	   	{
       	   	   	   	   	   	KEY_SEND_PLAY = 0;
       	   	   	   	   	   	time_key = 5;   
   	   	   	   	   	   	   	key_id = 2;
   	   	   	   	   	   	}  	   	   	   	   	   	
   	   	   	   	   	   	break;
   	   	   	   	   	case 0x55://NEXT
   	   	   	   	   	   	if(time_key == 0)
   	   	   	   	   	   	{
           	   	   	   	   	KEY_SEND_NEXT = 0;
       	   	   	   	   	   	time_key = 5;  
   	   	   	   	   	   	   	key_id = 3;
   	   	   	   	   	   	}  	   	   	   	   	   	
   	   	   	   	   	   	break;
   	   	   	   	   	default:
   	   	   	   	   	   	break;
   	   	   	   	}
   	   	   	   	   	
   	   	   	}
   	   	   	if(led_state == 7)
   	   	   	{
                //T1CNT = 200;             	//
                //T1DATA1 = 200;           	// 
   	   	   	}
   	   	   	/*if(led_state == 0)
   	   	   	{
                T1DATA0 = 0;       	//
                T1DATA1 = 0;       	// 
   	   	   	}
   	   	   	else if(led_state == 1)
   	   	   	{
                T1DATA0 = 1;       	//
                T1DATA1 = 1;       	// 
   	   	   	}
   	   	   	else if(led_state == 2)
   	   	   	{
                T1DATA0 = 2;       	//
                T1DATA1 = 2;       	// 
   	   	   	}
   	   	   	else if(led_state == 3)
   	   	   	{
                T1DATA0 = 4;       	//
                T1DATA1 = 4;       	// 
   	   	   	}
   	   	   	else if(led_state == 4)
   	   	   	{
                T1DATA0 = 6;       	//
                T1DATA1 = 6;       	// 
   	   	   	}
   	   	   	else if(led_state == 5)
   	   	   	{
                T1DATA0 = 12;          	//
                T1DATA1 = 12;          	// 
   	   	   	}
   	   	   	else if(led_state == 6)
   	   	   	{
                T1DATA0 = 30;          	//
                T1DATA1 = 30;          	// 
   	   	   	}
   	   	   	else if(led_state == 7)
   	   	   	{
                T1DATA0 = 90;          	//
                T1DATA1 = 90;          	// 
   	   	   	}
   	   	   	else if(led_state == 8)
   	   	   	{
                T1DATA0 = 160;         	//
                T1DATA1 = 160;         	// 
   	   	   	}
   	   	   	else if(led_state == 9)
   	   	   	{
                T1DATA0 = 255;         	//
                T1DATA1 = 255;         	// 
   	   	   	}*/
   	   	   	/*switch(led_state)
   	   	   	{
   	   	   	   	case 0:
                   	T1DATA0 = 0;       	//
                   	T1DATA1 = 0;       	//     	   	   	   	   	
   	   	   	   	   	break;
   	   	   	   	case 1:
                   	T1DATA0 = 1;       	//
                   	T1DATA1 = 1;       	// 
   	   	   	   	   	break;
   	   	   	   	case 2:
                   	T1DATA0 = 2;       	//
                   	T1DATA1 = 2;       	// 
   	   	   	   	   	break;
   	   	   	   	case 3:
                   	T1DATA0 = 4;       	//
                   	T1DATA1 = 4;       	// 
   	   	   	   	   	break;
   	   	   	   	case 4:
                   	T1DATA0 = 6;       	//
                   	T1DATA1 = 6;       	// 
   	   	   	   	   	break;
   	   	   	   	case 5:
                   	T1DATA0 = 12;      	//
                   	T1DATA1 = 12;      	// 
   	   	   	   	   	break;
   	   	   	   	case 6:
                   	T1DATA0 = 30;      	//
                   	T1DATA1 = 30;      	// 
   	   	   	   	   	break;
   	   	   	   	case 7:
                   	T1DATA0 = 90;      	//
                   	T1DATA1 = 90;      	// 
   	   	   	   	   	break;
   	   	   	   	case 8:
                   	T1DATA0 = 160;     	//
                   	T1DATA1 = 160;     	// 
   	   	   	   	   	break;
   	   	   	   	case 9:
                   	T1DATA0 = 255;     	//
                   	T1DATA1 = 255;     	// 
   	   	   	   	   	break;
   	   	   	   	default:
   	   	   	   	   	break;
   	   	   	}*/

                /*if(F_tm0flag==1)//1ms
                       {
                         F_tm0flag=0;
                         Timecontr();
                         //Keyscan();
                        }
                 if(R_keyvalue==0x06)  //off      
                 {
                       F_irenflag = 0; 
                       F_irokflag = 0; 
                       F_TCCflag  = 0;
                       P10        = 1;  //PNP
                       P14        = 1;                       
                       //===================
                       if(F_wakeflag==0)//唤醒后不能立即进入睡眠，需要检测按键
                       {
                            GIE  = 0;
                            KBIE = 1;
                            KBIM = 0x06;
                            P1   = P1;
                            R_r0 = P1&0x06;
                            if(R_r0==0x06)
                            {
                                    Stop();
                                    Nop();
                                    Nop();
                                    Nop();
                                    F_wakeflag = 1;
                            } 
                            KBIE = 0;
                            KBIF = 0;
                            KBIM = 0;
                            GIE  = 1;     
                       }    
                 }   
               else if(R_keyvalue==0x04)//on
                 {
                       F_irenflag = 0; 
                       F_irokflag = 0;
                       F_TCCflag  = 0; 
                       P10        = 0;  
                 } 
               else if(R_keyvalue==0x02)//on+TCC+IR
                 {   
                       P14        = 0;  
                       F_irenflag = 1;   //允许红外接收                       
                       if(F_TCCflag==0)
                       {
                           F_TCCflag    = 1;//开始计时标志，计时完清0
                           F_tofflag    = 0;//30分钟标志位
                           R_timecontr2 = 0;
                           R_timecontr3 = 0;
                           P10          = 0;   
                       }
                       else{
                            if(F_tofflag==1)  P10=1;                                    
                       }
                   //=========================================
                       if(F_irokflag==1)
                       {
                           F_irokflag = 0;
                           if(R_irtable[2]==0x82)
                           {
                               F_TCCflag = 0;//重新开始计时    
                           }
                       if(R_irtable[2]==0xa2) 
                           {
                                P10 = 1;    
                           }    
                       }
                 }
               if(F_t25flag==1)
               {
                    R_timecontr4++;
                    if(R_timecontr4>3)    
                    {
                            F_wakeflag = 0;
                    }         
               }   */   
       }
}
  /****************************************
  * @brief     IRQ
  * @param  
  * @retval
  * **************************************/
//=============================================================

/***************************************************
IIC
****************************************************/
void I2C_delay(void) 
{      	
   uchar i = 100; //这里可以优化速度       	，经测试最低到5还能写入 
   while(i)  
   {  
     i--;  
   }  
} 
/***************************************************
       	       	SCL=1  SDA下降沿
****************************************************/
void I2C_Start(void) 
{ 
   	SDA_H; 
    I2C_delay();
   	SCL_H; 
   	I2C_delay();   	  
   	SDA_L; 
   	I2C_delay();   	       	       	       	       	               	
   	SCL_L; 
    I2C_delay();
} 
/***************************************************
   	       	SCL=1  SDA上升沿
****************************************************/
void I2C_Stop(void) 
{ 
    SDA_L;
    I2C_delay(); 
    SCL_H; 
   	I2C_delay(); 
   	SDA_H; 
   	I2C_delay(); 
   	SCL_L; 
    I2C_delay();
} 
/***************************************************
ACK：   	       	SDA=0  SCL上升沿
****************************************************/
void I2C_Ack(void) 
{        	
     	SCL_L; 
     	I2C_delay(); 
     	SDA_L; 
     	I2C_delay(); 
     	SCL_H; 
     	I2C_delay(); 
     	SCL_L; 
     	I2C_delay(); 
} 
/***************************************************
NOACK： 	       	SDA=1  SCL上升沿
****************************************************/
void I2C_NoAck(void) 
{      	
   	SCL_L; 
   	I2C_delay(); 
   	SDA_H; 
   	I2C_delay(); 
   	SCL_H; 
   	I2C_delay(); 
   	SCL_L; 
   	I2C_delay(); 
} 

/********************************************
       发送一字节数据     	  
*********************************************/
void I2C_SendByte(uchar SendByte) //数据从高位到低位// 
{ 
   	uchar i; 
   	for(i=0;i<8;i++)
   	{ 
   	   	SCL_L; 	       	       	  //SCL低电平期间，数据可改变
   	   	I2C_delay(); 
   	   	if((SendByte)&0x80) 
   	   	   	   	SDA_H;  
   	   	else  
   	   	   	   	SDA_L;    
   	   	SendByte<<=1; 
   	   	I2C_delay(); 
   	   	SCL_H; 	       	        //把数据送到SDA上后，拉高
   	   	I2C_delay(); 
   	} 
   	SCL_L;     	       	       	//数据送出后，SCL拉低
} 

/********************************************
       接收一字节数据     	  
*********************************************/
uchar I2C_ReceiveByte()  //数据从高位到低位// 
{  
   	uchar i; 
   	uchar ReceiveByte=0; 
   	SDA_H;     	       	           	       	       	  
   	for(i=0;i<8;i++)
   	{ 
   	   	ReceiveByte<<=1;       
   	   	SCL_L; 
   	   	I2C_delay(); 
   	   	SCL_H; 	       	       	       	    //在SCL高电平期间读取数据
   	   	I2C_delay();   	       	       	
   	   	if(SDA_read) 
   	   	   ReceiveByte|=0x01; 
   	  
   	} 
   	SCL_L;     	       	       	       	   //数据读完后，将SCL拉低，等待下一位数据
   	return ReceiveByte; 
}      	   

void IIC_write_onebyte(uchar write_add,uchar write_data)
{
   	I2C_Start();
    I2C_SendByte(0xa0);       //器件地址
    //I2C_Ack();
    
    I2C_SendByte(write_add);  //设置段内地址 
    //I2C_Ack();
    
    I2C_SendByte(write_data);  //写的数据
    //I2C_Ack();
    I2C_Stop();      
}

void IIC_read_onebyte(uchar read_add)
{
    uchar read_temp=0;
   	uchar i = 0;

   	I2C_Start();
    I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
   	   	I2C_SendByte(0xa0);       //器件地址
    I2C_Ack();
    
    I2C_SendByte(read_add);   //设置段内地址 
    I2C_Ack();
    
    I2C_Start();
    I2C_SendByte(0xa1); //读命令
    I2C_Ack();
   	iic_data = I2C_ReceiveByte();

    I2C_NoAck();
    I2C_Stop();   
    //return   read_temp;     
}
   
void int_isr(void) __interrupt 	//80us定时器
{
   	__asm
   	movra   _ABuf
   	swapar  _STATUS
   	movra   _StatusBuf
   	__endasm;

   	
   	T0IF  = 0;
   	T0CNT = 160;  

   	time_us1++;
   	if(time_us1>=204)
   	{
   	   	time_us1 = 0;//20ms计时时间到
   	   	if(time_key > 0)
   	   	{
   	   	   	time_key--;
   	   	}
   	   	if(time_key == 0)
   	   	{
   	   	   	time_key--;
   	   	}
   	   	if(time_beep > 0)
   	   	{
   	   	   	time_beep--;
   	   	}
   	   	if(time_beep== 0)
   	   	{
   	   	   	time_beep--;
   	   	}
   	   	if(time_beep <0)
   	   	{
   	   	   	time_beep--;
   	   	}

       	if(P00D == 1)
       	   	P0 &= ~0x01;
       	else
       	   	P0 |= 0x01; 
   	   	P0 = ~P0; 
   	}
   	P0 = ~P0; 

    R_timer0count++;
   	if(F_irenflag==1)
   	Ir_Decode();
   	if(R_timer0count>9)
   	{
   	   	R_timer0count=0;
   	   	F_tm0flag = 1;
   	}     

   	
   	__asm
   	swapar  _StatusBuf
   	movra   _STATUS
   	swapr   _ABuf
   	swapar  _ABuf
   	__endasm;
}
