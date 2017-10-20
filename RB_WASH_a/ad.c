#define ad_Global
#include "includes.h"

volatile bitn	Flag1;
volatile bitn	Flag2;

void delay(void)
{
	unsigned char i;
	for(i=0;i<20;i++);
}
void WorkOnInit(void)
{
	if(fWorkON && fWorkONInit)
	{
		switch(WorkONInitStep)
		{
			case 0:						//上电快闪
					if(fWorkONInitT)
					{
						fWorkONInitT = 0;
						LEDFlashSpace++;
						if(LEDFlashSpace> 100)
						{
							LEDFlashSpace = 0;
							LED1 = !LED1;
							LED2 = !LED2;
							LEDFlashTimes++;
							if(LEDFlashTimes > 3)
							{
								LEDFlashTimes = 0;
								WorkONInitStep++;
							}
						}
					}
					break;
			case 1:						// 检测IR 通路，如果阻塞，则闪烁提示
					RXENB();
					TXENB();
					
					if(fWorkONInitT)
					{
						fWorkONInitT = 0;
						LEDFlashSpace++;
						if(LEDFlashSpace>250)
						{
							LEDFlashSpace = 0;
							LED1 = !LED1;
							LED2 = !LED2;
						}
						if( RX )
						{
							RXDebounce++;
							if(RXDebounce > 3)
							{
								RXDebounce = 0;
								WorkONInitStep++;
								
								RXDIS();
								TXDIS();
								LEDOFF();
							}
						}
						else
						{
							RXDebounce = 0;
						}
					}
					break;
					
			case 2:							//进入睡眠，有按键，或者288ms 睡眠后自动唤醒，进入红外侦测。
					MCR =   BIN(0,0,0,0,1,0,0,0);		
					KBIM = BIN(0,0,0,0,1,0,0,0);
					ClrWdt();
					P0 = P0;
					Stop();
					KBIM = 0X00;
					MCR = BIN(0,0,0,0,0,0,0,1);
					PUCON  = BIN(1,1,0,0,0,0,0,0);
					fWorkONInit = 0;
					fDetection = 1;
					DetectStep = 0;
					break;
			default:break;		
		}
	}
}

void Detection(void)
{
	if(fWorkON && fDetection)
	{	
		switch(DetectStep)
		{
			case 0:					//1
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 1:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 2:					//2
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 3:	
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 4:					//3
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 5:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 6:					//4
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 7:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 8:					//5
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{	
						DetectStep = 15;
					}	
					break;
			case 9:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 10:					//6
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 11:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 12:					//7
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 13:
					if(fDetectionT)
					{
						fDetectionT = 0;
						DetectSpace++;
						if(DetectSpace>20)
						{
							DetectSpace = 0;
							DetectStep++;
						}
					}
					break;
			case 14:					//8
					RXENB();
					TXENB();
					delay();
					if(!RX)
					{
						DetectStep++;
						RXDIS();
						TXDIS();
						fDetection = 0;
						fActuation = 1;
						MaxRunTimes++;
						MaxMotorTimes = 0;
						fWaiteRelease = 0;
					}
					else
					{
						DetectStep = 15;
					}
					break;
			case 15:			//sleep
			
					P17=!P17;
					RXDIS();
				    TXDIS();
					if(fSleepT)
					{
						fSleepT = 0;
						SleepCnt++;
						if(SleepCnt>200)
						{
							SleepCnt = 0;
							KBIM =   BIN(0,0,0,0,1,0,0,0);		
							MCR = BIN(0,0,0,0,1,0,0,0);
							ClrWdt();
							P0 = P0;
							Stop();
							
							if(!PD)
							{
								DetectStep=0;
								SleepCnt = 0;	
							}
							else
							{
								SleepCnt = 0;
							}
							MCR = 0X00;
							KBIM = BIN(0,0,0,0,0,0,0,1);
							PDCON  = BIN(1,1,0,0,0,0,0,0);
							ClrWdt();
						}
					}
					
					break;
			default:DetectStep = 15;break;
			
					
		}
	}
}


void Actuation(void)
{
	if(fWorkON && fActuation)
	{
		MOSENB();
		if(fMotorT)
		{
			fMotorT = 0;
			
			if(!POSITION)
			{
				PositionDelay++;
				if(PositionDelay>3)
				{
					PositionDelay = 0;
					fWaiteRelease = 1;
				}
			}
			
			if(fWaiteRelease)
			{
				if(POSITION)
				{
					PositionDelay++;
					if(PositionDelay>3)
					{
						PositionDelay = 0;
						fWaiteRelease = 0;
						fActuation = 0;
						MOSDIS();
						fDetection = 1;
					}	
				}
			}
			//5s 超时关闭马达 ，连续两次发生，则报警
			MaxMotorTimes++;
			if(MaxMotorTimes > 5000)
			{
				MaxMotorTimes = 0;
				MOSDIS();
				MotorFiveCnt++;
				if(MotorFiveCnt>=2)
				{
					MotorFiveCnt = 0;
					fConsecutiveFive = 1;
					fActuation = 0;
					fDetection = 1;
				}	
			}
		}
	}	
}


void ConsecutiveFive(void)
{
	if(fConsecutiveFive)
	{
		fConsecutiveFive = 0;
		fDetection = 1;
	}
}