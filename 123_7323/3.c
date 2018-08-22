/*

   	void Sub_SetLongKeyGetRealTimeClockSetMode(void)
上面这个函数，程序中一调用就会报错非法字符，
关于那个函数的都屏蔽掉，原函数也要屏蔽，就会报错broken pipe


*/
#include "mc32p7323.h"
#include "RamDef.H"

//*************************************************************//
// Variable Declare <<< Do not change locate becasue inline asm >>>//
//*************************************************************//
//#pragma data_address 0x12 = 0//
//struct specialRegister   	_UserFlag1;//
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

flag UserFlag,UserFlag1;
#define BF_TccClock2ms 	   	   	UserFlag.bits.bit0
#define BF_Clock500ms  	   	   	UserFlag.bits.bit1
#define BF_SetRealTimeClockAM_PM UserFlag.bits.bit2//0=AM；1=PM
#define BF_RunRealTimeClockAM_PM UserFlag.bits.bit3
#define BF_Up_AlKeyPressesd	   	UserFlag.bits.bit4
#define BF_Up_AlLongKeyPressesd	UserFlag.bits.bit5
#define BF_DownKeyPressesd 	   	UserFlag.bits.bit6
#define BF_DownLongKeyPressesd 	UserFlag.bits.bit7

//extern struct bitDefine UserFlag1;
#define BF_Clock250ms  	   	   	UserFlag1.bits.bit0
#define BF_SetLongKeyPressesd  	UserFlag1.bits.bit1
#define BF_SetAlarmAM_PM   	   	UserFlag1.bits.bit2  //为0时=AM；为1=PM
#define BF_RunAlarmAM_PM   	   	UserFlag1.bits.bit3  //为0时=AM；为1=PM
#define BF_BuzzerBBB   	   	   	UserFlag1.bits.bit4
#define BF_SetAlarmOnOff   	   	UserFlag1.bits.bit5	//0 = Set alarm off; 1 = Set alarm on
#define BF_RunAlarmOnOff   	   	UserFlag1.bits.bit6	//0 = Run alarm off; 1 = Run alarm on

//struct bitDefine UserFlag;
//struct bitDefine UserFlag1;
//#pragma data_address 0x14 = 0       //Do not change locate becasue inline asm //
//struct specialRegister   	_V_LedFlag;//

unsigned char  	GV_2msClock;
unsigned char  	GV_10msClock;
unsigned char  	GV_100msClock;
unsigned char  	GV_200msClock;
unsigned char  	GV_250msClock;
unsigned char  	GV_500msClock;

unsigned char  	GV_BuzzerPeriod;
unsigned char  	GV_BuzzerBBPeriod;

unsigned char  	GV_KeyDebounce;
unsigned char  	GV_PreKey;
unsigned char  	GV_CurKey;
unsigned int   	GV_LongKeyTimer;

unsigned char  	GV_Mode; 

unsigned char  	GV_RealTimeClockSetStep;
unsigned char  	GV_AlarmClockSetStep;

unsigned char  	GV_BuzzerIndex;
unsigned char  	GV_BuzzerDuty;

unsigned char  	GV_GetByteFromDs1302;
unsigned char  	GV_GetPT6964Data;

unsigned char  	GV_SetYearSingleDig;//Year Data
unsigned char  	GV_SetYearTenDig;
unsigned char  	GV_SetYearHundredsDig; 
unsigned char  	GV_SetYearthousandDig = 2;
unsigned char  	GV_RunYearSingleDig;
unsigned char  	GV_RunYearTenDig;
unsigned char  	GV_RunYearHundredsDig; 
unsigned char  	GV_RunYearthousandDig = 2;

unsigned char  	GV_SetMonthSingleDig;//Month Data
unsigned char  	GV_SetMonthTenDig;
unsigned char  	GV_RunMonthSingleDig;
unsigned char  	GV_RunMonthTenDig;

unsigned char  	GV_SetDaySingleDig;//Day Data
unsigned char  	GV_SetDayTenDig;
unsigned char  	GV_RunDaySingleDig;
unsigned char  	GV_RunDayTenDig;

unsigned char  	GV_SetRealTimeClockHrSingleDig;//RTC(RealTimeClock) Data
unsigned char  	GV_SetRealTimeClockHrTenDig;
unsigned char  	GV_SetRealTimeClockMinSingleDig;
unsigned char  	GV_SetRealTimeClockMinTenDig;
unsigned char  	GV_RunRealTimeClockHrSingleDig;
unsigned char  	GV_RunRealTimeClockHrTenDig;
unsigned char  	GV_RunRealTimeClockMinSingleDig;
unsigned char  	GV_RunRealTimeClockMinTenDig;

unsigned char  	GV_SetAlarmClockHrSingleDig;//alarm clock Data
unsigned char  	GV_SetAlarmClockHrTenDig;
unsigned char  	GV_SetAlarmClockMinSingleDig;
unsigned char  	GV_SetAlarmClockMinTenDig;
unsigned char  	GV_RunAlarmClockHrSingleDig;
unsigned char  	GV_RunAlarmClockHrTenDig;
unsigned char  	GV_RunAlarmClockMinSingleDig;
unsigned char  	GV_RunAlarmClockMinTenDig;

unsigned char  	GV_15sNoOperationCnt;//Automatically return to normal mode at 15 seconds without operation
unsigned char  	GV_DisplayBrightnessLevel;
unsigned char  	GV_SnoozeTimer;
//unsigned char	GV_5HrCntData0 = 0;
//unsigned char	GV_5HrCntData1= 0;
unsigned char  	DATA_ID[2];
unsigned int LV_Temp;               
uchar       ABuf,StatusBuf,FSR_TEMP;


//备注：HT1380A/1381A读写完全与DS1302一样
//#define PO_CE	FP45   //O Pa1, DS1302 chip slelect Output //
#define Enable1381A_RESET()	   	P17D = 1 //chip slelect    	
#define Disable1381A_RESET()   	P17D = 0

#define PO_1381A_SCLK  	P12D //chip SCLK
#define PO_1381A_DAT   	P13D //chip DATA
#define PI_PD2_DAT 	   	P13D
#define Set1381A_I_O_ForOutput() P13OE = 1
#define Set1381A_I_O_ForInput()  P13OE = 0



 //---PT6964 Macro Declare---//
#define GetDIO()   	   	P15D
#define SetDIO1()  	   	P15D = 1
#define SetDIO0()  	   	P15D = 0
#define SetDIOInput()  	P15OE = 0
#define SetDIOOutput() 	P15OE = 1

#define SetSCK1()  	   	P14D = 1
#define SetSCK0()  	   	P14D = 0

#define SetSTB1()  	   	P23D = 1
#define SetSTB0()  	   	P23D = 0;

//const uchar __at 0xff0 C_NumberTable[12]={0x3F,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x00,0x00};
uchar C_NumberTable[12]={0x3F,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x00,0x00};

//const uchar __at 0x1700 C_NumberTable[11]  = { 
//0x3F,//0011 1111 -->0
//0x06,//0000 0110 -->1
//0x5B,//0101 1011 -->2
//0x4F,//0100 1111 -->3
//0x66,//0110 0110 -->4
//0x6D,//0110 1101 -->5
//0x7D,//0111 1101 -->6
//0x07,//0000 0111 -->7
//0x7F,//0111 1111 -->8
//0x6F,//0110 1111 -->9
//0x00,//0000 0000 -->No Display
//};


void Sub_Read1302(unsigned char	LV_Addr);
void Sub_Write1302(unsigned char LV_Addr,unsigned char LV_Data);
void Sub_Initial(void);
void Sub_GetAdc(void);
void Sub_KeyScan(void);
void Sub_AlarmEvent(void);
//void Sub_SendDispDataToPT6964(void);
void Sub_TA6932Disp(void);
void Sub_LedDisp(void);
void Sub_Buzzer(void);
void Sub_PT6964PowerOnAllDisp2s(void);
void Sub_IoInitial(void);
void Sub_SendByteToPT6964(unsigned char);

/*************************************************************
  Program in Main

  Procedure: main
  
  Description:

  Parameter: 

  Return: 

  ----------------------------------------------------------*/
void main(void)
{
   	Sub_Initial();

   	while(1)
   	{
   	   	ClrWdt(); //(feed the doggie )

   	   	if(BF_TccClock2ms)  //
   	   	{
   	   	   	BF_TccClock2ms = 0;
   	   	   	//PO_Buzzer = !PO_Buzzer;
   	   	   	Sub_KeyScan();
   	   	   	Sub_Buzzer();

   	   	   	//-----------------------------------------------
   	   	   	if(++GV_10msClock>=5) //
   	   	   	{
   	   	   	   	GV_10msClock = 0;
   	   	   	   	Sub_TA6932Disp();
   	   	   	}

   	   	   	//-----------------------------------------------
   	   	   	if(++GV_100msClock>=50) //
   	   	   	{
   	   	   	   	GV_100msClock = 0;
   	   	   	   	Sub_AlarmEvent();
   	   	   	}

   	   	   	//-----------------------------------------------
   	   	   	if(++GV_200msClock>=100) //
   	   	   	{
   	   	   	   	GV_200msClock = 0;
   	   	   	}

   	   	   	//-----------------------------------------------
   	   	   	if(++GV_250msClock>=125) //Per 250ms
   	   	   	{
   	   	   	   	GV_250msClock = 0;
   	   	   	   	 BF_Clock250ms  = !BF_Clock250ms;
   	   	   	}

   	   	   	//-----------------------------------------------
   	   	   	if(++GV_500msClock >= 249)//
   	   	   	{
   	   	   	   	GV_500msClock = 0;
   	   	   	   	BF_Clock500ms  = !BF_Clock500ms;

   	   	   	   	if((GV_15sNoOperationCnt)&&(GV_Mode))//Automatically return to normal mode at 15 seconds without operation in setting mode.
   	   	   	   	{
   	   	   	   	   	if(--GV_15sNoOperationCnt == 0)
   	   	   	   	   	{
   	   	   	   	   	   	GV_Mode = 0;//0=Normal mode; 1=clock set mode; 2=Alarm set mode
   	   	   	   	   	}
   	   	   	   	}

   	   	   	   	if(GV_SnoozeTimer)
   	   	   	   	{
   	   	   	   	   	GV_SnoozeTimer--;
   	   	   	   	}
   	   	   	}
   	   	} 
   	}
}











/************SendByteToDS1302 PROCEDURE**********************
  Procedure in DS1302

  Name: Sub_SendByteToDS1302.C
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_SendByteToDS1302(unsigned char	LV_SendTodata)  
{
   	unsigned char  	i,LV_TempE;
   	Set1381A_I_O_ForOutput();
   	for(i=8; i>0; i--)
   	{
   	   	PO_1381A_SCLK = 0; 	   	
   	   	LV_TempE = LV_SendTodata;
   	   	if(LV_TempE & 0x01)
   	   	{PO_1381A_DAT = 1;} 
   	   	else 
   	   	{PO_1381A_DAT = 0;}
   	   	Nop();
   	   	Nop();
   	   	LV_SendTodata >>= 1;
   	   	PO_1381A_SCLK = 1; 	   	
   	}
}

/************GetByteFromDS1302 PROCEDURE*************************
  Procedure in DS1302

  Name: Sub_GetByteFromDS1302.C
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------------*/  
void Sub_GetByteFromDS1302(void)  
{
   	unsigned char  	i;
   	Set1381A_I_O_ForInput();
   	for(i=8;i>0;i--)
   	{
   	   	GV_GetByteFromDs1302 = GV_GetByteFromDs1302 >> 1;  	   	
   	   	if(PI_PD2_DAT)
   	   	{GV_GetByteFromDs1302 = GV_GetByteFromDs1302|0x80;} 
   	   	PO_1381A_SCLK = 1;
   	   	Nop();
   	   	Nop();
   	   	PO_1381A_SCLK = 0;
   	}
}
/************ReadByteFromDS1302 PROCEDURE************************
  Procedure in DS1302

  Name: Sub_ReadByteFromDS1302.C
  
  Enter: 
  
  Parameter: 

  Return:

 --------------------------------------------------------------*/  
void Sub_Read1302(unsigned char	LV_Addr) // 读DS1302某个地址的数据
{
   	unsigned char  	i,LV_TempE;	
   	PO_1381A_SCLK = 0; 	
   	Enable1381A_RESET();
   	
   	LV_Addr=(LV_Addr|0x01); // 地址，命令 
   	PO_1381A_DAT = 0;
   	Set1381A_I_O_ForOutput();
   	for(i=8;i>0;i--)
   	{
   	   	PO_1381A_SCLK = 0; 	   	
   	   	LV_TempE = LV_Addr;
   	   	if(LV_TempE & 0x01)
   	   	{PO_1381A_DAT = 1;} 
   	   	else 
   	   	{PO_1381A_DAT = 0;}
   	   	Nop();
   	   	Nop();
   	   	LV_Addr >>= 1;
   	   	PO_1381A_SCLK = 1; 	
   	}
   	
   	Set1381A_I_O_ForInput();
   	for(i=8;i>0;i--)
   	{
   	   	if(PI_PD2_DAT)
   	   	{GV_GetByteFromDs1302 = GV_GetByteFromDs1302|0x80;} 
   	   	PO_1381A_SCLK = 1;
   	   	Nop();
   	   	Nop();
   	   	GV_GetByteFromDs1302 = GV_GetByteFromDs1302 >> 1;  	   	   	   	
   	   	PO_1381A_SCLK = 0;
   	}  	
   	PO_1381A_SCLK = 0;
   	Disable1381A_RESET();
}
/************WriteByteFromDS1302 PROCEDURE***********************
  Procedure in DS1302

  Name: Sub_WriteByteFromDS1302.C
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------------*/  
void Sub_Write1302(unsigned char LV_Addr,unsigned char LV_Data) // 将数据写入DS1302某个地址
{
   	unsigned char  	i,LV_TempE;	
   	PO_1381A_SCLK =0;  	
   	Enable1381A_RESET();
   	
   	//Sub_SendByteToDS1302(LV_Addr|0x00); // 地址，命令 
   	//Sub_SendByteToDS1302(LV_Data);      // 将数据写入地址

   	Set1381A_I_O_ForOutput();
   	for(i=8; i>0; i--)
   	{
   	   	PO_1381A_SCLK = 0; 	   	
   	   	LV_TempE = LV_Addr;
   	   	if(LV_TempE & 0x01)
   	   	{PO_1381A_DAT = 1;} 
   	   	else 
   	   	{PO_1381A_DAT = 0;}
   	   	Nop();
   	   	Nop();
   	   	LV_Addr >>= 1;
   	   	PO_1381A_SCLK = 1; 	
   	}
   	
   	for(i=8;i>0;i--)
   	{
   	   	PO_1381A_SCLK = 0; 	   	
   	   	LV_TempE = LV_Data;
   	   	if(LV_TempE & 0x01)
   	   	{PO_1381A_DAT = 1;} 
   	   	else 
   	   	{PO_1381A_DAT = 0;}
   	   	Nop();
   	   	Nop();
   	   	LV_Data >>= 1;
   	   	PO_1381A_SCLK = 1; 	
   	}  	
   	Disable1381A_RESET();
}







/************AlarmEvent PROCEDURE**************************
  Procedure in AlarmEvent

  Name: Sub_AlarmEvent.C
  
  Enter: 
  
  Parameter: 

  Return:

 --------------------------------------------------------*/  
void Sub_AlarmEvent(void)  //Per 100ms
{
   	BF_BuzzerBBB = 0;

   	if(GV_Mode) return;
   	if(BF_RunAlarmOnOff == 0) return;
   	if(GV_SnoozeTimer) return;
   	if(BF_RunRealTimeClockAM_PM != BF_RunAlarmAM_PM) return;
   	if(GV_RunAlarmClockHrTenDig != GV_RunRealTimeClockHrTenDig) return;
   	if(GV_RunAlarmClockHrSingleDig != GV_RunRealTimeClockHrSingleDig) return;
   	if(GV_RunAlarmClockMinTenDig != GV_RunRealTimeClockMinTenDig) return;
   	if(GV_RunAlarmClockMinSingleDig != GV_RunRealTimeClockMinSingleDig) return;

   	BF_BuzzerBBB = 1;
}













/****************************************************************
  Program in Initial

  Procedure: Sub_IoInitial
  
  Description: IoInitial

  Parameter: 

  Return: 

  -------------------------------------------------------------*/
void Sub_IoInitial(void)
{  	
   	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
   	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
   	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
   	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high

   	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
   	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
   	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
   	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high

   	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
   	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
   	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
   	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high

   	//P5 = 0xFF; //1111 1111B;   //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
   	//P5M = 0xFF; //1111 1111B;  //1=Output,0=input
   	//P5UR = 0x00;//0000 0000B;  //1=Enable,0=Disable Pull High
   	//P5  = 0xFF; //1111 1111B;  //0=low; 1=high

   	DisableBuzzer();
}

/**************************************************************
  Program in Initial

  Procedure: Sub_LoopDelay
  
  Description: LoopDelay

  Parameter: 

  Return: 

  ------------------------------------------------------------*/
void Sub_LoopDelay(void)
{
//unsigned int LV_Temp;
   	LV_Temp=0;
   	while(LV_Temp<5000)
   	{
   	   	Nop();
   	   	Nop();
   	   	Nop();
   	   	Nop();
   	   	Nop();
   	   	Nop();
   	   	Nop();
   	   	Nop();

   	   	LV_Temp++;
   	   	ClrWdt();//WDTR = 0x5a;
   	}
}

/**************************************************************
  Program in Initial

  Procedure: Sub_INT0Initial
  
  Description: INT0Initial

  Parameter: 

  Return: 

  -----------------------------------------------------------*/
/*void Sub_INT0Initial(void)
{
   	PEDGE = 0x10;  	

   	FP00IEN = 1;  //Enable int0 interrupt function
   	FP00IRQ	= 0;
}*/

/*************************************************************
  Program in Sub_Initial

  Procedure: Sub_T0Initial
  
  Description: T0Initial

  Parameter: 

  Return: 

  ----------------------------------------------------------*/
/*void Sub_T0Initial(void)
{
   	FT0IEN = 0;	
   	FT0ENB = 0;	

   	T0M = 0x70; //01110000B  //fcpu/2
      
   	T0C = (255-235);   //235 Per 120us

   	FT0IEN = 1;  //Enable T0 interrupt function
   	FT0IRQ = 0;
   	FT0ENB = 1;  //Enable T0 timer
}*/

/**************************************************************
  Program in Initial

  Procedure: Sub_TC0Initial
  
  Description: TC1Initial

  Parameter: TC0C/TC0R=0x06,TC0D=0x82;Freq=4KHz,Duty=50%.

  Return: 

  ------------------------------------------------------------*/
/*void Sub_TC0Initial(void)//TC1 for pwm1
{
   	TC0M = 0;
   	TC0M = 0x10;//010 = Fhosc/32；

   	TC0C = 0x06; //TC1C ゲ?㎝TC2R 单
   	TC0R = 0x06;

   	TC0D = C_SpeedLowPwmDuty;  //TC0D ゲ?TC0R Duty = 35%
   	GV_RunPwm0Duty = C_SpeedLowPwmDuty;
   	GV_SetPwm0Duty = C_SpeedLowPwmDuty;

   	FTC0ENB = 1;  //ㄏTC1 ﹚?竟
   	FPWM0OUT = 0; //Disable pwm1
}*/

/*************************************************************
  Program in Initial

  Procedure: Sub_TC0Initial
  
  Description: TC0Initial

  Parameter: 

  Return: 

  -----------------------------------------------------------*/
/*void Sub_TC0Initial(void)
{
   	FTC0IEN = 0;   	// Disable TC0 interrupt service
   	FTC0ENB = 0;   	// Disable TC0 timer
   	TC0M = 0x34;   	// Set TC0 clock = Foscu / 4
   	TC0R = 0x9c;   	// Set TC0 interval = 100us
   	FTC0IEN = 1;   	// Enable TC0 interrupt service
   	FTC0IRQ = 0;   	// Clear TC0 interrupt request flag
   	FTC0ENB = 1;   	// Enable TC0 timer
}*/
/*************************************************************
  Program in Initial

  Procedure: Sub_TC2Initial
  
  Description: TC2Initial

  Parameter: 

  Return: 

  -----------------------------------------------------------*/
void Sub_TC2Initial(void)
{
   	T0IE=0;//FTC2IEN = 0;      	// Disable TC2 interrupt service
   	TC0EN=0;//FTC2ENB = 0;     	// Disable TC2 timer
   	T0CR=0x0a;//TC2M = 0x34;   	// Set TC2 clock = Foscu / 4
   	T0LOAD=0x8b;//TC2R = 0x8B;     	// 0x8B;Set TC2 interval = 125us
   	T0IE=1;//FTC2IEN = 1;      	// Enable TC2 interrupt service
   	T0IF=0;//FTC2IRQ = 0;      	// Clear TC2 interrupt request flag
   	TC0EN=1;//FTC2ENB = 1;     	// Enable TC2 timer
}

/*************************************************************
  Program in Initial

  Procedure: Sub_AdcInitial
  
  Description: AdcInitial

  Parameter: 

  Return: 

  -----------------------------------------------------------*/
/*void Sub_AdcInitial(void)
{
   	//P4CON = 0x00;//#11111000b  Set ADC input channel configuration.P43,4,5,6,7 for ADC input channel.
   	P5CON = 0x01;//#00000001b  Set ADC input channel configuration.P50for ADC input channel.
   	ADM = 0xB8;    	// Enable P5.0ADC input and ADC function.

   	GV_AdcIndex = C_AdcChanel8;
   	FADCKS0 = 1;
   	FADCKS1 = 1;   	// Set ADC converting rate = Fcpu/2
   	FADS = 1;
   	FADLEN = 1;	   	// Enable 10 Bit ADC
}*/
   	 
/**************************************************************
  Program in Initial

  Procedure: Sub_Initial
  
  Description: Initial

  Parameter: 

  Return: 

  ------------------------------------------------------------*/
void Sub_Initial(void)
{
   	Sub_IoInitial();
   	//Sub_TC0Initial();
   	Sub_TC2Initial();
   	//Sub_AdcInitial();

   	GIE = 1;  //FGIE = 1;  //Enable interrupt

   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	Sub_Write1302(C_DS1302_Second,0x00);
   	Sub_Write1302(C_DS1302_Minute,0x00);   	
   	Sub_Write1302(C_DS1302_Hour,C_DS1302_AM12HrData);//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（当为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)	
   	Sub_Write1302(C_DS1302_Day,0x01);  	   	
   	Sub_Write1302(C_DS1302_Month,0x01);	   	   	
   	Sub_Write1302(C_DS1302_Year,0x00);
   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect

   	
   	GV_RunAlarmClockHrSingleDig = 2;
   	GV_RunAlarmClockHrTenDig = 1;

   	BF_SetAlarmAM_PM = 0;
   	BF_SetAlarmOnOff = 0;
   	BF_RunAlarmAM_PM = 0;
   	BF_RunAlarmOnOff = 0;

   	BF_SetRealTimeClockAM_PM = 0;

   	//Power on all led displaay 2s;
   	GV_200msClock = 100;
   	while(GV_200msClock)
   	{
   	   	ClrWdt();   //(feed the doggie )
   	   	if(BF_TccClock2ms)  //
   	   	{
   	   	   	BF_TccClock2ms = 0;
   	   	   	if(++GV_10msClock>=5)
   	   	   	{
   	   	   	   	GV_10msClock = 0;
   	   	   	   	Sub_PT6964PowerOnAllDisp2s();
   	   	   	   	GV_200msClock--;
   	   	   	}
   	   	}
   	}
}









/************Up_AlLongKeyGetAlarmSetMode  PROCEDURE**********
  Procedure in keyScan

  Name: Sub_Up_AlLongKeyGetAlarmSetMode.C
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------*/  
void Sub_Up_AlLongKeyGetAlarmSetMode(void)
{
   	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
   	GV_PreKey = GV_CurKey;

   	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
   	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;

   	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
   	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;   	

   	BF_SetAlarmOnOff = BF_RunAlarmOnOff;
   	GV_AlarmClockSetStep = 0;
   	GV_Mode = 2;//2=Alarm set mode
}

/************SetAlarmAddTimerPROCEDURE**********************
  Procedure in keyScan

  Name: Sub_SetAlarmAddTimer.C
  
  Enter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_SetAlarmAddTimer(void)  //
{
   	if(GV_AlarmClockSetStep==0)
   	{
   	   	;
   	}
   	else if(GV_AlarmClockSetStep==1)
   	{
   	   	   	   	   	   	   	   	if(++GV_SetAlarmClockHrSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockHrSingleDig = 0;
   	   	   	   	   	GV_SetAlarmClockHrTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetAlarmClockHrSingleDig >= 3)&&(GV_SetAlarmClockHrTenDig >= 1))
   	   	   	   	{
   	   	   	   	   	if(BF_SetAlarmAM_PM)
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetAlarmAM_PM = 0;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetAlarmAM_PM = 1;
   	   	   	   	   	}

   	   	   	   	   	GV_SetAlarmClockHrTenDig = 0x00;
   	   	   	   	   	GV_SetAlarmClockHrSingleDig = 0x01;
   	   	   	   	}
   	}
   	else if(GV_AlarmClockSetStep==2)
   	{
   	   	   	   	if(++GV_SetAlarmClockMinSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockMinSingleDig = 0;
   	   	   	   	   	GV_SetAlarmClockMinTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetAlarmClockMinSingleDig == 0)&&(GV_SetAlarmClockMinTenDig >= 6))
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockMinSingleDig = 0;
   	   	   	   	   	GV_SetAlarmClockMinTenDig = 0;
   	   	   	   	}  	   	
   	}  	
   	else
   	{
   	   	;
   	}
   	
   	//switch(GV_AlarmClockSetStep)
   	//{
   	//     	case 0: //On or off the alarm
   	//     	break;
    //
   	//     	case 1://set the alarm Hour
   	//     	   	   	if(++GV_SetAlarmClockHrSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockHrSingleDig = 0;
   	//     	   	   	   	GV_SetAlarmClockHrTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetAlarmClockHrSingleDig >= 3)&&(GV_SetAlarmClockHrTenDig >= 1))
   	//     	   	   	{
   	//     	   	   	   	if(BF_SetAlarmAM_PM)
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetAlarmAM_PM = 0;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetAlarmAM_PM = 1;
   	//     	   	   	   	}
    //
   	//     	   	   	   	GV_SetAlarmClockHrTenDig = 0x00;
   	//     	   	   	   	GV_SetAlarmClockHrSingleDig = 0x01;
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 2://set the alarm min
   	//     	   	   	if(++GV_SetAlarmClockMinSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockMinSingleDig = 0;
   	//     	   	   	   	GV_SetAlarmClockMinTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetAlarmClockMinSingleDig == 0)&&(GV_SetAlarmClockMinTenDig >= 6))
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockMinSingleDig = 0;
   	//     	   	   	   	GV_SetAlarmClockMinTenDig = 0;
   	//     	   	   	}
   	//     	break;
   	//}    	   	
}

/************Up_AlShortLongKeyAlarmSet  PROCEDURE************
  Procedure in keyScan

  Name: Sub_Up_AlShortLongKeyAlarmSet.C
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_Up_AlShortLongKeyAlarmSet(void)
{
   	if(GV_AlarmClockSetStep==0)
   	{
   	   	   	   	   	   	   	   	BF_SetAlarmOnOff = !BF_SetAlarmOnOff;//0 = Set alarm off; 1 = Set alarm on
   	   	   	   	GV_PreKey = GV_CurKey;
   	}
   	else if(GV_AlarmClockSetStep==1)
   	{
   	   	;
   	}
   	else if(GV_AlarmClockSetStep==2)
   	{
   	   	   	   	   	   	BF_Up_AlKeyPressesd = 1;
   	   	   	   	if(BF_Up_AlLongKeyPressesd)//
   	   	   	   	{
   	   	   	   	   	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
   	   	   	   	   	{
   	   	   	   	   	   	GV_LongKeyTimer = 0;
   	   	   	   	   	   	Sub_SetAlarmAddTimer();
   	   	   	   	   	}  	   	   	
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
   	   	   	   	   	{
   	   	   	   	   	   	GV_LongKeyTimer = 0;
   	   	   	   	   	   	BF_Up_AlLongKeyPressesd = 1;
   	   	   	   	   	   	Sub_SetAlarmAddTimer();
   	   	   	   	   	}
   	   	   	   	}
   	}
   	else
   	{
   	   	;
   	}
   	
   	//switch(GV_AlarmClockSetStep)
   	//{
   	//     	case 0: //On or off the alarm
   	//     	   	   	BF_SetAlarmOnOff = !BF_SetAlarmOnOff;//0 = Set alarm off; 1 = Set alarm on
   	//     	   	   	GV_PreKey = GV_CurKey;
   	//     	break;
    //
   	//     	case 1://
   	//     	case 2:
   	//     	   	   	BF_Up_AlKeyPressesd = 1;
   	//     	   	   	if(BF_Up_AlLongKeyPressesd)//
   	//     	   	   	{
   	//     	   	   	   	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_LongKeyTimer = 0;
   	//     	   	   	   	   	Sub_SetAlarmAddTimer();
   	//     	   	   	   	}  	   	   	
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_LongKeyTimer = 0;
   	//     	   	   	   	   	BF_Up_AlLongKeyPressesd = 1;
   	//     	   	   	   	   	Sub_SetAlarmAddTimer();
   	//     	   	   	   	}
   	//     	   	   	}
   	//     	break;
   	//}
}

/****************RealTimeClockAddPROCEDURE*******************
  Procedure in keyScan

  Name: Sub_RealTimeClockAdd.C
  
  Enter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_RealTimeClockAdd(void)  //
{
   	unsigned char  	LV_TempYear,LV_TempMonth,LV_TempA,LV_TempB;
   	
   	if(GV_RealTimeClockSetStep==0)
   	{
   	   	   	   	   	   	   	   	GV_SetYearSingleDig++;
   	   	   	   	if(GV_SetYearSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetYearSingleDig = 0;
   	   	   	   	   	GV_SetYearTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetYearSingleDig == 0)&&(GV_SetYearTenDig >= 10))
   	   	   	   	{
   	   	   	   	   	GV_SetYearSingleDig = 0;
   	   	   	   	   	GV_SetYearTenDig = 0;
   	   	   	   	}
   	}
   	else if(GV_RealTimeClockSetStep==1)
   	{
   	   	   	   	GV_SetMonthSingleDig++;
   	   	   	   	if(GV_SetMonthSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetMonthSingleDig = 0;
   	   	   	   	   	GV_SetMonthTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetMonthSingleDig >= 3)&&(GV_SetMonthTenDig >= 1))
   	   	   	   	{
   	   	   	   	   	GV_SetMonthSingleDig = 1;
   	   	   	   	   	GV_SetMonthTenDig = 0;
   	   	   	   	} 
   	}
   	else if(GV_RealTimeClockSetStep==2)
   	{
   	   	   	   	   	   	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempYear = LV_TempA & 0x0f;
           	   	LV_TempYear = LV_TempYear + LV_TempB;

   	   	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempMonth = LV_TempA & 0x0f;
           	   	LV_TempMonth = LV_TempMonth + LV_TempB;
           	   	
           	   	GV_SetDaySingleDig++; 
           	   	   	
           	   	if(LV_TempMonth==0)
           	   	{
           	   	   	;
           	   	}  	
           	   	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
           	   	{
   	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	   	   	   	}  	
   	   	   	   	   	   	   	if((GV_SetDaySingleDig >= 2)&&(GV_SetDayTenDig >= 3))
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	   	   	   	}              	   	   	
           	   	} 
           	   	else if(LV_TempMonth==2)
           	   	{
       	   	   	   	   	   	  if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	if((GV_SetDaySingleDig == 0)&&(GV_SetDayTenDig >= 3))
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	if((GV_SetDaySingleDig >= 9)&&(GV_SetDayTenDig >= 2))
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}          	   	   	
           	   	}
           	   	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
           	   	{
   	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	if((GV_SetDaySingleDig >= 1)&&(GV_SetDayTenDig >= 3))
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	   	   	   	}              	   	   	
           	   	}
           	   	else
           	   	{
           	   	   	;
           	   	}
           	   	
           	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//switch(LV_TempMonth) 
   	   	   	   	//{
   	   	   	   	//     	case 0:
   	   	   	   	//     	break; 	
   	   	   	   	//     	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 1:
   	   	   	   	//     	case 3:	   	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 5:	
   	   	   	   	//     	case 7:	
   	   	   	   	//     	case 8:
   	   	   	   	//     	case 10:
   	   	   	   	//     	case 12:
   	   	   	   	//     	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig++;
   	   	   	   	//     	   	   	}  	
   	   	   	   	//     	   	   	if((GV_SetDaySingleDig >= 2)&&(GV_SetDayTenDig >= 3))
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	//     	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//     	break;
   	   	   	   	//     	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 2: 
   	   	   	   	//     	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	   	if((GV_SetDaySingleDig == 0)&&(GV_SetDayTenDig >= 3))
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	}
   	   	   	   	//     	   	   	else
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig++;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	   	if((GV_SetDaySingleDig >= 9)&&(GV_SetDayTenDig >= 2))
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	}
   	   	   	   	//     	break; 	   	
   	   	   	   	//     	   	   	   	
   	   	   	   	//     	case 4:
   	   	   	   	//     	case 6:
   	   	   	   	//     	case 9:
   	   	   	   	//     	case 11:
   	   	   	   	//     	   	   	if(GV_SetDaySingleDig >= 10)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig++;
   	   	   	   	//     	   	   	}
   	   	   	   	//     	   	   	if((GV_SetDaySingleDig >= 1)&&(GV_SetDayTenDig >= 3))
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig = 0;
   	   	   	   	//     	   	   	}  	
   	   	   	   	//     	break; 	   	
   	   	   	   	//}
   	}
   	else if(GV_RealTimeClockSetStep==3)
   	{
   	   	   	   	GV_SetRealTimeClockHrSingleDig++;
   	   	   	   	if(GV_SetRealTimeClockHrSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 0;
   	   	   	   	   	GV_SetRealTimeClockHrTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetRealTimeClockHrSingleDig >= 3)&&(GV_SetRealTimeClockHrTenDig >= 1))
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 1;
   	   	   	   	   	GV_SetRealTimeClockHrTenDig = 0;
   	   	   	   	   	if(BF_SetRealTimeClockAM_PM)
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetRealTimeClockAM_PM = 0;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetRealTimeClockAM_PM = 1;
   	   	   	   	   	}
   	   	   	   	}  
   	}  	
   	else if(GV_RealTimeClockSetStep==4)
   	{
   	   	   	   	   	   	GV_SetRealTimeClockMinSingleDig++;
   	   	   	   	if(GV_SetRealTimeClockMinSingleDig >= 10)
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 0;
   	   	   	   	   	GV_SetRealTimeClockMinTenDig++;
   	   	   	   	}
   	   	   	   	if((GV_SetRealTimeClockMinSingleDig == 0)&&(GV_SetRealTimeClockMinTenDig >= 6))
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 0;
   	   	   	   	   	GV_SetRealTimeClockMinTenDig = 0;
   	   	   	   	}
   	}
  else
  {
   	;
  }    	
   	
   	//switch(GV_RealTimeClockSetStep)
   	//{
   	//     	case 0://Set Real Time Clock Year
   	//     	   	   	GV_SetYearSingleDig++;
   	//     	   	   	if(GV_SetYearSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetYearSingleDig = 0;
   	//     	   	   	   	GV_SetYearTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetYearSingleDig == 0)&&(GV_SetYearTenDig >= 10))
   	//     	   	   	{
   	//     	   	   	   	GV_SetYearSingleDig = 0;
   	//     	   	   	   	GV_SetYearTenDig = 0;
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 1://Set Real Time Clock Mon
   	//     	   	   	GV_SetMonthSingleDig++;
   	//     	   	   	if(GV_SetMonthSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetMonthSingleDig = 0;
   	//     	   	   	   	GV_SetMonthTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetMonthSingleDig >= 3)&&(GV_SetMonthTenDig >= 1))
   	//     	   	   	{
   	//     	   	   	   	GV_SetMonthSingleDig = 1;
   	//     	   	   	   	GV_SetMonthTenDig = 0;
   	//     	   	   	}  	   	   	   	   	   	   	   	
   	//     	break;
    //
   	//     	case 2://Set Real Time Clock Day
   	//     	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempYear = LV_TempA & 0x0f;
    //         	   	LV_TempYear = LV_TempYear + LV_TempB;
    //
   	//     	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempMonth = LV_TempA & 0x0f;
    //         	   	LV_TempMonth = LV_TempMonth + LV_TempB;
    //
   	//     	   	   	//每月天数计算：1,3,5,7,8,10,12 这几月永远31天
   	//     	   	   	//2月平年28天，闰年29天（一般年份能整除4或百年年份能整除400的是闰年，）
   	//     	   	   	//其他月份30天
   	//     	   	   	//以上计算方法说的是阳历
   	//     	   	   	
   	//     	   	   	//公历闰年判定遵循的规律为: 四年一闰,百年不闰,四百年再闰.
   	//     	   	   	//公历闰年的简单计算方法（符合以下条件之一的年份即为闰年，反之则是平年）
   	//     	   	   	//1.能被4整除而不能被100整除。2.能被100整除也能被400整除。
    //
   	//     	   	   	//普通年（不能被100整除的年份）能被4整除的为闰年。（如2004年就是闰年,1999年不是闰年）；
   	//     	   	   	//世纪年（能被100整除的年份）能被400整除的是闰年。(如2000年是闰年，1900年不是闰年)；
   	//     	   	   	
   	//     	   	   	//闰年指的是当年的年数难过被4整除，例如：2000年就是闰年，2000除以4等于500.可以整除。
   	//     	   	   	//平年就是整除不了的，例如：2001年就是平年，2001除以4等于500余1，就是平年。
   	//     	   	   	//就是这样的，懂了吗，很乐意为你解答 
   	//     	   	   	GV_SetDaySingleDig++;  	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	switch(LV_TempMonth) 
   	//     	   	   	{
   	//     	   	   	   	case 0:
   	//     	   	   	   	break; 	
   	//     	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 1:
   	//     	   	   	   	case 3:	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 5:	
   	//     	   	   	   	case 7:	
   	//     	   	   	   	case 8:
   	//     	   	   	   	case 10:
   	//     	   	   	   	case 12:
   	//     	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig++;
   	//     	   	   	   	   	   	}  	
   	//     	   	   	   	   	   	if((GV_SetDaySingleDig >= 2)&&(GV_SetDayTenDig >= 3))
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	//     	   	   	   	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	break;
   	//     	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 2: 
   	//     	   	   	   	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	if((GV_SetDaySingleDig == 0)&&(GV_SetDayTenDig >= 3))
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig++;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	if((GV_SetDaySingleDig >= 9)&&(GV_SetDayTenDig >= 2))
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	break; 	   	
   	//     	   	   	   	   	   	   	
   	//     	   	   	   	case 4:
   	//     	   	   	   	case 6:
   	//     	   	   	   	case 9:
   	//     	   	   	   	case 11:
   	//     	   	   	   	   	   	if(GV_SetDaySingleDig >= 10)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig++;
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	if((GV_SetDaySingleDig >= 1)&&(GV_SetDayTenDig >= 3))
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 0;
   	//     	   	   	   	   	   	}  	
   	//     	   	   	   	break; 	   	
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 3:	//Set Real Time Clock Hr
   	//     	   	   	GV_SetRealTimeClockHrSingleDig++;
   	//     	   	   	if(GV_SetRealTimeClockHrSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockHrSingleDig = 0;
   	//     	   	   	   	GV_SetRealTimeClockHrTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetRealTimeClockHrSingleDig >= 3)&&(GV_SetRealTimeClockHrTenDig >= 1))
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockHrSingleDig = 1;
   	//     	   	   	   	GV_SetRealTimeClockHrTenDig = 0;
   	//     	   	   	   	if(BF_SetRealTimeClockAM_PM)
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetRealTimeClockAM_PM = 0;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetRealTimeClockAM_PM = 1;
   	//     	   	   	   	}
   	//     	   	   	}  	   	   	   	   	
   	//     	break;
    //
   	//     	case 4://Set Real Time Clock Min
   	//     	   	   	GV_SetRealTimeClockMinSingleDig++;
   	//     	   	   	if(GV_SetRealTimeClockMinSingleDig >= 10)
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockMinSingleDig = 0;
   	//     	   	   	   	GV_SetRealTimeClockMinTenDig++;
   	//     	   	   	}
   	//     	   	   	if((GV_SetRealTimeClockMinSingleDig == 0)&&(GV_SetRealTimeClockMinTenDig >= 6))
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockMinSingleDig = 0;
   	//     	   	   	   	GV_SetRealTimeClockMinTenDig = 0;
   	//     	   	   	}  	
   	//     	break;
   	//}    	
}

/************Up_AlShortLongKeyClockSet  PROCEDURE************
  Procedure in keyScan

  Name: Sub_Up_AlShortLongKeyClockSet.C
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_Up_AlShortLongKeyClockSet(void)
{
   	BF_Up_AlKeyPressesd = 1;
   	if(BF_Up_AlLongKeyPressesd)//
   	{
   	   	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
   	   	{
   	   	   	GV_LongKeyTimer = 0;
   	   	   	Sub_RealTimeClockAdd();
   	   	}  	   	   	
   	}
   	else
   	{
   	   	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
   	   	{
   	   	   	GV_LongKeyTimer = 0;
   	   	   	BF_Up_AlLongKeyPressesd = 1;
   	   	   	Sub_RealTimeClockAdd();
   	   	}
   	}
}

/************SetAlarmDecTimerPROCEDURE**********************
  Procedure in keyScan

  Name: Sub_SetAlarmDecTimer.C
  
  Enter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_SetAlarmDecTimer(void)  //
{
   	if(GV_AlarmClockSetStep==0)
   	{
   	   	;
   	}
   	else if(GV_AlarmClockSetStep==1)
   	{
   	   	   	   	if(GV_SetAlarmClockHrSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockHrSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetAlarmClockHrTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetAlarmClockHrSingleDig = 9;
   	   	   	   	   	   	GV_SetAlarmClockHrTenDig--;
   	   	   	   	   	}
   	   	   	   	}
   	   	   	   	if((GV_SetAlarmClockHrSingleDig==0)&&(GV_SetAlarmClockHrTenDig==0))
   	   	   	   	{
   	   	   	   	   	if(BF_SetAlarmAM_PM)
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetAlarmAM_PM = 0;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetAlarmAM_PM = 1;
   	   	   	   	   	}
   	   	   	   	   	GV_SetAlarmClockHrSingleDig = 0x02;
   	   	   	   	   	GV_SetAlarmClockHrTenDig = 0x01;
   	   	   	   	}  	   	
   	}
   	else if(GV_AlarmClockSetStep==2)
   	{
   	   	   	   	if(GV_SetAlarmClockMinSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockMinSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetAlarmClockMinTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetAlarmClockMinSingleDig = 9;
   	   	   	   	   	   	GV_SetAlarmClockMinTenDig--;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetAlarmClockMinSingleDig = 9;
   	   	   	   	   	   	GV_SetAlarmClockMinTenDig = 5;
   	   	   	   	   	}
   	   	   	   	}  	   	
   	}
   	else
   	{
   	   	;
   	}
   	//switch(GV_AlarmClockSetStep)
   	//{
   	//     	case 0: //On or off the alarm
   	//     	break;
    //
   	//     	case 1://set the alarm Hour
   	//     	   	   	if(GV_SetAlarmClockHrSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockHrSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetAlarmClockHrTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetAlarmClockHrSingleDig = 9;
   	//     	   	   	   	   	GV_SetAlarmClockHrTenDig--;
   	//     	   	   	   	}
   	//     	   	   	}
   	//     	   	   	if((GV_SetAlarmClockHrSingleDig==0)&&(GV_SetAlarmClockHrTenDig==0))
   	//     	   	   	{
   	//     	   	   	   	if(BF_SetAlarmAM_PM)
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetAlarmAM_PM = 0;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetAlarmAM_PM = 1;
   	//     	   	   	   	}
   	//     	   	   	   	GV_SetAlarmClockHrSingleDig = 0x02;
   	//     	   	   	   	GV_SetAlarmClockHrTenDig = 0x01;
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 2://set the alarm min
   	//     	   	   	if(GV_SetAlarmClockMinSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockMinSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetAlarmClockMinTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetAlarmClockMinSingleDig = 9;
   	//     	   	   	   	   	GV_SetAlarmClockMinTenDig--;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetAlarmClockMinSingleDig = 9;
   	//     	   	   	   	   	GV_SetAlarmClockMinTenDig = 5;
   	//     	   	   	   	}
   	//     	   	   	}
   	//     	break;
   	//}    	
}

/************DownShortLongKeyAlarmSet  PROCEDURE************
  Procedure in keyScan

  Name: Sub_DownShortLongKeyAlarmSet.C
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_DownShortLongKeyAlarmSet(void)
{
   	BF_DownKeyPressesd = 1;
   	if(BF_DownLongKeyPressesd)//
   	{
   	   	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
   	   	{
   	   	   	GV_LongKeyTimer = 0;
   	   	   	Sub_SetAlarmDecTimer();
   	   	}  	   	   	
   	}
   	else
   	{
   	   	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
   	   	{
   	   	   	GV_LongKeyTimer = 0;
   	   	   	BF_DownLongKeyPressesd = 1;
   	   	   	Sub_SetAlarmDecTimer();
   	   	}
   	}
}

/************RealTimeClockDecPROCEDURE***********************
  Procedure in keyScan

  Name: Sub_RealTimeClockDec.C
  
  Enter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_RealTimeClockDec(void)  //
{
   	unsigned char  	LV_TempYear,LV_TempMonth,LV_TempA,LV_TempB;
   	if(GV_RealTimeClockSetStep==0)
   	{
   	   	   	   	if(GV_SetYearSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetYearSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetYearTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetYearSingleDig = 9;
   	   	   	   	   	   	GV_SetYearTenDig--;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetYearSingleDig = 9;
   	   	   	   	   	   	GV_SetYearTenDig = 9;
   	   	   	   	   	}
   	   	   	   	}      	   	
   	}
   	else if(GV_RealTimeClockSetStep==1)
   	{
   	   	   	   	  if(GV_SetMonthSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetMonthSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetMonthTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetMonthSingleDig = 9;
   	   	   	   	   	   	GV_SetMonthTenDig--;
   	   	   	   	   	}
   	   	   	   	}

   	   	   	   	if((GV_SetMonthSingleDig==0)&&(GV_SetMonthTenDig==0))
   	   	   	   	{
   	   	   	   	   	GV_SetMonthSingleDig = 0x02;
   	   	   	   	   	GV_SetMonthTenDig = 0x01;
   	   	   	   	} 
   	}
   	else if(GV_RealTimeClockSetStep==2)
   	{
   	   	   	   	   	   	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempYear = LV_TempA & 0x0f;
           	   	LV_TempYear = LV_TempYear + LV_TempB;

   	   	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempMonth = LV_TempA & 0x0f;
           	   	LV_TempMonth = LV_TempMonth + LV_TempB;	 
           	   	
           	   	if(LV_TempMonth==0)
           	   	{
           	   	   	;
           	   	}  	
           	   	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
           	   	{
   	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0x01;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 0x03;
   	   	   	   	   	   	   	}              	   	   	
           	   	} 
           	   	else if(LV_TempMonth==2)
           	   	{
   	   	   	   	   	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 8;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
           	   	   	
           	   	}
           	   	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
           	   	{
   	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 3;
   	   	   	   	   	   	   	}              	   	   	
           	   	}
           	   	else
           	   	{
           	   	   	;
           	   	}  	   	
   	}
   	else if(GV_RealTimeClockSetStep==3)
   	{
   	   	   	   	if(GV_SetRealTimeClockHrSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockHrSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetRealTimeClockHrTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 9;
   	   	   	   	   	   	GV_SetRealTimeClockHrTenDig--;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 2;
   	   	   	   	   	   	GV_SetRealTimeClockHrTenDig = 1;

   	   	   	   	   	}
   	   	   	   	}
   	   	   	   	if((GV_SetRealTimeClockHrSingleDig==0)&&(GV_SetRealTimeClockHrTenDig==0))
   	   	   	   	{
   	   	   	   	   	if(BF_SetRealTimeClockAM_PM)
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetRealTimeClockAM_PM = 0;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	BF_SetRealTimeClockAM_PM = 1;
   	   	   	   	   	}
   	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 0x02;
   	   	   	   	   	GV_SetRealTimeClockHrTenDig = 0x01;
   	   	   	   	}      	   	
   	}
   	else if(GV_RealTimeClockSetStep==4)
   	{ 
   	   	   	   	if(GV_SetRealTimeClockMinSingleDig)
   	   	   	   	{
   	   	   	   	   	GV_SetRealTimeClockMinSingleDig--;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(GV_SetRealTimeClockMinTenDig)
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 9;
   	   	   	   	   	   	GV_SetRealTimeClockMinTenDig--;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 9;
   	   	   	   	   	   	GV_SetRealTimeClockMinTenDig = 5;
   	   	   	   	   	}
   	   	   	   	}      	   	
   	}  	
   	
   	//switch(GV_RealTimeClockSetStep)
   	//{
   	//     	case 0://Set Real Time Clock Year
   	//     	   	   	if(GV_SetYearSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetYearSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetYearTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetYearSingleDig = 9;
   	//     	   	   	   	   	GV_SetYearTenDig--;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetYearSingleDig = 9;
   	//     	   	   	   	   	GV_SetYearTenDig = 9;
   	//     	   	   	   	}
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 1://Set Real Time Clock Mon
   	//     	   	   	if(GV_SetMonthSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetMonthSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetMonthTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetMonthSingleDig = 9;
   	//     	   	   	   	   	GV_SetMonthTenDig--;
   	//     	   	   	   	}
   	//     	   	   	}
    //
   	//     	   	   	if((GV_SetMonthSingleDig==0)&&(GV_SetMonthTenDig==0))
   	//     	   	   	{
   	//     	   	   	   	GV_SetMonthSingleDig = 0x02;
   	//     	   	   	   	GV_SetMonthTenDig = 0x01;
   	//     	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	break;
    //
   	//     	case 2://Set Real Time Clock Day
   	//     	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempYear = LV_TempA & 0x0f;
    //         	   	LV_TempYear = LV_TempYear + LV_TempB;
    //
   	//     	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempMonth = LV_TempA & 0x0f;
    //         	   	LV_TempMonth = LV_TempMonth + LV_TempB;	   	   	   	
    //
   	//     	   	   	//每月天数计算：1,3,5,7,8,10,12 这几月永远31天
   	//     	   	   	//2月平年28天，闰年29天（一般年份能整除4或百年年份能整除400的是闰年，）
   	//     	   	   	//其他月份30天
   	//     	   	   	//以上计算方法说的是阳历
   	//     	   	   	
   	//     	   	   	//公历闰年判定遵循的规律为: 四年一闰,百年不闰,四百年再闰.
   	//     	   	   	//公历闰年的简单计算方法（符合以下条件之一的年份即为闰年，反之则是平年）
   	//     	   	   	//1.能被4整除而不能被100整除。2.能被100整除也能被400整除。
    //
   	//     	   	   	//普通年（不能被100整除的年份）能被4整除的为闰年。（如2004年就是闰年,1999年不是闰年）；
   	//     	   	   	//世纪年（能被100整除的年份）能被400整除的是闰年。(如2000年是闰年，1900年不是闰年)；
   	//     	   	   	
   	//     	   	   	//闰年指的是当年的年数难过被4整除，例如：2000年就是闰年，2000除以4等于500.可以整除。
   	//     	   	   	//平年就是整除不了的，例如：2001年就是平年，2001除以4等于500余1，就是平年。
   	//     	   	   	//就是这样的，懂了吗，很乐意为你解答    	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	switch(LV_TempMonth) 
   	//     	   	   	{
   	//     	   	   	   	case 0:
   	//     	   	   	   	break; 	
   	//     	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 1:
   	//     	   	   	   	case 3:	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 5:	
   	//     	   	   	   	case 7:	
   	//     	   	   	   	case 8:
   	//     	   	   	   	case 10:
   	//     	   	   	   	case 12:
   	//     	   	   	   	   	   	if(GV_SetDaySingleDig)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 0x01;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 0x03;
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	break;
   	//     	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	   	case 2: 
   	//     	   	   	   	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	else
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	//     	   	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	//     	   	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDaySingleDig)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	else
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	//     	   	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	//     	   	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 8;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	break; 	   	
   	//     	   	   	   	   	   	   	
   	//     	   	   	   	case 4:
   	//     	   	   	   	case 6:
   	//     	   	   	   	case 9:
   	//     	   	   	   	case 11:
   	//     	   	   	   	   	   	if(GV_SetDaySingleDig)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig--;
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(GV_SetDayTenDig)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig--;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	if((GV_SetDaySingleDig==0)&&(GV_SetDayTenDig==0))
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 3;
   	//     	   	   	   	   	   	}  	
   	//     	   	   	   	break; 	   	
   	//     	   	   	}
   	//     	break;
    //
   	//     	case 3:	//Set Real Time Clock Hr
   	//     	   	   	if(GV_SetRealTimeClockHrSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockHrSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetRealTimeClockHrTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 9;
   	//     	   	   	   	   	GV_SetRealTimeClockHrTenDig--;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetRealTimeClockHrSingleDig = 2;
   	//     	   	   	   	   	GV_SetRealTimeClockHrTenDig = 1;
    //
   	//     	   	   	   	}
   	//     	   	   	}
   	//     	   	   	if((GV_SetRealTimeClockHrSingleDig==0)&&(GV_SetRealTimeClockHrTenDig==0))
   	//     	   	   	{
   	//     	   	   	   	if(BF_SetRealTimeClockAM_PM)
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetRealTimeClockAM_PM = 0;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	BF_SetRealTimeClockAM_PM = 1;
   	//     	   	   	   	}
   	//     	   	   	   	GV_SetRealTimeClockHrSingleDig = 0x02;
   	//     	   	   	   	GV_SetRealTimeClockHrTenDig = 0x01;
   	//     	   	   	}  	   	   	   	   	   	   	   	   	
   	//     	break;
    //
   	//     	case 4://Set Real Time Clock Min
   	//     	   	   	if(GV_SetRealTimeClockMinSingleDig)
   	//     	   	   	{
   	//     	   	   	   	GV_SetRealTimeClockMinSingleDig--;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	if(GV_SetRealTimeClockMinTenDig)
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 9;
   	//     	   	   	   	   	GV_SetRealTimeClockMinTenDig--;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	GV_SetRealTimeClockMinSingleDig = 9;
   	//     	   	   	   	   	GV_SetRealTimeClockMinTenDig = 5;
   	//     	   	   	   	}
   	//     	   	   	}  	
   	//     	break;
   	//}    	
}

/************DownShortLongKeyClockSet  PROCEDURE************
  Procedure in keyScan

  Name: Sub_DownShortLongKeyClockSet.C
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/  
void Sub_DownShortLongKeyClockSet(void)
{
   	BF_DownKeyPressesd = 1;
   	if(BF_DownLongKeyPressesd)//
   	{
   	   	if(++GV_LongKeyTimer < 125) return;//125*2ms=250ms
   	   	{
   	   	   	//GV_PreKey = GV_CurKey;
   	   	   	GV_LongKeyTimer = 0;
   	   	   	Sub_RealTimeClockDec();
   	   	}  	   	   	
   	}
   	else
   	{
   	   	if(++GV_LongKeyTimer < 500) return;//500*2ms=1s
   	   	{
   	   	   	//GV_PreKey = GV_CurKey;
   	   	   	GV_LongKeyTimer = 0;
   	   	   	BF_DownLongKeyPressesd = 1;
   	   	   	Sub_RealTimeClockDec();
   	   	}
   	}
}

/*******SetLongKeyGetRealTimeClockSetMode PROCEDURE*********
  Procedure in keyScan

  Name: Sub_SetLongKeyGetRealTimeClockSetMode.C
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------*/  //djhhdiuflhwuwehfuawleifhwjsdjksadjkfasdgkfjagdkasgfkasgdfagsdhkfgasdhf
void Sub_SetLongKeyGetRealTimeClockSetMode(void)
{
     	unsigned char  	LV_TempA;  	
     	unsigned char  	LV_TempB;
     	LV_TempA = 0;
     	   	LV_TempB = 0;

     	
     	if(++GV_LongKeyTimer < 1500) return;//1500*2ms=3s
     	GV_PreKey = GV_CurKey;

     	//GV_15sNoOperationCnt = C_15sNoOperationCnt;
     	GV_RealTimeClockSetStep = 0;

     	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
     	GV_SetYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
     	GV_SetYearTenDig = GV_GetByteFromDs1302 >> 4;


     	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
     	GV_SetMonthSingleDig = GV_GetByteFromDs1302  &0x0F;
     	GV_SetMonthTenDig = GV_GetByteFromDs1302 >> 4;

     	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
     	GV_SetDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
     	GV_SetDayTenDig = GV_GetByteFromDs1302 >> 4;

     	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
     	GV_SetRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;

     	LV_TempA = GV_GetByteFromDs1302 >> 4;
     	LV_TempB = LV_TempA;
     	GV_SetRealTimeClockHrTenDig = LV_TempB & 0x01;
     	LV_TempA = LV_TempA & 0x02;//Get AM/PM
     	if(LV_TempA)
     	{
     	   	BF_SetRealTimeClockAM_PM = 1;
     	}
     	else
     	{
     	   	BF_SetRealTimeClockAM_PM = 0;
     	}
     	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
     	GV_SetRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
     	GV_SetRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;

     	GV_Mode = 1;//1=Clock set mode
}

/************SetKeyRealTimeClockEnterPROCEDURE***********
  Procedure in keyScan

  Name: Sub_SetKeyRealTimeClockEnter.C
  
  Enter: 

  Return:

 ------------------------------------------------------*/  
void Sub_SetKeyRealTimeClockEnter(void)  //
{
   	unsigned char  	LV_TempYear,LV_TempMonth,LV_TempDay,LV_TempA,LV_TempB,LV_TenTemp;
   	
   	if(GV_RealTimeClockSetStep==0)
   	{
   	   	   	   	LV_TenTemp = GV_SetYearTenDig;
   	   	   	   	LV_TenTemp <<= 4;
   	   	   	   	GV_GetByteFromDs1302 = (GV_SetYearSingleDig | LV_TenTemp);
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_Year,GV_GetByteFromDs1302); 	   	
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();     	   	
   	}
   	else if(GV_RealTimeClockSetStep==1)
   	{
   	   	   	   	LV_TenTemp = GV_SetMonthTenDig;
   	   	   	   	LV_TenTemp <<= 4;
   	   	   	   	GV_GetByteFromDs1302 = (GV_SetMonthSingleDig | LV_TenTemp);
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_Month,GV_GetByteFromDs1302);	   	
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	
   	   	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempYear = LV_TempA & 0x0f;
           	   	LV_TempYear = LV_TempYear + LV_TempB;

   	   	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempMonth = LV_TempA & 0x0f;
           	   	LV_TempMonth = LV_TempMonth + LV_TempB;
   	   	   	   	   	
   	   	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	   	   	   	LV_TempA = GV_GetByteFromDs1302;
       	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
           	   	LV_TempDay = LV_TempA & 0x0f;
           	   	LV_TempDay = LV_TempDay + LV_TempB;	

   	   	   	   	//每月天数计算：1,3,5,7,8,10,12 这几月永远31天
   	   	   	   	//2月平年28天，闰年29天（一般年份能整除4或百年年份能整除400的是闰年，）
   	   	   	   	//其他月份30天
   	   	   	   	//以上计算方法说的是阳历
   	   	   	   	
   	   	   	   	//公历闰年判定遵循的规律为: 四年一闰,百年不闰,四百年再闰.
   	   	   	   	//公历闰年的简单计算方法（符合以下条件之一的年份即为闰年，反之则是平年）
   	   	   	   	//1.能被4整除而不能被100整除。2.能被100整除也能被400整除。

   	   	   	   	//普通年（不能被100整除的年份）能被4整除的为闰年。（如2004年就是闰年,1999年不是闰年）；
   	   	   	   	//世纪年（能被100整除的年份）能被400整除的是闰年。(如2000年是闰年，1900年不是闰年)；
   	   	   	   	
   	   	   	   	//闰年指的是当年的年数难过被4整除，例如：2000年就是闰年，2000除以4等于500.可以整除。
   	   	   	   	//平年就是整除不了的，例如：2001年就是平年，2001除以4等于500余1，就是平年。
   	   	   	   	//就是这样的，懂了吗，很乐意为你解答 
   	   	   	   	if(LV_TempMonth==0)
           	   	{
           	   	   	;
           	   	}  	
           	   	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
           	   	{
   	   	   	   	   	   	   	if(LV_TempDay >= 32)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 3;
   	   	   	   	   	   	   	}              	   	   	
           	   	} 
           	   	else if(LV_TempMonth==2)
           	   	{
       	   	   	   	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(LV_TempDay >= 30)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	if(LV_TempDay >= 29)
   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 8;
   	   	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	}          	   	   	
           	   	}
           	   	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
           	   	{
   	   	   	   	   	   	   	if(LV_TempDay >= 31)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	   	   	   	   	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}                  	   	   	
           	   	}
           	   	else
           	   	{
           	   	   	;
           	   	}
           	   	
           	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//switch(LV_TempMonth) 
   	   	   	   	//{
   	   	   	   	//     	case 0:
   	   	   	   	//     	break; 	
   	   	   	   	//     	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 1:
   	   	   	   	//     	case 3:	   	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 5:	
   	   	   	   	//     	case 7:	
   	   	   	   	//     	case 8:
   	   	   	   	//     	case 10:
   	   	   	   	//     	case 12:
   	   	   	   	//     	   	   	if(LV_TempDay >= 32)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 1;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig = 3;
   	   	   	   	//     	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   	//     	break;
   	   	   	   	//     	   	   	   	   	   	   	   	   	
   	   	   	   	//     	case 2: 
   	   	   	   	//     	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	if(LV_TempDay >= 30)
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 9;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	}
   	   	   	   	//     	   	   	else
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	if(LV_TempDay >= 29)
   	   	   	   	//     	   	   	   	{
   	   	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 8;
   	   	   	   	//     	   	   	   	   	GV_SetDayTenDig = 2;
   	   	   	   	//     	   	   	   	}
   	   	   	   	//     	   	   	}
   	   	   	   	//     	break; 	   	
   	   	   	   	//     	   	   	   	
   	   	   	   	//     	case 4:
   	   	   	   	//     	case 6:
   	   	   	   	//     	case 9:
   	   	   	   	//     	case 11:
   	   	   	   	//     	   	   	if(LV_TempDay >= 31)
   	   	   	   	//     	   	   	{
   	   	   	   	//     	   	   	   	GV_SetDaySingleDig = 0;
   	   	   	   	//     	   	   	   	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
   	   	   	   	//     	   	   	}  	
                //
   	   	   	   	//     	break; 	
   	   	   	   	//}    	   	   	
   	}
   	else if(GV_RealTimeClockSetStep==2)
   	{
   	   	   	   	LV_TenTemp = GV_SetDayTenDig;
   	   	   	   	LV_TenTemp <<= 4;
   	   	   	   	GV_GetByteFromDs1302 = (GV_SetDaySingleDig | LV_TenTemp);
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_Day,GV_GetByteFromDs1302);  	   	
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();     	   	
   	}
   	else if(GV_RealTimeClockSetStep==3)
   	{
   	   	   	   	LV_TenTemp = GV_SetRealTimeClockHrTenDig;
   	   	   	   	LV_TenTemp <<= 4;
   	   	   	   	if(BF_SetRealTimeClockAM_PM)//为0时=AM；为1=PM
   	   	   	   	{
   	   	   	   	   	LV_TenTemp |= 0xA0;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	LV_TenTemp |= 0x80;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)
   	   	   	   	}

   	   	   	   	GV_GetByteFromDs1302 = (GV_SetRealTimeClockHrSingleDig | LV_TenTemp);
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_Hour,GV_GetByteFromDs1302); 	   	
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();     	   	
   	}      	
   	else if(GV_RealTimeClockSetStep==4)
   	{
   	   	   	   	LV_TenTemp = GV_SetRealTimeClockMinTenDig;
   	   	   	   	LV_TenTemp <<= 4;
   	   	   	   	GV_GetByteFromDs1302 = (GV_SetRealTimeClockMinSingleDig | LV_TenTemp);
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_Minute,GV_GetByteFromDs1302);   	   	
   	   	   	   	Nop();
   	   	   	   	Nop();
   	   	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	   	   	   	Nop();
   	   	   	   	Nop();     	   	
   	}
   	else
   	{
   	   	   	;
   	}      	
   	
   	
   	//switch(GV_RealTimeClockSetStep)
   	//{
   	//     	//unsigned char LV_TenTemp;
   	//     	case 0://Enter Real Time Clock Year
   	//     	   	   	LV_TenTemp = GV_SetYearTenDig;
   	//     	   	   	LV_TenTemp <<= 4;
   	//     	   	   	GV_GetByteFromDs1302 = (GV_SetYearSingleDig | LV_TenTemp);
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_Year,GV_GetByteFromDs1302); 	   	
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	break;
    //
   	//     	case 1://Enter Real Time Clock Month
   	//     	   	   	LV_TenTemp = GV_SetMonthTenDig;
   	//     	   	   	LV_TenTemp <<= 4;
   	//     	   	   	GV_GetByteFromDs1302 = (GV_SetMonthSingleDig | LV_TenTemp);
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_Month,GV_GetByteFromDs1302);	   	
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	
   	//     	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempYear = LV_TempA & 0x0f;
    //         	   	LV_TempYear = LV_TempYear + LV_TempB;
    //
   	//     	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempMonth = LV_TempA & 0x0f;
    //         	   	LV_TempMonth = LV_TempMonth + LV_TempB;
   	//     	   	   	   	
   	//     	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302;
    //     	   	   	LV_TempB = (LV_TempA>>4)*10;//BCD_TO_HEX十进制转成十六进制的程序·
    //         	   	LV_TempDay = LV_TempA & 0x0f;
    //         	   	LV_TempDay = LV_TempDay + LV_TempB;	
    //
   	//     	   	   	//每月天数计算：1,3,5,7,8,10,12 这几月永远31天
   	//     	   	   	//2月平年28天，闰年29天（一般年份能整除4或百年年份能整除400的是闰年，）
   	//     	   	   	//其他月份30天
   	//     	   	   	//以上计算方法说的是阳历
   	//     	   	   	
   	//     	   	   	//公历闰年判定遵循的规律为: 四年一闰,百年不闰,四百年再闰.
   	//     	   	   	//公历闰年的简单计算方法（符合以下条件之一的年份即为闰年，反之则是平年）
   	//     	   	   	//1.能被4整除而不能被100整除。2.能被100整除也能被400整除。
    //
   	//     	   	   	//普通年（不能被100整除的年份）能被4整除的为闰年。（如2004年就是闰年,1999年不是闰年）；
   	//     	   	   	//世纪年（能被100整除的年份）能被400整除的是闰年。(如2000年是闰年，1900年不是闰年)；
   	//     	   	   	
   	//     	   	   	//闰年指的是当年的年数难过被4整除，例如：2000年就是闰年，2000除以4等于500.可以整除。
   	//     	   	   	//平年就是整除不了的，例如：2001年就是平年，2001除以4等于500余1，就是平年。
   	//     	   	   	//就是这样的，懂了吗，很乐意为你解答 
   	//     	   	   	if(LV_TempMonth==0)
    //         	   	{
    //         	   	   	;
    //         	   	}  	
    //         	   	else if(LV_TempMonth==1||LV_TempMonth==3||LV_TempMonth==5||LV_TempMonth==7||LV_TempMonth==8||LV_TempMonth==10||LV_TempMonth==12)
    //         	   	{
   	//     	   	   	   	   	   	if(LV_TempDay >= 32)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 3;
   	//     	   	   	   	   	   	}              	   	   	
    //         	   	} 
    //         	   	else if(LV_TempMonth==2)
    //         	   	{
    //     	   	   	   	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(LV_TempDay >= 30)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	if(LV_TempDay >= 29)
   	//     	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	GV_SetDaySingleDig = 8;
   	//     	   	   	   	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	}          	   	   	
    //         	   	}
    //         	   	else if(LV_TempMonth==4||LV_TempMonth==6||LV_TempMonth==9||LV_TempMonth==11)
    //         	   	{
   	//     	   	   	   	   	   	if(LV_TempDay >= 31)
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	   	   	   	   	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}                  	   	   	
    //         	   	}
    //         	   	else
    //         	   	{
    //         	   	   	;
    //         	   	}
    //         	   	
    //         	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	//switch(LV_TempMonth) 
   	//     	   	   	//{
   	//     	   	   	//     	case 0:
   	//     	   	   	//     	break; 	
   	//     	   	   	//     	   	   	   	   	   	   	   	   	
   	//     	   	   	//     	case 1:
   	//     	   	   	//     	case 3:	   	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	//     	case 5:	
   	//     	   	   	//     	case 7:	
   	//     	   	   	//     	case 8:
   	//     	   	   	//     	case 10:
   	//     	   	   	//     	case 12:
   	//     	   	   	//     	   	   	if(LV_TempDay >= 32)
   	//     	   	   	//     	   	   	{
   	//     	   	   	//     	   	   	   	GV_SetDaySingleDig = 1;
   	//     	   	   	//     	   	   	   	GV_SetDayTenDig = 3;
   	//     	   	   	//     	   	   	}  	   	   	   	   	   	   	   	   	   	   	   	
   	//     	   	   	//     	break;
   	//     	   	   	//     	   	   	   	   	   	   	   	   	
   	//     	   	   	//     	case 2: 
   	//     	   	   	//     	   	   	if(LV_TempYear % 4)//能被4整除的为闰年(2月为29天),否则为平年(2月为28天)
   	//     	   	   	//     	   	   	{
   	//     	   	   	//     	   	   	   	if(LV_TempDay >= 30)
   	//     	   	   	//     	   	   	   	{
   	//     	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 9;
   	//     	   	   	//     	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	//     	   	   	   	}
   	//     	   	   	//     	   	   	}
   	//     	   	   	//     	   	   	else
   	//     	   	   	//     	   	   	{
   	//     	   	   	//     	   	   	   	if(LV_TempDay >= 29)
   	//     	   	   	//     	   	   	   	{
   	//     	   	   	//     	   	   	   	   	GV_SetDaySingleDig = 8;
   	//     	   	   	//     	   	   	   	   	GV_SetDayTenDig = 2;
   	//     	   	   	//     	   	   	   	}
   	//     	   	   	//     	   	   	}
   	//     	   	   	//     	break; 	   	
   	//     	   	   	//     	   	   	   	
   	//     	   	   	//     	case 4:
   	//     	   	   	//     	case 6:
   	//     	   	   	//     	case 9:
   	//     	   	   	//     	case 11:
   	//     	   	   	//     	   	   	if(LV_TempDay >= 31)
   	//     	   	   	//     	   	   	{
   	//     	   	   	//     	   	   	   	GV_SetDaySingleDig = 0;
   	//     	   	   	//     	   	   	   	GV_SetDayTenDig = 3;   	   	   	   	   	   	   	
   	//     	   	   	//     	   	   	}  	
    //            //
   	//     	   	   	//     	break; 	
   	//     	   	   	//}    	   	   	   	
   	//     	   	   	   	
   	//     	break; 	
    //
   	//     	case 2://Enter Real Time Clock Day
   	//     	   	   	LV_TenTemp = GV_SetDayTenDig;
   	//     	   	   	LV_TenTemp <<= 4;
   	//     	   	   	GV_GetByteFromDs1302 = (GV_SetDaySingleDig | LV_TenTemp);
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_Day,GV_GetByteFromDs1302);  	   	
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	break;
    //
   	//     	case 3://Enter Real Time Clock Hr
   	//     	   	   	LV_TenTemp = GV_SetRealTimeClockHrTenDig;
   	//     	   	   	LV_TenTemp <<= 4;
   	//     	   	   	if(BF_SetRealTimeClockAM_PM)//为0时=AM；为1=PM
   	//     	   	   	{
   	//     	   	   	   	LV_TenTemp |= 0xA0;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	LV_TenTemp |= 0x80;//(RTC时寄存器的Bit7=0为24小时制；Bit7=1为12小时制（为12小时制时，时寄存器的Bit5为0时=AM；为1=PM）；)
   	//     	   	   	}
    //
   	//     	   	   	GV_GetByteFromDs1302 = (GV_SetRealTimeClockHrSingleDig | LV_TenTemp);
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_Hour,GV_GetByteFromDs1302); 	   	
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	break;
    //
   	//     	case 4://Enter Real Time Clock Min
   	//     	   	   	LV_TenTemp = GV_SetRealTimeClockMinTenDig;
   	//     	   	   	LV_TenTemp <<= 4;
   	//     	   	   	GV_GetByteFromDs1302 = (GV_SetRealTimeClockMinSingleDig | LV_TenTemp);
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_DisableWriteProtect); //Disable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_Minute,GV_GetByteFromDs1302);   	   	
   	//     	   	   	Nop();
   	//     	   	   	Nop();
   	//     	   	   	Sub_Write1302(C_DS1302_WriteProtect,C_DS1302_EnableWriteProtect); //Enable write protect
   	//     	   	   	Nop();
   	//     	   	   	Nop(); 	
   	//     	break;
   	//}

   	if(++GV_RealTimeClockSetStep >= 5)
   	{
   	   	GV_RealTimeClockSetStep = 0;
   	   	GV_Mode = 0;//0=Normal mode;mode;  	   	 
   	}
}

/************SetSetKeyAlarmEnterPROCEDURE******************
  Procedure in keyScan

  Name: Sub_SetKeyAlarmEnter.C
  
  Enter: 

  Return:

 ------------------------------------------------------*/  
void Sub_SetKeyAlarmEnter(void)  //
{
   	//if(BF_AlarmOnOff == 0) return;//0 = alarm off; 1 = alarm on
   	
   	if(GV_AlarmClockSetStep==0)
   	{
   	   	   	   	BF_RunAlarmOnOff = BF_SetAlarmOnOff;
   	   	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	   	   	   	{
   	   	   	   	   	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
   	   	   	   	   	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;
   	   	   	   	   	BF_SetAlarmAM_PM = BF_RunAlarmAM_PM;
   	   	   	   	   	GV_AlarmClockSetStep++;
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	GV_Mode = 0;//0=Normal mode;mode;
   	   	   	   	}
   	   	   	   	GV_PreKey = GV_CurKey;     	   	
   	}
   	else if(GV_AlarmClockSetStep==1)
   	{
   	   	   	   	GV_RunAlarmClockHrSingleDig = GV_SetAlarmClockHrSingleDig;
   	   	   	   	GV_RunAlarmClockHrTenDig = GV_SetAlarmClockHrTenDig;
   	   	   	   	BF_RunAlarmAM_PM = BF_SetAlarmAM_PM;
   	   	   	   	   	   	   	   	
   	   	   	   	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
   	   	   	   	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
   	   	   	   	GV_AlarmClockSetStep++;    	   	
   	}
   	else if(GV_AlarmClockSetStep==2)
   	{
   	   	   	   	GV_RunAlarmClockMinSingleDig = GV_SetAlarmClockMinSingleDig;
   	   	   	   	GV_RunAlarmClockMinTenDig = GV_SetAlarmClockMinTenDig;
   	   	   	   	GV_Mode = 0;//0=Normal mode;mode;
   	   	   	   	GV_AlarmClockSetStep = 0;      	   	
   	}
   	else
   	{
   	   	;
   	}
   	
   	
   	
   	//switch(GV_AlarmClockSetStep)
   	//{
   	//     	case 0: //0 = alarm off; 1 = alarm on
   	//     	   	   	BF_RunAlarmOnOff = BF_SetAlarmOnOff;
   	//     	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	//     	   	   	{
   	//     	   	   	   	GV_SetAlarmClockHrSingleDig = GV_RunAlarmClockHrSingleDig;
   	//     	   	   	   	GV_SetAlarmClockHrTenDig = GV_RunAlarmClockHrTenDig;
   	//     	   	   	   	BF_SetAlarmAM_PM = BF_RunAlarmAM_PM;
   	//     	   	   	   	GV_AlarmClockSetStep++;
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	GV_Mode = 0;//0=Normal mode;mode;
   	//     	   	   	}
   	//     	   	   	GV_PreKey = GV_CurKey;
   	//     	break;
    //
   	//     	case 1:
   	//     	   	   	GV_RunAlarmClockHrSingleDig = GV_SetAlarmClockHrSingleDig;
   	//     	   	   	GV_RunAlarmClockHrTenDig = GV_SetAlarmClockHrTenDig;
   	//     	   	   	BF_RunAlarmAM_PM = BF_SetAlarmAM_PM;
   	//     	   	   	   	   	   	   	
   	//     	   	   	GV_SetAlarmClockMinSingleDig = GV_RunAlarmClockMinSingleDig;
   	//     	   	   	GV_SetAlarmClockMinTenDig = GV_RunAlarmClockMinTenDig;
   	//     	   	   	GV_AlarmClockSetStep++;
   	//     	break;
    //
   	//     	case 2:
   	//     	   	   	GV_RunAlarmClockMinSingleDig = GV_SetAlarmClockMinSingleDig;
   	//     	   	   	GV_RunAlarmClockMinTenDig = GV_SetAlarmClockMinTenDig;
   	//     	   	   	GV_Mode = 0;//0=Normal mode;mode;
   	//     	   	   	GV_AlarmClockSetStep = 0;
   	//     	break;
   	//}
}

/************KeyScan PROCEDURE************************
  Procedure in keyScan

  Name:  Sub_KeyScan Proc
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------*/  
void Sub_KeyScan(void)    //Per 2ms
{
   	unsigned char  	LV_TempB;
   	LV_TempB = 0;      	
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	Nop();
   	
//----------------------------------------------------------------
   	   	
   	LV_TempB = IOP0;
   	LV_TempB = LV_TempB>>4;
   	LV_TempB = LV_TempB&0X0C;
   	LV_TempB = LV_TempB|IOP2;
   	LV_TempB = LV_TempB<<1;
   	LV_TempB = LV_TempB & C_KeysNaturalState;//0b0111 1000;

   	if(GV_CurKey != LV_TempB)
   	{
   	   	GV_KeyDebounce = 0;
   	   	GV_CurKey = LV_TempB;
   	   	GV_LongKeyTimer = 0;
   	   	BF_Up_AlLongKeyPressesd = 0;
   	   	BF_DownLongKeyPressesd = 0;
   	   	BF_SetLongKeyPressesd = 0;
   	   	//BF_LongKeyPress = 0;
   	   	return;
   	}

   	if(++GV_KeyDebounce < 30) return;  	
   	if(GV_PreKey == C_KeysNaturalState)
   	{
   	   	//UP/AL key
   	   	if(GV_CurKey == 0x38)//0011 1000 Short/long UP/AL key Pressed,return;
   	   	{
   	   	   	   	   	if(GV_Mode==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	Sub_Up_AlLongKeyGetAlarmSetMode();//Long key return
   	   	   	   	   	   	return;	 
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_Up_AlShortLongKeyClockSet();//Long/Short key return
   	   	   	   	   	   	return;	 
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==2)
   	   	   	   	   	   	{
   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_Up_AlShortLongKeyAlarmSet();//Long/Short key return
   	   	   	   	   	   	return;	
   	   	   	   	   	   	}  	
   	   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}  	       	   	   	
   	   	   	
   	   	   	//switch(GV_Mode)
   	   	   	//{
   	   	   	//     	case 0://0=Normal mode;
   	   	   	//     	   	   	Sub_Up_AlLongKeyGetAlarmSetMode();//Long key return
   	   	   	//     	   	   	return;	   	
   	   	   	//     	break;
            //
   	   	   	//     	case 1://1=clock set mode
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_Up_AlShortLongKeyClockSet();//Long/Short key return
   	   	   	//     	   	   	return;	   	   	   	   	   	   	   	
            //
   	   	   	//     	break;
            //
   	   	   	//     	case 2://2=Alarm set
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_Up_AlShortLongKeyAlarmSet();//Long/Short key return
   	   	   	//     	   	   	return;	
   	   	   	//     	break;
   	   	   	//}
   	   	}
   	   	else//Ckeck UP/AL key release
   	   	{
   	   	   	if(BF_Up_AlKeyPressesd)
   	   	   	{
   	   	   	   	BF_Up_AlKeyPressesd = 0;
   	   	   	   	   	if(GV_Mode==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	   	Sub_RealTimeClockAdd();	//Long/Short key return	 
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==2)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	   	Sub_SetAlarmAddTimer();	//Long/Short key return
   	   	   	   	   	   	}  	
   	   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}  	       	   	   	   	
   	   	   	   	
   	   	   	   	
   	   	   	   	//switch(GV_Mode)
   	   	   	   	//{
   	   	   	   	//     	case 0://0=Normal mode;	   	
   	   	   	   	//     	break;
                //
   	   	   	   	//     	case 1://1=clock set mode
   	   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	//     	   	   	Sub_RealTimeClockAdd();	//Long/Short key return	   	   	   	   	   	   	
   	   	   	   	//     	break;
                //
   	   	   	   	//     	case 2://2=Alarm set
   	   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	//     	   	   	Sub_SetAlarmAddTimer();	//Long/Short key return
   	   	   	   	//     	break;
   	   	   	   	//}
   	   	   	}
   	   	}

   	   	//DOWN key
   	   	if(GV_CurKey == 0x58)//0101 1000 ShortKey,no return;
   	   	{
   	   	   	   	   	if(GV_Mode==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_DownShortLongKeyClockSet();//Long/Short key return
   	   	   	   	   	   	return;	
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==2)
   	   	   	   	   	   	{
   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_DownShortLongKeyAlarmSet();//Long/Short key return
   	   	   	   	   	   	return;	
   	   	   	   	   	   	}  	
   	   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}  	   	   	   	
   	   	   	
   	   	   	
   	   	   	//switch(GV_Mode)
   	   	   	//{
   	   	   	//     	case 0://0=Normal mode;	
   	   	   	//     	break;
            //
   	   	   	//     	case 1://1=clock set mode
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_DownShortLongKeyClockSet();//Long/Short key return
   	   	   	//     	   	   	return;	   	   	   	   	   	   	   	
            //
   	   	   	//     	break;
            //
   	   	   	//     	case 2://2=Alarm set
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_DownShortLongKeyAlarmSet();//Long/Short key return
   	   	   	//     	   	   	return;	
   	   	   	//     	break;
   	   	   	//}    	   	   	   	
   	   	}
   	   	else//Ckeck Down key release
   	   	{
   	   	   	if(BF_DownKeyPressesd)
   	   	   	{
   	   	   	   	BF_DownKeyPressesd = 0;
   	   	   	   	   	   	
   	   	   	   	   	if(GV_Mode==0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==1)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	   	Sub_RealTimeClockDec();	//Long/Short key return	
   	   	   	   	   	   	}
   	   	   	   	   	   	else if(GV_Mode==2)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	   	Sub_SetAlarmDecTimer();	//Long/Short key return	
   	   	   	   	   	   	}  	
   	   	   	   	   	   	else
   	   	   	   	   	   	{
   	   	   	   	   	   	   	;
   	   	   	   	   	   	}  	
   	   	   	   	//switch(GV_Mode)
   	   	   	   	//{
   	   	   	   	//     	case 0://0=Normal mode;    	   	
   	   	   	   	//     	break;
                //
   	   	   	   	//     	case 1://1=clock set mode
   	   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	//     	   	   	Sub_RealTimeClockDec();	//Long/Short key return	   	   	   	   	   	   	
   	   	   	   	//     	break;
                //
   	   	   	   	//     	case 2://2=Alarm set
   	   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	//     	   	   	Sub_SetAlarmDecTimer();	//Long/Short key return
   	   	   	   	//     	break;
   	   	   	   	//}
   	   	   	}
   	   	}
   	   	//SET key  	   	
   	   	if(GV_CurKey == 0x68)//0110 1000 ShortKey,no return;
   	   	{
   	   	   	   	if(GV_Mode==0)
   	   	   	   	{
   	   	   	   	   	Sub_SetLongKeyGetRealTimeClockSetMode();
   	   	   	   	   	   	return;
   	   	   	   	}
   	   	   	   	else if(GV_Mode==1)
   	   	   	   	{
   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_SetKeyRealTimeClockEnter();//Long/Short key return 	
   	   	   	   	}
   	   	   	   	else if(GV_Mode==2)
   	   	   	   	{
   	   	   	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	   	   	   	Sub_SetKeyAlarmEnter();//Long/Short key return 	
   	   	   	   	}  	
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	;
   	   	   	   	}  	
   	   	   	   	   	
   	   	   	//switch(GV_Mode)
   	   	   	//{
   	   	   	//     	case 0://0=Normal mode;
   	   	   	//     	   	   	Sub_SetLongKeyGetRealTimeClockSetMode();
   	   	   	//     	   	   	return;
   	   	   	//     	break;
            //
   	   	   	//     	case 1://1=clock set mode
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_SetKeyRealTimeClockEnter();//Long/Short key return 	   	   	   	   	   	   	   	
            //
   	   	   	//     	break;
            //
   	   	   	//     	case 2://2=Alarm set
   	   	   	//     	   	   	GV_15sNoOperationCnt = C_15sNoOperationCnt;
   	   	   	//     	   	   	Sub_SetKeyAlarmEnter();//Long/Short key return 	
   	   	   	//     	break;
   	   	   	//}
   	   	}
   	   	
   	   	//SNOOZE key   	   	
   	   	if(GV_CurKey == 0x70)//0111 0000 ShortKey,no return;
   	   	{
   	   	   	if(BF_BuzzerBBB)
   	   	   	{
   	   	   	   	BF_BuzzerBBB = 0;
   	   	   	   	GV_BuzzerIndex = 0;
   	   	   	   	GV_BuzzerDuty = 0;
   	   	   	   	DisableBuzzer();
   	   	   	   	if(GV_SnoozeTimer == 0)
   	   	   	   	{
   	   	   	   	   	GV_SnoozeTimer = C_SnoozeTimer;//0.5s*120=60s
   	   	   	   	}
   	   	   	}
   	   	   	else
   	   	   	{
   	   	   	   	if(GV_Mode == 0)
   	   	   	   	{
   	   	   	   	   	if(++GV_DisplayBrightnessLevel > 2)//在正常模式下单按作屏幕灯光亮度3档位循环调试
   	   	   	   	   	{
   	   	   	   	   	   	GV_DisplayBrightnessLevel = 0;
   	   	   	   	   	}
   	   	   	   	}
   	   	   	}
   	   	}

   	   	//---------------------------  	   	   	   	   	   	   	   	
   	}
   	GV_PreKey = GV_CurKey; 	
}









/************BuzzerShortB PROCEDURE**************************
  Procedure in Buzzer

  Name: Sub_Sub_BuzzerShortB proc
  
  Enter: 
  
  Parameter: 

  Return:

 ----------------------------------------------------------*/
/*void Sub_BuzzerShortB(void)
{
   	switch(GV_BuzzerIndex)
   	{
   	   	case 0:	GV_BuzzerDuty=50;
   	   	   	   	EnableBuzzer();
   	   	   	   	GV_BuzzerIndex = 1;
   	   	break;

   	   	case 1: if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 0;
   	   	   	   	   	DisableBuzzer();
   	   	   	   	   	BF_BuzzerShortB = 0;
   	   	   	   	}
   	   	break;

   	   	default: GV_BuzzerIndex = 0;
   	   	break;
   	}
}*/

/************BuzzerLongB PROCEDURE**************************
  Procedure in Buzzer

  Name: Sub_BuzzerLongB proc
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------*/
/*void Sub_BuzzerLongB(void)
{
   	switch(GV_BuzzerIndex)
   	{
   	   	case 0:	GV_BuzzerDuty=250;
   	   	   	   	EnableBuzzer();
   	   	   	   	GV_BuzzerIndex = 1;
   	   	break;

   	   	case 1: if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 0;
   	   	   	   	   	DisableBuzzer();
   	   	   	   	   	BF_BuzzerLongB = 0;
   	   	   	   	}
   	   	break;

   	   	default: GV_BuzzerIndex = 0;
   	   	break;
   	}
}*/

/************BuzzerBBB PROCEDURE****************************
  Procedure in Buzzer

  Name: Sub_BuzzerBBB proc
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------*/
void Sub_BuzzerBBB(void)//Per 2ms
{
   	   	if(GV_BuzzerIndex==0)
   	   	{
   	   	   	   	   	   	   	   	GV_BuzzerDuty=50;
   	   	   	   	EnableBuzzer();
   	   	   	   	GV_BuzzerIndex = 1;
   	   	}
   	   	else if(GV_BuzzerIndex==1)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 2;
   	   	   	   	   	DisableBuzzer();
   	   	   	   	   	GV_BuzzerDuty = 50;
   	   	   	   	}
   	   	}
   	   	else if(GV_BuzzerIndex==2)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 3;
   	   	   	   	}
   	   	}
   	   	else if(GV_BuzzerIndex==3)
   	   	{
   	   	   	   	   	   	   	   	GV_BuzzerDuty=50;
   	   	   	   	EnableBuzzer();
   	   	   	   	GV_BuzzerIndex = 4;
   	   	}
   	   	else if(GV_BuzzerIndex==4)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 5;
   	   	   	   	   	DisableBuzzer();
   	   	   	   	   	GV_BuzzerDuty = 50;
   	   	   	   	}
   	   	}
   	   	else if(GV_BuzzerIndex==5)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 6;
   	   	   	   	}
   	   	}
   	   	else if(GV_BuzzerIndex==6)
   	   	{
   	   	   	   	   	   	   	   	GV_BuzzerDuty=50;
   	   	   	   	EnableBuzzer();
   	   	   	   	GV_BuzzerIndex = 7;
   	   	}
   	   	else if(GV_BuzzerIndex==7)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 8;
   	   	   	   	   	DisableBuzzer();
   	   	   	   	   	GV_BuzzerDuty = 150;
   	   	   	   	}
   	   	}
   	   	else if(GV_BuzzerIndex==8)
   	   	{
   	   	   	   	   	   	   	   	if(--GV_BuzzerDuty == 0)
   	   	   	   	{
   	   	   	   	   	GV_BuzzerIndex = 0;
   	   	   	   	}
   	   	}
   	   	else
   	   	{
   	   	   	   	   	   	   	   	GV_BuzzerIndex = 0;
   	   	}
   	   	
   	   	
   	//switch(GV_BuzzerIndex)
   	//{
   	//     	//On 100ms-----------------------------------
   	//     	case 0:	GV_BuzzerDuty=50;
   	//     	   	   	EnableBuzzer();
   	//     	   	   	GV_BuzzerIndex = 1;
   	//     	break;
   	//     	case 1: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 2;
   	//     	   	   	   	DisableBuzzer();
   	//     	   	   	   	GV_BuzzerDuty = 50;
   	//     	   	   	}
   	//     	break;
   	//     	//Off 100ms
   	//     	case 2: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 3;
   	//     	   	   	}
   	//     	break;
   	//     	
   	//     	//On 100ms----------------------------------
   	//     	case 3:	GV_BuzzerDuty=50;
   	//     	   	   	EnableBuzzer();
   	//     	   	   	GV_BuzzerIndex = 4;
   	//     	case 4: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 5;
   	//     	   	   	   	DisableBuzzer();
   	//     	   	   	   	GV_BuzzerDuty = 50;
   	//     	   	   	}
   	//     	break;
   	//     	//Off 100ms
   	//     	case 5: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 6;
   	//     	   	   	}
   	//     	break;
    //
   	//     	//On 100ms----------------------------------
   	//     	case 6:	GV_BuzzerDuty=50;
   	//     	   	   	EnableBuzzer();
   	//     	   	   	GV_BuzzerIndex = 7;
   	//     	break;
   	//     	case 7: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 8;
   	//     	   	   	   	DisableBuzzer();
   	//     	   	   	   	GV_BuzzerDuty = 150;
   	//     	   	   	}
   	//     	break;
    //
   	//     	//Off 100ms
   	//     	case 8: if(--GV_BuzzerDuty == 0)
   	//     	   	   	{
   	//     	   	   	   	GV_BuzzerIndex = 0;
   	//     	   	   	}
   	//     	break;
    //
   	//     	default: GV_BuzzerIndex = 0;
   	//     	break;
   	//}
}

/************Buzzer PROCEDURE*******************************
  Procedure in Buzzer

  Name: Sub_Buzzer proc
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------*/
void Sub_Buzzer(void)  //Per 2ms
{
   	if(BF_BuzzerBBB)
   	{
   	   	Sub_BuzzerBBB();
   	}
   	else
   	{
   	   	GV_BuzzerIndex = 0;
   	   	GV_BuzzerDuty = 0;
   	   	DisableBuzzer();
   	}
}  	












/************SendByteToPT6964 PROCEDURE************************
  Procedure in PT6964

  Name: Sub_SendByteToPT6964.C
  
  Enter: 
  
  Parameter: 

  Return:

 -------------------------------------------------------------*/  
void Sub_SendByteToPT6964(unsigned char	LV_SendTodata)  
{
   	unsigned char  	i;//LV_TempE;
   	SetDIOOutput();  
   	SetDIO0();
   	for(i=0x01; i; i<<=1)
   	{
   	   	SetSCK0();
   	   	if(i & LV_SendTodata) {SetDIO1();} else {SetDIO0();}
   	   	SetSCK1();
   	   	Nop();
   	   	Nop();
   	   	SetSCK0();
   	}
   	SetDIO0();
}

/************GetByteFromPT6964 PROCEDURE************************
  Procedure in PT6964

  Name: Sub_GetByteFromPT6964.C
  
  Enter: 
  
  Parameter: 

  Return:

 --------------------------------------------------------------*/  
void Sub_GetByteFromPT6964(void)  
{
   	unsigned char  	LV_TempPT6964; 	
   	GV_GetPT6964Data = 0;
   	SetDIOInput();
   	Nop();
   	Nop();
   	for(LV_TempPT6964=0x80; LV_TempPT6964; LV_TempPT6964>>=1)
   	{
   	   	GV_GetPT6964Data<<=1;
   	   	SetSCK1();
   	   	Nop();
   	   	Nop();
   	   	if(GetDIO()) {GV_GetPT6964Data++; }
   	   	SetSCK0();
   	   	Nop();
   	   	Nop();
   	}

   	SetDIOOutput();
   	Nop();
   	Nop();
}
/************SendDispDataToTA6932 Process ***********************
  Procedure in PT6964
  
  Name: Sub_SendDispDataToTA6932.c
  
  Enter: 
  
  Parameter: 

  Return:

 ---------------------------------------------------------------*/
void Sub_SendDispDataToTA6932(void)//Per 10ms
{
   	unsigned char  	LV_TempA;
   	unsigned char  	LV_TempB;

   	unsigned char  	LV_Dig1_SG1_8;//Dig1
   	unsigned char  	LV_Dig2_SG1_8;//Dig2
   	unsigned char  	LV_Dig3_SG1_8;//Dig3
   	unsigned char  	LV_Dig4_SG1_8;//Dig4
   	unsigned char  	LV_Dig5_SG1_8;//Dig5
   	unsigned char  	LV_Dig6_SG1_8;//Dig6
   	unsigned char  	LV_Dig7_SG1_8;//Dig7
   	unsigned char  	LV_Dig8_SG1_8;//Dig8
   	unsigned char  	LV_Dig9_SG1_8;//Dig9
   	unsigned char  	LV_Dig10_SG1_8;//Dig10
   	unsigned char  	LV_Dig11_SG1_8;//Dig11
   	unsigned char  	LV_Dig12_SG1_8;//Dig12
   	unsigned char  	LV_Dig13_SG1_8;//Dig13
   	
   	
   	LV_Dig1_SG1_8 = 0;
   	LV_Dig2_SG1_8 = 0;
   	LV_Dig3_SG1_8 = 0;
   	LV_Dig4_SG1_8 = 0;
   	LV_Dig5_SG1_8 = 0;
   	LV_Dig6_SG1_8 = 0;
   	LV_Dig7_SG1_8 = 0;
   	LV_Dig8_SG1_8 = 0;
   	LV_Dig9_SG1_8 = 0;
   	LV_Dig10_SG1_8 = 0;
   	LV_Dig11_SG1_8 = 0;
   	LV_Dig12_SG1_8 = 0;
   	LV_Dig13_SG1_8 = 0;
   	
   	LV_TempA = 0;
   	LV_TempB = 0;
   	
   	if(GV_Mode==0)
   	{
   	   	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	   	   	   	{
   	   	   	   	   	//Get the Alarm data
   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_RunAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_RunAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit 	
   	   	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons	

   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_RunAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_RunAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit  	
   	   	   	   	   	if(BF_RunAlarmAM_PM)//为0时=AM；为1=PM
   	   	   	   	   	{
   	   	   	   	   	   	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 Alarm clock PM  icons
   	   	   	   	   	   	BF_RunRealTimeClockAM_PM = 1;
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   	{
   	   	   	   	   	   	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 Alarm clock AM  icons
   	   	   	   	   	   	BF_RunRealTimeClockAM_PM = 0;  	   	
   	   	   	   	   	}  	   	   	   	   	   	
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	//Get the year Data
   	   	   	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	   	   	   	   	GV_RunYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	   	GV_RunYearTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_RunYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_RunYearTenDig];     //Dig7 Year Ten Digit
   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_RunYearHundredsDig];//Dig6 Year Hundreds Digit
   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_RunYearthousandDig];//Dig5 Year thousand Digit
   	   	   	   	}

   	   	   	   //Get the Month Data
   	   	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	   	   	   	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	   	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
   	   	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	   	   	   	{
   	   	   	   	   	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
   	   	   	   	   	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  )
   	   	   	   	}

   	   	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH      	   	
   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   //Get the Day Data
   	   	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	   	   	   	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	   	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 

   	   	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 DAY 	

   	   	   	   //Get the RTC Data  	   	   	   	
   	   	   	   	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
   	   	   	   	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	LV_TempA = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_TempB = LV_TempA;
   	   	   	   	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 

   	   	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
   	   	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
   	   	   	   	LV_TempA = LV_TempA & 0x02;//0000 0010
   	   	   	   	if(LV_TempA) 
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
   	   	   	   	} 
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
   	   	   	   	}
   	   	   	   	
   	   	   	   	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
   	   	   	   	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	   	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 

   	   	   	   //blink the RTC H3,H4(  :  )
   	   	   	   if(BF_Clock500ms)//On H3,H4
   	   	   	   {
   	   	   	   	   	LV_Dig3_SG1_8 |= 0x80;//1000 0000;//Dig3/H3
   	   	   	   	   	LV_Dig4_SG1_8 |= 0x80;//1000 0000;//Dig4/H4	   	   	   	   	
   	   	   	   }   	   	
   	}
   	else if(GV_Mode==1)
   	{
   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_SetYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_SetYearTenDig];     //Dig7 Year Ten Digit
   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_SetYearHundredsDig];//Dig6 Year Hundreds Digit
   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_SetYearthousandDig];//Dig5 Year thousand Digit

   	   	   	   	//Month
   	   	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH
   	   	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_SetMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	   	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_SetMonthTenDig];   //Dig1 	month Ten Digit 

   	   	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH

   	   	   	   	//DAY
   	   	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	DAY
   	   	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_SetDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	   	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_SetDayTenDig];   //Dig3 Day Ten Digit 

   	   	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 DAY

   	   	   	   	//Hour
   	   	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	   	
   	   	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit 
   	   	   	   	if(BF_SetRealTimeClockAM_PM) 
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
   	   	   	   	} 
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
   	   	   	   	}
   	   	
   	   	   	   	//Minute
   	   	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	   	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 	   	   	   	   	   	   	   	

   	   	   	   	//blink the RTC set Digit
   	   	   	   	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
   	   	   	   	{
   	   	   	   	   	if(BF_Clock500ms == 0)//Off Real Time Clock Digit
   	   	   	   	   	{
   	   	   	   	   	   	   	if(GV_RealTimeClockSetStep==0) 	
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
   	   	   	   	   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
   	   	   	   	   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display      	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	  else if(GV_RealTimeClockSetStep==1)  	
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	   	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else if(GV_RealTimeClockSetStep==2)	
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display    	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else if(GV_RealTimeClockSetStep==3)	
   	   	   	   	   	   	   	{
       	   	   	   	   	   	   	   	  LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display      	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display    	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else if(GV_RealTimeClockSetStep==4)	
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display      	   	   	   	   	   	   	   	
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	
   	   	   	   	   	   	
   	   	   	   	   	   	//switch(GV_RealTimeClockSetStep)
   	   	   	   	   	   	//{
   	   	   	   	   	   	//     	case 0://blink Real Time Clock Year Digit
   	   	   	   	   	   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
   	   	   	   	   	   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
   	   	   	   	   	   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 1://blink Real Time Clock Month Digit
   	   	   	   	   	   	//     	   	   	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 2://blink Real Time Clock Day Digit
   	   	   	   	   	   	//     	   	   	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display 
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 3://blink Real Time Clock Hour Digit
   	   	   	   	   	   	//     	   	   	LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display    	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display  
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 4://blink Real Time Clock Minute Digit
   	   	   	   	   	   	//     	   	   	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display  
   	   	   	   	   	   	//     	break;
   	   	   	   	   	   	//}
   	   	   	   	   	}  	   	   	   	
   	   	   	   }       	   	
   	}
   	else if(GV_Mode==2)
   	{
   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_SetAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_SetAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit

   	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons

   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_SetAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_SetAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit

   	   	   	   	if(BF_SetAlarmAM_PM)//为0时=AM；为1=PM
   	   	   	   	{
   	   	   	   	   	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 PM  icons
   	   	   	   	}
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 AM  icons   	   	
   	   	   	   	}

   	   	   	   //Get the Month Data
   	   	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	   	   	   	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	   	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
   	   	   	   	
   	   	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH

   	   	   	   	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
   	   	   	   	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  ) 	   	
   	   	   	   	   	   	   	   	   	   	   	
   	   	   	   //Get the Day Data
   	   	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	   	   	   	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	   	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 

   	   	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	DAY

   	   	   	   //Get the RTC Data  	   	   	   	
   	   	   	   	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
   	   	   	   	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	LV_TempA = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_TempB = LV_TempA;
   	   	   	   	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 

   	   	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
   	   	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
   	   	   	   	LV_TempA = LV_TempA & 0x02;//0000 0010
   	   	   	   	if(LV_TempA) 
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x07;//0111 0000;//Dig13/E13/F13/G13 	RTC PM
   	   	   	   	} 
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	RTC AM
   	   	   	   	}


   	   	   	   	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
   	   	   	   	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	   	   	   	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
   	   	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	   	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 

   	   	   	   	//blink the Alarm Timer set Digit
   	   	   	   	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
   	   	   	   	{
   	   	   	   	   	if(BF_Clock500ms == 0)//Off Alarm Timer set Digit
   	   	   	   	   	{
   	   	   	   	   	   	  if(GV_AlarmClockSetStep==0)
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	   	   	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	   	else
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
   	   	   	   	   	   	   	   	   	}      	   	   	   	   	   	   	
   	   	   	   	   	   	  }
   	   	   	   	   	   	  else if(GV_AlarmClockSetStep==1)
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
   	   	   	   	   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	   	   	   	   	   	  }
   	   	   	   	   	   	  else if(GV_AlarmClockSetStep==2)
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
   	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[11]; //Dig7 AlarmClockMinTen Digit No Display    	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	   	   	   	   	   	  }
   	   	   	   	   	   	  else
   	   	   	   	   	   	  {
   	   	   	   	   	   	   	   	;      	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	   	   	   	   	   	  }
   	   	   	   	   	   	  
   	   	   	   	   	   	  
   	   	   	   	   	   	  
   	   	   	   	   	   	//switch(GV_AlarmClockSetStep)
   	   	   	   	   	   	//{
   	   	   	   	   	   	//     	case 0: //On or blink the alarm icons
   	   	   	   	   	   	//     	   	   	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
   	   	   	   	   	   	//     	   	   	{
   	   	   	   	   	   	//     	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
   	   	   	   	   	   	//     	   	   	}
   	   	   	   	   	   	//     	   	   	else
   	   	   	   	   	   	//     	   	   	{
   	   	   	   	   	   	//     	   	   	   	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
   	   	   	   	   	   	//     	   	   	}  	   	   	   	   	   	   	   	   	
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 1://set the alarm Hour
   	   	   	   	   	   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
   	   	   	   	   	   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	
   	   	   	   	   	   	//     	break;
                        //
   	   	   	   	   	   	//     	case 2://set the alarm min
   	   	   	   	   	   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
   	   	   	   	   	   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[11]; //Dig7 AlarmClockMinTen Digit No Display
   	   	   	   	   	   	//     	break;
   	   	   	   	   	   	//}    	   	   	   	
   	   	   	   	   	}
   	   	   	   }       	   	
   	}
   	else
   	{
   	   	;
   	}


   	//switch(GV_Mode)
   	//{
   	//     	case 0://0=Normal mode;
   	//     	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	//     	   	   	{
   	//     	   	   	   	//Get the Alarm data
   	//     	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_RunAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
   	//     	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_RunAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit 	
   	//     	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons	
    //
   	//     	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_RunAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
   	//     	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_RunAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit  	
   	//     	   	   	   	if(BF_RunAlarmAM_PM)//为0时=AM；为1=PM
   	//     	   	   	   	{
   	//     	   	   	   	   	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 Alarm clock PM  icons
   	//     	   	   	   	   	BF_RunRealTimeClockAM_PM = 1;
   	//     	   	   	   	}
   	//     	   	   	   	else
   	//     	   	   	   	{
   	//     	   	   	   	   	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 Alarm clock AM  icons
   	//     	   	   	   	   	BF_RunRealTimeClockAM_PM = 0;  	   	
   	//     	   	   	   	}  	   	   	   	   	   	
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	//Get the year Data
   	//     	   	   	   	Sub_Read1302(C_DS1302_Year);//C_DS1302_Year
   	//     	   	   	   	GV_RunYearSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	   	GV_RunYearTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_RunYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
   	//     	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_RunYearTenDig];     //Dig7 Year Ten Digit
   	//     	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_RunYearHundredsDig];//Dig6 Year Hundreds Digit
   	//     	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_RunYearthousandDig];//Dig5 Year thousand Digit
   	//     	   	   	}
    //
   	//     	   	   //Get the Month Data
   	//     	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	//     	   	   	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	//     	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
   	//     	   	   	if(BF_RunAlarmOnOff)//0 = Run alarm off; 1 = Run alarm on
   	//     	   	   	{
   	//     	   	   	   	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
   	//     	   	   	   	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  )
   	//     	   	   	}
    //
   	//     	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH  	   	   	
   	//     	   	   	   	   	   	   	   	   	   	
   	//     	   	   //Get the Day Data
   	//     	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	//     	   	   	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	//     	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
    //
   	//     	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	DAY    	
    //
   	//     	   	   //Get the RTC Data  	   	   	   	
   	//     	   	   	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
   	//     	   	   	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_TempB = LV_TempA;
   	//     	   	   	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
    //
   	//     	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
   	//     	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
   	//     	   	   	LV_TempA = LV_TempA & 0x02;//0000 0010
   	//     	   	   	if(LV_TempA) 
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
   	//     	   	   	} 
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
   	//     	   	   	}
   	//     	   	   	
   	//     	   	   	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
   	//     	   	   	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	//     	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
    //
   	//     	   	   //blink the RTC H3,H4(  :  )
   	//     	   	   if(BF_Clock500ms)//On H3,H4
   	//     	   	   {
   	//     	   	   	   	LV_Dig3_SG1_8 |= 0x80;//1000 0000;//Dig3/H3
   	//     	   	   	   	LV_Dig4_SG1_8 |= 0x80;//1000 0000;//Dig4/H4	   	   	   	   	
   	//     	   	   }
   	//     	break;
    //
   	//     	case 1://1=clock set mode
   	//     	   	   	//Year
   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_SetYearSingleDig];  //Dig8 Year Single Digit  	   	   	   	   	
   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_SetYearTenDig];     //Dig7 Year Ten Digit
   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_SetYearHundredsDig];//Dig6 Year Hundreds Digit
   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_SetYearthousandDig];//Dig5 Year thousand Digit
    //
   	//     	   	   	//Month
   	//     	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONT
   	//     	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_SetMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	//     	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_SetMonthTenDig];   //Dig1 	month Ten Digit 
    //
   	//     	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONT
    //
   	//     	   	   	//DAY
   	//     	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13DAY
   	//     	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_SetDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	//     	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_SetDayTenDig];   //Dig3 Day Ten Digit 
    //
   	//     	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	AY
    //
   	//     	   	   	//Hour
   	//     	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	   	
   	//     	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_SetRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit 
   	//     	   	   	if(BF_SetRealTimeClockAM_PM) 
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x70;//0111 0000;//Dig13/E13/F13/G13 	PM
   	//     	   	   	} 
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	AM
   	//     	   	   	}
   	//     	
   	//     	   	   	//Minute
   	//     	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	//     	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_SetRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 	   	   	   	   	   	   	   	
    //
   	//     	   	   	//blink the RTC set Digit
   	//     	   	   	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
   	//     	   	   	{
   	//     	   	   	   	if(BF_Clock500ms == 0)//Off Real Time Clock Digit
   	//     	   	   	   	{
   	//     	   	   	   	   	   	if(GV_RealTimeClockSetStep==0) 	
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
   	//     	   	   	   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
   	//     	   	   	   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display      	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	  else if(GV_RealTimeClockSetStep==1)  	
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	   	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else if(GV_RealTimeClockSetStep==2)	
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display    	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else if(GV_RealTimeClockSetStep==3)	
   	//     	   	   	   	   	   	{
    // 	   	   	   	   	   	   	   	  LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display      	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display    	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else if(GV_RealTimeClockSetStep==4)	
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display      	   	   	   	   	   	   	   	
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	   	else
   	//     	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	;
   	//     	   	   	   	   	   	}
   	//     	   	   	   	   	
   	//     	   	   	   	   	
   	//     	   	   	   	   	//switch(GV_RealTimeClockSetStep)
   	//     	   	   	   	   	//{
   	//     	   	   	   	   	//     	case 0://blink Real Time Clock Year Digit
   	//     	   	   	   	   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[11];  //Dig8 Year Single Digit No Display	   	   	   	   	   	   	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[11];  //Dig7 Year Ten Digit No Display
   	//     	   	   	   	   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[11];  //Dig6 Year Hundreds Digit No Display
   	//     	   	   	   	   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[11];  //Dig5 Year thousand Digit No Display
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 1://blink Real Time Clock Month Digit
   	//     	   	   	   	   	//     	   	   	LV_Dig2_SG1_8 = C_NumberTable[11];  //Dig2 month Single Digit No Display   	   	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig1_SG1_8 = C_NumberTable[11];  //Dig1 month Ten Digit No Display  	
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 2://blink Real Time Clock Day Digit
   	//     	   	   	   	   	//     	   	   	LV_Dig4_SG1_8 = C_NumberTable[11];  //Dig4 Day Single Digit No Display 	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig3_SG1_8 = C_NumberTable[11];  //Dig3 Day Ten Digit No Display 
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 3://blink Real Time Clock Hour Digit
   	//     	   	   	   	   	//     	   	   	LV_Dig10_SG1_8 = C_NumberTable[11]; //Dig10 RealTimeClockHr Single Digit No Display    	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig9_SG1_8 = C_NumberTable[11];  //Dig9 RealTimeClockHr Ten Digit No Display  
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 4://blink Real Time Clock Minute Digit
   	//     	   	   	   	   	//     	   	   	LV_Dig12_SG1_8 = C_NumberTable[11]; //Dig12 RealTimeClockMin Single Digit No Display   	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig11_SG1_8 = C_NumberTable[11]; //Dig11 RealTimeClockMin Ten Digit No Display  
   	//     	   	   	   	   	//     	break;
   	//     	   	   	   	   	//}
   	//     	   	   	   	}  	   	   	   	
   	//     	   	   }   	   	   	   	   	   	   	   	   	   	   	
   	//     	break;
    //
   	//     	case 2://2=Alarm set
   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[GV_SetAlarmClockMinSingleDig]; //Dig8 AlarmClockMinSingle Digit  	   	   	   	   	
   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[GV_SetAlarmClockMinTenDig];    //Dig7 AlarmClockMinTen Digit
    //
   	//     	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
    //
   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[GV_SetAlarmClockHrSingleDig];  //Dig6 AlarmClockHrSingle Digit
   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[GV_SetAlarmClockHrTenDig];     //Dig5 AlarmClockHrTen Digit
    //
   	//     	   	   	if(BF_SetAlarmAM_PM)//为0时=AM；为1=PM
   	//     	   	   	{
   	//     	   	   	   	LV_Dig6_SG1_8 |= 0x80;//1000 0000;//On Dig6/H6 PM  icons
   	//     	   	   	}
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	LV_Dig5_SG1_8 |= 0x80;//1000 0000;//On Dig5/H5 AM  icons   	   	
   	//     	   	   	}
    //
   	//     	   	   //Get the Month Data
   	//     	   	   	Sub_Read1302(C_DS1302_Month);//C_DS1302_Month
   	//     	   	   	GV_RunMonthSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunMonthTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig2_SG1_8 = C_NumberTable[GV_RunMonthSingleDig];//Dig2 	month Single Digit 	   	   	
   	//     	   	   	LV_Dig1_SG1_8 = C_NumberTable[GV_RunMonthTenDig];   //Dig1 	month Ten Digit 
   	//     	   	   	
   	//     	   	   	LV_Dig13_SG1_8 |= 0x01;//0000 0001;//Dig13/A13 	MONTH
    //
   	//     	   	   	LV_Dig2_SG1_8 |= 0x80;//1000 0000;//On Dig2/H2 (  :  )
   	//     	   	   	LV_Dig1_SG1_8 |= 0x80;//1000 0000;//On Dig1/H1 (  :  ) 	   	
   	//     	   	   	   	   	   	   	   	   	   	
   	//     	   	   //Get the Day Data
   	//     	   	   	Sub_Read1302(C_DS1302_Day);//C_DS1302_Day
   	//     	   	   	GV_RunDaySingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunDayTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig4_SG1_8 = C_NumberTable[GV_RunDaySingleDig];//Dig4 Day Single Digit  	   	   	
   	//     	   	   	LV_Dig3_SG1_8 = C_NumberTable[GV_RunDayTenDig];   //Dig3 Day Ten Digit 
    //
   	//     	   	   	LV_Dig13_SG1_8 |= 0x80;//1000 0000;//Dig13/H13 	DAY    	
    //
   	//     	   	   //Get the RTC Data  	   	   	   	
   	//     	   	   	Sub_Read1302(C_DS1302_Hour);//C_DS1302_Hour
   	//     	   	   	GV_RunRealTimeClockHrSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	LV_TempA = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_TempB = LV_TempA;
   	//     	   	   	GV_RunRealTimeClockHrTenDig = LV_TempB & 0x01; 
    //
   	//     	   	   	LV_Dig10_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrSingleDig];//Dig10 RealTimeClockHr Single Digit    	   	   	
   	//     	   	   	LV_Dig9_SG1_8 = C_NumberTable[GV_RunRealTimeClockHrTenDig];    //Dig9 RealTimeClockHr Ten Digit
   	//     	   	   	LV_TempA = LV_TempA & 0x02;//0000 0010
   	//     	   	   	if(LV_TempA) 
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x07;//0111 0000;//Dig13/E13/F13/G13 	RTC PM
   	//     	   	   	} 
   	//     	   	   	else
   	//     	   	   	{
   	//     	   	   	   	LV_Dig13_SG1_8 |= 0x0E;//0000 1110;//Dig13/B13/C13/D13 	RTC AM
   	//     	   	   	}
    //
    //
   	//     	   	   	Sub_Read1302(C_DS1302_Minute);//C_DS1302_Minute
   	//     	   	   	GV_RunRealTimeClockMinSingleDig = GV_GetByteFromDs1302 & 0x0F;
   	//     	   	   	GV_RunRealTimeClockMinTenDig = GV_GetByteFromDs1302 >> 4;
   	//     	   	   	LV_Dig12_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinSingleDig];//Dig12 RealTimeClockMin Single Digit  	   	   	
   	//     	   	   	LV_Dig11_SG1_8 = C_NumberTable[GV_RunRealTimeClockMinTenDig];   //Dig11 RealTimeClockMin Ten Digit 
    //
   	//     	   	   	//blink the Alarm Timer set Digit
   	//     	   	   	if((BF_Up_AlLongKeyPressesd == 0)&&(BF_DownLongKeyPressesd == 0))
   	//     	   	   	{
   	//     	   	   	   	if(BF_Clock500ms == 0)//Off Alarm Timer set Digit
   	//     	   	   	   	{
   	//     	   	   	   	   	  if(GV_AlarmClockSetStep==0)
   	//     	   	   	   	   	  {
   	//     	   	   	   	   	   	   	   	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
   	//     	   	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
   	//     	   	   	   	   	   	   	   	}
   	//     	   	   	   	   	   	   	   	else
   	//     	   	   	   	   	   	   	   	{
   	//     	   	   	   	   	   	   	   	   	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
   	//     	   	   	   	   	   	   	   	}      	   	   	   	   	   	   	
   	//     	   	   	   	   	  }
   	//     	   	   	   	   	  else if(GV_AlarmClockSetStep==1)
   	//     	   	   	   	   	  {
   	//     	   	   	   	   	   	   	   	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
   	//     	   	   	   	   	   	   	   	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	//     	   	   	   	   	  }
   	//     	   	   	   	   	  else if(GV_AlarmClockSetStep==2)
   	//     	   	   	   	   	  {
   	//     	   	   	   	   	   	   	   	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
   	//     	   	   	   	   	   	   	   	LV_Dig7_SG1_8 = C_NumberTable[11]; //Dig7 AlarmClockMinTen Digit No Display    	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	//     	   	   	   	   	  }
   	//     	   	   	   	   	  else
   	//     	   	   	   	   	  {
   	//     	   	   	   	   	   	   	;      	   	   	   	   	   	   	   	   	   	   	   	       	   	   	   	   
   	//     	   	   	   	   	  }
   	//     	   	   	   	   	  
   	//     	   	   	   	   	  
   	//     	   	   	   	   	  
   	//     	   	   	   	   	//switch(GV_AlarmClockSetStep)
   	//     	   	   	   	   	//{
   	//     	   	   	   	   	//     	case 0: //On or blink the alarm icons
   	//     	   	   	   	   	//     	   	   	if(BF_SetAlarmOnOff)//0 = Set alarm off; 1 = Set alarm on
   	//     	   	   	   	   	//     	   	   	{
   	//     	   	   	   	   	//     	   	   	   	LV_Dig7_SG1_8 |= 0x80;//1000 0000;//On Dig7/H7 alarm  icons
   	//     	   	   	   	   	//     	   	   	}
   	//     	   	   	   	   	//     	   	   	else
   	//     	   	   	   	   	//     	   	   	{
   	//     	   	   	   	   	//     	   	   	   	LV_Dig7_SG1_8 &= 0x7f;//0111 1111;//Off Dig7/H7 alarm  icons
   	//     	   	   	   	   	//     	   	   	}  	   	   	   	   	   	   	   	   	
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 1://set the alarm Hour
   	//     	   	   	   	   	//     	   	   	LV_Dig6_SG1_8 = C_NumberTable[11]; //Dig6 AlarmClockHrSingle Digit No Display
   	//     	   	   	   	   	//     	   	   	LV_Dig5_SG1_8 = C_NumberTable[11]; //Dig5 AlarmClockHrTen Digit No Display 	
   	//     	   	   	   	   	//     	break;
    //                    //
   	//     	   	   	   	   	//     	case 2://set the alarm min
   	//     	   	   	   	   	//     	   	   	LV_Dig8_SG1_8 = C_NumberTable[11]; //Dig8 AlarmClockMinSingle Digit No Display 	   	   	   	   	
   	//     	   	   	   	   	//     	   	   	LV_Dig7_SG1_8 = C_NumberTable[11]; //Dig7 AlarmClockMinTen Digit No Display
   	//     	   	   	   	   	//     	break;
   	//     	   	   	   	   	//}    	   	   	   	
   	//     	   	   	   	}
   	//     	   	   }   	
   	//     	break;
   	//}

   	SetSTB0();
   	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
   	SetSTB1();

   	Nop();
   	Nop();
   	SetSTB0();
   	Sub_SendByteToPT6964(C_Address0);//Address control command

   	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig2_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig4_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig6_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig8_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig10_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig12_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig13_SG1_8);

   	SetSTB1(); 	

   	//__asm{
   	//nop
   	//nop};	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	   	
   	//SetSTB0();
   	//Sub_SendByteToPT6964(C_Set7digits10segments);//command1
   	//SetSTB1();   	
   	Nop();
   	Nop(); 	   	   	   	   	   	   	   	   	
   	SetSTB0();
   	if(GV_DisplayBrightnessLevel==0)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
   	}
   	else if(GV_DisplayBrightnessLevel==1)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
   	}
   	else if(GV_DisplayBrightnessLevel==2)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
   	}
   	else
   	{
   	   	;
   	}
   	//switch(GV_DisplayBrightnessLevel)
   	//{
   	//     	case 0://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);//Display control command
   	//     	break;
    //
   	//     	case 1://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);//Display control command
   	//     	break;
    //
   	//     	case 2://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);//Display control command
   	//     	break;
   	//}
   	SetSTB1();
}

/************Sub_TA6932Disp Process ****************************
  Procedure in TA6932Disp
  
  Name: Sub_Sub_TA6932Disp.c
  
  Enter: 
  
  Parameter: 

  Return:

 --------------------------------------------------------------*/
void Sub_TA6932Disp(void)  //Per 10ms
{
   	//Sub_SpeedLedIndicator();
   	Sub_SendDispDataToTA6932();	   	   	   	   	   	   	   	   	   	
}


/************PT6964PowerOnAllDisp2s Process *******************
  Program in PT6964

  Procedure: Sub_PT6964Initial
  
  Description: PT6964Initial

  Parameter: 

  Return: 

  ------------------------------------------------------------*/
void Sub_PT6964PowerOnAllDisp2s(void)
{
   	unsigned char  	LV_Dig1_SG1_8;//Dig1
   	unsigned char  	LV_Dig2_SG1_8;//Dig2
   	unsigned char  	LV_Dig3_SG1_8;//Dig3
   	unsigned char  	LV_Dig4_SG1_8;//Dig4
   	unsigned char  	LV_Dig5_SG1_8;//Dig5
   	unsigned char  	LV_Dig6_SG1_8;//Dig6
   	unsigned char  	LV_Dig7_SG1_8;//Dig7
   	unsigned char  	LV_Dig8_SG1_8;//Dig8
   	unsigned char  	LV_Dig9_SG1_8;//Dig9
   	unsigned char  	LV_Dig10_SG1_8;//Dig10
   	unsigned char  	LV_Dig11_SG1_8;//Dig11
   	unsigned char  	LV_Dig12_SG1_8;//Dig12
   	unsigned char  	LV_Dig13_SG1_8;//Dig13
   	
   	LV_Dig1_SG1_8 = 0xff;
   	   	LV_Dig2_SG1_8 = 0xff;
   	   	LV_Dig3_SG1_8 = 0xff;
   	   	LV_Dig4_SG1_8 = 0xff;
   	   	LV_Dig5_SG1_8 = 0xff;
   	   	LV_Dig6_SG1_8 = 0xff;
   	   	LV_Dig7_SG1_8 = 0xff;
   	   	LV_Dig8_SG1_8 = 0xff;
   	   	LV_Dig9_SG1_8 = 0xff;
   	   	LV_Dig10_SG1_8 = 0xff;
   	   	LV_Dig11_SG1_8 = 0xff;
   	   	LV_Dig12_SG1_8 = 0xff;
   	   	LV_Dig13_SG1_8 = 0xff;


   	SetSTB0();
   	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
   	SetSTB1();
   	Nop();
   	Nop();
   	SetSTB0();
   	Sub_SendByteToPT6964(C_Address0);//Address control command

   	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig2_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig4_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig6_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig8_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig10_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
   	Sub_SendByteToPT6964(LV_Dig12_SG1_8);

   	Sub_SendByteToPT6964(LV_Dig13_SG1_8);
   	SetSTB1();

   	//__asm{
   	//nop
   	//nop};
   	//SetSTB0();
   	//Sub_SendByteToPT6964(C_Set7digits10segments);//command1
   	//SetSTB1();

   	Nop();
   	Nop();
   	SetSTB0();  
   	if(GV_DisplayBrightnessLevel==0)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);
   	}
   	else if(GV_DisplayBrightnessLevel==1)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);
   	}
   	else if(GV_DisplayBrightnessLevel==2)
   	{
   	   	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);
   	}
   	else
   	{
   	   	;
   	}
   	//switch(GV_DisplayBrightnessLevel)
   	//{
   	//     	case 0://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty14_16);//Display control command
   	//     	break;
    //
   	//     	case 1://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty4_16);//Display control command
   	//     	break;
    //
   	//     	case 2://
   	//     	   	   	Sub_SendByteToPT6964(C_DisplayOnDuty1_16);//Display control command
   	//     	break;
   	//}    	
   	SetSTB1();
}



/************************************************************
  Program in Main

  Procedure: Sub_ISR_TC2
  
  Description: TC2 interrupt

  Parameter: 

  Return: 

  ----------------------------------------------------------*/
void int_isr(void) __interrupt
{
       	__asm
       	       	movra   _ABuf
       	       	swapar  _STATUS
       	       	movra   _StatusBuf
       	__endasm;
   	if(T0IF)
   	{
   	   	T0IF = 0;
   	   	//V_IR_CNT++;
   	   	PO_Buzzer = !PO_Buzzer;
   	   	if(++GV_2msClock >= 16)
   	   	{
   	   	   	GV_2msClock = 0;
   	   	   	BF_TccClock2ms = 1;
   	   	}
   	}
       	__asm
       	       	swapar  _StatusBuf
       	       	movra   _STATUS
       	       	swapr   _ABuf
       	       	swapar  _ABuf
       	__endasm;
}