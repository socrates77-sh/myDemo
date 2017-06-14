
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
	
volatile bitn	Flag1,Flag2,Flag3;
//;��־����-------------------------------------
#define	FPwr		Flag1.bit0
#define	FKeyAck		Flag1.bit1
#define	FFlash		Flag1.bit2 
#define	FVLage		Flag1.bit3		//;����ʱ��־
#define	FCHGOver	Flag1.bit4		//;����ʱ��־
#define	FILow		Flag1.bit5		//;�������С��100mA
#define	FF250		Flag1.bit6		//;�������С��100mA
#define	FVIN		Flag1.bit7
	
#define	FLongRKey	Flag2.bit0	
#define	FStop		Flag2.bit1
#define	F1ms		Flag2.bit2
#define	FT5s		Flag2.bit3
#define	FKeyAck1628	Flag2.bit4
#define	F1628		Flag2.bit5
#define	FLight		Flag2.bit6
#define	FDisBatLow	Flag2.bit7	//;Vbat<=3v
	
#define	FCHGV		Flag3.bit0	//;��ѹ����4.2V
#define	FCHGI		Flag3.bit1//	;����С��100mA
#define	FLoad		Flag3.bit2	//;���޸��ر�־
#define	FBatLow3d2	Flag3.bit3	//;Vbat<=3v
#define	FBatLow3	Flag3.bit4	//;Vbat<=3v
#define	FPWMInc		Flag3.bit5	//;Vbat<=3v
#define	FPwr1st		Flag3.bit6	//;��һ�δ򿪷ŵ��
#define	FLigt		Flag3.bit7	//;��һ�δ򿪷ŵ��

uchar	Buf0,Buf1,Buf2;
uchar	ADCnt;
ushort	ADVBatBuf,ADVOutBuf,ADIOutBuf;
uchar	ADVBatMin,ADVBatMax;
uchar	ADVOut,ADVBat,ADIOut;
uchar	ADVOutMin,ADVOutMax;
uchar	ADIMin,ADIMax;
uchar	T500ms;
uchar	KeyCnt,KeyLongth;
uchar	BatStatus;
uchar	DispCnt;
uchar	DisPWM,CHGPWM;
uchar	VinLowCnt,VinHiCnt;
uchar	ILow0A1Dly10s;
uchar	TStop5s;
uchar	PwrON5s;
uchar	CHGV4d2T1min,CHGI100ms1min;
uchar	BatLowCnt;
uchar	LoadCnt;

uchar	TSec,TMin;


#endif
