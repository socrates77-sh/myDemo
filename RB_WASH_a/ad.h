#ifndef _ad_h_
#define _ad_h_


#ifdef	ad_Global
#define	ad_EXT
#else
#define ad_EXT extern
#endif 

ad_EXT unsigned char WorkONInitStep;
ad_EXT unsigned char LEDFlashTimes;
ad_EXT unsigned char LEDFlashSpace;
ad_EXT unsigned char RXDebounce;
ad_EXT unsigned char RXCnt;
ad_EXT unsigned char DetectSpace;
ad_EXT unsigned char DetectStep;
ad_EXT unsigned char SleepCnt;
ad_EXT unsigned int  MaxRunTimes;
ad_EXT unsigned int  MaxMotorTimes;
ad_EXT unsigned char MotorFiveCnt;
ad_EXT unsigned char PositionDelay;


typedef  struct
{
	uchar bit0		   : 1;
	uchar bit1		   : 1;
	uchar bit2		   : 1;
	uchar bit3		   : 1;
	uchar bit4		   : 1; 
	uchar bit5		   : 1; 
	uchar bit6		   : 1; 	
	uchar bit7		   : 1; 	
} bitn;
	
extern volatile bitn	Flag1;

#define	fWorkONInitT		Flag1.bit0
#define	fDetection		Flag1.bit1
#define	fDetectionT		Flag1.bit2
#define	fActuation		Flag1.bit3
#define	fMotorT		Flag1.bit4
#define	fConsecutiveFive		Flag1.bit5
#define	fWaiteRelease		Flag1.bit6
#define	fSleepT		Flag1.bit7



void WorkOnInit(void);
void Detection(void);
void Actuation(void);
void ConsecutiveFive(void);

#endif 