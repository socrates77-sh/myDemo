
/****************************************************************
;	Function : Define const
;*****************************************************************/
#ifndef _CONST_H_
#define _CONST_H_

#define	CT0			128
#define	CT1			100
#define	CT_1ms		125
#define	C250ms		250

#define	CBAT300		0
#define	CBAT320		1
#define	CBAT350		2
#define	CBAT375		3
#define	CBAT400		4
#define	CBAT416		5
#define	CBAT424		6


#define	CADVBat		0x0E
#define	CADVOut		0x2E
#define	CADIOut		0x3E

#define	CPWM0DATA	50	//;正常模式下PWM初始值
#define	CNPWM0DATA	5	//;无负载模式下PWM初始值


#if (Test != 0)
#define COUTU5d8V	103
#define	COUTU5d5V	97
#define COUTU5d2V	92
#define	COUTU5V		88
#define COUTU4d85V 	87	
#define COUTU4d8V 	86	
#define COUTU4d5V 	80	

#define	CBATU300	59
#define	CBATU320	60
#define	CBATU350	61
#define	CBATU375	66
#define	CBATU400	70
#define	CBATU416	73
#define	CBATU424	75
#define	CBATI1A		0x49
#define	CBATI100mA	0x07

#define	COUTI_40mA	0
#define	COUTI_90mA	2
#define	COUTI_200mA	5
#define	COUTI_900mA	21
#define	COUTI_1A5	34
#define	COUTI_2A	46
#define	COUTI_2A3	52
#define	COUTI_2A8	63
#else
#define COUTU5d8V	165	//;8F
#define COUTU5d5V	157 	
#define COUTU5d2V	148
#define COUTU5V 	143	
#define COUTU4d85V 	139	
#define COUTU4d8V 	137	
#define COUTU4d5V 	129	

#define	CBATU300	137
#define	CBATU320	146
#define	CBATU350	160
#define	CBATU375	171
#define	CBATU400	183
#define	CBATU416	190
#define	CBATU424	194
#define	CBATI1A		0x49
#define	CBATI100mA	0x07

#define	COUTI_40mA	1	
#define	COUTI_90mA	3	
#define	COUTI_200mA	7	
#define	COUTI_500mA	18	
#define	COUTI_900mA	33
#define	COUTI_1A	36
#define	COUTI_1A5	55
#define	COUTI_2A	73
#define	COUTI_2A3	84
#define	COUTI_2A8	105	//;实际值
#endif
#define	COUT2A3		0x54	//;84

#define	CADRefVDD	3
#define	CADRef4V	2
#define	CADRef3V	1
#define	CADRef2V	0
#define	CADRefExt	4

/*****************************************************************
;端口定义
;*****************************************************************/
#define	pCHG 		P13
#define	pDisCHG 	P12
#define	pLed1		P14
#define	pLed1C		P14OE
#define	pLed2		P15
#define	pLed2C		P15OE
#define	pLedC		P04OE
#define	pLedCC		P04OE
#define	pKey		P16
#define	pLedW		P01
#define	pPwr		P10
#define	pVIN		P11

#endif

