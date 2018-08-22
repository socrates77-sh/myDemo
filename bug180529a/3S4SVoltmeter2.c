
//��Ʒ���ƣ�           3��4����ѹ�����ʾ���Ƴ���
//��Ƭ���ͺ�:       	  MC32F7343,SOP16
//ʱ��Ƶ��:        	   16MHz(Internal RC)
//ϵͳʱ�ӣ�	          1MHZ(16M/16)
//��д:  	       	     �α�
//����:  	       	     2018/05/07
//���Ź�:             	����
//��λ:              	 �ڲ�
//�汾:              	 A0
//�޸ļ�¼:
#include "Wordlibrary.h"//�����ļ�
#include "mc32f7343.h"         	       	//�Ĵ�������ͷ�ļ�
//#include "mc3x-common.h"         	       	//�Ĵ�������ͷ�ļ�

//typedef unsigned char uchar;
//typedef unsigned short ushort;
//typedef unsigned int uint;
//typedef unsigned long ulong;
//#define Nop()        	       	       	__asm__("nop")
//#define ClrWdt()     	       	__asm__("clrwdt")
//#define Stop()       	       	       	__asm__("stop")
#define    	  EnableTotalINT       	       	  GIE=1        	       	       	//�����ж�---��һ���MCU���Ʒ�������ͬ
#define    	  DisableTotalINT      	       	  GIE=0        	       	       	//�ر����ж�
#define      	  STATUS   	   	   	   	     PFLAG             	       	    //����״̬����
#define      	  _STATUS   	   	   	   	     _PFLAG             	       	    //����״̬����
//#define          	      IO_channel       	       	   	   0x00//��������0.1Rȡ��AIN0
#define        	      NTC_channel          	       	   	0x10//��ذ�NTC,��ѹ10K AIN1
#define        	      BT_VIN_channel                   	   0x20//BT���ѹAIN2
#define        	      B3_VIN_channel                   	   0x30//V+ B3�ڵ��ѹAIN3
#define        	      B2_VIN_channel               	      0x40//B2�ڵ��ѹAIN4
#define               B1_VIN_channel                   	   0x50//B1�ڵ��ѹAIN5
//#define          	       B_channel       	       	   	   	   	   	   	0x60//��������ѹAIN6
//#define          	       Charg_vin_channel       	       	   	   	   	0x70//��������ѹAIN7
//#define          	       VR_channel              	       	   	   	   	0x80//�������ѹAIN8
//#define              	   NTC_channel             	       	   	   	   	0x90//NTC����AIN9
//#define          	       	IO_channel         	       	   	   	   	   	0xA0//������ֵAIN10
//#define              	    NTC_channel            	   	   	   	   	   	0xB0//NTC����AIN11
//#define          	       	ID_channel         	           	   	   	   	0xC0//��ذ���ʾAIN12
//#define              	SEC_VIN_channel            	   	   	   	0xD0//��������ѹAIN13
#define        	       GND_channel                 	   	   	0xE0//Ƭ��GND
#define            	 VDD_C4_channel                	   	   	0xF0//�ڲ�VDD/4


#define    	       	      VREF_2V      	       	       	   0x00//�ο���ѹ2V
#define    	       	      VREF_VDD     	       	       	   0x0C//�ο���ѹVDD
//=================ADת��ͨ������==========================================
////=================IO�ڶ���==========================================
#define    	   	   	   	RLED           	       	       	   	   	P25D//��ɫLED
#define    	   	   	   	RLED_ON            	       	       	P25D=1//��ɫLED��
#define    	   	   	   	RLED_OFF           	       	       	P25D=0//��ɫLED��
#define    	   	   	   	GLED           	       	       	   	   	P05D//��ɫLED
#define    	   	   	   	GLED_ON            	       	       	P05D=1//��ɫLED��
#define    	   	   	   	GLED_OFF           	       	       	P05D=0//��ɫLED��

#define	   	   	   	   	SCE_L  	   	   	   	   	   	   	   	   	   	   	P17OE=1;P17D=0 //Ƭѡ �л�Ϊ����������
#define	   	   	   	   	SCE_H  	   	   	   	   	   	   	   	   	   	   	P17OE=0;P17PU=1 //Ƭѡ �л�Ϊ���룬������
#define	   	   	   	   	RES_L  	   	   	   	   	   	   	   	   	   	   	P14OE=1;P14D=0//��λ,�л�Ϊ����������
#define	   	   	   	   	RES_H  	   	   	   	   	   	   	   	   	   	   	P14OE=0;P14PU=1 //��λ,�л�Ϊ���룬������
#define	   	   	   	   	DC_L   	   	   	   	   	   	   	   	   	   	   	P00OE=1;P00D=0 //1д���ݣ�0дָ��,�л�Ϊ����������
#define	   	   	   	   	DC_H   	   	   	   	   	   	   	   	   	   	   	P00OE=0;P00PU=1 //1д���ݣ�0дָ��,�л�Ϊ���룬������
#define	   	   	   	   	SDIN_L 	   	   	   	   	   	   	   	   	   	   	P03OE=1;P03D=0 //����,�л�Ϊ����������
#define	   	   	   	   	SDIN_H 	   	   	   	   	   	   	   	   	   	   	P03OE=0;P03PU=1 //����,�л�Ϊ���룬������
#define	   	   	   	   	SCLK_L 	   	   	   	   	   	   	   	   	   	   	P04OE=1;P04D=0 //ʱ��,�л�Ϊ����������
#define	   	   	   	   	SCLK_H 	   	   	   	   	   	   	   	   	   	   	P04OE=0;P04PU=1 //ʱ��,�л�Ϊ���룬������

#define    	   	   	   	   	  EEPROM_Write_Data	   	   	   	   	   	   	EERW=1//��EEPROMд����
#define    	   	   	   	   	  EEPROM_Read_Data 	   	   	   	   	   	   	   	EERW=0//��EEPROM������
#define    	   	   	   	   	  EEPROM_Start_Run 	   	   	   	   	   	   	   	EETRIG=1//����EEPROM��д����
#define    	   	   	   	   	  EEPROM_EEMASK_Set	   	   	   	   	   	   	EEMASK=0x5A;EEMASK=0xA5//д��5A��A5�����д��
#define    	   	   	   	   	  EEPROM_EEAR_Address  	   	   	   	   	   	   	EEAR//EEPROM��ַ
#define    	   	   	   	   	  EEPROM_EEDR_Data 	   	   	   	   	   	   	   	EEDR//EEPROM����
//=================IO�ڶ���==========================================
//=================λ��������==========================================
//λ����
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
//=================λ��������==========================================
//=================����������====================
void   	       	   	   	initial(void);   //���绯
uint       	       	   	SampleRelatedChannel(uchar channel,uchar VREF); //ADת��
void                   	InitRam(void);//��Ĵ���
void                   	Delay1mS_1M(uint i);//��ʱ�ӳ���
void   	   	   	   	   	AD_Init_mode(void);//AD�޵�����
uchar      	       	   	EEPROM_Read(uchar  	Address);//EEPROM������
void   	       	   	   	EEPROM_Write(uchar 	Address,uchar  	Data);//EEPROMд����
void   	       	   	   	ADC_Value_Ratio(void);//��ѹУ׼����
void               	   	All_Adc_Convert(void);//ADת��IO,NTC,VIN


void   	   	   	   	   	   	LCD_write_byte(unsigned char dt, unsigned char command);//ʹ��SPI�ӿ�д���ݵ�LCD
void   	   	   	   	   	   	LCD_init(void);//5110LCD��ʼ��
void   	   	   	   	   	   	LCD_set_XY(unsigned char X, unsigned char Y);//����LCD���꺯��
void   	   	   	   	   	   	LCD_clear(void);//LCD��������
void   	   	   	   	   	   	LCD_write_hanzi(unsigned char row, unsigned char page,unsigned char c); //��ʾ16����*16���ߣ������к��ֵȰ����row:�� page:ҳ dd:�ַ�
void   	   	   	   	   	   	LCD_write_shu57(unsigned char row, unsigned char page,unsigned char c); //��ʾ5����*7���ߣ�������������ĸ���ŵȰ����row:�� page:ҳ dd:�ַ�
//=================����������====================
uchar  	        ABuf,StatusBuf;//�ж��ֳ���������
uint   	   	   	   	AD_Init;//�޵��Ĵ���
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
//===========================������ʼ========================================
void            main(void)
{
   	   	   	initial();//��ʼ����Ƭ�� 
   	   	   	InitRam();//��������RAM
   	   	   	DisableTotalINT;//�ر����ж�
   	   	   	RLED_OFF;//�غ��LED
   	   	   	GLED_ON;//���̹�LED
   	   	   	Delay1mS_1M(30);//��ʱʱ50MS  	
//====================AD�޵�=======================
   	   	   	AD_Init_mode();// AD�޵����򣬽�����Ʈ�ƣ�
   	   	   	OSADJEN=0;//�ر� ADC ���ƫ���޵�ģʽ
   	       	ADCR1=0x13;//��8λ,��4λ�ο�ADʱ��FHIRC/16=16M/16=1M,����15ADCLK
   	   	   	Delay1mS_1M(10);//��ʱʱ50MS  	   	   	
   	   	   	AD_Init=SampleRelatedChannel(GND_channel,VREF_2V); 
   	   	   	if(AD_Init>0)
   	   	   	  {
   	   	   	   	AD_Init_mode();// AD�޵����򣬽�����Ʈ�ƣ�
   	   	   	   	OSADJEN=0;//�ر� ADC ���ƫ���޵�ģʽ
   	   	   	   	//ADCR1=0x13;//��8λ,��4λ�ο�ADʱ��FHIRC/16=16M/16=1M,����15ADCLK   	   	   	   	  
   	   	   	  }
   	   	   	ADCR1=0x13;//��8λ,��4λ�ο�ADʱ��FHIRC/16=16M/16=1M,����15ADCLK 	   	   	  
//====================AD�޵�===================================  	   	   	
//====================��־λ��������ʼ��======================  	   	
   	   	   	Flag1.byte=0;//���־�Ĵ���
   	   	   	//Delay1mS_1M(100);//��ʱʱ50MS
   	   	   	
//====================��־λ��������ʼ��======================  	   	
//====================����Ƿ����У׼����======================
   	   	   	ADC_Ratio_Inter_JI=0;
   	   	   	LooP_JI=50;
   	   	   	Delay1mS_1M(100);//��ʱʱ50MS
   	   	   	while(LooP_JI>0)
   	   	   	   {
   	   	   	   	   	LooP_JI--;  
   	   	   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC��ѹADֵ������ѹ1.2MS 
   	   	   	   	   	if((NTC_AD>3945)&&(NTC_AD<3980))//���NTC����ֵΪ300K������У׼�ӳ���
   	   	   	   	   	  {
   	   	   	   	   	    ADC_Ratio_Inter_JI++;
   	   	   	   	   	   	if(ADC_Ratio_Inter_JI>=40)
   	   	   	   	   	   	   {
   	   	   	   	   	   	   	ADC_Value_Ratio();//��ѹУ׼����    
   	   	   	   	   	   	   }
   	   	   	   	   	  }
   	   	   	   }
//====================����Ƿ����У׼����======================
////====================��У׼����====================== 
   	   	   	  Ratio_Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM������  
   	   	   	  Ratio_Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM������ 
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM������
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM������   	   	   	   	   	   	   	  
   	   	   	  B1_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B1_Ratio_VIN_AD=((B1_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM������
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM������   	   	   	   	   	   	   	  
   	   	   	  B2_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B2_Ratio_VIN_AD=((B2_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM������
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM������   	   	   	   	   	   	   	  
   	   	   	  B3_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  B3_Ratio_VIN_AD=((B3_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	   	   	   	   	   	  
   	   	   	  Read_EEPROM_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM������
   	   	   	  Read_EEPROM_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM������   	   	   	   	   	   	   	  
   	   	   	  BT_Ratio_VIN_AD=Read_EEPROM_Temp_H;
   	   	   	  BT_Ratio_VIN_AD=((BT_Ratio_VIN_AD<<8)+Read_EEPROM_Temp_L);   	   	
   	   	   	  if((Ratio_Flag1_A5!=0xA5)||(Ratio_Flag2_CA!=0xCA)||(B1_Ratio_VIN_AD<3350)||(B1_Ratio_VIN_AD>3530)||(B2_Ratio_VIN_AD<3350)||(B2_Ratio_VIN_AD>3530)||(B3_Ratio_VIN_AD<3350)||(B3_Ratio_VIN_AD>3530)||(BT_Ratio_VIN_AD<3350)||(BT_Ratio_VIN_AD>3530))//
   	   	   	    {//�жϱ�־λ�����ж�B1��B2��B3��BTϵ���Ƿ����޶���Χ��
   	   	   	   	  RLED_ON;//���LED��
   	   	   	   	  GLED_ON;//�̹�LED�� 	   	   	   	  
   	   	   	   	   while(1)//���2HZ��˸
   	   	   	   	   	 {
   	   	   	   	   	  Delay1mS_1M(500);//��ʱʱ250Ms  	
   	   	   	   	   	  GLED=!GLED;
   	   	   	   	   	  RLED=!RLED;
   	   	   	   	   	 }     	
   	   	   	   	}  	   	   	  
////====================��У׼����======================  
   	   	   	   	  LCD_init();  //��ʼ��LCDģ�� 
   	   	   	   	  LCD_clear();
   	   	   	   	  LCD_write_shu57(0,0,13);//B      	(�У�ҳ���ַ�)   	
   	   	   	   	  LCD_write_shu57(1,0,14);//T          	(�У�ҳ���ַ�)   	
   	   	   	   	  LCD_write_shu57(2,0,11);//: (�У�ҳ���ַ�) 	   	
   	   	   	   	  LCD_write_shu57(3,0,4);//0           	(�У�ҳ���ַ�)
   	   	   	   	  LCD_write_shu57(4,0,10);//.          	(�У�ҳ���ַ�)
   	   	   	   	  LCD_write_shu57(5,0,2);//0           	(�У�ҳ���ַ�)
   	   	   	   	  LCD_write_shu57(6,0,0);//0           	(�У�ҳ���ַ�)   	
   	   	   	   	  LCD_write_shu57(7,0,15);//V          	(�У�ҳ���ַ�)   	   	
   	   	   	   	  LCD_write_shu57(8,0,1);//0           	(�У�ҳ���ַ�)
   	   	   	   	  LCD_write_shu57(9,0,6);//0           	(�У�ҳ���ַ�)
       	   	   	  LCD_write_shu57(10,0,10);//.         	(�У�ҳ���ַ�)
       	   	   	  LCD_write_shu57(11,0,8);//0          	(�У�ҳ���ַ�)
       	   	   	  LCD_write_shu57(12,0,0);//0          	(�У�ҳ���ַ�)   	
       	   	   	  LCD_write_shu57(13,0,15);//V         	(�У�ҳ���ַ�)   	

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
   	   	   	   	LCD_write_hanzi(0,4,0);//��
   	   	   	   	LCD_write_hanzi(1,4,1);//��
   	   	   	   	LCD_write_hanzi(2,4,2);//��
   	   	   	   	LCD_write_hanzi(3,4,3);//��



       	   	   	   	   	   	   	
////==================TEST===================
//
//
//
//
////==================TEST===================
////=================������תѭ��========================    
            while(1)
   	   	   	   	{
   	   	   	   	All_Adc_Convert(); //����ͨ��ADת��
   	   	   	   	}  
//=================������תѭ��========================

}//���������
//======================EEPROM������======================
uchar      EEPROM_Read(uchar   	Address)//EEPROM������
{
   	   	   	uchar  	 EEPROM_Data_Temp;
   	   	   	EEPROM_EEAR_Address=Address;//���͵�ַ
   	   	   	EEPROM_EEMASK_Set;//���� 	   	   
   	   	   	EEPROM_Read_Data;//������
   	   	   	EEPROM_Start_Run;//��ʼ��дEEPROM
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();//��ֹʱ����� 	
   	   	   	EEPROM_Data_Temp=EEPROM_EEDR_Data; 	
   	   	   	 return EEPROM_Data_Temp;      	
}
//======================EEPROM������======================
//======================EEPROMд����======================
void   	       	   	   	EEPROM_Write(uchar 	Address,uchar  	Data)//EEPROMд����
{  	   	 
   	   	   	EEPROM_EEAR_Address=Address;//���͵�ַ
   	   	   	EEPROM_EEDR_Data=Data;//��������
   	   	   	EEPROM_EEMASK_Set;//����
   	   	    EEPROM_Write_Data;//д����
   	   	   	EEPROM_Start_Run;//��ʼ��дEEPROM
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();
   	   	   	Nop();//��ֹʱ����� 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	           	
}
//======================EEPROMд����======================
//================================================================ ��ʾ������=========================================================

// --------------------------------------------
// LCD_write_byte: ʹ��SPI�ӿ�д���ݵ�LCD
// ���������dt��д������ݣ�
// command ��д����/����ѡ��
// ��д���ڣ�20080918 
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
// LCD_init: 3310LCD��ʼ��
// ��д���ڣ�20080918 
// -----------------------------------------
void LCD_init(void)
{
   	SCE_H;
   	RES_H;
   	Delay1mS_1M(1);
   	RES_L;     	
   	Delay1mS_1M(1);
   	RES_H;
   	LCD_write_byte(0x21,0);//��ʼ��Lcd,�����趨ʹ������ָ��
   	LCD_write_byte(0xC6,0);//�趨Һ��ƫ�õ�ѹ(��--�ͣ�
   	LCD_write_byte(0x20,0);//ʹ�û���ָ��
   	LCD_write_byte(0x0C,0);//�趨��ʾģʽ��������ʾ
}
// -------------------------------------------
// LCD_set_XY: ����LCD���꺯��
// ���������X��0��83  Y��0��5
// ��д���ڣ�20080918 
// ---------------------------------------------
void LCD_set_XY(unsigned char X, unsigned char Y)
{
   	LCD_write_byte(0x40 | Y, 0);// column
   	LCD_write_byte(0x80 | X, 0);// row
} 
// ------------------------------------------
// LCD_clear: LCD��������
// ��д���ڣ�20080918 
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
                        ClrWdt();//�忴�Ź�������     	   	   	
                    } 
            }
}
// ---------------------------------------------
// LCD_write_shu57: ��ʾ5����*7���ߣ�������������ĸ���ŵȰ����
// ���������c����ʾ���ַ���
// ��д���ڣ�20080918 //row:�� page:ҳ dd:�ַ�
// -----------------------------------------------
void LCD_write_shu57(uchar row,uchar page,uchar c)
{
   	uchar i;       	
   	ClrWdt();//�忴�Ź�������
   	LCD_set_XY(row*6, page);// �У�ҳ 
   	for(i=0; i<5;i++) 
   	{
   	 LCD_write_byte(shuzi57[c*5+i],1); 
   	}
   	ClrWdt();//�忴�Ź�������     	
}
// ---------------------------------------------
// ---------------------------------------------
// LCD_write_hanzi: ��ʾ16����*16���ߣ������к��ֵȰ����
// ���������c����ʾ���ַ���
// ��д���ڣ�20080918 //row:�� page:ҳ dd:�ַ�
// -----------------------------------------------
void LCD_write_hanzi(uchar row,uchar page,uchar c)
{  	
   	uchar i;
   	ClrWdt();//�忴�Ź�������
   	LCD_set_XY((row*16)+19,page);// �У�ҳ 
   	for(i=0; i<16;i++) 
   	{
   	   	LCD_write_byte(hanzi[c*32+i],1); 
   	}
   	ClrWdt();//�忴�Ź�������
    LCD_set_XY((row*16)+19,page+1);// �У�ҳ 
   	for(i=16; i<32;i++) 
   	{
   	   	LCD_write_byte(hanzi[c*32+i],1);
   	}      	
}
//================================================================ ��ʾ������=========================================================
//======================��ѹADCУ׼����======================
void   	       	   	   	ADC_Value_Ratio(void)//��ѹУ׼����
{
 //У׼��־λ��A5=0x00λ��CA=0x01λ
 //B1_Ratio_VIN_AD=0x02��λ��0x03��λ
 //B2_Ratio_VIN_AD=0x04��λ��0x05��λ
 //B3_Ratio_VIN_AD=0x06��λ��0x07��λ
 //BT_Ratio_VIN_AD=0x08��λ��0x09��λ
 //LED:��������ͬ�����ɹ�����������ʧ�ܺ���������
   	   	   	uchar  	   	JI_Temp,AD_Temp_H,AD_Temp_L;
   	   	   	uchar  	   	Flag1_A5,Flag2_CA;
   	   	   	uint   	   	B1_Ratio_Read_Value,B2_Ratio_Read_Value,B3_Ratio_Read_Value,BT_Ratio_Read_Value;
       	   	RLED_ON;//�غ��LED
   	   	   	GLED_ON;//���̹�LED
   	   	   	JI_Temp=0;
   	   	   	while(1)//
   	   	   	   	{
   	   	   	   	   	JI_Temp++;//���ڵ�ѹΪ4.2V����2.5%���μ���ѹ����10V��NTCΪ300K����
   	   	   	   	   	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT���ѹADֵ������ѹ1.2MS
   	   	   	   	   	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3���ѹADֵ������ѹ1.2MS
   	   	   	   	   	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2���ѹADֵ������ѹ1.2MS
   	   	   	   	   	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1���ѹADֵ������ѹ1.2MS
   	   	   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC��ѹADֵ������ѹ1.2MS  
   	   	   	   	   	if(JI_Temp>=100)
   	   	   	   	   	  {
   	   	   	   	   	   	 if((NTC_AD>3945)&&(NTC_AD<3980)&&(B1_VIN_AD>=3350)&&(B1_VIN_AD<=3530)&&(B2_VIN_AD>=3350)&&(B2_VIN_AD<=3530)&&(B3_VIN_AD>=3350)&&(B3_VIN_AD<=3530)&&(BT_VIN_AD>=3350)&&(BT_VIN_AD<=3530))//
   	   	   	   	   	   	    {//���ݼ����ȷ����EEPROMд������
   	   	   	   	   	   	   	 //========================д����=================================
   	   	   	   	   	   	   	  EEPROM_Write(0x00,0xA5);//ǰ��ַ��������,0xA5��һ��ʶλ
   	   	   	   	   	   	   	  EEPROM_Write(0x01,0xCA);//ǰ��ַ��������,0xCA�ڶ���ʶλ
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B1_VIN_AD&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B1_VIN_AD>>8)&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  EEPROM_Write(0x02, AD_Temp_H);//ǰ��ַ��������,B1_VIN_AD��λ
   	   	   	   	   	   	   	  EEPROM_Write(0x03,AD_Temp_L);//ǰ��ַ��������,B1_VIN_AD��λ   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B2_VIN_AD&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B2_VIN_AD>>8)&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  EEPROM_Write(0x04, AD_Temp_H);//ǰ��ַ��������,B2_VIN_AD��λ
   	   	   	   	   	   	   	  EEPROM_Write(0x05,AD_Temp_L);//ǰ��ַ��������,B2_VIN_AD��λ
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(B3_VIN_AD&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((B3_VIN_AD>>8)&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  EEPROM_Write(0x06, AD_Temp_H);//ǰ��ַ��������,B3_VIN_AD��λ
   	   	   	   	   	   	   	  EEPROM_Write(0x07,AD_Temp_L);//ǰ��ַ��������,B3_VIN_AD��λ
   	   	   	   	   	   	   	  AD_Temp_L=(uchar)(BT_VIN_AD&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  AD_Temp_H=(uchar)((BT_VIN_AD>>8)&0x00FF);//ȡAD��8λ
   	   	   	   	   	   	   	  EEPROM_Write(0x08, AD_Temp_H);//ǰ��ַ��������,BT_VIN_AD��λ
   	   	   	   	   	   	   	  EEPROM_Write(0x09,AD_Temp_L);//ǰ��ַ��������,BT_VIN_AD��λ 
   	   	   	   	   	   	   	 //===========================д����===================================
   	   	   	   	   	   	   	 //===========================������У׼===================================
   	   	   	   	   	   	   	  Flag1_A5=EEPROM_Data_Value=EEPROM_Read(0x00);//EEPROM������ 
   	   	   	   	   	   	   	  Flag2_CA=EEPROM_Data_Value=EEPROM_Read(0x01);//EEPROM������ 
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x02);//EEPROM������
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x03);//EEPROM������	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B1_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B1_Ratio_Read_Value=((B1_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x04);//EEPROM������
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x05);//EEPROM������	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B2_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B2_Ratio_Read_Value=((B2_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x06);//EEPROM������
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x07);//EEPROM������	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  B3_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  B3_Ratio_Read_Value=((B3_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  AD_Temp_H=EEPROM_Data_Value=EEPROM_Read(0x08);//EEPROM������
   	   	   	   	   	   	   	  AD_Temp_L=EEPROM_Data_Value=EEPROM_Read(0x09);//EEPROM������	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  BT_Ratio_Read_Value=AD_Temp_H;
   	   	   	   	   	   	   	  BT_Ratio_Read_Value=((BT_Ratio_Read_Value<<8)+AD_Temp_L);	   	   	   	   	   	   	   	  
   	   	   	   	   	   	   	  if((Flag1_A5==0xA5)&&(Flag2_CA==0xCA)&&(B1_Ratio_Read_Value==B1_VIN_AD)&&(B2_Ratio_Read_Value==B2_VIN_AD)&&(B3_Ratio_Read_Value==B3_VIN_AD)&&(BT_Ratio_Read_Value==BT_VIN_AD))
   	   	   	   	   	   	   	     {
   	   	   	   	   	   	   	   	  RLED_OFF;//���LED��
   	   	   	   	   	   	   	   	  while(1)//���2HZ��˸
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	 Delay1mS_1M(500);//��ʱʱ250Ms   	
   	   	   	   	   	   	   	   	   	 GLED=!GLED;
   	   	   	   	   	   	   	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	 
   	   	   	   	   	   	   	   	 } 	   	   	   	   	   	 
   	   	   	   	   	   	   	 //===========================������У׼=================================== 	   	   	   	   	   	   	 
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	//========================ʧ��====================== 	   	
   	   	   	                  GLED_OFF;//���̹�LED
   	   	   	   	   	   	   	  while(1)//���2HZ��˸
   	   	   	   	   	   	   	    {
   	   	   	   	   	   	   	   	 Delay1mS_1M(250);//��ʱʱ250Ms   	
   	   	   	   	   	   	   	   	 RLED=!RLED;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	//========================ʧ��====================== 	   	   	   	   	   	   	   	
   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	}      	
}
//======================��ѹADCУ׼����======================
//======================ADC��ͨ��ת������======================
void               	   	All_Adc_Convert(void)//ADת��IO,NTC,VIN
{
   	   	   	uint   	VIN_AD_Temp1,VIN_AD_Temp2;
   	   	   	BT_VIN_AD=SampleRelatedChannel(BT_VIN_channel,VREF_VDD); //BT���ѹADֵ������ѹ1.2MS
   	   	   	B3_VIN_AD=SampleRelatedChannel(B3_VIN_channel,VREF_VDD); //B3���ѹADֵ������ѹ1.2MS
   	   	   	B2_VIN_AD=SampleRelatedChannel(B2_VIN_channel,VREF_VDD); //B2���ѹADֵ������ѹ1.2MS
   	   	   	B1_VIN_AD=SampleRelatedChannel(B1_VIN_channel,VREF_VDD); //B1���ѹADֵ������ѹ1.2MS
   	   	   	NTC_AD=SampleRelatedChannel(NTC_channel,VREF_VDD); //NTC��ѹADֵ������ѹ1.2MS  
   	   	   	//================================���ڵ�ص�ѹ����AD����==============================================
   	   	   	    //==================B1===================================
   	   	   	   	if(B1_Ratio_VIN_AD>3440)//B1��ѹAD��������
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
   	   	   	   	if(B2_Ratio_VIN_AD>3440)//B1��ѹAD��������
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
   	   	   	   	if(B3_Ratio_VIN_AD>3440)//B1��ѹAD��������
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
   	   	   	   	if(BT_3S_Series_Flag)//3����ذ�
   	   	   	       {
   	   	   	   	   	if(BT_Ratio_VIN_AD>3440)//B1��ѹAD��������
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
   	   	   	   	   	if(BT_Ratio_VIN_AD>3440)//B1��ѹAD��������
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
   	   	   	//================================���ڵ�ص�ѹ����AD����==============================================   	   	   	   	
   	   	   	//================================���ڵ�ص�ѹAD����==============================================
   	   	   	    //================B1,B2==================================
   	   	   	   	B1_Single_VIN_AD=B1_VIN_AD;//B1���ڵ�ѹ���ڽڵ��ѹ;
   	   	   	   	VIN_AD_Temp2=B2_VIN_AD*2;//B2���ڵ�ѹת��
   	   	   	   	if(VIN_AD_Temp2>B1_VIN_AD)
   	   	   	   	  {
   	   	   	   	   	B2_Single_VIN_AD=VIN_AD_Temp2-B1_VIN_AD;//B2���ڵ�ѹת�� 
   	   	   	   	  }
   	   	   	   	else 
   	   	   	   	  {
   	   	   	   	   	B2_Single_VIN_AD=0;  
   	   	   	   	  }
   	   	   	    //================B1,B2==================================
   	   	   	   	//================B3,B4==================================
   	   	   	   	if(BT_4S_Series_Flag)//4����ذ�
   	   	   	   	   {
   	   	   	   	   	VIN_AD_Temp1=B2_VIN_AD*2;//B3���ڵ�ѹת��   
   	   	   	   	   	VIN_AD_Temp2=B3_VIN_AD*3;//B3���ڵ�ѹת��
   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	  {
   	   	   	   	   	   	B3_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//B3���ڵ�ѹת�� 
   	   	   	   	   	  }
   	   	   	   	   	else 
   	   	   	   	   	  {
   	   	   	   	   	   	B3_Single_VIN_AD=0;  
   	   	   	   	   	  }	   	   	   	   	
   	   	   	   	   	VIN_AD_Temp1=B3_VIN_AD*3;//BT���ڵ�ѹת��   
   	   	   	   	   	VIN_AD_Temp2=BT_VIN_AD*4;//BT���ڵ�ѹת��
   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	  {
   	   	   	   	   	   	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT���ڵ�ѹת�� 
   	   	   	   	   	  }
   	   	   	   	   	else 
   	   	   	   	   	  {
   	   	   	   	   	   	BT_Single_VIN_AD=0;  
   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	   }
   	   	   	   	else if(BT_3S_Series_Flag)//3����ذ�
   	   	   	   	   	{
   	   	   	   	   	    B3_Single_VIN_AD=0;    	
   	   	   	   	   	   	VIN_AD_Temp1=B2_VIN_AD*2;//BT���ڵ�ѹת��   
   	   	   	   	   	   	VIN_AD_Temp2=BT_VIN_AD*4;//BT���ڵ�ѹת��
   	   	   	   	   	   	if(VIN_AD_Temp2>VIN_AD_Temp1)
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	BT_Single_VIN_AD=VIN_AD_Temp2-VIN_AD_Temp1;//BT���ڵ�ѹת�� 
   	   	   	   	   	   	  }
   	   	   	   	   	   	else 
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	BT_Single_VIN_AD=0;  
   	   	   	   	   	   	  }	   	   	   	   	   	
   	   	   	   	   	}  	
   	   	   	   	//================B3,B4==================================  	
   	   	   	//================================���ڵ�ص�ѹAD����============================================== 	   	   	   	
//uint         	    BT_Ratio_VIN_AD,B3_Ratio_VIN_AD,B2_SRatio_VIN_AD,B1_Ratio_VIN_AD;
   	   	   	
}
//======================ADC��ͨ��ת������======================
//=========================AD�޵�����=======================
void   	   	   	   	  AD_Init_mode(void)//AD�޵�����
{
//�޵����̣�
//1���޵�ֵ����Ϊ0��ADת��ֵΪ0�͵�Ϊ��ƫ���Ȼ����������С��ֱ��ADֵΪ0���޵�ֵΪ0Ϊֹ��
//2���޵�ֵ����Ϊ0��ADת��ֵ����0��Ϊ����ƫ�������Ӵ��޵�ֵ��ֱ�����޵�ֵ����ADֵΪ0Ϊֹ��
   	   	ADCR0=0xe0;//2V�ο���ѹ ͨ��GND
   	   	OSADJEN=1;//ʹ�� ADC ���ƫ���޵�ģʽ
   	   	ADCR1=0x33;//FHIRC/64,15��ADCLK
   	   	OSADJCR&=0xc0;//�޵�ֵ���㿪ʼ�������޵�0����6λȫΪ0   	 
   	   	ADEN=1;
   	   	ADEOC=0;
   	   	while(ADEOC==0);//�ȴ�ת������               	   	   	
   	   	ADH_temp=ADRH;
   	   	ADL_temp=ADRL; 	   	   	   	 
   	   	if((ADH_temp==0)&&(ADL_temp==0))//���ת�����Ϊ0
   	   	   	{
   	   	   	   	OSADJCR|=0x3f;//�����޵����ֵ
   	   	   	   	Data_OSADJCR=OSADJCR&0x1f;//���������޵����ֵ����
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
//=========================AD�޵�����=======================
//================��Ĵ���====================
void    InitRam(void)//��Ĵ���
{
        __asm 
//=================����0x100-0x17F=============
        movai      	0x01
        movra      	FSR1
        movai      	0x7F
        movra      	FSR0
        clrr       	INDF2
        djzr   	   	FSR0  
        goto       	$-2
        clrr        INDF2 
//=================����0x100-0x17F=============
//=================����0x00-0xFF=============
        movai      	  0xFF
        movra      	  FSR0
        clrr       	  INDF0
        djzr   	    FSR0  
        goto       	  $-2
        clrr        INDF0  
//=================����0x00-0xFF=============   
        __endasm;
}
//================��Ĵ���====================
////======================��ʼ������=====================
void initial(void)
{
//======================System clock======================== 
        //OSCM|=0x00;//����ģʽ�Ĵ���CLKS: 0:��Ƶʱ��,1:��Ƶʱ��,��ƵLFEN: 0:ֹͣ(����ע) 1:�������� ��ƵHFEN: 0:ֹͣ(����ע) 1:��������
                   //��Ƶʱ����ϵͳʱ�ӣ���Ƶ�͵�ƵSTOP��ֹͣ����
           	CLKS=0;//����ʱ����Ϊϵͳʱ��
           	LFEN=1;//��Ƶʱ�����߳�������.
           	HFEN=1;//��Ƶʱ�����߳���������
//======================System clock========================         
//======================IO direction,������======================== 
        IOP0=0x00;//�ϵ翪�̹�͹رյ�ѹ��⿪��
        IOP1=0x00;//pwm����ߵ�ƽ�����ѹ7.8V
        IOP2=0x00;//����IOΪ��
        OEP0=0xFF;//P0�ڷ���Ĵ�����0:INPUT,1:OUPUT;P03������,���������ʹ�õ�IO�����
        OEP1=0xF0;//P1�ڷ���Ĵ�����0:INPUT,1:OUPUT;P10,P11,P12,P13������,���������ʹ�õ�IO�����
        OEP2=0x3C;//P2�ڷ���Ĵ�����0:INPUT,1:OUPUT;P20,P21������,���������ʹ�õ�IO�����
        PUP0=0x00;//P0�����Ĵ�����0:disenable,1:enable,P01,P02,P05,P06,P07=ON
        PUP1=0x00;//P1�����Ĵ�����0:disenable,1:enable,P16,P15,P11,P10=ON
        PUP2=0x00;//P2�����Ĵ�����0:disenable,1:enable,P25,P24,P23,P22=ON
        PDP0=0x00;//P0�����Ĵ�����0:disenable,1:enable
        PDP1=0x00;//P1�����Ĵ�����0:disenable,1:enable
        PDP2=0x00;//P2�����Ĵ�����0:disenable,1:enable
//======================IO direction,������========================  
//======================Interrupt======================== 
        MCR=0x00;//���ж�ȫ��λ�����Ź���־λ���͹�������ģʽ��־λ���ⲿ�ж�int0,int1�����ź�����00:������01:�½�,1X:��ƽ�仯����
        INTE=0x00;//-,ADIE,-,T2IE,INT1IE,INT0IE,T1IE,T0IE,ȫ���жϹر�
        INTF=0x00;//-,ADIF,-,T2IF,INT1IF,INT0IF,T1IF,T0IF,���ȫ���жϱ�־
   	   	INTE1=0x00;
   	   	INTF1=0x00;
        KBCR=0x00;//�ر����м����ж�
           	    //T1IE=1;//��T1��ʱ�ж�
//======================Interrupt======================== 
//======================AD======================== 
           	//ADCR0=;//ADCHS4,ADCHS3,ADCHS2,ADCHS1,ADCHS0,-,ADEOC,ADON
          ADCR1=0x13;//��8λ,��4λ�ο�ADʱ��FHIRC/16=16M/16=1M,����15ADCLK
          ADIOS0=0x3E;//P0��ģ�����ֿ��л���0:����,1:ģ��P20/AN1��P10/AN2��P11/AN3��P12/AN4��P13/AN5Ϊģ������
          ADIOS1=0x00;//P1,P2��ģ�����ֿ��л���0:����,1:ģ��,P03/AN13��ģ������
   	   	  //OSADJCR=0x00;
   	   	  OSADJEN=0;//�ر�0��Ư���޲�  
          ADEN=1;//ʹ��ADģ��
//======================AD======================== 
//======================PWM========================

//======================PWM======================== 
//======================Timer0,8λ��ʱ��,PWM======================== 
        //T0CR=0x49;//
        //T0CNT=0xA0;//100K
        //T0LOAD=0xA0;
        //T0DATA=20;
//======================Timer0,8λ��ʱ��,PWM======================== 
//======================Timer1,16λ��ʱ��,PWM======================== 
        // T1CR=0x08;//1��1 FHOSC
        // T1CNTH=0x3;//2K
        // T1CNTL=0x20;//2K
        // T1LOADH=0x03;
        // T1LOADL=0x20;
        // T1DATAH=0x01;//���12V
        // T1DATAL=0xE5;
//======================Timer1,16λ��ʱ��,PWM======================== 
//======================Timer2,16λ��ʱ��======================== 
        // T2CR=0x04;//1/16 FCPU1M
        // T2CNTH=0x7A;//500mS
        // T2CNTL=0x12;//500mS
        // T2LOADH=0x7A;//500mS
        // T2LOADL=0x12;//500mS
//======================Timer2,16λ��ʱ��======================= 
//======================Timer3,8λ��ʱ��======================== 
        //T3CR=0x49;//
        //T3CNT=0xA0;//100K
        //T3LOAD=0xA0;
//======================Timer3,8λ��ʱ��======================= 
//======================IIC======================== 
        //IICCR=0x49;//
        //IICSR=0xA0;//100K
        //IICDR=0xA0;
   	   	  IICEN=0;//�ر�IIC
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
//======================��ʼ������=====================
//
//=====================ADת��ģ��16M/16=1Mʱ��=============
uint  SampleRelatedChannel(uchar channel,uchar VREF)//ADת��
{
        uchar i;
        uint TempADH,TempADL,middleval,AD_Low_Value,AD_High_Value;
   	   	AD_Low_Value=0;
   	   	AD_High_Value=0;
        middleval=0;               
        ADCR0=channel+VREF+0x03;//�趨ת��ͨ��
        for(i=4;i>0;i--)//4��ת�����ݶ�����Ϊ���ȶ�ͨ����ѹ�Ͳο���ѹ
           {
           ADEOC=0;//����ADת��
           while(ADEOC==0);//�ȴ�ADת�����
           ADIF=0;//���ADת���жϱ�־λ     
           }
      for(i=10;i>0;i--)//10����ʽת����ȥ����ߺ����ת�������ۼ�ȡƽ��ֵ
          {
           ADEOC=0;//����ADת��
           while(ADEOC==0);//�ȴ�ADת�����
           ADIF=0;//���ADת���жϱ�־λ
           TempADL=ADRL;//ת��ֵֻ�е�4λ��Ч��
           TempADL&=0x0F;//ת��ֵֻ�е�4λ��Ч
           TempADH=ADRH;
           TempADH=(TempADH<<4)+TempADL;//ADת������12λ��ϵ�TempADH��
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
          middleval+=TempADH;//AD������middleval���ۼ�
          ClrWdt();//�忴�Ź�
         }
         middleval=(middleval-AD_High_Value-AD_Low_Value)>>3;                  	         
         return ((uint)middleval);
}
//=====================ADת��ģ��16M/16=1Mʱ��=============

////===============   1ms��ʱ�ӳ���ʼ1M��Ƶ   ===========================
void Delay1mS_1M(uint i)
{
             uchar jj;
            for(;i>0;i--)
       	    {
               for(jj=122;jj>0;jj--)
       	        {
               	 Nop();
                }
             ClrWdt();         	       	//Ҫ������WDT��ָ��
       	    }
}
//===============   1ms��ʱ�ӳ���ʼ1M��Ƶ    ===========
//======================�жϳ���=====================
void int_isr(void)__interrupt
{
//++++++++++++++++ѹջ++++++++++++++++++
       	__asm
       	  movra        	_ABuf
       	  swapar       	_STATUS
       	  movra	       	_StatusBuf
       	__endasm;   
//++++++++++++++++ѹջ++++++++++++++++++
////===========��ʱ��2�ж�=======================================================
         if(T2IF)//��ʱ500MS
          {
           T2IF=0; 	   
          }
////===========��ʱ��2�ж�=====================================================
//++++++++++++++++��ջ++++++++++++++++++
       	__asm
       	  swapar       	_StatusBuf
       	  movra	       	_STATUS        
       	  swapr        	 _ABuf
       	  swapar       	       _ABuf
       	__endasm;   
//++++++++++++++++��ջ++++++++++++++++++                
}
//======================�жϳ���=====================

