#include "mc32p7323.h"
#include "RamDef.H"

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

void Sub_PT6964PowerOnAllDisp2s(void)
{

   	
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

void Sub_SendByteToPT6964(unsigned char	LV_SendTodata)  
{
//   	unsigned char  	i;//LV_TempE;
//   	SetDIOOutput();  
//   	SetDIO0();
//   	for(i=0x01; i; i<<=1)
//   	{
//   	   	SetSCK0();
//   	   	if(i & LV_SendTodata) {SetDIO1();} else {SetDIO0();}
//   	   	SetSCK1();
//   	   	Nop();
//   	   	Nop();
//   	   	SetSCK0();
//   	}
//   	SetDIO0();

}

void Sub_TA6932Disp(void)  //Per 10ms
{
   	//Sub_SpeedLedIndicator();
   	Sub_SendDispDataToTA6932();	   	   	   	   	   	   	   	   	   	
}


void Sub_SendDispDataToTA6932(void)//Per 10ms
{
   	unsigned char  	LV_TempA;
   	unsigned char  	LV_TempB;
   	
//	unsigned char  	LV_Dig1_SG1_8;Dig1
//   	unsigned char  	LV_Dig2_SG1_8;Dig2
//   	unsigned char  	LV_Dig3_SG1_8;Dig3
//   	unsigned char  	LV_Dig4_SG1_8;Dig4
//   	unsigned char  	LV_Dig5_SG1_8;Dig5
//   	unsigned char  	LV_Dig6_SG1_8;Dig6
//   	unsigned char  	LV_Dig7_SG1_8;Dig7
//   	unsigned char  	LV_Dig8_SG1_8;Dig8
//   	unsigned char  	LV_Dig9_SG1_8;Dig9
//   	unsigned char  	LV_Dig10_SG1_8;Dig10
//   	unsigned char  	LV_Dig11_SG1_8;Dig11
//   	unsigned char  	LV_Dig12_SG1_8;Dig12
//   	unsigned char  	LV_Dig13_SG1_8;Dig13

   	
   	
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
   	
   	SetSTB0();
   	Sub_SendByteToPT6964(C_DataWrite);//Data W/R command
   	SetSTB1();
   	
   	Nop();
   	Nop();
   	SetSTB0();
   	Sub_SendByteToPT6964(C_Address0);//Address control command

//   	Sub_SendByteToPT6964(LV_Dig1_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig2_SG1_8);
//
//   	Sub_SendByteToPT6964(LV_Dig3_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig4_SG1_8);
//
//   	Sub_SendByteToPT6964(LV_Dig5_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig6_SG1_8);
//
//   	Sub_SendByteToPT6964(LV_Dig7_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig8_SG1_8);
//
//   	Sub_SendByteToPT6964(LV_Dig9_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig10_SG1_8);

//   	Sub_SendByteToPT6964(LV_Dig11_SG1_8);
//   	Sub_SendByteToPT6964(LV_Dig12_SG1_8);

//   	Sub_SendByteToPT6964(LV_Dig13_SG1_8);

   	SetSTB1(); 	

}