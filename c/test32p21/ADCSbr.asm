;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:44:47 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"adcsbr.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_ANSELbits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_KBIMbits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_LVDCRbits
	extern	_OSCMbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_ABuf
	extern	_StatusBuf
	extern	_Keycode
	extern	_DisplayMode
	extern	_MasterTime_1ms
	extern	_MasterTime_10ms
	extern	_MasterTime_100ms
	extern	_MasterTime_1s
	extern	_sleeptime
	extern	_key_cnt
	extern	_key_time
	extern	_key_press_time
	extern	_short_press_time
	extern	_BAT_avgAD
	extern	_Load_avgAD
	extern	_Last_BATAD
	extern	_Load_avgAD2
	extern	_NoLoadCount
	extern	_ZNB602Register
	extern	_Flag
	extern	_Flag1
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_STATUS
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_ANSEL
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_KBIM
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_LVDCR
	extern	_OSCM
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_OSCAL
	extern	__gptrget2
	extern	__mulchar
	extern	__gptrput2

	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_AD_Check
	global	_Battery_Check
	global	_Compare_AD
	global	_Dispose_AD

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_adcsbr_0	udata
r0x100C	res	1
r0x100D	res	1
r0x100F	res	1
r0x100E	res	1
r0x1010	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1026	res	1
r0x1025	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1017	res	1
r0x1018	res	1
r0x101A	res	1
r0x1019	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x1020	res	1
r0x101F	res	1
_Dispose_AD_arrayAD_1_12	res	12
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_adcsbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _Dispose_AD	;Function start
; 2 exit points
;has an exit
;functions called:
;   _AD_Check
;   _Compare_AD
;   _AD_Check
;   _Compare_AD
;8 compiler assigned registers:
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   STK00
;   r0x1020
;   STK01
;; Starting pCode block
_Dispose_AD	;Function start
; 2 exit points
;	.line	59; "adcsbr.c"	uint Dispose_AD(uchar adway)
	MOVRA	r0x101B
;	.line	63; "adcsbr.c"	for(i=0;i<6;i++)
	CLRR	r0x101C
;;unsigned compare: left < lit(0x6=6), size=1
_00149_DS_
	MOVAI	0x06
	RSUBAR	r0x101C
	JBCLR	STATUS,0
	GOTO	_00152_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	65; "adcsbr.c"	arrayAD[i] = AD_Check(adway);
	BCLR	STATUS,0
	RLAR	r0x101C
	MOVRA	r0x101D
	MOVAR	r0x101D
	ADDAI	(_Dispose_AD_arrayAD_1_12 + 0)
	MOVRA	r0x101D
	MOVAI	high (_Dispose_AD_arrayAD_1_12 + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x101E
	MOVAR	r0x101B
	CALL	_AD_Check
	MOVRA	r0x101F
	MOVAR	STK00
	MOVRA	r0x1020
	MOVAR	r0x101D
	MOVRA	FSR
	BCLR	STATUS,7
	JBCLR	r0x101E,0
	BSET	STATUS,7
	MOVAR	r0x1020
	MOVRA	INDF
	INCR	FSR
	MOVAR	r0x101F
	MOVRA	INDF
;	.line	63; "adcsbr.c"	for(i=0;i<6;i++)
	INCR	r0x101C
	GOTO	_00149_DS_
_00152_DS_
;	.line	67; "adcsbr.c"	return Compare_AD(arrayAD);
	MOVAI	high (_Dispose_AD_arrayAD_1_12 + 0)
	MOVRA	r0x101C
	MOVAI	(_Dispose_AD_arrayAD_1_12 + 0)
	MOVRA	r0x101B
	CLRR	r0x101D
	MOVAR	r0x101B
	MOVRA	STK01
	MOVAR	r0x101C
	MOVRA	STK00
	MOVAI	0x00
	CALL	_Compare_AD
	MOVRA	r0x101C
	MOVAR	STK00
	MOVRA	r0x101B
	MOVAR	r0x101B
	MOVRA	STK00
	MOVAR	r0x101C
	RETURN	
; exit point of _Dispose_AD

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Compare_AD	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget2
;   __mulchar
;   __gptrget2
;   __gptrput2
;   __gptrput2
;   __gptrget2
;   __gptrget2
;   __gptrget2
;   __mulchar
;   __gptrget2
;   __gptrput2
;   __gptrput2
;   __gptrget2
;   __gptrget2
;19 compiler assigned registers:
;   r0x100C
;   STK00
;   r0x100D
;   STK01
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;   r0x1019
;   r0x101A
;   STK02
;   STK03
;; Starting pCode block
_Compare_AD	;Function start
; 2 exit points
;	.line	38; "adcsbr.c"	uint Compare_AD(uint str[])//(uint  *str)//(uint str[])// ////// 冒泡法排序
	MOVRA	r0x100C
	MOVAR	STK00
	MOVRA	r0x100D
	MOVAR	STK01
	MOVRA	r0x100E
;	.line	43; "adcsbr.c"	for(i=0;i<5;i++) //比较的数是6-1
	CLRR	r0x100F
;;unsigned compare: left < lit(0x5=5), size=1
_00124_DS_
	MOVAI	0x05
	RSUBAR	r0x100F
	JBCLR	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	45; "adcsbr.c"	for(j = 0;j<5-i;j++)
	CLRR	r0x1010
;;100	MOVAR	r0x100F
_00120_DS_
	CLRR	r0x1012
;;99	MOVAR	r0x1011
	MOVAR	r0x100F
	MOVRA	r0x1011
	ISUBAI	0x05
	MOVRA	r0x1011
	MOVAI	0x00
	JBSET	STATUS,0
	INCAR	r0x1012
	ISUBAI	0x00
	MOVRA	r0x1012
	MOVAR	r0x1010
	MOVRA	r0x1013
	CLRR	r0x1014
	MOVAI	0x00
	ADDAI	0x80
	MOVRA	r0x1015
	MOVAR	r0x1012
	ADDAI	0x80
	RSUBAR	r0x1015
	JBSET	STATUS,2
	GOTO	_00143_DS_
	MOVAR	r0x1011
	RSUBAR	r0x1013
_00143_DS_
	JBCLR	STATUS,0
	GOTO	_00126_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	47; "adcsbr.c"	if(str[j+1]>str[j])
	INCR	r0x1013
	JBCLR	STATUS,2
	INCR	r0x1014
	BCLR	STATUS,0
	RLAR	r0x1013
	MOVRA	r0x1011
	RLAR	r0x1014
	MOVRA	r0x1012
	MOVAR	r0x1011
	ADDAR	r0x100E
	MOVRA	r0x1011
;;102	MOVAR	r0x100D
;;101	MOVAR	r0x1012
	MOVAR	r0x100D
	MOVRA	r0x1012
	JBCLR	STATUS,0
	JZAR	r0x1012
	ADDRA	r0x1012
	MOVAR	r0x100C
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1013
	MOVAR	r0x1011
	MOVRA	STK01
	MOVAR	r0x1012
	MOVRA	STK00
	MOVAR	r0x1013
	CALL	__gptrget2
	MOVRA	r0x1015
	MOVAR	STK00
	MOVRA	r0x1014
	MOVAI	0x02
	MOVRA	STK00
	MOVAR	r0x1010
	CALL	__mulchar
	MOVRA	r0x1016
	CLRR	r0x1017
	MOVAR	r0x1016
	ADDAR	r0x100E
	MOVRA	r0x1016
;;104	MOVAR	r0x100D
;;103	MOVAR	r0x1017
	MOVAR	r0x100D
	MOVRA	r0x1017
	JBCLR	STATUS,0
	JZAR	r0x1017
	ADDRA	r0x1017
	MOVAR	r0x100C
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1018
	MOVAR	r0x1016
	MOVRA	STK01
	MOVAR	r0x1017
	MOVRA	STK00
	MOVAR	r0x1018
	CALL	__gptrget2
	MOVRA	r0x1019
	MOVAR	STK00
	MOVRA	r0x101A
	MOVAR	r0x1015
	RSUBAR	r0x1019
	JBSET	STATUS,2
	GOTO	_00144_DS_
	MOVAR	r0x1014
	RSUBAR	r0x101A
_00144_DS_
	JBCLR	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	50; "adcsbr.c"	str[j] = str[j+1];
	MOVAR	r0x1015
	MOVRA	STK02
	MOVAR	r0x1014
	MOVRA	STK03
	MOVAR	r0x1016
	MOVRA	STK01
	MOVAR	r0x1017
	MOVRA	STK00
	MOVAR	r0x1018
	CALL	__gptrput2
;	.line	51; "adcsbr.c"	str[j+1] = temp;
	MOVAR	r0x1019
	MOVRA	STK02
	MOVAR	r0x101A
	MOVRA	STK03
	MOVAR	r0x1011
	MOVRA	STK01
	MOVAR	r0x1012
	MOVRA	STK00
	MOVAR	r0x1013
	CALL	__gptrput2
_00122_DS_
;	.line	45; "adcsbr.c"	for(j = 0;j<5-i;j++)
	INCR	r0x1010
	GOTO	_00120_DS_
_00126_DS_
;	.line	43; "adcsbr.c"	for(i=0;i<5;i++) //比较的数是6-1
	INCR	r0x100F
	GOTO	_00124_DS_
_00127_DS_
;	.line	55; "adcsbr.c"	return ((uint)(str[2]+str[3])/2);
	MOVAI	0x04
	ADDAR	r0x100E
	MOVRA	r0x100F
	CLRR	r0x1010
	RLR	r0x1010
	MOVAR	r0x100D
	ADDRA	r0x1010
	CLRR	r0x1011
	RLR	r0x1011
	MOVAR	r0x100C
	ADDRA	r0x1011
	MOVAR	r0x100F
	MOVRA	STK01
	MOVAR	r0x1010
	MOVRA	STK00
	MOVAR	r0x1011
	CALL	__gptrget2
	MOVRA	r0x1013
	MOVAR	STK00
	MOVRA	r0x1012
	MOVAI	0x06
	ADDRA	r0x100E
	JBCLR	STATUS,0
	INCR	r0x100D
	JBCLR	STATUS,2
	INCR	r0x100C
	MOVAR	r0x100E
	MOVRA	STK01
	MOVAR	r0x100D
	MOVRA	STK00
	MOVAR	r0x100C
	CALL	__gptrget2
	MOVRA	r0x1010
	MOVAR	STK00
	MOVRA	r0x100F
	MOVAR	r0x100F
	ADDRA	r0x1012
	MOVAR	r0x1010
	JBCLR	STATUS,0
	JZAR	r0x1010
	ADDRA	r0x1013
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=0, offr=0
	BCLR	STATUS,0
	RRAR	r0x1013
	MOVRA	r0x100D
	RRAR	r0x1012
	MOVRA	r0x100E
	MOVAR	r0x100E
	MOVRA	STK00
	MOVAR	r0x100D
	RETURN	
; exit point of _Compare_AD

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Battery_Check	;Function start
; 2 exit points
;has an exit
;functions called:
;   _AD_Check
;   _AD_Check
;7 compiler assigned registers:
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   STK00
;   r0x1026
;; Starting pCode block
_Battery_Check	;Function start
; 2 exit points
;	.line	26; "adcsbr.c"	uint Battery_Check(uchar number)
	MOVRA	r0x1021
;	.line	29; "adcsbr.c"	uint sum = 0;
	CLRR	r0x1022
	CLRR	r0x1023
;	.line	30; "adcsbr.c"	for(i=0;i<8;i++)
	CLRR	r0x1024
;;unsigned compare: left < lit(0x8=8), size=1
_00110_DS_
	MOVAI	0x08
	RSUBAR	r0x1024
	JBCLR	STATUS,0
	GOTO	_00113_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	32; "adcsbr.c"	sum += AD_Check(number);
	MOVAR	r0x1021
	CALL	_AD_Check
	MOVRA	r0x1025
	MOVAR	STK00
	MOVRA	r0x1026
	MOVAR	r0x1026
	ADDRA	r0x1022
	MOVAR	r0x1025
	JBCLR	STATUS,0
	JZAR	r0x1025
	ADDRA	r0x1023
;	.line	30; "adcsbr.c"	for(i=0;i<8;i++)
	INCR	r0x1024
	GOTO	_00110_DS_
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=0, offr=0
_00113_DS_
;	.line	34; "adcsbr.c"	return  (sum/8);
	BCLR	STATUS,0
	RRAR	r0x1023
	MOVRA	r0x1024
	RRAR	r0x1022
	MOVRA	r0x1021
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1021
;;shiftRight_Left2ResultLit:5278: shCount=1, size=2, sign=0, same=1, offr=0
	BCLR	STATUS,0
	RRR	r0x1024
	RRR	r0x1021
	MOVAR	r0x1021
	MOVRA	STK00
	MOVAR	r0x1024
	RETURN	
; exit point of _Battery_Check

;***
;  pBlock Stats: dbName = C
;***
;entry:  _AD_Check	;Function start
; 2 exit points
;has an exit
;7 compiler assigned registers:
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   STK00
;; Starting pCode block
_AD_Check	;Function start
; 2 exit points
;	.line	10; "adcsbr.c"	uint AD_Check(uchar AD_enter) //检测AD
	MOVRA	r0x100C
;	.line	13; "adcsbr.c"	ADCHS = AD_enter; //选择通道
	MOVAR	r0x100C
	ANDAI	0x0f
	MOVRA	r0x100D
	SWAPR	r0x100D
	MOVAI	0xf0
	ANDRA	r0x100D
	MOVAR	(_ADCR0bits + 0)
	ANDAI	0x0f
	ORAR	r0x100D
	MOVRA	(_ADCR0bits + 0)
;	.line	14; "adcsbr.c"	ADCKS = 3; //AD时钟频率不分频
	MOVAR	(_ADCR0bits + 0)
	ORAI	0x0c
	MOVRA	(_ADCR0bits + 0)
	nop
	nop
	nop
;	.line	18; "adcsbr.c"	ADON = 1; //启动AD
	BSET	_ADCR0bits,0
;	.line	19; "adcsbr.c"	ADEOC = 0;
	BCLR	_ADCR0bits,1
_00105_DS_
;	.line	20; "adcsbr.c"	while(ADEOC==0);//AD转换中
	JBSET	_ADCR0bits,1
	GOTO	_00105_DS_
;	.line	21; "adcsbr.c"	AD_Value = ADRH; //获取AD值
	MOVAR	_ADRH
	MOVRA	r0x100C
	CLRR	r0x100D
;	.line	22; "adcsbr.c"	AD_Value = (AD_Value<<4)|ADRL; 
	SWAPAR	r0x100D
	ANDAI	0xf0
	MOVRA	r0x100E
	SWAPAR	r0x100C
	MOVRA	r0x100F
	ANDAI	0x0f
	ORRA	r0x100E
	XORRA	r0x100F
	MOVAR	_ADRL
	MOVRA	r0x1010
;;1	CLRR	r0x1011
	MOVAR	r0x1010
	ORAR	r0x100F
	MOVRA	r0x100C
	MOVAI	0x00
	ORAR	r0x100E
	MOVRA	r0x100D
;	.line	23; "adcsbr.c"	return AD_Value;
	MOVAR	r0x100C
	MOVRA	STK00
	MOVAR	r0x100D
	RETURN	
; exit point of _AD_Check


;	code size estimation:
;	  302+    0 =   302 instructions (  604 byte)

	end
