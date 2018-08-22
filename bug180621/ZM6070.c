#include <mc30p6060.h>

unsigned char   StatusBuf,ABuf;

unsigned char  	gSysLoadStatus;
unsigned char gSysChildStatus;
unsigned char gPreSysLoadStatus;
unsigned char gSysLoadDetectCntA = 0;
unsigned char gSysLoadDetectCntB = 0;
unsigned char overflow;
unsigned char gTotalCloseTimeA;
unsigned char gTotalCloseTimeB;

unsigned int gSleepCnt;

unsigned char gPinStatus;
unsigned char gTempBackupP1;

unsigned char gCntA = 0;
unsigned char gCntB = 0;

unsigned char gCntA_1 = 0;
unsigned char gCntB_1 = 0;

unsigned char gCurPortStatus = 0;

unsigned char sss_buf;
       	
#define SYS_TIME_SLEEP 	       	       	60

#define LOAD_DEBOUNCE_TO_ON 10 	       	// 500ms
#define LOAD_DEBOUNCE_TO_OFF   	30     	       	// 600ms

#define SYS_INTERVAL_CLOSE_TO_OPEN     	20     	// 1s  


#define SYS_LOAD_NONE           0
#define SYS_LOAD_A_ON           1
#define SYS_LOAD_B_ON           2
#define SYS_LOAD_BOTH_ON        3


#define SYS_CHILD_STATUS_INIT  	0
#define SYS_CHILD_STATUS_WAIT_DSG_OVER 	1
#define SYS_CHILD_STATUS_WAIT_ICC_OVER 	2
#define SYS_CHILD_STATUS_WAIT_TO_OPEN  	3
#define SYS_CHILD_STATUS_WAIT_CLOSE    	       	4
#define SYS_CHILD_STATUS_WAIT_TO_DSG   	       	5
#define SYS_CHILD_STATUS_WAIT_MOS_ON   	6

#define PORT_A_ON_NO_QC	1
#define PORT_B_ON_NO_QC	2


#define PIN_DETECT_A    P14D
#define PIN_DETECT_B    P12D

#define QC_CTL_A             P13D
#define QC_CTL_B             P10D


#define FP_VDD_CTL_A   	       	P15D       	       	       	
#define FP_VDD_CTL_B   	       	P11D       	


#define PORT_A_ON()    	       	FP_VDD_CTL_A=1,QC_CTL_B = 1
#define PORT_A_OFF()   	       	       	FP_VDD_CTL_A=0,QC_CTL_B = 0

#define PORT_B_ON()    	       	FP_VDD_CTL_B=1,QC_CTL_A=1
#define PORT_B_OFF()   	       	       	FP_VDD_CTL_B=0,QC_CTL_A=0

#define PORT_ALL_OFF() 	       	PORT_A_OFF(),PORT_B_OFF()

#define A_OFF_WITHOUT_B()      	       	FP_VDD_CTL_A=0
#define B_OFF_WITHOUT_A()      	       	FP_VDD_CTL_B=0

#define EnWatchdog()            WDTEN = 1
#define DisWatchdog()   WDTEN = 0
#define SysClrWdt()        __asm__("clrwdt")

#define key_interrupt_enable()  KBIE = 1
#define key_interrupt_disable() KBIE = 1
#define Stop()  __asm__("stop")
#define NOP()   __asm__("nop")

void ResetSysConfig()
{
       	       	//PORT_ALL_OFF();
       	       	gTotalCloseTimeA = 0;
       	       	gTotalCloseTimeB = 0;
       	       	gSysLoadStatus = SYS_LOAD_NONE;
       	       	gPreSysLoadStatus = SYS_LOAD_NONE;
       	       	gCntA = 0;
       	       	gCntA_1 = 0;
       	       	gCntB = 0;
       	       	gCntB_1 = 0;
       	       	gPinStatus = 0;
       	       	gSysLoadDetectCntA = 0;
       	       	gSysLoadDetectCntB = 0;
       	       	gCurPortStatus=0;
}

void SysStatusSwitchHandle()
{
        if(gSysLoadStatus != gPreSysLoadStatus)
        {
               	switch(gSysLoadStatus)
               	{
       	       	       	       	case SYS_LOAD_NONE:
       	       	       	       	       if(gSysChildStatus == SYS_CHILD_STATUS_INIT)
       	       	       	       	       {
       	       	       	       	       	gPreSysLoadStatus = gSysLoadStatus;
       	       	       	       	       	       	       	       	       	       	gCurPortStatus=0;
       	       	       	       	       }
       	       	       	       	       break;
       	       	       	       	case SYS_LOAD_A_ON:
       	       	       	       	case SYS_LOAD_B_ON:
       	       	       	       	       if(gSysLoadStatus == SYS_LOAD_A_ON)
       	       	       	       	       {
       	       	       	       	       	if(gTotalCloseTimeA >= SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	       	       	   	{ 
       	       	       	       	       	   	QC_CTL_A = 0;
   	   	   	   	   	   	   	   	   	   	   	//PORT_A_ON();
   	   	   	   	   	   	   	   	   	   	   	gCntA = 0;
   	   	   	   	   	   	   	   	   	   	   	gPinStatus &= 0xEF;
       	       	       	       	       	}
       	       	       	       	       	else
       	       	       	       	       	       return;
       	       	       	       	       }
       	       	       	       	       else
       	       	       	       	       {
       	       	       	       	       	if(gTotalCloseTimeB >= SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	       	       	{
   	   	   	   	   	   	   	   	   	   	   	QC_CTL_B = 0;          	       	
   	   	   	   	   	   	   	   	   	   	   	//PORT_B_ON();
       	       	       	       	       
   	   	   	   	   	   	   	   	   	   	   	gCntB = 0;
       	       	       	       	       	       gPinStatus &= 0xDF;
       	       	       	       	       	}
       	       	       	       	       	else
       	       	       	       	       	       return;
       	       	       	       	       }
       	       	       	       	      gPreSysLoadStatus = gSysLoadStatus;    
       	       	       	       	       	gCurPortStatus =0;
       	       	       	       	       break;
       	       	       	       	case SYS_LOAD_BOTH_ON:
   	   	   	   	   	   	   	   	   	if((gTotalCloseTimeA >= SYS_INTERVAL_CLOSE_TO_OPEN) && (gTotalCloseTimeB >= SYS_INTERVAL_CLOSE_TO_OPEN))
       	       	       	       	       {
       	       	       	       	       	//PORT_A_ON();
   	   	   	   	   	   	   	   	   	   	//PORT_B_ON();
       	       	       	       	       	gCntA = 0;
       	       	       	       	       	gCntB = 0;
       	       	       	       	       	gPinStatus &= 0xCF;
       	       	       	       	       }
       	       	       	       	       else
       	       	       	       	       	return;
       	       	       	       	       //gSysCnt = 0;
       	       	       	       	       gPreSysLoadStatus = gSysLoadStatus;
   	   	   	   	   	   	   	   	   	gCurPortStatus=0;
   	   	   	   	   	   	   	   	   	break;
       	       	       	       	default:
       	       	       	       	       	break;
               	}
        }
}

void SysLoadDetect()
{
       	unsigned char load_debounceA,load_debounceB;
       	       	
       	       	
       	       	
       	if((gSysLoadStatus == SYS_LOAD_A_ON) || (gSysLoadStatus == SYS_LOAD_BOTH_ON))
       	{
       	       	       	load_debounceA = LOAD_DEBOUNCE_TO_OFF;
       	       	       	gPinStatus |= 0x04;
       	}
       	else
       	{
       	       	       	load_debounceA = LOAD_DEBOUNCE_TO_ON;
       	}

       	
       	if(gSysLoadStatus == SYS_LOAD_B_ON || gSysLoadStatus == SYS_LOAD_BOTH_ON)
       	{
       	       	       	load_debounceB = LOAD_DEBOUNCE_TO_OFF;
       	       	       	gPinStatus |= 0x08;
       	}
       	else
       	{
       	       	       	load_debounceB = LOAD_DEBOUNCE_TO_ON;
       	}

       	
       	if(gPinStatus & 0x04)
       	{
       	       	       	if((PIN_DETECT_A == 1) && ((gPinStatus & 0x01) == 0))
       	       	       	{
       	       	       	       	if(gSysLoadStatus != SYS_LOAD_A_ON)
       	       	       	gSysLoadDetectCntA++;
       	       	       	       	else
       	       	       	       	{
       	       	       	       	       	if(gCntA_1 < LOAD_DEBOUNCE_TO_OFF)
       	       	       	       	       	       	gCntA_1++;
       	       	       	       	}
       	       	}
       	       	else
       	       	{
       	       	gSysLoadDetectCntA=0;
       	       	       	       	gCntA_1 = 0;
       	       	}
       	}
       	else
       	{
       	       	if(gPinStatus & 0x01)
       	       	{
       	       	       	gSysLoadDetectCntA++;
       	       	       	       	       	gCntA++;
       	       	}
       	       	else
       	       	{
   	   	   	   	   	gSysLoadDetectCntA=0;
   	   	   	   	   	if(gTotalCloseTimeA > 10)
   	   	   	   	   	{
   	   	   	   	   	   	if(((gPinStatus & 0x40)&&(gSysLoadStatus == SYS_LOAD_B_ON)) || gCurPortStatus !=0)
   	   	   	   	   	   	{
   	   	   	   	   	   	   	ResetSysConfig();      
   	   	   	   	   	   	}
   	   	   	   	   	   	
   	   	   	   	   	   	gPinStatus &= 0xBF;
   	   	   	   	   	}
       	       	}
       	}

       	if(gPinStatus & 0x08)
       	{
   	   	   	if((PIN_DETECT_B == 1) && ((gPinStatus & 0x02) == 0))
   	   	   	{
   	   	   	   	if(gSysLoadStatus != SYS_LOAD_B_ON)
   	   	   	   	   	gSysLoadDetectCntB++;
   	   	   	   	else
   	   	   	   	{
   	   	   	   	   	if(gCntB_1 < LOAD_DEBOUNCE_TO_OFF)
   	   	   	   	   	   	gCntB_1++;
   	   	   	   	}
   	   	   	}
   	   	   	else
   	   	   	{
   	   	   	   	gCntB_1	 = 0;
   	   	   	   	gSysLoadDetectCntB=0;
   	   	   	}
       	}
       	else
       	{
   	   	   	if((gPinStatus &0x02))
   	   	   	{
   	   	   	   	gSysLoadDetectCntB++;
   	   	   	   	gCntB++;
   	   	   	}
   	   	   	else
   	   	   	{
   	   	   	   	 gSysLoadDetectCntB=0;
   	   	   	   	if(gTotalCloseTimeB > 10)
   	   	   	   	{
   	   	   	   	   	if(((gPinStatus & 0x80)&&(gSysLoadStatus == SYS_LOAD_A_ON)) ||(gCurPortStatus !=0))
   	   	   	   	   	{
   	   	   	   	   	   	ResetSysConfig();
   	   	   	   	   	}
   	   	   	   	   	gPinStatus &= 0x7F;
   	   	   	   	}
   	   	   	}
       	}

       	
       	gPinStatus &= 0xF0;


       	       	if((gPinStatus & 0x10) && (gTotalCloseTimeA > 10))
       	       	{
       	       	       	gPinStatus &= 0xEF;
       	       	       	if(gCntA > 4)
       	       	       	       	gPinStatus |= 0x40;
       	       	}
       	       	
       	       	if((gPinStatus & 0x20) &&(gTotalCloseTimeB > 10))
       	       	{
       	       	       	gPinStatus &= 0xDF;    	       	
       	       	       	if(gCntB > 4)
       	       	       	       	gPinStatus |= 0x80;
       	       	}

       	if(gSysLoadDetectCntA >= load_debounceA)
       	{
       	       	       	gPreSysLoadStatus = gSysLoadStatus;
       	       	
       	       	       	switch(gSysLoadStatus)
       	       	       	{
       	       	       	       	case SYS_LOAD_NONE:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_A_ON;
       	       	       	       	       	gCntA_1 = 0;
       	       	       	       	       	break;
       	       	       	       	case SYS_LOAD_A_ON:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_NONE;
       	       	       	       	       	gTotalCloseTimeA = 0;
       	       	       	       	       	break;
       	       	       	       	case SYS_LOAD_B_ON:
   	   	   	   	   	   	   	   	   	gSysLoadStatus = SYS_LOAD_BOTH_ON;
   	   	   	   	   	   	   	   	   	if(gCntB_1 >= LOAD_DEBOUNCE_TO_OFF)
   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	gCntA_1 = 0;
   	   	   	   	   	   	   	   	   	   	gSysLoadStatus = SYS_LOAD_A_ON;
   	   	   	   	   	   	   	   	   	   	if(gTotalCloseTimeA > (SYS_INTERVAL_CLOSE_TO_OPEN-3))
   	   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	   	gTotalCloseTimeA -=2;
   	   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	   	}
       	       	       	       	       break;
       	       	       	       	case SYS_LOAD_BOTH_ON:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_B_ON;
   	   	   	   	   	   	   	   	   	   	gTotalCloseTimeA = 0;
   	   	   	   	   	   	   	   	   	   	gPinStatus |= 0x10;
   	   	   	   	   	   	   	   	   	   	gCntA = 0;
   	   	   	   	   	   	   	   	   	   	gCntA_1 = 0;
   	   	   	   	   	   	   	   	   	   	gCntB_1 = 0;
       	       	       	       	       	break;
       	       	       	       	default:
       	       	       	       	       	break;
       	       	       	}

       	       	       	gSysLoadDetectCntA = 0;
       	       	       	gSysChildStatus = SYS_CHILD_STATUS_INIT;

       	       	       	if(gPinStatus & 0x40)
       	       	       	{
   	   	   	   	   	   	   	gCurPortStatus = 0;
       	       	       	       A_OFF_WITHOUT_B();
   	   	   	   	   	   	   	if(gSysLoadStatus != SYS_LOAD_BOTH_ON)
   	   	   	   	   	   	   	   	gPreSysLoadStatus = gSysLoadStatus;
       	       	       	}
       	       	       	else
       	       	       	{
   	   	   	   	   	   	   	if((gPreSysLoadStatus == SYS_LOAD_BOTH_ON) || (gPreSysLoadStatus == SYS_LOAD_B_ON))
   	   	   	   	   	   	   	   	gTotalCloseTimeB = 0;
   	   	   	   	   	   	   	if(gSysLoadStatus == SYS_LOAD_B_ON)
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	gCurPortStatus = PORT_B_ON_NO_QC;
   	   	   	   	   	   	   	   	A_OFF_WITHOUT_B();
   	   	   	   	   	   	   	   	gPreSysLoadStatus = gSysLoadStatus;
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else if((gSysLoadStatus == SYS_LOAD_BOTH_ON) &&(gCurPortStatus == PORT_B_ON_NO_QC))
   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	A_OFF_WITHOUT_B();
   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	else
   	   	   	   	   	   	   		;
   	   	   	   	   	   	   	   	//PORT_ALL_OFF();
       	       	       	}
       	}
   	   	sss_buf = 0;
       	if(gSysLoadDetectCntB >= load_debounceB)
       	{
       	       	gPreSysLoadStatus = gSysLoadStatus;
       	       	
       	       	switch(gSysLoadStatus)
       	       	{
       	       	       	case SYS_LOAD_NONE:
       	       	       	       	       	 gSysLoadStatus = SYS_LOAD_B_ON;
   	   	   	   	   	   	   	   	   	   	 gCntB_1 = 0;
       	       	       	       	       	 break;
       	       	       	case SYS_LOAD_A_ON:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_BOTH_ON;
       	   	   	   	   	   	   	   	   	if(gCntA_1 >= LOAD_DEBOUNCE_TO_OFF)
   	   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	   	gCntB_1 =0;
       	       	   	   	   	   	   	   	   	   	gSysLoadStatus = SYS_LOAD_B_ON;
   	   	   	   	   	   	   	   	   	   	   	if(gTotalCloseTimeB > (SYS_INTERVAL_CLOSE_TO_OPEN-3))
   	   	   	   	   	   	   	   	   	   	   	{
   	   	   	   	   	   	   	   	   	   	   	   	gTotalCloseTimeB -=2;
   	   	   	   	   	   	   	   	   	   	   	}
   	   	   	   	   	   	   	   	   	   	}
       	       	       	       	       	break;
       	       	       	case SYS_LOAD_B_ON:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_NONE;
   	   	   	   	   	   	   	   	   	   	gTotalCloseTimeB = 0;
       	       	       	       	       	break;
       	       	       	case SYS_LOAD_BOTH_ON:
       	       	       	       	       	gSysLoadStatus = SYS_LOAD_A_ON;
   	   	   	   	   	   	   	   	   	   	gTotalCloseTimeB = 0;
   	   	   	   	   	   	   	   	   	   	gPinStatus |= 0x20;
   	   	   	   	   	   	   	   	   	   	gCntB = 0;
   	   	   	   	   	   	   	   	   	   	gCntB_1 = 0;
   	   	   	   	   	   	   	   	   	   	gCntA_1 = 0;
       	       	       	       	       	break;
       	       	       	default:
       	       	       	       	       	break;
       	       	}

       	       	gSysLoadDetectCntB = 0;
       	       	gSysChildStatus = SYS_CHILD_STATUS_INIT;


       	       	if(gPinStatus & 0x80)
       	       	{
   	   	   	   	   	gCurPortStatus = 0;
   	   	   	   	   	B_OFF_WITHOUT_A();
   	   	   	   	   	if(gSysLoadStatus != SYS_LOAD_BOTH_ON)
   	   	   	   	   	   	 gPreSysLoadStatus = gSysLoadStatus;
       	       	 }
       	       	 else
       	               {
   	   	   	   	   	if((gPreSysLoadStatus == SYS_LOAD_BOTH_ON) || (gPreSysLoadStatus == SYS_LOAD_A_ON))
   	   	   	   	   	   	gTotalCloseTimeA = 0;
   	   	   	   	   	if(gSysLoadStatus == SYS_LOAD_A_ON)
   	   	   	   	   	{
   	   	   	   	   	   	gCurPortStatus = PORT_A_ON_NO_QC;
   	   	   	   	   	   	B_OFF_WITHOUT_A();
   	   	   	   	   	   	gPreSysLoadStatus = gSysLoadStatus;
   	   	   	   	   	}
   	   	   	   	   	else if((gSysLoadStatus == SYS_LOAD_BOTH_ON) &&(gCurPortStatus == PORT_A_ON_NO_QC))
   	   	   	   	   	{
   	   	   	   	   	   	B_OFF_WITHOUT_A();
   	   	   	   	   	}
   	   	   	   	   	else
   	   	   	   	   		;
   	   	   	   	   	   	//PORT_ALL_OFF();
       	       	 }
       	}
}

void SysTotalCloseTime()
{      	
       	if((gSysLoadStatus == SYS_LOAD_NONE) || (gPreSysLoadStatus != gSysLoadStatus))
       	{
       	       	if(gTotalCloseTimeA < SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	gTotalCloseTimeA++;
       	       	if(gTotalCloseTimeB < SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	gTotalCloseTimeB++;
       	}
       	else if(gSysLoadStatus == SYS_LOAD_A_ON)
       	{
       	       	if(gTotalCloseTimeB < SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	gTotalCloseTimeB++;
       	}
       	else if(gSysLoadStatus == SYS_LOAD_B_ON)
       	{
       	       	if(gTotalCloseTimeA < SYS_INTERVAL_CLOSE_TO_OPEN)
       	       	       	gTotalCloseTimeA++;
       	}
}

#if 0
void SysSleepHandle()
{
       	if(gSysLoadStatus == SYS_LOAD_NONE)
       	{
       	       	       	if(gSysLoadDetectCntA == 0 && gSysLoadDetectCntB == 0)
       	       	       	{
       	       	       	       	gSleepCnt++;
       	       	       	       	if(gSleepCnt > SYS_TIME_SLEEP)
       	       	       	       	{
       	       	       	       	       	key_interrupt_enable();
       	       	       	       	       	DisWatchdog();
       	       	       	       	       	NOP();
       	       	       	       	       	Stop();
       	       	       	       	       	key_interrupt_disable();
       	       	       	       	       	gSleepCnt = 0;
       	       	       	       	       	EnWatchdog();
       	       	       	       	       	gTempBackupP1 = P1;
       	       	       	       	}
       	       	       	}
       	       	       	else
       	       	       	       	gSleepCnt =0;
       	}
       	else
       	       	       	gSleepCnt = 0;
       	
}
#endif
 void SysInit()
 { 
   	//IO

       	// 11010100
       	DDR1 = 0xD4;     //  1 as input
       	P1 = 0x00;

//timer  5ms
       	T0CR = 0x07;
       	T0CNT = 61;
       	T0IE = 1;

       	gTempBackupP1 = P1;
       	
//key int 
       	 KBIM=0;
       	 KBIM1 = 1;
       	 KBIM3 = 1;
       	 KBIE = 1;
       	 
//global variable
       	gSysLoadStatus = SYS_LOAD_NONE;
       	gPreSysLoadStatus = SYS_LOAD_NONE;
       	gSleepCnt = 0;
       	gPinStatus = 0;
   	   	gTotalCloseTimeA = 0;
       	gTotalCloseTimeB = 0;

       	GIE = 1;
         
 }


 void main()
 {
        SysInit();    


       while(1)
        {

       	       	overflow = 0;


       	       	//SysSleepHandle();
       	       	       	       	
       	           	SysTotalCloseTime();
       	        
       	           	SysLoadDetect();

       	           	SysStatusSwitchHandle();
       	       	do             	
               	       	{
       	       	       	SysClrWdt(); 
       	       	}while(overflow == 0);

        }
 }


 void isr(void) __interrupt
{
         __asm
                movra   _ABuf
                swapar  _STATUS
                movra   _StatusBuf
        __endasm;

        if(T0IF)
        {
       	       	T0IF = 0;
       	       	T0CNT += 61;
       	       	overflow = 1;
        }

       	if(KBIF)
       	{
       	       	if((gTempBackupP1 & 0x04) != (P1 &0x04))
       	       	{
       	       	       gPinStatus |= 0x02;
       	       	}
       	       	if((gTempBackupP1 & 0x10) != (P1 &0x10))
       	       	{
       	       	       gPinStatus |= 0x01;
       	       	}
       	       	gTempBackupP1 = P1;
       	       	KBIF = 0;
       	}
        __asm
                swapar  _StatusBuf
                movra   _STATUS
                swapr   _ABuf
                swapar  _ABuf
        __endasm;     
}