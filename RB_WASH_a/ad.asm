;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:49 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"ad.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_init
	extern	_ClrrRAM
	extern	_KeyScan
	extern	_NeedSleep
	extern	_InitUart
	extern	_EndUart
	extern	_UartSendByte
	extern	_UartDelay
	extern	_UartSendInt
	extern	_STATUSbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_TMCRbits
	extern	_T1CRbits
	extern	_UartStep
	extern	_UartTemp
	extern	_INDF
	extern	_T0CNT
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_P0
	extern	_P1
	extern	_MCR
	extern	_KBIM
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PUCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_T0CR
	extern	_DDR0
	extern	_DDR1
	extern	_TMCR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA

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
	global	_ConsecutiveFive
	global	_Actuation
	global	_Detection
	global	_WorkOnInit
	global	_delay
	global	_WorkONInitStep
	global	_LEDFlashTimes
	global	_LEDFlashSpace
	global	_RXDebounce
	global	_RXCnt
	global	_DetectSpace
	global	_DetectStep
	global	_SleepCnt
	global	_MaxRunTimes
	global	_MaxMotorTimes
	global	_MotorFiveCnt
	global	_PositionDelay
	global	_Flag1
	global	_Flag2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_ad_0	udata
_WorkONInitStep	res	1

UD_ad_1	udata
_LEDFlashTimes	res	1

UD_ad_2	udata
_LEDFlashSpace	res	1

UD_ad_3	udata
_RXDebounce	res	1

UD_ad_4	udata
_RXCnt	res	1

UD_ad_5	udata
_DetectSpace	res	1

UD_ad_6	udata
_DetectStep	res	1

UD_ad_7	udata
_SleepCnt	res	1

UD_ad_8	udata
_MaxRunTimes	res	2

UD_ad_9	udata
_MaxMotorTimes	res	2

UD_ad_10	udata
_MotorFiveCnt	res	1

UD_ad_11	udata
_PositionDelay	res	1

UD_ad_12	udata
_Flag1	res	1

UD_ad_13	udata
_Flag2	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ad_0	udata
r0x100F	res	1
r0x1010	res	1
r0x1013	res	1
r0x1014	res	1
r0x1011	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'delay'
;@delay WorkOnInit                Allocated to registers ;size:2
;@delay Detection                 Allocated to registers ;size:2
;@delay Actuation                 Allocated to registers ;size:2
;@delay ConsecutiveFive           Allocated to registers ;size:2
;@delay init                      Allocated to registers ;size:2
;@delay ClrrRAM                   Allocated to registers ;size:2
;@delay KeyScan                   Allocated to registers ;size:2
;@delay NeedSleep                 Allocated to registers ;size:2
;@delay InitUart                  Allocated to registers ;size:2
;@delay EndUart                   Allocated to registers ;size:2
;@delay UartSendByte              Allocated to registers ;size:2
;@delay UartDelay                 Allocated to registers ;size:2
;@delay UartSendInt               Allocated to registers ;size:2
;@delay delay                     Allocated to registers ;size:2
;@delay STATUSbits                Allocated to registers ;size:1
;@delay P0bits                    Allocated to registers ;size:1
;@delay P1bits                    Allocated to registers ;size:1
;@delay MCRbits                   Allocated to registers ;size:1
;@delay KBIMbits                  Allocated to registers ;size:1
;@delay PDCONbits                 Allocated to registers ;size:1
;@delay ODCONbits                 Allocated to registers ;size:1
;@delay PUCONbits                 Allocated to registers ;size:1
;@delay INTECONbits               Allocated to registers ;size:1
;@delay INTFLAGbits               Allocated to registers ;size:1
;@delay T0CRbits                  Allocated to registers ;size:1
;@delay DDR0bits                  Allocated to registers ;size:1
;@delay DDR1bits                  Allocated to registers ;size:1
;@delay TMCRbits                  Allocated to registers ;size:1
;@delay T1CRbits                  Allocated to registers ;size:1
;@delay WorkONInitStep            Allocated to registers ;size:1
;@delay LEDFlashTimes             Allocated to registers ;size:1
;@delay LEDFlashSpace             Allocated to registers ;size:1
;@delay RXDebounce                Allocated to registers ;size:1
;@delay RXCnt                     Allocated to registers ;size:1
;@delay DetectSpace               Allocated to registers ;size:1
;@delay DetectStep                Allocated to registers ;size:1
;@delay SleepCnt                  Allocated to registers ;size:1
;@delay MaxRunTimes               Allocated to registers ;size:2
;@delay MaxMotorTimes             Allocated to registers ;size:2
;@delay MotorFiveCnt              Allocated to registers ;size:1
;@delay PositionDelay             Allocated to registers ;size:1
;@delay UartStep                  Allocated to registers ;size:1
;@delay UartTemp                  Allocated to registers ;size:1
;@delay Flag1                     Allocated to registers ;size:1
;@delay Flag2                     Allocated to registers ;size:1
;@delay i                         Allocated to registers r0x100F ;size:1
;@delay INDF                      Allocated to registers ;size:1
;@delay T0CNT                     Allocated to registers ;size:1
;@delay PCL                       Allocated to registers ;size:1
;@delay STATUS                    Allocated to registers ;size:1
;@delay FSR                       Allocated to registers ;size:1
;@delay P0                        Allocated to registers ;size:1
;@delay P1                        Allocated to registers ;size:1
;@delay MCR                       Allocated to registers ;size:1
;@delay KBIM                      Allocated to registers ;size:1
;@delay PCLATH                    Allocated to registers ;size:1
;@delay PDCON                     Allocated to registers ;size:1
;@delay ODCON                     Allocated to registers ;size:1
;@delay PUCON                     Allocated to registers ;size:1
;@delay INTECON                   Allocated to registers ;size:1
;@delay INTFLAG                   Allocated to registers ;size:1
;@delay T0CR                      Allocated to registers ;size:1
;@delay DDR0                      Allocated to registers ;size:1
;@delay DDR1                      Allocated to registers ;size:1
;@delay TMCR                      Allocated to registers ;size:1
;@delay T1CR                      Allocated to registers ;size:1
;@delay T1CNT                     Allocated to registers ;size:1
;@delay T1LOAD                    Allocated to registers ;size:1
;@delay T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'delay';
;@Allocation info for local variables in function 'WorkOnInit'
;@end Allocation info for local variables in function 'WorkOnInit';
;@Allocation info for local variables in function 'Detection'
;@end Allocation info for local variables in function 'Detection';
;@Allocation info for local variables in function 'Actuation'
;@end Allocation info for local variables in function 'Actuation';
;@Allocation info for local variables in function 'ConsecutiveFive'
;@end Allocation info for local variables in function 'ConsecutiveFive';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_ad	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _ConsecutiveFive	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_ConsecutiveFive	;Function start
; 2 exit points
;	.line	403; "ad.c"	if(fConsecutiveFive)
	JBSET	_Flag1,5
	GOTO	_00357_DS_
;	.line	405; "ad.c"	fConsecutiveFive = 0;
	BCLR	_Flag1,5
;	.line	406; "ad.c"	fDetection = 1;
	BSET	_Flag1,1
_00357_DS_
	RETURN	
; exit point of _ConsecutiveFive

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Actuation	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Actuation	;Function start
; 2 exit points
;	.line	349; "ad.c"	if(fWorkON && fActuation)
	JBSET	_Flag2,1
	GOTO	_00326_DS_
	JBSET	_Flag1,3
	GOTO	_00326_DS_
;	.line	351; "ad.c"	MOSENB();
	BSET	_P1bits,0
	BSET	_P1bits,1
	BSET	_P1bits,2
;	.line	352; "ad.c"	if(fMotorT)
	JBSET	_Flag1,4
	GOTO	_00326_DS_
;	.line	354; "ad.c"	fMotorT = 0;
	BCLR	_Flag1,4
;	.line	356; "ad.c"	if(!POSITION)
	JBCLR	_P1bits,5
	GOTO	_00310_DS_
;	.line	358; "ad.c"	PositionDelay++;
	INCR	_PositionDelay
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	359; "ad.c"	if(PositionDelay>3)
	MOVAI	0x04
	RSUBAR	_PositionDelay
	JBSET	STATUS,0
	GOTO	_00310_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	361; "ad.c"	PositionDelay = 0;
	CLRR	_PositionDelay
;	.line	362; "ad.c"	fWaiteRelease = 1;
	BSET	_Flag1,6
_00310_DS_
;	.line	366; "ad.c"	if(fWaiteRelease)
	JBSET	_Flag1,6
	GOTO	_00316_DS_
;	.line	368; "ad.c"	if(POSITION)
	JBSET	_P1bits,5
	GOTO	_00316_DS_
;	.line	370; "ad.c"	PositionDelay++;
	INCR	_PositionDelay
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	371; "ad.c"	if(PositionDelay>3)
	MOVAI	0x04
	RSUBAR	_PositionDelay
	JBSET	STATUS,0
	GOTO	_00316_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	373; "ad.c"	PositionDelay = 0;
	CLRR	_PositionDelay
;	.line	374; "ad.c"	fWaiteRelease = 0;
	BCLR	_Flag1,6
;	.line	375; "ad.c"	fActuation = 0;
	BCLR	_Flag1,3
;	.line	376; "ad.c"	MOSDIS();
	BCLR	_P1bits,0
	BCLR	_P1bits,1
	BCLR	_P1bits,2
;	.line	377; "ad.c"	fDetection = 1;
	BSET	_Flag1,1
_00316_DS_
;	.line	382; "ad.c"	MaxMotorTimes++;
	INCR	_MaxMotorTimes
	JBCLR	STATUS,2
	INCR	(_MaxMotorTimes + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x1389=5001), size=2
;	.line	383; "ad.c"	if(MaxMotorTimes > 5000)
	MOVAI	0x13
	RSUBAR	(_MaxMotorTimes + 1)
	JBSET	STATUS,2
	GOTO	_00350_DS_
	MOVAI	0x89
	RSUBAR	_MaxMotorTimes
_00350_DS_
	JBSET	STATUS,0
	GOTO	_00326_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	385; "ad.c"	MaxMotorTimes = 0;
	CLRR	_MaxMotorTimes
	CLRR	(_MaxMotorTimes + 1)
;	.line	386; "ad.c"	MOSDIS();
	BCLR	_P1bits,0
	BCLR	_P1bits,1
	BCLR	_P1bits,2
;	.line	387; "ad.c"	MotorFiveCnt++;
	INCR	_MotorFiveCnt
;;unsigned compare: left < lit(0x2=2), size=1
;	.line	388; "ad.c"	if(MotorFiveCnt>=2)
	MOVAI	0x02
	RSUBAR	_MotorFiveCnt
	JBSET	STATUS,0
	GOTO	_00326_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	390; "ad.c"	MotorFiveCnt = 0;
	CLRR	_MotorFiveCnt
;	.line	391; "ad.c"	fConsecutiveFive = 1;
	BSET	_Flag1,5
;	.line	392; "ad.c"	fActuation = 0;
	BCLR	_Flag1,3
;	.line	393; "ad.c"	fDetection = 1;
	BSET	_Flag1,1
_00326_DS_
	RETURN	
; exit point of _Actuation

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Detection	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;2 compiler assigned registers:
;   r0x1011
;   r0x1012
;; Starting pCode block
_Detection	;Function start
; 2 exit points
;	.line	91; "ad.c"	if(fWorkON && fDetection)
	JBSET	_Flag2,1
	GOTO	_00243_DS_
	JBSET	_Flag1,1
	GOTO	_00243_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x10=16), size=1
;	.line	93; "ad.c"	switch(DetectStep)
	MOVAI	0x10
	RSUBAR	_DetectStep
	JBCLR	STATUS,0
	GOTO	_00238_DS_
;;genSkipc:3193: created from rifx:00CC608C
	MOVAI	_00302_DS_
	ADDAR	_DetectStep
	MOVRA	PCL
_00302_DS_
	GOTO	_00163_DS_
	GOTO	_00167_DS_
	GOTO	_00172_DS_
	GOTO	_00176_DS_
	GOTO	_00181_DS_
	GOTO	_00185_DS_
	GOTO	_00190_DS_
	GOTO	_00194_DS_
	GOTO	_00199_DS_
	GOTO	_00203_DS_
	GOTO	_00208_DS_
	GOTO	_00212_DS_
	GOTO	_00217_DS_
	GOTO	_00221_DS_
	GOTO	_00226_DS_
	GOTO	_00230_DS_
_00163_DS_
;	.line	96; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	97; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	98; "ad.c"	delay();
	CALL	_delay
;	.line	99; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00165_DS_
;	.line	101; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	102; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	103; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00165_DS_
;	.line	107; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	109; "ad.c"	break;
	GOTO	_00243_DS_
_00167_DS_
;	.line	111; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	113; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	114; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	115; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	117; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	118; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	121; "ad.c"	break;
	GOTO	_00243_DS_
_00172_DS_
;	.line	123; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	124; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	125; "ad.c"	delay();
	CALL	_delay
;	.line	126; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00174_DS_
;	.line	128; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	129; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	130; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00174_DS_
;	.line	134; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	136; "ad.c"	break;
	GOTO	_00243_DS_
_00176_DS_
;	.line	138; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	140; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	141; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	142; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	144; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	145; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	148; "ad.c"	break;
	GOTO	_00243_DS_
_00181_DS_
;	.line	150; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	151; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	152; "ad.c"	delay();
	CALL	_delay
;	.line	153; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00183_DS_
;	.line	155; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	156; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	157; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00183_DS_
;	.line	161; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	163; "ad.c"	break;
	GOTO	_00243_DS_
_00185_DS_
;	.line	165; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	167; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	168; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	169; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	171; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	172; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	175; "ad.c"	break;
	GOTO	_00243_DS_
_00190_DS_
;	.line	177; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	178; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	179; "ad.c"	delay();
	CALL	_delay
;	.line	180; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00192_DS_
;	.line	182; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	183; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	184; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00192_DS_
;	.line	188; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	190; "ad.c"	break;
	GOTO	_00243_DS_
_00194_DS_
;	.line	192; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	194; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	195; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	196; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	198; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	199; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	202; "ad.c"	break;
	GOTO	_00243_DS_
_00199_DS_
;	.line	204; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	205; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	206; "ad.c"	delay();
	CALL	_delay
;	.line	207; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00201_DS_
;	.line	209; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	210; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	211; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00201_DS_
;	.line	215; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	217; "ad.c"	break;
	GOTO	_00243_DS_
_00203_DS_
;	.line	219; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	221; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	222; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	223; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	225; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	226; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	229; "ad.c"	break;
	GOTO	_00243_DS_
_00208_DS_
;	.line	231; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	232; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	233; "ad.c"	delay();
	CALL	_delay
;	.line	234; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00210_DS_
;	.line	236; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	237; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	238; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00210_DS_
;	.line	242; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	244; "ad.c"	break;
	GOTO	_00243_DS_
_00212_DS_
;	.line	246; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	248; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	249; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	250; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	252; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	253; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	256; "ad.c"	break;
	GOTO	_00243_DS_
_00217_DS_
;	.line	258; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	259; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	260; "ad.c"	delay();
	CALL	_delay
;	.line	261; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00219_DS_
;	.line	263; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	264; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	265; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
	GOTO	_00243_DS_
_00219_DS_
;	.line	269; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	271; "ad.c"	break;
	GOTO	_00243_DS_
_00221_DS_
;	.line	273; "ad.c"	if(fDetectionT)
	JBSET	_Flag1,2
	GOTO	_00243_DS_
;	.line	275; "ad.c"	fDetectionT = 0;
	BCLR	_Flag1,2
;	.line	276; "ad.c"	DetectSpace++;
	INCR	_DetectSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x15=21), size=1
;	.line	277; "ad.c"	if(DetectSpace>20)
	MOVAI	0x15
	RSUBAR	_DetectSpace
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	279; "ad.c"	DetectSpace = 0;
	CLRR	_DetectSpace
;	.line	280; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	283; "ad.c"	break;
	GOTO	_00243_DS_
_00226_DS_
;	.line	285; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	286; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	287; "ad.c"	delay();
	CALL	_delay
;	.line	288; "ad.c"	if(!RX)
	JBCLR	_P0bits,0
	GOTO	_00228_DS_
;	.line	290; "ad.c"	DetectStep++;
	INCR	_DetectStep
;	.line	291; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	292; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
;	.line	293; "ad.c"	fDetection = 0;
	BCLR	_Flag1,1
;	.line	294; "ad.c"	fActuation = 1;
	BSET	_Flag1,3
;	.line	295; "ad.c"	MaxRunTimes++;
	INCR	_MaxRunTimes
	JBCLR	STATUS,2
	INCR	(_MaxRunTimes + 1)
;	.line	296; "ad.c"	MaxMotorTimes = 0;
	CLRR	_MaxMotorTimes
	CLRR	(_MaxMotorTimes + 1)
;	.line	297; "ad.c"	fWaiteRelease = 0;
	BCLR	_Flag1,6
	GOTO	_00243_DS_
_00228_DS_
;	.line	301; "ad.c"	DetectStep = 15;
	MOVAI	0x0f
	MOVRA	_DetectStep
;	.line	303; "ad.c"	break;
	GOTO	_00243_DS_
_00230_DS_
;	.line	306; "ad.c"	P17=!P17;
	CLRR	r0x1011
	JBCLR	_P1bits,7
	INCR	r0x1011
	MOVAR	r0x1011
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1011
;;1	MOVRA	r0x1012
;;99	MOVAR	r0x1012
	RRAR	r0x1011
	JBSET	STATUS,0
	BCLR	_P1bits,7
	JBCLR	STATUS,0
	BSET	_P1bits,7
;	.line	307; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	308; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
;	.line	309; "ad.c"	if(fSleepT)
	JBSET	_Flag1,7
	GOTO	_00243_DS_
;	.line	311; "ad.c"	fSleepT = 0;
	BCLR	_Flag1,7
;	.line	312; "ad.c"	SleepCnt++;
	INCR	_SleepCnt
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xC9=201), size=1
;	.line	313; "ad.c"	if(SleepCnt>200)
	MOVAI	0xc9
	RSUBAR	_SleepCnt
	JBSET	STATUS,0
	GOTO	_00243_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	315; "ad.c"	SleepCnt = 0;
	CLRR	_SleepCnt
;	.line	316; "ad.c"	KBIM =   BIN(0,0,0,0,1,0,0,0);		
	MOVAI	0x08
	MOVRA	_KBIM
;	.line	317; "ad.c"	MCR = BIN(0,0,0,0,1,0,0,0);
	MOVAI	0x08
	MOVRA	_MCR
;	.line	318; "ad.c"	ClrWdt();
	clrwdt
;	.line	320; "ad.c"	Stop();
	stop
;	.line	322; "ad.c"	if(!PD)
	JBCLR	_STATUSbits,3
	GOTO	_00232_DS_
;	.line	324; "ad.c"	DetectStep=0;
	CLRR	_DetectStep
;	.line	325; "ad.c"	SleepCnt = 0;	
	CLRR	_SleepCnt
	GOTO	_00233_DS_
_00232_DS_
;	.line	329; "ad.c"	SleepCnt = 0;
	CLRR	_SleepCnt
_00233_DS_
;	.line	331; "ad.c"	MCR = 0X00;
	CLRR	_MCR
;	.line	332; "ad.c"	KBIM = BIN(0,0,0,0,0,0,0,1);
	MOVAI	0x01
	MOVRA	_KBIM
;	.line	333; "ad.c"	PDCON  = BIN(1,1,0,0,0,0,0,0);
	MOVAI	0xc0
	MOVRA	_PDCON
;	.line	334; "ad.c"	ClrWdt();
	clrwdt
;	.line	338; "ad.c"	break;
	GOTO	_00243_DS_
_00238_DS_
;	.line	339; "ad.c"	default:DetectStep = 15;break;
	MOVAI	0x0f
	MOVRA	_DetectStep
_00243_DS_
;	.line	342; "ad.c"	}
	RETURN	
; exit point of _Detection

;***
;  pBlock Stats: dbName = C
;***
;entry:  _WorkOnInit	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1013
;   r0x1014
;; Starting pCode block
_WorkOnInit	;Function start
; 2 exit points
;	.line	14; "ad.c"	if(fWorkON && fWorkONInit)
	JBSET	_Flag2,1
	GOTO	_00135_DS_
	JBSET	_Flag2,2
	GOTO	_00135_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
;	.line	16; "ad.c"	switch(WorkONInitStep)
	MOVAI	0x03
	RSUBAR	_WorkONInitStep
	JBCLR	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3193: created from rifx:00CC608C
	MOVAI	_00158_DS_
	ADDAR	_WorkONInitStep
	MOVRA	PCL
_00158_DS_
	GOTO	_00112_DS_
	GOTO	_00119_DS_
	GOTO	_00129_DS_
_00112_DS_
;	.line	19; "ad.c"	if(fWorkONInitT)
	JBSET	_Flag1,0
	GOTO	_00135_DS_
;	.line	21; "ad.c"	fWorkONInitT = 0;
	BCLR	_Flag1,0
;	.line	22; "ad.c"	LEDFlashSpace++;
	INCR	_LEDFlashSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x65=101), size=1
;	.line	23; "ad.c"	if(LEDFlashSpace> 100)
	MOVAI	0x65
	RSUBAR	_LEDFlashSpace
	JBSET	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	25; "ad.c"	LEDFlashSpace = 0;
	CLRR	_LEDFlashSpace
;	.line	26; "ad.c"	LED1 = !LED1;
	CLRR	r0x1013
	JBCLR	_P0bits,1
	INCR	r0x1013
	MOVAR	r0x1013
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1013
	MOVRA	r0x1014
;;103	MOVAR	r0x1014
	RRAR	r0x1013
	JBSET	STATUS,0
	BCLR	_P0bits,1
	JBCLR	STATUS,0
	BSET	_P0bits,1
;	.line	27; "ad.c"	LED2 = !LED2;
	CLRR	r0x1013
	JBCLR	_P0bits,2
	INCR	r0x1013
	MOVAR	r0x1013
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1013
	MOVRA	r0x1014
;;102	MOVAR	r0x1014
	RRAR	r0x1013
	JBSET	STATUS,0
	BCLR	_P0bits,2
	JBCLR	STATUS,0
	BSET	_P0bits,2
;	.line	28; "ad.c"	LEDFlashTimes++;
	INCR	_LEDFlashTimes
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	29; "ad.c"	if(LEDFlashTimes > 3)
	MOVAI	0x04
	RSUBAR	_LEDFlashTimes
	JBSET	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	31; "ad.c"	LEDFlashTimes = 0;
	CLRR	_LEDFlashTimes
;	.line	32; "ad.c"	WorkONInitStep++;
	INCR	_WorkONInitStep
;	.line	36; "ad.c"	break;
	GOTO	_00135_DS_
_00119_DS_
;	.line	38; "ad.c"	RXENB();
	BCLR	_P0bits,1
;	.line	39; "ad.c"	TXENB();
	BCLR	_P1bits,4
	BCLR	_P1bits,3
;	.line	41; "ad.c"	if(fWorkONInitT)
	JBSET	_Flag1,0
	GOTO	_00135_DS_
;	.line	43; "ad.c"	fWorkONInitT = 0;
	BCLR	_Flag1,0
;	.line	44; "ad.c"	LEDFlashSpace++;
	INCR	_LEDFlashSpace
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xFB=251), size=1
;	.line	45; "ad.c"	if(LEDFlashSpace>250)
	MOVAI	0xfb
	RSUBAR	_LEDFlashSpace
	JBSET	STATUS,0
	GOTO	_00121_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	47; "ad.c"	LEDFlashSpace = 0;
	CLRR	_LEDFlashSpace
;	.line	48; "ad.c"	LED1 = !LED1;
	CLRR	r0x1013
	JBCLR	_P0bits,1
	INCR	r0x1013
	MOVAR	r0x1013
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1013
	MOVRA	r0x1014
;;101	MOVAR	r0x1014
	RRAR	r0x1013
	JBSET	STATUS,0
	BCLR	_P0bits,1
	JBCLR	STATUS,0
	BSET	_P0bits,1
;	.line	49; "ad.c"	LED2 = !LED2;
	CLRR	r0x1013
	JBCLR	_P0bits,2
	INCR	r0x1013
	MOVAR	r0x1013
	MOVAI	0x00
	JBCLR	STATUS,2
	MOVAI	0x01
	MOVRA	r0x1013
	MOVRA	r0x1014
;;100	MOVAR	r0x1014
	RRAR	r0x1013
	JBSET	STATUS,0
	BCLR	_P0bits,2
	JBCLR	STATUS,0
	BSET	_P0bits,2
_00121_DS_
;	.line	51; "ad.c"	if( RX )
	JBSET	_P0bits,0
	GOTO	_00125_DS_
;	.line	53; "ad.c"	RXDebounce++;
	INCR	_RXDebounce
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	54; "ad.c"	if(RXDebounce > 3)
	MOVAI	0x04
	RSUBAR	_RXDebounce
	JBSET	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3193: created from rifx:00CC608C
;	.line	56; "ad.c"	RXDebounce = 0;
	CLRR	_RXDebounce
;	.line	57; "ad.c"	WorkONInitStep++;
	INCR	_WorkONInitStep
;	.line	59; "ad.c"	RXDIS();
	BSET	_P0bits,1
;	.line	60; "ad.c"	TXDIS();
	BSET	_P1bits,4
	BSET	_P1bits,3
;	.line	61; "ad.c"	LEDOFF();
	BSET	_P0bits,1
	BSET	_P0bits,2
	GOTO	_00135_DS_
_00125_DS_
;	.line	66; "ad.c"	RXDebounce = 0;
	CLRR	_RXDebounce
;	.line	69; "ad.c"	break;
	GOTO	_00135_DS_
_00129_DS_
;	.line	72; "ad.c"	MCR =   BIN(0,0,0,0,1,0,0,0);		
	MOVAI	0x08
	MOVRA	_MCR
;	.line	73; "ad.c"	KBIM = BIN(0,0,0,0,1,0,0,0);
	MOVAI	0x08
	MOVRA	_KBIM
;	.line	74; "ad.c"	ClrWdt();
	clrwdt
;	.line	76; "ad.c"	Stop();
	stop
;	.line	77; "ad.c"	KBIM = 0X00;
	CLRR	_KBIM
;	.line	78; "ad.c"	MCR = BIN(0,0,0,0,0,0,0,1);
	MOVAI	0x01
	MOVRA	_MCR
;	.line	79; "ad.c"	PUCON  = BIN(1,1,0,0,0,0,0,0);
	MOVAI	0xc0
	MOVRA	_PUCON
;	.line	80; "ad.c"	fWorkONInit = 0;
	BCLR	_Flag2,2
;	.line	81; "ad.c"	fDetection = 1;
	BSET	_Flag1,1
;	.line	82; "ad.c"	DetectStep = 0;
	CLRR	_DetectStep
_00135_DS_
;	.line	85; "ad.c"	}
	RETURN	
; exit point of _WorkOnInit

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delay	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x100F
;   r0x1010
;; Starting pCode block
_delay	;Function start
; 2 exit points
;	.line	10; "ad.c"	for(i=0;i<20;i++);
	MOVAI	0x14
	MOVRA	r0x100F
_00107_DS_
	MOVAR	r0x100F
	MOVRA	r0x1010
	DECAR	r0x1010
	MOVRA	r0x100F
	MOVAI	0x00
	ORAR	r0x100F
	JBSET	STATUS,2
	GOTO	_00107_DS_
	RETURN	
; exit point of _delay


;	code size estimation:
;	  474+    0 =   474 instructions (  948 byte)

	end
