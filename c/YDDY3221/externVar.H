
#include <mc3x-common.h>
#include "CONST.H"
/*****************************************************************
;	Function : Define variables
;*****************************************************************/
#ifndef _VAR_H_
#define _VAR_H_

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
	
extern volatile bitn	Flag1,Flag2,Flag3;
//;标志定义-------------------------------------
#define	FPwr		Flag1.bit0
#define	FKeyAck		Flag1.bit1
#define	FFlash		Flag1.bit2 
#define	FVLage		Flag1.bit3		//;充电计时标志
#define	FCHGOver	Flag1.bit4		//;充电计时标志
#define	FILow		Flag1.bit5		//;输出电流小于100mA
#define	FF250		Flag1.bit6		//;输出电流小于100mA
#define	FVIN		Flag1.bit7
	
#define	FLongRKey	Flag2.bit0	;
#define	FStop		Flag2.bit1
#define	F1ms		Flag2.bit2
#define	FT5s		Flag2.bit3
#define	FKeyAck1628	Flag2.bit4
#define	F1628		Flag2.bit5
#define	FLight		Flag2.bit6
#define	FDisBatLow	Flag2.bit7	//;Vbat<=3v
	
#define	FCHGV		Flag3.bit0	//;电压大于4.2V
#define	FCHGI		Flag3.bit1//	;电流小于100mA
#define	FLoad		Flag3.bit2	//;有无负载标志
#define	FBatLow3d2	Flag3.bit3	//;Vbat<=3v
#define	FBatLow3	Flag3.bit4	//;Vbat<=3v
#define	FPWMInc		Flag3.bit5	//;Vbat<=3v
#define	FPwr1st		Flag3.bit6	//;第一次打开放电脚
#define	FLigt		Flag3.bit7	//;第一次打开放电脚

extern uchar	Buf0,Buf1,Buf2;
extern uchar	ADCnt;
extern ushort	ADVBatBuf,ADVOutBuf,ADIOutBuf;
extern uchar	ADVBatMin,ADVBatMax;
extern uchar	ADVOut,ADVBat,ADIOut;
extern uchar	ADVOutMin,ADVOutMax;
extern uchar	ADIMin,ADIMax;
extern uchar	T500ms;
extern uchar	KeyCnt,KeyLongth;
extern uchar	BatStatus;
extern uchar	DispCnt;
extern uchar	DisPWM,CHGPWM;
extern uchar	VinLowCnt,VinHiCnt;
extern uchar	ILow0A1Dly10s;
extern uchar	TStop5s;
extern uchar	PwrON5s;
extern uchar	CHGV4d2T1min,CHGI100ms1min;
extern uchar	BatLowCnt;
extern uchar	LoadCnt;

extern uchar	TSec,TMin;


#endif

