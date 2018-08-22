
//产品名称：           3串4串电压检测显示控制程序
//单片机型号:       	  MC32F7343,SOP16
//时钟频率:        	   16MHz(Internal RC)
//系统时钟：	          1MHZ(16M/16)
//编写:  	       	     何兵
//日期:  	       	     2018/05/07
//看门狗:             	开启
//复位:              	 内部
//版本:              	 A0
//修改记录:
#include "Wordlibrary.h"//定义文件
#include "mc32f7343.h"         	       	//寄存器定义头文件
//#include "mc3x-common.h"         	       	//寄存器定义头文件

//typedef unsigned char uchar;
//typedef unsigned short ushort;
//typedef unsigned int uint;
//typedef unsigned long ulong;
//#define Nop()        	       	       	__asm__("nop")
//#define ClrWdt()     	       	__asm__("clrwdt")
//#define Stop()       	       	       	__asm__("stop")
#define    	  EnableTotalINT       	       	  GIE=1        	       	       	//打开总中断---与一般的MCU控制方法都不同
#define    	  DisableTotalINT      	       	  GIE=0        	       	       	//关闭总中断
#define      	  STATUS   	   	   	   	     PFLAG             	       	    //定义状态变量
#define      	  _STATUS   	   	   	   	     _PFLAG             	       	    //定义状态变量
//#define          	      IO_channel       	       	   	   0x00//充电电流，0.1R取样AIN0
#define        	      NTC_channel          	       	   	0x10//电池包NTC,分压10K AIN1
#define        	      BT_VIN_channel                   	   0x20//BT点电压AIN2
#define        	      B3_VIN_channel                   	   0x30//V+ B3节点电压AIN3
#define        	      B2_VIN_channel               	      0x40//B2节点电压AIN4
#define               B1_VIN_channel                   	   0x50//B1节点电压AIN5
//#define          	       B_channel       	       	   	   	   	   	   	0x60//充电输出电压AIN6
//#define          	       Charg_vin_channel       	       	   	   	   	0x70//充电输入电压AIN7
//#define          	       VR_channel              	       	   	   	   	0x80//充调整电压AIN8
//#define              	   NTC_channel             	       	   	   	   	0x90//NTC内置AIN9
//#define          	       	IO_channel         	       	   	   	   	   	0xA0//充电电流值AIN10
//#define              	    NTC_channel            	   	   	   	   	   	0xB0//NTC输入AIN11
//#define          	       	ID_channel         	           	   	   	   	0xC0//电池包标示AIN12
//#define              	SEC_VIN_channel            	   	   	   	0xD0//充电输入电压AIN13
#define        	       GND_channel                 	   	   	0xE0//片内GND
#define            	 VDD_C4_channel                	   	   	0xF0//内部VDD/4


#define    	       	      VREF_2V      	       	       	   0x00//参考电压2V
#define    	       	      VREF_VDD     	       	       	   0x0C//参考电压VDD
//=================AD转换通道定义==========================================
////=================IO口定义==========================================
#define    	   	   	   	RLED           	       	       	   	   	P25D//红色LED
#define    	   	   	   	RLED_ON            	       	       	P25D=1//红色LED亮
#define    	   	   	   	RLED_OFF           	       	       	P25D=0//红色LED灭
#define    	   	   	   	GLED           	       	       	   	   	P05D//绿色LED
#define    	   	   	   	GLED_ON            	       	       	P05D=1//绿色LED亮
#define    	   	   	   	GLED_OFF           	       	       	P05D=0//绿色LED灭

#define	   	   	   	   	SCE_L  	   	   	   	   	   	   	   	   	   	   	P17OE=1;P17D=0 //片选 切换为输出，输出低
#define	   	   	   	   	SCE_H  	   	   	   	   	   	   	   	   	   	   	P17OE=0;P17PU=1 //片选 切换为输入，开上拉
#define	   	   	   	   	RES_L  	   	   	   	   	   	   	   	   	   	   	P14OE=1;P14D=0//复位,切换为输出，输出低
#define	   	   	   	   	RES_H  	   	   	   	   	   	   	   	   	   	   	P14OE=0;P14PU=1 //复位,切换为输入，开上拉
#define	   	   	   	   	DC_L   	   	   	   	   	   	   	   	   	   	   	P00OE=1;P00D=0 //1写数据，0写指令,切换为输出，输出低
#define	   	   	   	   	DC_H   	   	   	   	   	   	   	   	   	   	   	P00OE=0;P00PU=1 //1写数据，0写指令,切换为输入，开上拉
#define	   	   	   	   	SDIN_L 	   	   	   	   	   	   	   	   	   	   	P03OE=1;P03D=0 //数据,切换为输出，输出低
#define	   	   	   	   	SDIN_H 	   	   	   	   	   	   	   	   	   	   	P03OE=0;P03PU=1 //数据,切换为输入，开上拉
#define	   	   	   	   	SCLK_L 	   	   	   	   	   	   	   	   	   	   	P04OE=1;P04D=0 //时钟,切换为输出，输出低
#define	   	   	   	   	SCLK_H 	   	   	   	   	   	   	   	   	   	   	P04OE=0;P04PU=1 //时钟,切换为输入，开上拉

#define    	   	   	   	   	  EEPROM_Write_Data	   	   	   	   	   	   	EERW=1//往EEPROM写数据
#define    	   	   	   	   	  EEPROM_Read_Data 	   	   	   	   	   	   	   	EERW=0//从EEPROM读数据
#define    	   	   	   	   	  EEPROM_Start_Run 	   	   	   	   	   	   	   	EETRIG=1//启动EEPROM读写操作
#define    	   	   	   	   	  EEPROM_EEMASK_Set	   	   	   	   	   	   	EEMASK=0x5A;EEMASK=0xA5//写入5A，A5解除读写锁
#define    	   	   	   	   	  EEPROM_EEAR_Address  	   	   	   	   	   	   	EEAR//EEPROM地址
#define    	   	   	   	   	  EEPROM_EEDR_Data 	   	   	   	   	   	   	   	EEDR//EEPROM数据
//=================IO口定义==========================================
//=================位变量定义==========================================
//位定义
typedef union{
unsigned char byte;
struct{
           	unsigned char bit0:1;
           	unsigned char bit1:1;
           	unsigned char bit2:1;
           	unsigned char bit3:1;
           	unsigned char bit4:1;
           	unsigned char bit5:1;
           	unsigned char bit6:1;
           	unsigned char bit7:1;
}bits;
}flag;

flag Flag1;
//Flag1.byte=0;
//BITS_T Flag1;
// #define                         	   GLED_Flash_1HZ_Flag             	Flag1.bits.bit0
// #define                     	      RLED_Flash_1HZ_Flag              	Flag1.bits.bit1
#define                        	   BT_3S_Series_Flag                   	Flag1.bits.bit2
#define                        	   BT_4S_Series_Flag                   	Flag1.bits.bit3
// #define                         	      Charg_ON_Flag                    	   	Flag1.bits.bit4
// #define                         	      Charg_Flash_ON_Flag                 Flag1.bits.bit5
// #define                     	      Charg_Full_Flag             Flag1.bits.bit6
// #define                     	      Charg_High_Temp_Flag        Flag1.bits.bit7
//#define              	       	LED_ON_Turn_Flag              Flag1.bit4
//#define              	       	SW_ON_OFF_Flag                Flag1.bit5
//#define              	       	SW_SPEED_Flag                 Flag1.bit6
//#define              	       	SW_ON_OFF_Press_Flag          Flag1.bit7
//#define              	       	SW_SPEED_Press_Flag           Flag2.bit0
//#define              	       	Fan_Run_Flag           	       	  Flag2.bit1
//#define              	       	Charg_Full_Flag                	   Flag2.bit2
//#define      	       	TEST2_P12PWM_Flag      	Flag1.bit3
//=================位变量定义==========================================
//=================函数申明区====================
void   	       	   	   	initial(void);   //初如化
uint       	       	   	SampleRelatedChannel(uchar channel,uchar VREF); //AD转换
void                   	InitRam(void);//清寄存器
void                   	Delay1mS_1M(uint i);//延时子程序
void   	   	   	   	   	AD_Init_mode(void);//AD修调程序
uchar      	       	   	EEPROM_Read(uchar  	Address);//EEPROM读程序
void   	       	   	   	EEPROM_Write(uchar 	Address,uchar  	Data);//EEPROM写程序
void   	       	   	   	ADC_Value_Ratio(void);//电压校准程序
void               	   	All_Adc_Convert(void);//AD转换IO,NTC,VIN


void   	   	   	   	   	   	LCD_write_byte(unsigned char dt, unsigned char command);//使用SPI接口写数据到LCD
void   	   	   	   	   	   	LCD_init(void);//5110LCD初始化
void   	   	   	   	   	   	LCD_set_XY(unsigned char X, unsigned char Y);//设置LCD坐标函数
void   	   	   	   	   	   	LCD_clear(void);//LCD清屏函数
void   	   	   	   	   	   	LCD_write_hanzi(unsigned char row, unsigned char page,unsigned char c); //显示16（宽）*16（高）点阵列汉字等半角类row:列 page:页 dd:字符
void   	   	   	   	   	   	LCD_write_shu57(unsigned char row, unsigned char page,unsigned char c); //显示5（宽）*7（高）点阵列数字字母符号等半角类row:列 page:页 dd:字符
//=================变量申明区====================
uchar  	        ABuf,StatusBuf;//中断现场保护变量
uint   	   	   	   	AD_Init;//修调寄存器
uchar  	   	   	Data_OSADJCR;
uchar  	   	   	ADH_temp,ADL_temp;
//===============================================
//uchar    	   	   	ST;
uint       	    BT_VIN_AD,B3_VIN_AD,B2_VIN_AD,B1_VIN_AD,IO_AD,SEC_VIN_AD,NTC_AD;
uint       	    BT_Single_VIN_AD,B3_Single_VIN_AD,B2_Single_VIN_AD,B1_Single_VIN_AD;
uint       	    BT_Ratio_VIN_AD,B3_Ratio_VIN_AD,B2_Ratio_VIN_AD,B1_Ratio_VIN_AD;
// uchar   	   	   	Delay_Time_Minute_CNT,Delay_Time_Minute;
// uint    	   	    PWM_Value;
uchar  	   	   	   	EEPROM_Data_Value;
uchar  	   	   	   	ADC_Ratio_Inter_JI,LooP_JI;
uchar  	   	   	   	Ratio_Flag1_A5,Ratio_Flag2_CA,Read_EEPROM_Temp_H,Read_EEPROM_Temp_L;
//===========================主程序开始========================================
void            main(void)
{
   	   	   	initial();//初始化单片机 
   	   	   	InitRam();//清零所有RAM
   	   	   	DisableTotalINT;//关闭总中断
   	   	   	RLED_OFF;//关红光LED
   	   	   	GLED_ON;//开绿光LED
   	   	   	Delay1mS_1M(30);//延时时50MS  	
//====================AD修调=======================
   	   	   	AD_Init_mode();// AD修调程序，解决零点飘移！
   	   	   	OSADJEN=0;//关闭 ADC 零点偏移修调模式
   	       	ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK
   	   	   	Delay1mS_1M(10);//延时时50MS  	   	   	
   	   	   	AD_Init=SampleRelatedChannel(GND_channel,VREF_2V); 
   	   	   	if(AD_Init>0)
   	   	   	  {
   	   	   	   	AD_Init_mode();// AD修调程序，解决零点飘移！
   	   	   	   	OSADJEN=0;//关闭 ADC 零点偏移修调模式
   	   	   	   	//ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK   	   	   	   	  
   	   	   	  }
   	   	   	ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK 	   	   	  
//====================AD修调===================================  	   	   	
//====================标志位及变量初始化======================  	   	
   	   	   	Flag1.byte=0;//清标志寄存器
   	   	   	//Delay1mS_1M(100);//延时时50MS
   	   	   	
//====================标志位及变量初始化======================  	   	
//====================检测是否进入校准程序======================
   	   	   	ADC_Ratio_Inter_JI=0;
   	   	   	LooP_JI=50;
   	   	   	Delay1mS_1M(100);//延时时50MS
   	   	   	while(LooP_JI>0)
   	   	   	   {
   	   	   	   	   	LooP_JI--;  
   	   	   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS 
   	   	   	   	   	if((NTC_AD>3945)&&(NTC_AD<3980))//如果NTC电阻值为300K，进入校准子程序
   	   	   	   	   	  {
   	   	   	   	   	    ADC_Ratio_Inter_JI++;
   	   	   	   	   	   	if(ADC_Ratio_Inter_JI>=40)
   	   	   	   	   	   	   {
   	   	   	   	   	   	   	ADC_Value_Ratio();//电压校准程序    
   	   	   	   	   	   	   }
   	   	   	   	   	  }
   	   	   	   }
//====================检测是否进入校准程序======================
////====================读校准数据====================== 
   	   	   	  Ratio_Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM读程序  
   	   	   	  Ratio_Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM读程序 
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM读程序
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM读程序   	   	   	   	   	   	   	  
   	   	   	  B1_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B1_Ratio_VIN_AD=((B1_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM读程序
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM读程序   	   	   	   	   	   	   	  
   	   	   	  B2_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B2_Ratio_VIN_AD=((B2_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM读程序
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM读程序   	   	   	   	   	   	   	  
   	   	   	  B3_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B3_Ratio_VIN_AD=((B3_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM读程序
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM读程序   	   	   	   	   	   	   	  
   	   	   	  BT_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  BT_Ratio_VIN_AD=((BT_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	
   	   	   	  if((Ratio_Flag1_A5!=0xA5)||(Ratio_Flag2_CA!=0xCA)||(B1_Ratio_VIN_AD<3350)||(B1_Ratio_VIN_AD>3530)||(B2_Ratio_VIN_AD<3350)||(B2_Ratio_VIN_AD>3530)||(B3_Ratio_VIN_AD<3350)||(B3_Ratio_VIN_AD>3530)||(BT_Ratio_VIN_AD<3350)||(BT_Ratio_VIN_AD>3530))//
   	   	   	    {//判断标志位，及判断B1，B2，B3，BT系数是否在限定范围内
   	   	   	   	  RLED_ON;//红光LED亮
   	   	   	   	  GLED_ON;//绿光LED亮 	   	   	   	  
   	   	   	   	   while(1)//红光2HZ闪烁
   	   	   	   	   	 {
   	   	   	   	   	  Delay1mS_1M(500);//延时时250Ms  	
   	   	   	   	   	  GLED=!GLED;
   	   	   	   	   	  RLED=!RLED;
   	   	   	   	   	 }     	
   	   	   	   	}  	   	   	  
////====================读校准数据======================  
   	   	   	   	  LCD_init();  //初始化LCD模块 
   	   	   	   	  LCD_clear();
   	   	   	   	  LCD_write_shu57(0,0,13);//B      	(列，页，字符)   	
   	   	   	   	  LCD_write_shu57(1,0,14);//T          	(列，页，字符)   	
   	   	   	   	  LCD_write_shu57(2,0,11);//: (列，页，字符) 	   	
   	   	   	   	  LCD_write_shu57(3,0,4);//0           	(列，页，字符)
   	   	   	   	  LCD_write_shu57(4,0,10);//.          	(列，页，字符)
   	   	   	   	  LCD_write_shu57(5,0,2);//0           	(列，页，字符)
   	   	   	   	  LCD_write_shu57(6,0,0);//0           	(列，页，字符)   	
   	   	   	   	  LCD_write_shu57(7,0,15);//V          	(列，页，字符)   	   	
   	   	   	   	  LCD_write_shu57(8,0,1);//0           	(列，页，字符)
   	   	   	   	  LCD_write_shu57(9,0,6);//0           	(列，页，字符)
       	   	   	  LCD_write_shu57(10,0,10);//.         	(列，页，字符)
       	   	   	  LCD_write_shu57(11,0,8);//0          	(列，页，字符)
       	   	   	  LCD_write_shu57(12,0,0);//0          	(列，页，字符)   	
       	   	   	  LCD_write_shu57(13,0,15);//V         	(列，页，字符)   	

   	   	   	   	 LCD_write_shu57(0,1,13);//B
   	   	   	   	 LCD_write_shu57(1,1,3);//3
   	   	   	   	 LCD_write_shu57(2,1,11);//:
   	   	   	   	 LCD_write_shu57(3,1,4);//0
   	   	   	   	 LCD_write_shu57(4,1,10);//.
   	   	   	   	 LCD_write_shu57(5,1,2);//0
   	   	   	   	 LCD_write_shu57(6,1,0);//0
   	   	   	   	 LCD_write_shu57(7,1,15);//V
   	   	   	   	 LCD_write_shu57(8,1,1);//0
   	   	   	   	 LCD_write_shu57(9,1,2);//0
   	   	   	   	 LCD_write_shu57(10,1,10);//.
   	   	   	   	 LCD_write_shu57(11,1,6);//0
   	   	   	   	 LCD_write_shu57(12,1,0);//0
   	   	   	   	 LCD_write_shu57(13,1,15);//V

   	   	   	   	LCD_write_shu57(0,2,13);//B
   	   	   	   	LCD_write_shu57(1,2,2);//2
   	   	   	   	LCD_write_shu57(2,2,11);//:
   	   	   	   	LCD_write_shu57(3,2,4);//0
   	   	   	   	LCD_write_shu57(4,2,10);//.
   	   	   	   	LCD_write_shu57(5,2,2);//0
   	   	   	   	LCD_write_shu57(6,2,0);//0
   	   	   	   	LCD_write_shu57(7,2,15);//V
   	   	   	   	LCD_write_shu57(8,2,12);//' '
   	   	   	   	LCD_write_shu57(9,2,8);//0
   	   	   	   	LCD_write_shu57(10,2,10);//.
   	   	   	   	LCD_write_shu57(11,2,4);//0
   	   	   	   	LCD_write_shu57(12,2,0);//0
   	   	   	   	LCD_write_shu57(13,2,15);//V
   	   	   	   	   	   	
   	   	   	   	LCD_write_shu57(0,3,13);//B
   	   	   	   	LCD_write_shu57(1,3,1);//1
   	   	   	   	LCD_write_shu57(2,3,11);//:
   	   	   	   	LCD_write_shu57(3,3,4);//0
   	   	   	   	LCD_write_shu57(4,3,10);//.
   	   	   	   	LCD_write_shu57(5,3,2);//0
   	   	   	   	LCD_write_shu57(6,3,0);//0
   	   	   	   	LCD_write_shu57(7,3,15);//V
   	   	   	   	LCD_write_shu57(8,3,12);//' '
   	   	   	   	LCD_write_shu57(9,3,2);//0
   	   	   	   	LCD_write_shu57(10,3,5);//0
   	   	   	   	LCD_write_shu57(11,3,10);//.
   	   	   	   	LCD_write_shu57(12,3,0);//0
   	   	   	   	LCD_write_shu57(13,3,16);//K
   	   	   	   	LCD_write_hanzi(0,4,0);//金
   	   	   	   	LCD_write_hanzi(1,4,1);//华
   	   	   	   	LCD_write_hanzi(2,4,2);//捷
   	   	   	   	LCD_write_hanzi(3,4,3);//安



       	   	   	   	   	   	   	
////==================TEST===================
//
//
//
//
////==================TEST===================
////=================程序跳转循环========================    
            while(1)
   	   	   	   	{
   	   	   	   	All_Adc_Convert(); //各个通道AD转换
   	   	   	   	}  
//=================程序跳转循环========================

}//主程序结束
//======================EEPROM读程序======================
uchar      EEPROM_Read(uchar   	Address)//EEPROM读程序
{
   	   	   	uchar  	 EEPROM_Data_Temp;
   	   	   	EEPROM_EEAR_Address=Address;//传送地址
   	   	   	EEPROM_EEMASK_Set;//解锁 	   	   
   	   	   	EEPROM_Read_Data;//读数据
   	   	   	EEPROM_Start_Run;//开始读写EEPROM
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();//防止时序错误 	
   	   	   	EEPROM_Data_Temp=EEPROM_EEDR_Data; 	
   	   	   	 return EEPROM_Data_Temp;      	
}
//======================EEPROM读程序======================
//======================EEPROM写程序======================
void   	       	   	   	EEPROM_Write(uchar 	Address,uchar  	Data)//EEPROM写程序
{  	   	 
   	   	   	EEPROM_EEAR_Address=Address;//传送地址
   	   	   	EEPROM_EEDR_Data=Data;//传送数据
   	   	   	EEPROM_EEMASK_Set;//解锁
   	   	    EEPROM_Write_Data;//写数据
   	   	   	EEPROM_Start_Run;//开始读写EEPROM
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();//防止时序错误 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	           	
}
//======================EEPROM写程序======================
//================================================================ 显示屏程序=========================================================

// --------------------------------------------
// LCD_write_byte: 使用SPI接口写数据到LCD
// 输入参数：dt：写入的数据；
// command ：写数据/命令选择；
// 编写日期：20080918 
// ----------------------------------------------
void LCD_write_byte(unsigned char dt, unsigned char command)
{
   	uchar i; 
   	SCE_L;
   	if(command)
   	 { DC_H;}
   	else
   	 { DC_L;}  	
   	for(i=0;i<8;i++)
   	{ 
   	   	if(dt&0x80)
   	   	   	{SDIN_H;}
   	   	else
   	   	   	{SDIN_L;}
   	   	dt=dt<<1;  	   	
   	   	SCLK_L;
   	   	Nop(); 	   	
   	   	SCLK_H; 
   	}  	
   	DC_H;  	
   	SCE_H; 	
   	SDIN_H;
}
// ---------------------------------------
// LCD_init: 3310LCD初始化
// 编写日期：20080918 
// -----------------------------------------
void LCD_init(void)
{
   	SCE_H;
   	RES_H;
   	Delay1mS_1M(1);
   	RES_L;     	
   	Delay1mS_1M(1);
   	RES_H;
   	LCD_write_byte(0x21,0);//初始化Lcd,功能设定使用扩充指令
   	LCD_write_byte(0xC6,0);//设定液晶偏置电压(高--低）
   	LCD_write_byte(0x20,0);//使用基本指令
   	LCD_write_byte(0x0C,0);//设定显示模式，正常显示
}
// -------------------------------------------
// LCD_set_XY: 设置LCD坐标函数
// 输入参数：X：0－83  Y：0－5
// 编写日期：20080918 
// ---------------------------------------------
void LCD_set_XY(unsigned char X, unsigned char Y)
{
   	LCD_write_byte(0x40 | Y, 0);// column
   	LCD_write_byte(0x80 | X, 0);// row
} 
// ------------------------------------------
// LCD_clear: LCD清屏函数
// 编写日期：20080918 
// --------------------------------------------
void LCD_clear(void)
{
    uchar t;
    uchar k;
    LCD_set_XY(0,0);
        for(t=0;t<6;t++)
            { 
                for(k=0;k<84;k++)
                    { 
                        LCD_write_byte(0x00,1);
                        ClrWdt();//清看门狗计数器     	   	   	
                    } 
            }
}
// ---------------------------------------------
// LCD_write_shu57: 显示5（宽）*7（高）点阵列数字字母符号等半角类
// 输入参数：c：显示的字符；
// 编写日期：20080918 //row:列 page:页 dd:字符
// -----------------------------------------------
void LCD_write_shu57(uchar row,uchar page,uchar c)
{
   	uchar i;       	
   	ClrWdt();//清看门狗计数器
   	LCD_set_XY(row*6, page);// 列，页 
   	for(i=0; i<5;i++) 
   	{
   	 LCD_write_byte(shuzi57[c*5+i],1); 
   	}
   	ClrWdt();//清看门狗计数器     	
}
// ---------------------------------------------
// ---------------------------------------------
// LCD_write_hanzi: 显示16（宽）*16（高）点阵列汉字等半角类
// 输入参数：c：显示的字符；
// 编写日期：20080918 //row:列 page:页 dd:字符
// -----------------------------------------------
void LCD_write_hanzi(uchar row,uchar page,uchar c)
{  	
   	uchar i;
   	ClrWdt();//清看门狗计数器
   	LCD_set_XY((row*16)+19,page);// 列，页 
   	for(i=0; i<16;i++) 
   	{
   	   	LCD_write_byte(hanzi[c*32+i],1); 
   	}
   	ClrWdt();//清看门狗计数器
    LCD_set_XY((row*16)+19,page+1);// 列，页 
   	for(i=16; i<32;i++) 
   	{
   	   	LCD_write_byte(hanzi[c*32+i],1);
   	}      	
}
//================================================================ 显示屏程序=========================================================
//======================电压ADC校准程序======================
void   	       	   	   	ADC_Value_Ratio(void)//电压校准程序
{
 //校准标志位：A5=0x00位，CA=0x01位
 //B1_Ratio_VIN_AD=0x02高位，0x03低位
 //B2_Ratio_VIN_AD=0x04高位，0x05低位
 //B3_Ratio_VIN_AD=0x06高位，0x07低位
 //BT_Ratio_VIN_AD=0x08高位，0x09低位
 //LED:启动红绿同亮，成功红灭，绿亮，失败红亮，绿灭
   	   	   	uchar  	   	JI_Temp,AD_Temp_H,AD_Temp_L;
   	   	   	uchar  	   	Flag1_A5,Flag2_CA;
   	   	   	uint   	   	B1_Ratio_Read_Value,B2_Ratio_Read_Value,B3_Ratio_Read_Value,BT_Ratio_Read_Value;
       	   	RLED_ON;//关红光LED
   	   	   	GLED_ON;//开绿光LED
   	   	   	JI_Temp=0;
   	   	   	while(1)//
   	   	   	   	{
   	   	   	   	   	JI_Temp++;//单节电压为4.2V正负2.5%，次极电压大于10V，NTC为300K正常
   	   	   	   	   	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT点电压AD值检测充电电压1.2MS
   	   	   	   	   	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3点电压AD值检测充电电压1.2MS
   	   	   	   	   	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2点电压AD值检测充电电压1.2MS
   	   	   	   	   	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1点电压AD值检测充电电压1.2MS
   	   	   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS  
   	   	   	   	   	if(JI_Temp>=100)
   	   	   	   	   	  {
   	   	   	   	   	   	 if((NTC_AD>3945)&&(NTC_AD<3980)&&(B1_VIN_AD>=3350)&&(B1_VIN_AD<=3530)&&(B2_VIN_AD>=3350)&&(B2_VIN_AD<=3530)&&(B3_VIN_AD>=3350)&&(B3_VIN_AD<=3530)&&(BT_VIN_AD>=3350)&&(BT_VIN_AD<=3530))//
   	   	   	   	   	   	    {//数据检测正确，向EEPROM写入数据
   	   	   	   	   	   	   	 //========================写数据=================================
   	   	   	   	   	   	   	  EEPROM_Write(0x00,0xA5);//前地址，后数据,0xA5第一标识位
   	   	   	   	   	   	   	  EEPROM_Write(0x01,0xCA);//前地址，后数据,0xCA第二标识位
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B1_VIN_AD&0x00FF);//取AD低8位
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B1_VIN_AD>>8)&0x00FF);//取AD高8位
   	   	   	   	   	   	   	  EEPROM_Write(0x02, AD_Temp_H);//前地址，后数据,B1_VIN_AD高位
   	   	   	   	   	   	   	  EEPROM_Write(0x03,AD_Temp_L);//前地址，后数据,B1_VIN_AD低位   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B2_VIN_AD&0x00FF);//取AD低8位
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B2_VIN_AD>>8)&0x00FF);//取AD高8位
   	   	   	   	   	   	   	  EEPROM_Write(0x04, AD_Temp_H);//前地址，后数据,B2_VIN_AD高位
   	   	   	   	   	   	   	  EEPROM_Write(0x05,AD_Temp_L);//前地址，后数据,B2_VIN_AD低位
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B3_VIN_AD&0x00FF);//取AD低8位
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B3_VIN_AD>>8)&0x00FF);//取AD高8位
   	   	   	   	   	   	   	  EEPROM_Write(0x06, AD_Temp_H);//前地址，后数据,B3_VIN_AD高位
   	   	   	   	   	   	   	  EEPROM_Write(0x07,AD_Temp_L);//前地址，后数据,B3_VIN_AD低位
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(BT_VIN_AD&0x00FF);//取AD低8位
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((BT_VIN_AD>>8)&0x00FF);//取AD高8位
   	   	   	   	   	   	   	  EEPROM_Write(0x08, AD_Temp_H);//前地址，后数据,BT_VIN_AD高位
   	   	   	   	   	   	   	  EEPROM_Write(0x09,AD_Temp_L);//前地址，后数据,BT_VIN_AD低位 
   	   	   	   	   	   	   	 //===========================写数据===================================
   	   	   	   	   	   	   	 //===========================读数据校准===================================
   	   	   	   	   	   	   	  Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM读程序 
   	   	   	   	   	   	   	  Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM读程序 
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM读程序
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM读程序	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B1_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B1_Ratio_Read_Value=((B1_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM读程序
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM读程序	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B2_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B2_Ratio_Read_Value=((B2_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM读程序
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM读程序	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B3_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B3_Ratio_Read_Value=((B3_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM读程序
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM读程序	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  BT_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  BT_Ratio_Read_Value=((BT_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  if((Flag1_A5==0xA5)&&(Flag2_CA==0xCA)&&(B1_Ratio_Read_Value==B1_VIN_AD)&&(B2_Ratio_Read_Value==B2_VIN_AD)&&(B3_Ratio_Read_Value==B3_VIN_AD)&&(BT_Ratio_Read_Value==BT_VIN_AD))
   	   	   	   	   	   	   	     {
   	   	   	   	   	   	   	   	  RLED_OFF;//红光LED灭
   	   	   	   	   	   	   	   	  while(1)//红光2HZ闪烁
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	 Delay1mS_1M(500);//延时时250Ms   	
   	   	   	   	   	   	   	   	   	 GLED=!GLED;
   	   	   	   	   	   	   	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	 
   	   	   	   	   	   	   	   	 } 	   	   	   	   	   	 
   	   	   	   	   	   	   	 //===========================读数据校准=================================== 	   	   	   	   	   	   	 
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	//========================失败====================== 	   	
   	   	   	                  GLED_OFF;//开绿光LED
   	   	   	   	   	   	   	  while(1)//红光2HZ闪烁
   	   	   	   	   	   	   	    {
   	   	   	   	   	   	   	   	 Delay1mS_1M(250);//延时时250Ms   	
   	   	   	   	   	   	   	   	 RLED=!RLED;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	//========================失败====================== 	   	   	   	   	   	   	   	
   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	}      	
}
//======================电压ADC校准程序======================
//======================ADC各通道转换程序======================
void               	   	All_Adc_Convert(void)//AD转换IO,NTC,VIN
{
   	   	   	uint   	VIN_AD_Temp1,VIN_AD_Temp2;
   	   	   	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT点电压AD值检测充电电压1.2MS
   	   	   	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3点电压AD值检测充电电压1.2MS
   	   	   	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2点电压AD值检测充电电压1.2MS
   	   	   	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1点电压AD值检测充电电压1.2MS
   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC电压AD值检测充电电压1.2MS  
   	   	   	//================================单节电池电压补偿AD换算==============================================
   	   	   	    //==================B1===================================
   	   	   	   	if(B1_Ratio_VIN_AD>3440)//B1电压AD补偿换算
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=B1_Ratio_VIN_AD-3440;
   	   	   	   	   	 if(B1_VIN_AD>VIN_AD_Temp1)
   	   	   	   	   	   	{
   	   	   	   	   	   	 B1_VIN_AD=B1_VIN_AD-VIN_AD_Temp1; 	
   	   	   	   	   	   	}
   	   	   	   	   	  else 
   	   	   	   	   	   	{
   	   	   	   	   	   	 B1_VIN_AD=0;
   	   	   	   	   	   	}  	   	   	   	   	 
   	   	   	   	   }
   	   	   	   	else 
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=3440-B1_Ratio_VIN_AD; 
   	   	   	   	   	 B1_VIN_AD=B1_VIN_AD+VIN_AD_Temp1;
   	   	   	   	   }   
   	   	   	    //==================B1===================================  	   	   	   
   	   	   	    //==================B2===================================
   	   	   	   	if(B2_Ratio_VIN_AD>3440)//B1电压AD补偿换算
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=B2_Ratio_VIN_AD-3440;
   	   	   	   	   	 if(B2_VIN_AD>VIN_AD_Temp1)
   	   	   	   	   	   	{
   	   	   	   	   	   	 B2_VIN_AD=B2_VIN_AD-VIN_AD_Temp1; 	
   	   	   	   	   	   	}
   	   	   	   	   	  else 
   	   	   	   	   	   	{
   	   	   	   	   	   	 B2_VIN_AD=0;
   	   	   	   	   	   	}  	   	   	   	   	 
   	   	   	   	   }
   	   	   	   	else 
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=3440-B2_Ratio_VIN_AD; 
   	   	   	   	   	 B2_VIN_AD=B2_VIN_AD+VIN_AD_Temp1;
   	   	   	   	   }   
   	   	   	    //==================B2===================================  	   	
   	   	   	    //==================B3===================================
   	   	   	   	if(B3_Ratio_VIN_AD>3440)//B1电压AD补偿换算
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=B3_Ratio_VIN_AD-3440;
   	   	   	   	   	 if(B3_VIN_AD>VIN_AD_Temp1)
   	   	   	   	   	   	{
   	   	   	   	   	   	 B3_VIN_AD=B3_VIN_AD-VIN_AD_Temp1; 	
   	   	   	   	   	   	}
   	   	   	   	   	  else 
   	   	   	   	   	   	{
   	   	   	   	   	   	 B3_VIN_AD=0;
   	   	   	   	   	   	}  	   	   	   	   	 
   	   	   	   	   }
   	   	   	   	else 
   	   	   	   	   {
   	   	   	   	   	 VIN_AD_Temp1=3440-B3_Ratio_VIN_AD; 
   	   	   	   	   	 B3_VIN_AD=B3_VIN_AD+VIN_AD_Temp1;
   	   	   	   	   }   
   	   	   	    //==================B3===================================  	   	   	
   	   	   	    //==================BT===================================
   	   	   	   	if(BT_3S_Series_Flag)//3串电池包
   	   	   	       {
   	   	   	   	   	if(BT_Ratio_VIN_AD>3440)//B1电压AD补偿换算
   	   	   	   	   	   {
   	   	   	   	   	   	 VIN_AD_Temp1=(BT_Ratio_VIN_AD-3440)*3/4;
   	   	   	   	   	   	 if(BT_VIN_AD>VIN_AD_Temp1)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	 BT_VIN_AD=BT_VIN_AD-VIN_AD_Temp1; 	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	  else 
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	 BT_VIN_AD=0;
   	   	   	   	   	   	   	}  	   	   	   	   	 
   	   	   	   	   	   }
   	   	   	   	   	else 
   	   	   	   	   	   {
   	   	   	   	   	   	 VIN_AD_Temp1=(3440-BT_Ratio_VIN_AD)*3/4; 
   	   	   	   	   	   	 BT_VIN_AD=BT_VIN_AD+VIN_AD_Temp1;
   	   	   	   	   	   }   	   	   	   	   	   	   
   	   	   	   	   }
   	   	   	   	else 
   	   	   	   	   {
   	   	   	   	   	if(BT_Ratio_VIN_AD>3440)//B1电压AD补偿换算
   	   	   	   	   	   {
   	   	   	   	   	   	 VIN_AD_Temp1=BT_Ratio_VIN_AD-3440;
   	   	   	   	   	   	 if(BT_VIN_AD>VIN_AD_Temp1)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	 BT_VIN_AD=BT_VIN_AD-VIN_AD_Temp1; 	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	  else 
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	 BT_VIN_AD=0;
   	   	   	   	   	   	   	}  	   	   	   	   	 
   	   	   	   	   	   }
   	   	   	   	   	else 
   	   	   	   	   	   {
   	   	   	   	   	   	 VIN_AD_Temp1=3440-BT_Ratio_VIN_AD; 
   	   	   	   	   	   	 BT_VIN_AD=BT_VIN_AD+VIN_AD_Temp1;
   	   	   	   	   	   }   	   	   	   	   	   
   	   	   	   	   }  
   	   	   	    //==================BT=================================== 
   	   	   	//================================单节电池电压补偿AD换算==============================================   	   	   	   	
   	   	   	//================================单节电池电压AD换算==============================================
   	   	   	    //================B1,B2==================================
   	   	   	   	B1_Single_VIN_AD=B1_VIN_AD;//B1单节电压等于节点电压;
   	   	   	   	VIN_AD_Temp2=B2_VIN_AD*2;//B2单节电压转换
   	   	   	   	if(VIN_AD_Temp2>B1_VIN_AD)
   	   	   	   	  {
   	   	   	   	   	B2_Single_VIN_AD=VIN_AD_Temp2-B1_VIN_AD;//B2单节电压转换 
   	   	   	   	  }
   	   	   	   	else 
   	   	   	   	  {
   	   	   	   	   	B2_Single_VIN_AD=0;  
   	   	   	   	  }
   	   	   	    //================B1,B2==================================
   	   	   	   	//================B3,B4==================================
   	   	   	   	if(BT_4S_Series_Flag)//4串电池包
   	   	   	   	   {
   	   	   	   	   	VIN_AD_Temp1=B2_VIN_AD*2;//B3单节电压转换   
   	   	   	   	   	VIN_AD_Temp2=B3_VIN_AD*3;//B3单节电压转换
   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	  {
   	   	   	   	   	   	B3_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//B3单节电压转换 
   	   	   	   	   	  }
   	   	   	   	   	else 
   	   	   	   	   	  {
   	   	   	   	   	   	B3_Single_VIN_AD=0;  
   	   	   	   	   	  }	   	   	   	   	
   	   	   	   	   	VIN_AD_Temp1=B3_VIN_AD*3;//BT单节电压转换   
   	   	   	   	   	VIN_AD_Temp2=BT_VIN_AD*4;//BT单节电压转换
   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	  {
   	   	   	   	   	   	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT单节电压转换 
   	   	   	   	   	  }
   	   	   	   	   	else 
   	   	   	   	   	  {
   	   	   	   	   	   	BT_Single_VIN_AD=0;  
   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	   }
   	   	   	   	else if(BT_3S_Series_Flag)//3串电池包
   	   	   	   	   	{
   	   	   	   	   	    B3_Single_VIN_AD=0;    	
   	   	   	   	   	   	VIN_AD_Temp1=B2_VIN_AD*2;//BT单节电压转换   
   	   	   	   	   	   	VIN_AD_Temp2=BT_VIN_AD*4;//BT单节电压转换
   	   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT单节电压转换 
   	   	   	   	   	   	  }
   	   	   	   	   	   	else 
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	BT_Single_VIN_AD=0;  
   	   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	   	}  	
   	   	   	   	//================B3,B4==================================  	
   	   	   	//================================单节电池电压AD换算============================================== 	   	   	   	
//uint         	    BT_Ratio_VIN_AD,B3_Ratio_VIN_AD,B2_SRatio_VIN_AD,B1_Ratio_VIN_AD;
   	   	   	
}
//======================ADC各通道转换程序======================
//=========================AD修调程序=======================
void   	   	   	   	  AD_Init_mode(void)//AD修调程序
{
//修调过程：
//1、修调值调设为0，AD转换值为0就调为正偏最大，然后再慢慢差小，直到AD值为0或修调值为0为止。
//2、修调值调设为0，AD转换值大于0，为调负偏，慢慢加大修调值，直到个修调值最大或AD值为0为止。
   	   	ADCR0=0xe0;//2V参考电压 通道GND
   	   	OSADJEN=1;//使能 ADC 零点偏移修调模式
   	   	ADCR1=0x33;//FHIRC/64,15个ADCLK
   	   	OSADJCR&=0xc0;//修调值从零开始，负向修调0，低6位全为0   	 
   	   	ADEN=1;
   	   	ADEOC=0;
   	   	while(ADEOC==0);//等待转换结束               	   	   	
   	   	ADH_temp=ADRH;
   	   	ADL_temp=ADRL; 	   	   	   	 
   	   	if((ADH_temp==0)&&(ADL_temp==0))//如果转换结果为0
   	   	   	{
   	   	   	   	OSADJCR|=0x3f;//正向修调最大值
   	   	   	   	Data_OSADJCR=OSADJCR&0x1f;//保存正向修调最大值变量
   	   	   	   	while(1)
   	   	   	   	   	{
   	   	   	   	   	   	if(Data_OSADJCR==0x00) {return;}
   	   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	ADEOC=0;
   	   	   	   	   	   	   	while(ADEOC==0);
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	ADH_temp=ADRH;
   	   	   	   	   	   	   	   	   	ADL_temp=ADRL;
   	   	   	   	   	   	   	   	   	if((ADH_temp==0)&&(ADL_temp==0)){return;}
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	}
   	   	   	   	   	   	OSADJCR--;
   	   	   	   	   	   	Data_OSADJCR=OSADJCR&0x1f;
   	   	   	   	   	}
   	   	   	}
   	   	else
   	   	{
   	   	   	Data_OSADJCR=OSADJCR&0x1f;
   	   	   	while(1)
   	   	   	   	{
   	   	   	   	   	if(Data_OSADJCR==0x1f) {return;}
   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	ADEOC=0;
   	   	   	   	   	   	   	while(ADEOC==0);
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	ADH_temp=ADRH;
   	   	   	   	   	   	   	   	ADL_temp=ADRL;
   	   	   	   	   	   	   	   	if((ADH_temp==0)&&(ADL_temp==0)) {return;}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	}
   	   	   	   	   	OSADJCR++;
   	   	   	   	   	Data_OSADJCR=OSADJCR&0x1f;
   	   	   	   	}
   	   	}  	   	       	   	
}
//=========================AD修调程序=======================
//================清寄存器====================
void    InitRam(void)//清寄存器
{
        __asm 
//=================先清0x100-0x17F=============
        movai      	0x01
        movra      	FSR1
        movai      	0x7F
        movra      	FSR0
        clrr       	INDF2
        djzr   	   	FSR0  
        goto       	$-2
        clrr        INDF2 
//=================先清0x100-0x17F=============
//=================再清0x00-0xFF=============
        movai      	  0xFF
        movra      	  FSR0
        clrr       	  INDF0
        djzr   	    FSR0  
        goto       	  $-2
        clrr        INDF0  
//=================再清0x00-0xFF=============   
        __endasm;
}
//================清寄存器====================
////======================初始化程序=====================
void initial(void)
{
//======================System clock======================== 
        //OSCM|=0x00;//工作模式寄存器CLKS: 0:高频时钟,1:低频时钟,低频LFEN: 0:停止(见备注) 1:持续工作 高频HFEN: 0:停止(见备注) 1:持续工作
                   //高频时钟做系统时钟，高频和低频STOP下停止工作
           	CLKS=0;//高速时钟作为系统时钟
           	LFEN=1;//低频时钟休眠持续工作.
           	HFEN=1;//高频时钟休眠持续工作。
//======================System clock========================         
//======================IO direction,上下拉======================== 
        IOP0=0x00;//上电开绿光和关闭电压检测开关
        IOP1=0x00;//pwm输出高电平输出电压7.8V
        IOP2=0x00;//所有IO为低
        OEP0=0xFF;//P0口方向寄存器，0:INPUT,1:OUPUT;P03做输入,其余包括不使用的IO做输出
        OEP1=0xF0;//P1口方向寄存器，0:INPUT,1:OUPUT;P10,P11,P12,P13做输入,其余包括不使用的IO做输出
        OEP2=0x3C;//P2口方向寄存器，0:INPUT,1:OUPUT;P20,P21做输入,其余包括不使用的IO做输出
        PUP0=0x00;//P0上拉寄存器，0:disenable,1:enable,P01,P02,P05,P06,P07=ON
        PUP1=0x00;//P1上拉寄存器，0:disenable,1:enable,P16,P15,P11,P10=ON
        PUP2=0x00;//P2上拉寄存器，0:disenable,1:enable,P25,P24,P23,P22=ON
        PDP0=0x00;//P0下拉寄存器，0:disenable,1:enable
        PDP1=0x00;//P1下拉寄存器，0:disenable,1:enable
        PDP2=0x00;//P2下拉寄存器，0:disenable,1:enable
//======================IO direction,上下拉========================  
//======================Interrupt======================== 
        MCR=0x00;//总中断全能位，看门狗标志位，低功耗休眠模式标志位，外部中断int0,int1触发信号设置00:上升，01:下降,1X:电平变化触发
        INTE=0x00;//-,ADIE,-,T2IE,INT1IE,INT0IE,T1IE,T0IE,全部中断关闭
        INTF=0x00;//-,ADIF,-,T2IF,INT1IF,INT0IF,T1IF,T0IF,清除全部中断标志
   	   	INTE1=0x00;
   	   	INTF1=0x00;
        KBCR=0x00;//关闭所有键盘中断
           	    //T1IE=1;//打开T1定时中断
//======================Interrupt======================== 
//======================AD======================== 
           	//ADCR0=;//ADCHS4,ADCHS3,ADCHS2,ADCHS1,ADCHS0,-,ADEOC,ADON
          ADCR1=0x13;//高8位,低4位参考AD时钟FHIRC/16=16M/16=1M,采样15ADCLK
          ADIOS0=0x3E;//P0口模拟数字口切换，0:数字,1:模拟P20/AN1，P10/AN2，P11/AN3，P12/AN4，P13/AN5为模拟输入
          ADIOS1=0x00;//P1,P2口模拟数字口切换，0:数字,1:模拟,P03/AN13做模拟输入
   	   	  //OSADJCR=0x00;
   	   	  OSADJEN=0;//关闭0点漂移修补  
          ADEN=1;//使能AD模块
//======================AD======================== 
//======================PWM========================

//======================PWM======================== 
//======================Timer0,8位定时器,PWM======================== 
        //T0CR=0x49;//
        //T0CNT=0xA0;//100K
        //T0LOAD=0xA0;
        //T0DATA=20;
//======================Timer0,8位定时器,PWM======================== 
//======================Timer1,16位定时器,PWM======================== 
        // T1CR=0x08;//1：1 FHOSC
        // T1CNTH=0x3;//2K
        // T1CNTL=0x20;//2K
        // T1LOADH=0x03;
        // T1LOADL=0x20;
        // T1DATAH=0x01;//输出12V
        // T1DATAL=0xE5;
//======================Timer1,16位定时器,PWM======================== 
//======================Timer2,16位定时器======================== 
        // T2CR=0x04;//1/16 FCPU1M
        // T2CNTH=0x7A;//500mS
        // T2CNTL=0x12;//500mS
        // T2LOADH=0x7A;//500mS
        // T2LOADL=0x12;//500mS
//======================Timer2,16位定时器======================= 
//======================Timer3,8位定时器======================== 
        //T3CR=0x49;//
        //T3CNT=0xA0;//100K
        //T3LOAD=0xA0;
//======================Timer3,8位定时器======================= 
//======================IIC======================== 
        //IICCR=0x49;//
        //IICSR=0xA0;//100K
        //IICDR=0xA0;
   	   	  IICEN=0;//关闭IIC
//======================IIC======================= 
//======================IIC======================== 
        //IICCR=0x49;//
        //IICSR=0xA0;//100K
        //IICDR=0xA0;
//======================IIC======================= 
//======================EUART======================== 
        //SCON=0x49;//
        //SBUF=0xA0;//100K
        //SADDR=0xA0;
        //SADEN=0xA0;
//======================EUART======================= 
//======================EEPROM======================== 
        //EECR=0x49;//
        //EEMASK=0xA0;//100K
        //EEAR=0xA0;
        //EEDR=0xA0;
//======================EEPROM=======================           
}
//======================初始化程序=====================
//
//=====================AD转换模块16M/16=1M时钟=============
uint  SampleRelatedChannel(uchar channel,uchar VREF)//AD转换
{
        uchar i;
        uint TempADH,TempADL,middleval,AD_Low_Value,AD_High_Value;
   	   	AD_Low_Value=0;
   	   	AD_High_Value=0;
        middleval=0;               
        ADCR0=channel+VREF+0x03;//设定转换通道
        for(i=4;i>0;i--)//4次转换数据丢弃，为了稳定通道电压和参考电压
           {
           ADEOC=0;//启动AD转换
           while(ADEOC==0);//等待AD转换完成
           ADIF=0;//清除AD转换中断标志位     
           }
      for(i=10;i>0;i--)//10次正式转换，去掉最高和最低转换数据累加取平均值
          {
           ADEOC=0;//启动AD转换
           while(ADEOC==0);//等待AD转换完成
           ADIF=0;//清除AD转换中断标志位
           TempADL=ADRL;//转换值只有低4位有效。
           TempADL&=0x0F;//转换值只有低4位有效
           TempADH=ADRH;
           TempADH=(TempADH<<4)+TempADL;//AD转换数据12位组合到TempADH中
           if(i==10)
            {
             AD_High_Value=TempADH;
             AD_Low_Value=TempADH;
            }
           else 
            {
             if(TempADH>AD_High_Value)
               {AD_High_Value=TempADH;}
             else if(TempADH<AD_Low_Value)
               {AD_Low_Value=TempADH;}            
            }
          middleval+=TempADH;//AD数据在middleval中累加
          ClrWdt();//清看门狗
         }
         middleval=(middleval-AD_High_Value-AD_Low_Value)>>3;                  	         
         return ((uint)middleval);
}
//=====================AD转换模块16M/16=1M时钟=============

////===============   1ms延时子程序开始1M主频   ===========================
void Delay1mS_1M(uint i)
{
             uchar jj;
            for(;i>0;i--)
       	    {
               for(jj=122;jj>0;jj--)
       	        {
               	 Nop();
                }
             ClrWdt();         	       	//要加上清WDT的指令
       	    }
}
//===============   1ms延时子程序开始1M主频    ===========
//======================中断程序=====================
void int_isr(void)__interrupt
{
//++++++++++++++++压栈++++++++++++++++++
       	__asm
       	  movra        	_ABuf
       	  swapar       	_STATUS
       	  movra	       	_StatusBuf
       	__endasm;   
//++++++++++++++++压栈++++++++++++++++++
////===========定时器2中断=======================================================
         if(T2IF)//定时500MS
          {
           T2IF=0; 	   
          }
////===========定时器2中断=====================================================
//++++++++++++++++出栈++++++++++++++++++
       	__asm
       	  swapar       	_StatusBuf
       	  movra	       	_STATUS        
       	  swapr        	 _ABuf
       	  swapar       	       _ABuf
       	__endasm;   
//++++++++++++++++出栈++++++++++++++++++                
}
//======================中断程序=====================

