;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.0 (May  2 2018) (MINGW32)
; This file was generated Thu May 03 10:21:47 2018
;--------------------------------------------------------
; MC30 port for the RISC core
;--------------------------------------------------------
;	.file	"6080_bug.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_INDFbits
	extern	_PCLbits
	extern	_STATUSbits
	extern	_FSRbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PCLATHbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_TM0CRbits
	extern	_T0CNTbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_T1CRbits
	extern	_PWMCRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DATA0bits
	extern	_T1DATA1bits
	extern	_T1DATA2bits
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
	extern	_PWMCR
	extern	_T1DATA1
	extern	_T1DATA2
	extern	_TM0CR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA0
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_Sys_Init
	global	_int_isr
	global	_delay640us
	global	_SY_1
	global	_SY_2
	global	_mod3
	global	_mod4
	global	_mod5
	global	_IC_SLEEP
	global	_main
	global	_Flag
	global	_Flag1
	global	_timcd
	global	_ABuf
	global	_StatusBuf
	global	_work
	global	_soudbuff
	global	_buff
	global	_time
	global	_time1
	global	_zstime
	global	_wxbuff
	global	_KeyBuff
	global	_sleeptime
	global	_tne5
	global	_tne6
	global	_SY1
	global	_SY2

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_6080_bug_0	udata
_Flag	res	1

UD_6080_bug_1	udata
_Flag1	res	1

UD_6080_bug_2	udata
_timcd	res	2

UD_6080_bug_3	udata
_ABuf	res	1

UD_6080_bug_4	udata
_StatusBuf	res	1

UD_6080_bug_5	udata
_work	res	1

UD_6080_bug_6	udata
_soudbuff	res	1

UD_6080_bug_7	udata
_buff	res	1

UD_6080_bug_8	udata
_time	res	2

UD_6080_bug_9	udata
_time1	res	2

UD_6080_bug_10	udata
_zstime	res	2

UD_6080_bug_11	udata
_wxbuff	res	2

UD_6080_bug_12	udata
_KeyBuff	res	2

UD_6080_bug_13	udata
_sleeptime	res	1

UD_6080_bug_14	udata
_tne5	res	2

UD_6080_bug_15	udata
_tne6	res	2

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_6080_bug_0	udata
r0x1017	res	1
r0x1016	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_6080_bug_0	code
_SY1
	retai 0x9a
	retai 0x40
	retai 0x8b
	retai 0x36
	retai 0x76
	retai 0x2e
	retai 0x67
	retai 0x25
	retai 0x52
	retai 0x1c
	retai 0x8d
	retai 0x4d


ID_6080_bug_1	code
_SY2
	retai 0xda
	retai 0x18
	retai 0x39
	retai 0x18
	retai 0xd8
	retai 0xb7
	retai 0x39
	retai 0x18
	retai 0x3b
	retai 0x19


;@Allocation info for local variables in function 'Sys_Init'
;@Sys_Init Sys_Init                  Allocated to registers ;size:2
;@Sys_Init INDFbits                  Allocated to registers ;size:1
;@Sys_Init PCLbits                   Allocated to registers ;size:1
;@Sys_Init STATUSbits                Allocated to registers ;size:1
;@Sys_Init FSRbits                   Allocated to registers ;size:1
;@Sys_Init P0bits                    Allocated to registers ;size:1
;@Sys_Init P1bits                    Allocated to registers ;size:1
;@Sys_Init MCRbits                   Allocated to registers ;size:1
;@Sys_Init KBIMbits                  Allocated to registers ;size:1
;@Sys_Init PCLATHbits                Allocated to registers ;size:1
;@Sys_Init PDCONbits                 Allocated to registers ;size:1
;@Sys_Init ODCONbits                 Allocated to registers ;size:1
;@Sys_Init PUCONbits                 Allocated to registers ;size:1
;@Sys_Init INTECONbits               Allocated to registers ;size:1
;@Sys_Init INTFLAGbits               Allocated to registers ;size:1
;@Sys_Init T0CRbits                  Allocated to registers ;size:1
;@Sys_Init TM0CRbits                 Allocated to registers ;size:1
;@Sys_Init T0CNTbits                 Allocated to registers ;size:1
;@Sys_Init DDR0bits                  Allocated to registers ;size:1
;@Sys_Init DDR1bits                  Allocated to registers ;size:1
;@Sys_Init T1CRbits                  Allocated to registers ;size:1
;@Sys_Init PWMCRbits                 Allocated to registers ;size:1
;@Sys_Init T1CNTbits                 Allocated to registers ;size:1
;@Sys_Init T1LOADbits                Allocated to registers ;size:1
;@Sys_Init T1DATA0bits               Allocated to registers ;size:1
;@Sys_Init T1DATA1bits               Allocated to registers ;size:1
;@Sys_Init T1DATA2bits               Allocated to registers ;size:1
;@Sys_Init Flag                      Allocated to registers ;size:1
;@Sys_Init Flag1                     Allocated to registers ;size:1
;@Sys_Init timcd                     Allocated to registers ;size:2
;@Sys_Init ABuf                      Allocated to registers ;size:1
;@Sys_Init StatusBuf                 Allocated to registers ;size:1
;@Sys_Init work                      Allocated to registers ;size:1
;@Sys_Init soudbuff                  Allocated to registers ;size:1
;@Sys_Init buff                      Allocated to registers ;size:1
;@Sys_Init time                      Allocated to registers ;size:2
;@Sys_Init time1                     Allocated to registers ;size:2
;@Sys_Init zstime                    Allocated to registers ;size:2
;@Sys_Init wxbuff                    Allocated to registers ;size:2
;@Sys_Init KeyBuff                   Allocated to registers ;size:2
;@Sys_Init INDF                      Allocated to registers ;size:1
;@Sys_Init T0CNT                     Allocated to registers ;size:1
;@Sys_Init PCL                       Allocated to registers ;size:1
;@Sys_Init STATUS                    Allocated to registers ;size:1
;@Sys_Init FSR                       Allocated to registers ;size:1
;@Sys_Init P0                        Allocated to registers ;size:1
;@Sys_Init P1                        Allocated to registers ;size:1
;@Sys_Init MCR                       Allocated to registers ;size:1
;@Sys_Init KBIM                      Allocated to registers ;size:1
;@Sys_Init PCLATH                    Allocated to registers ;size:1
;@Sys_Init PDCON                     Allocated to registers ;size:1
;@Sys_Init ODCON                     Allocated to registers ;size:1
;@Sys_Init PUCON                     Allocated to registers ;size:1
;@Sys_Init INTECON                   Allocated to registers ;size:1
;@Sys_Init INTFLAG                   Allocated to registers ;size:1
;@Sys_Init T0CR                      Allocated to registers ;size:1
;@Sys_Init DDR0                      Allocated to registers ;size:1
;@Sys_Init DDR1                      Allocated to registers ;size:1
;@Sys_Init PWMCR                     Allocated to registers ;size:1
;@Sys_Init T1DATA1                   Allocated to registers ;size:1
;@Sys_Init T1DATA2                   Allocated to registers ;size:1
;@Sys_Init TM0CR                     Allocated to registers ;size:1
;@Sys_Init T1CR                      Allocated to registers ;size:1
;@Sys_Init T1CNT                     Allocated to registers ;size:1
;@Sys_Init T1LOAD                    Allocated to registers ;size:1
;@Sys_Init T1DATA0                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Sys_Init';
;@Allocation info for local variables in function 'int_isr'
;@end Allocation info for local variables in function 'int_isr';
;@Allocation info for local variables in function 'delay640us'
;@delay640us i1                        Allocated to registers ;size:2
;@delay640us i                         Allocated to registers r0x1017 r0x1016 ;size:2
;@end Allocation info for local variables in function 'delay640us';
;@Allocation info for local variables in function 'SY_1'
;@SY_1 i                         Allocated to registers r0x1016 ;size:1
;@end Allocation info for local variables in function 'SY_1';
;@Allocation info for local variables in function 'SY_2'
;@SY_2 i                         Allocated to registers r0x1016 ;size:1
;@end Allocation info for local variables in function 'SY_2';
;@Allocation info for local variables in function 'mod3'
;@mod3 i                         Allocated to registers r0x101A ;size:1
;@end Allocation info for local variables in function 'mod3';
;@Allocation info for local variables in function 'mod4'
;@end Allocation info for local variables in function 'mod4';
;@Allocation info for local variables in function 'mod5'
;@mod5 i                         Allocated to registers r0x101A ;size:1
;@end Allocation info for local variables in function 'mod5';
;@Allocation info for local variables in function 'IC_SLEEP'
;@end Allocation info for local variables in function 'IC_SLEEP';
;@Allocation info for local variables in function 'main'
;@end Allocation info for local variables in function 'main';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	_main
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x8
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _int_isr	;Function start
; 0 exit points
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	73; "6080_bug.c"	__endasm;     
	movra _ABuf
	swapar _STATUS
	movra _StatusBuf
	
;	.line	75; "6080_bug.c"	if(T0IF)
	JBSET	_INTFLAGbits,0
	GOTO	_00165_DS_
;	.line	77; "6080_bug.c"	T0IF = 0;
	BCLR	_INTFLAGbits,0
;	.line	78; "6080_bug.c"	T0CNT = 96;   
	MOVAI	0x60
	MOVRA	_T0CNT
;	.line	79; "6080_bug.c"	if((!CHRG)&&STDBY)
	JBCLR	_P1bits,6
	GOTO	_00135_DS_
	JBSET	_P1bits,7
	GOTO	_00135_DS_
;	.line	81; "6080_bug.c"	timcd++;
	INCR	_timcd
	JBCLR	STATUS,2
	INCR	(_timcd + 1)
;;unsigned compare: left < lit(0xF3C=3900), size=2
;	.line	82; "6080_bug.c"	if(timcd<3900)
	MOVAI	0x0f
	RSUBAR	(_timcd + 1)
	JBSET	STATUS,2
	GOTO	_00267_DS_
	MOVAI	0x3c
	RSUBAR	_timcd
_00267_DS_
	JBCLR	STATUS,0
	GOTO	_00110_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	84; "6080_bug.c"	flag_cd = 1;   
	BSET	_Flag1,1
	GOTO	_00111_DS_
_00110_DS_
;	.line	88; "6080_bug.c"	timcd = 3900;
	MOVAI	0x3c
	MOVRA	_timcd
	MOVAI	0x0f
	MOVRA	(_timcd + 1)
;	.line	89; "6080_bug.c"	flag_cd = 0;
	BCLR	_Flag1,1
_00111_DS_
;	.line	91; "6080_bug.c"	LED1 = 1;
	BSET	_P0bits,0
;	.line	92; "6080_bug.c"	LED2 = 0;
	BCLR	_P0bits,2
;	.line	93; "6080_bug.c"	LVDEN = 1;
	BSET	_MCRbits,0
;	.line	94; "6080_bug.c"	FALG_LVD = 0;
	BCLR	_Flag1,0
	GOTO	_00136_DS_
_00135_DS_
;	.line	96; "6080_bug.c"	else if((!STDBY)&&CHRG)
	JBCLR	_P1bits,7
	GOTO	_00131_DS_
	JBSET	_P1bits,6
	GOTO	_00131_DS_
;	.line	98; "6080_bug.c"	LED1 = 0;
	BCLR	_P0bits,0
;	.line	99; "6080_bug.c"	LED2 = 1;   
	BSET	_P0bits,2
;	.line	100; "6080_bug.c"	FALG_LVD = 0;LVDEN = 1;        	       	
	BCLR	_Flag1,0
	BSET	_MCRbits,0
	GOTO	_00136_DS_
_00131_DS_
;	.line	104; "6080_bug.c"	timcd = 0;
	CLRR	_timcd
	CLRR	(_timcd + 1)
;	.line	105; "6080_bug.c"	flag_cd = 0;           	       	
	BCLR	_Flag1,1
;	.line	106; "6080_bug.c"	if(flag_kai || FLAG_SOUND) 
	JBCLR	_Flag,2
	GOTO	_00127_DS_
	JBSET	_Flag,4
	GOTO	_00136_DS_
_00127_DS_
;	.line	108; "6080_bug.c"	zstime++;
	INCR	_zstime
	JBCLR	STATUS,2
	INCR	(_zstime + 1)
;	.line	109; "6080_bug.c"	if(LVDF)
	JBSET	_MCRbits,5
	GOTO	_00113_DS_
;	.line	111; "6080_bug.c"	FALG_LVD = 1;
	BSET	_Flag1,0
;	.line	112; "6080_bug.c"	LVDEN = 0;     	       	       	       	
	BCLR	_MCRbits,0
_00113_DS_
;	.line	114; "6080_bug.c"	if(FALG_LVD)
	JBSET	_Flag1,0
	GOTO	_00125_DS_
;	.line	116; "6080_bug.c"	LED2 = 0;
	BCLR	_P0bits,2
;;unsigned compare: left < lit(0xC35=3125), size=2
;	.line	117; "6080_bug.c"	if(zstime>=3125)zstime = 0;
	MOVAI	0x0c
	RSUBAR	(_zstime + 1)
	JBSET	STATUS,2
	GOTO	_00268_DS_
	MOVAI	0x35
	RSUBAR	_zstime
_00268_DS_
	JBSET	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	_zstime
	CLRR	(_zstime + 1)
;;unsigned compare: left < lit(0x61A=1562), size=2
_00115_DS_
;	.line	118; "6080_bug.c"	if(zstime<1562)LED1 = 1;       	       	       	       	       	       	       	       	
	MOVAI	0x06
	RSUBAR	(_zstime + 1)
	JBSET	STATUS,2
	GOTO	_00269_DS_
	MOVAI	0x1a
	RSUBAR	_zstime
_00269_DS_
	JBCLR	STATUS,0
	GOTO	_00117_DS_
;;genSkipc:3195: created from rifx:00DE608C
	BSET	_P0bits,0
	GOTO	_00136_DS_
_00117_DS_
;	.line	119; "6080_bug.c"	else LED1 = 0; 
	BCLR	_P0bits,0
	GOTO	_00136_DS_
_00125_DS_
;	.line	123; "6080_bug.c"	LED1 = 0;
	BCLR	_P0bits,0
;;unsigned compare: left < lit(0x1250=4688), size=2
;	.line	124; "6080_bug.c"	if(zstime>=4688)zstime = 0;
	MOVAI	0x12
	RSUBAR	(_zstime + 1)
	JBSET	STATUS,2
	GOTO	_00270_DS_
	MOVAI	0x50
	RSUBAR	_zstime
_00270_DS_
	JBSET	STATUS,0
	GOTO	_00120_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	_zstime
	CLRR	(_zstime + 1)
;;unsigned compare: left < lit(0x928=2344), size=2
_00120_DS_
;	.line	125; "6080_bug.c"	if(zstime<2344)LED2 = 1;       	       	       	       	       	       	       	       	       	       	       	       	       	 
	MOVAI	0x09
	RSUBAR	(_zstime + 1)
	JBSET	STATUS,2
	GOTO	_00271_DS_
	MOVAI	0x28
	RSUBAR	_zstime
_00271_DS_
	JBCLR	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3195: created from rifx:00DE608C
	BSET	_P0bits,2
	GOTO	_00136_DS_
_00122_DS_
;	.line	126; "6080_bug.c"	else LED2 = 0; 
	BCLR	_P0bits,2
_00136_DS_
;	.line	133; "6080_bug.c"	if(!flag_cd)
	JBCLR	_Flag1,1
	GOTO	_00165_DS_
;	.line	135; "6080_bug.c"	if(!KEY2)
	JBCLR	_P1bits,4
	GOTO	_00160_DS_
;	.line	137; "6080_bug.c"	buff++;
	INCR	_buff
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x30=48), size=1
;	.line	138; "6080_bug.c"	if(buff>47)
	MOVAI	0x30
	RSUBAR	_buff
	JBSET	STATUS,0
	GOTO	_00165_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	140; "6080_bug.c"	buff = 48;
	MOVAI	0x30
	MOVRA	_buff
;	.line	141; "6080_bug.c"	FLAG_SOUND = 1;                	       	       	       	       	       	
	BSET	_Flag,4
;	.line	142; "6080_bug.c"	flag_640us = 1;
	BSET	_Flag,1
;	.line	143; "6080_bug.c"	time1++;
	INCR	_time1
	JBCLR	STATUS,2
	INCR	(_time1 + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x351B=13595), size=2
;	.line	144; "6080_bug.c"	if(time1>13594)
	MOVAI	0x35
	RSUBAR	(_time1 + 1)
	JBSET	STATUS,2
	GOTO	_00273_DS_
	MOVAI	0x1b
	RSUBAR	_time1
_00273_DS_
	JBSET	STATUS,0
	GOTO	_00142_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	146; "6080_bug.c"	time1 = 13594;
	MOVAI	0x1a
	MOVRA	_time1
	MOVAI	0x35
	MOVRA	(_time1 + 1)
;	.line	147; "6080_bug.c"	FLAG_1 = 0;
	BCLR	_Flag,6
;	.line	148; "6080_bug.c"	FLAG_2 = 1;
	BSET	_Flag,7
	GOTO	_00143_DS_
;;unsigned compare: left < lit(0x1A8D=6797), size=2
_00142_DS_
;	.line	150; "6080_bug.c"	else if(time1<6797)
	MOVAI	0x1a
	RSUBAR	(_time1 + 1)
	JBSET	STATUS,2
	GOTO	_00274_DS_
	MOVAI	0x8d
	RSUBAR	_time1
_00274_DS_
	JBCLR	STATUS,0
	GOTO	_00139_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	152; "6080_bug.c"	FLAG_1 = 0;
	BCLR	_Flag,6
;	.line	153; "6080_bug.c"	FLAG_2 = 0;
	BCLR	_Flag,7
	GOTO	_00143_DS_
_00139_DS_
;	.line	157; "6080_bug.c"	FLAG_1 = 1;
	BSET	_Flag,6
;	.line	158; "6080_bug.c"	FLAG_2 = 0;
	BCLR	_Flag,7
_00143_DS_
;	.line	160; "6080_bug.c"	time++;        	       	       	       	
	INCR	_time
	JBCLR	STATUS,2
	INCR	(_time + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xD5=213), size=2
;	.line	161; "6080_bug.c"	if(time>212)time = 0;
	MOVAI	0x00
	RSUBAR	(_time + 1)
	JBSET	STATUS,2
	GOTO	_00275_DS_
	MOVAI	0xd5
	RSUBAR	_time
_00275_DS_
	JBSET	STATUS,0
	GOTO	_00148_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	_time
	CLRR	(_time + 1)
	GOTO	_00149_DS_
;;unsigned compare: left < lit(0x6A=106), size=2
_00148_DS_
;	.line	162; "6080_bug.c"	else if(time<106)LED = 1;
	MOVAI	0x00
	RSUBAR	(_time + 1)
	JBSET	STATUS,2
	GOTO	_00276_DS_
	MOVAI	0x6a
	RSUBAR	_time
_00276_DS_
	JBCLR	STATUS,0
	GOTO	_00145_DS_
;;genSkipc:3195: created from rifx:00DE608C
	BSET	_P1bits,0
	GOTO	_00149_DS_
_00145_DS_
;	.line	163; "6080_bug.c"	else LED = 0;          	       	
	BCLR	_P1bits,0
_00149_DS_
;	.line	164; "6080_bug.c"	OUT = 0;       	       	       	       	               	       	       	       	       	       	       	       	       	       	               	       	               	  
	BCLR	_P1bits,1
	GOTO	_00165_DS_
_00160_DS_
;	.line	169; "6080_bug.c"	if(soudbuff == 1)time1 = 0;
	MOVAR	_soudbuff
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00155_DS_
	CLRR	_time1
	CLRR	(_time1 + 1)
	GOTO	_00156_DS_
_00155_DS_
;	.line	170; "6080_bug.c"	else if(soudbuff == 2)time1 = 6797;                    	       	       	       	       	               	
	MOVAR	_soudbuff
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00156_DS_
	MOVAI	0x8d
	MOVRA	_time1
	MOVAI	0x1a
	MOVRA	(_time1 + 1)
_00156_DS_
;	.line	171; "6080_bug.c"	buff = 0;
	CLRR	_buff
;	.line	172; "6080_bug.c"	FLAG_SOUND = 0;        	       	       	
	BCLR	_Flag,4
;	.line	173; "6080_bug.c"	OUT = 1;       	       	       	               	
	BSET	_P1bits,1
;	.line	174; "6080_bug.c"	time = 0;
	CLRR	_time
	CLRR	(_time + 1)
;	.line	175; "6080_bug.c"	if(!flag_kai)LED = 0;
	JBCLR	_Flag,2
	GOTO	_00158_DS_
	BCLR	_P1bits,0
_00158_DS_
;	.line	176; "6080_bug.c"	BZV = 0;
	BCLR	_P1bits,2
;	.line	177; "6080_bug.c"	T1DATA0 = 0;           	       	       	       	       	       	       	       	               	       	
	CLRR	_T1DATA0
_00165_DS_
;	.line	181; "6080_bug.c"	if(T1IF)
	JBSET	_TM0CRbits,0
	GOTO	_00192_DS_
;	.line	183; "6080_bug.c"	T1IF = 0;
	BCLR	_TM0CRbits,0
;	.line	184; "6080_bug.c"	flag_pwm = 1;
	BSET	_Flag,0
;	.line	185; "6080_bug.c"	if(!FLAG_SOUND)
	JBCLR	_Flag,4
	GOTO	_00192_DS_
;	.line	187; "6080_bug.c"	flag_256us = 1;        	       	       	       	
	BSET	_Flag,5
;	.line	188; "6080_bug.c"	wxbuff++; 
	INCR	_wxbuff
	JBCLR	STATUS,2
	INCR	(_wxbuff + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4C4C=19532), size=2
;	.line	189; "6080_bug.c"	if(wxbuff>19531)wxbuff = 19531;
	MOVAI	0x4c
	RSUBAR	(_wxbuff + 1)
	JBSET	STATUS,2
	GOTO	_00277_DS_
	MOVAI	0x4c
	RSUBAR	_wxbuff
_00277_DS_
	JBSET	STATUS,0
	GOTO	_00167_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAI	0x4b
	MOVRA	_wxbuff
	MOVAI	0x4c
	MOVRA	(_wxbuff + 1)
_00167_DS_
;	.line	190; "6080_bug.c"	if(!flag_cd)
	JBCLR	_Flag1,1
	GOTO	_00192_DS_
;	.line	192; "6080_bug.c"	if(!KEY1)
	JBCLR	_P1bits,5
	GOTO	_00185_DS_
;	.line	194; "6080_bug.c"	KeyBuff++;
	INCR	_KeyBuff
	JBCLR	STATUS,2
	INCR	(_KeyBuff + 1)
;;unsigned compare: left < lit(0x16E3=5859), size=2
;	.line	195; "6080_bug.c"	if(KeyBuff>=5859&&KeyBuff<6000)  // ³¤°´1.5Ãë
	MOVAI	0x16
	RSUBAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00278_DS_
	MOVAI	0xe3
	RSUBAR	_KeyBuff
_00278_DS_
	JBSET	STATUS,0
	GOTO	_00169_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x1770=6000), size=2
	MOVAI	0x17
	RSUBAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00279_DS_
	MOVAI	0x70
	RSUBAR	_KeyBuff
_00279_DS_
	JBCLR	STATUS,0
	GOTO	_00169_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	197; "6080_bug.c"	flag_kai = 0;
	BCLR	_Flag,2
;	.line	198; "6080_bug.c"	work = 1;      	       	       	       	
	MOVAI	0x01
	MOVRA	_work
;	.line	199; "6080_bug.c"	KeyBuff = 6000;
	MOVAI	0x70
	MOVRA	_KeyBuff
	MOVAI	0x17
	MOVRA	(_KeyBuff + 1)
;	.line	200; "6080_bug.c"	wxbuff = 0;
	CLRR	_wxbuff
	CLRR	(_wxbuff + 1)
;	.line	201; "6080_bug.c"	FLAG_CHANGE = 1;
	BSET	_Flag,3
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x1B59=7001), size=2
_00169_DS_
;	.line	203; "6080_bug.c"	if(KeyBuff>7000)KeyBuff = 7000;        	       	       	
	MOVAI	0x1b
	RSUBAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00280_DS_
	MOVAI	0x59
	RSUBAR	_KeyBuff
_00280_DS_
	JBSET	STATUS,0
	GOTO	_00192_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAI	0x58
	MOVRA	_KeyBuff
	MOVAI	0x1b
	MOVRA	(_KeyBuff + 1)
	GOTO	_00192_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x77=119), size=2
_00185_DS_
;	.line	207; "6080_bug.c"	if(KeyBuff>118&&KeyBuff<5859)
	MOVAI	0x00
	RSUBAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00281_DS_
	MOVAI	0x77
	RSUBAR	_KeyBuff
_00281_DS_
	JBSET	STATUS,0
	GOTO	_00182_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x16E3=5859), size=2
	MOVAI	0x16
	RSUBAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00282_DS_
	MOVAI	0xe3
	RSUBAR	_KeyBuff
_00282_DS_
	JBCLR	STATUS,0
	GOTO	_00182_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	209; "6080_bug.c"	if(!flag_kai)
	JBCLR	_Flag,2
	GOTO	_00179_DS_
;	.line	211; "6080_bug.c"	flag_kai = 1;          	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	               	       	       	       	       	 
	BSET	_Flag,2
	GOTO	_00180_DS_
;;unsigned compare: left < lit(0x2DC7=11719), size=2
_00179_DS_
;	.line	215; "6080_bug.c"	if(wxbuff<11719)
	MOVAI	0x2d
	RSUBAR	(_wxbuff + 1)
	JBSET	STATUS,2
	GOTO	_00283_DS_
	MOVAI	0xc7
	RSUBAR	_wxbuff
_00283_DS_
	JBCLR	STATUS,0
	GOTO	_00176_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	217; "6080_bug.c"	work++;
	INCR	_work
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x7=7), size=1
;	.line	218; "6080_bug.c"	if(work>6)work=1;
	MOVAI	0x07
	RSUBAR	_work
	JBSET	STATUS,0
	GOTO	_00174_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAI	0x01
	MOVRA	_work
_00174_DS_
;	.line	219; "6080_bug.c"	FLAG_CHANGE = 1;
	BSET	_Flag,3
	GOTO	_00180_DS_
_00176_DS_
;	.line	223; "6080_bug.c"	flag_kai = 0;
	BCLR	_Flag,2
;	.line	224; "6080_bug.c"	FLAG_CHANGE = 1;
	BSET	_Flag,3
_00180_DS_
;	.line	227; "6080_bug.c"	wxbuff = 0; 
	CLRR	_wxbuff
	CLRR	(_wxbuff + 1)
_00182_DS_
;	.line	229; "6080_bug.c"	KeyBuff=0;          	       	       	   
	CLRR	_KeyBuff
	CLRR	(_KeyBuff + 1)
_00192_DS_
;	.line	239; "6080_bug.c"	__endasm;
	swapar _StatusBuf
	movra _STATUS
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_6080_bug	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Sys_Init
;   _SY_1
;   _SY_2
;   _mod3
;   _mod4
;   _mod5
;   _IC_SLEEP
;   _Sys_Init
;   _SY_1
;   _SY_2
;   _mod3
;   _mod4
;   _mod5
;   _IC_SLEEP
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	402; "6080_bug.c"	Sys_Init();
	CALL	_Sys_Init
;	.line	403; "6080_bug.c"	flag_256us = 0;        	               	 
	BCLR	_Flag,5
;	.line	404; "6080_bug.c"	LED = 0;
	BCLR	_P1bits,0
;	.line	405; "6080_bug.c"	T1DATA2 = 0;
	CLRR	_T1DATA2
;	.line	406; "6080_bug.c"	T1DATA0 = 0;
	CLRR	_T1DATA0
;	.line	407; "6080_bug.c"	tne5 = 0;
	CLRR	_tne5
	CLRR	(_tne5 + 1)
;	.line	408; "6080_bug.c"	tne6 = 0;
	CLRR	_tne6
	CLRR	(_tne6 + 1)
;	.line	409; "6080_bug.c"	BZV = 0;
	BCLR	_P1bits,2
;	.line	410; "6080_bug.c"	OUT = 1;
	BSET	_P1bits,1
;	.line	411; "6080_bug.c"	flag_pwm = 0;     
	BCLR	_Flag,0
;	.line	412; "6080_bug.c"	FLAG_SOUND = 0;        	
	BCLR	_Flag,4
;	.line	413; "6080_bug.c"	soudbuff = 1;
	MOVAI	0x01
	MOVRA	_soudbuff
;	.line	414; "6080_bug.c"	flag_640us = 0;
	BCLR	_Flag,1
;	.line	415; "6080_bug.c"	time1 = 0; 
	CLRR	_time1
	CLRR	(_time1 + 1)
;	.line	416; "6080_bug.c"	zstime = 0;
	CLRR	_zstime
	CLRR	(_zstime + 1)
;	.line	417; "6080_bug.c"	work = 1;
	MOVAI	0x01
	MOVRA	_work
;	.line	418; "6080_bug.c"	LED1 = 0;
	BCLR	_P0bits,0
;	.line	419; "6080_bug.c"	LED2 = 0;
	BCLR	_P0bits,2
;	.line	420; "6080_bug.c"	flag_kai = 0;     
	BCLR	_Flag,2
;	.line	421; "6080_bug.c"	LVDEN = 1;      
	BSET	_MCRbits,0
;	.line	422; "6080_bug.c"	FALG_LVD = 0;
	BCLR	_Flag1,0
;	.line	423; "6080_bug.c"	flag_cd = 0;           	       	
	BCLR	_Flag1,1
_00450_DS_
;	.line	426; "6080_bug.c"	if(FLAG_SOUND)
	JBSET	_Flag,4
	GOTO	_00447_DS_
;	.line	428; "6080_bug.c"	PWMCR = 0x00;
	CLRR	_PWMCR
;	.line	429; "6080_bug.c"	if(soudbuff == 1)
	MOVAR	_soudbuff
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00396_DS_
;	.line	431; "6080_bug.c"	SY_1();        	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	    
	CALL	_SY_1
	GOTO	_00450_DS_
_00396_DS_
;	.line	433; "6080_bug.c"	else if(soudbuff == 2)
	MOVAR	_soudbuff
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00393_DS_
;	.line	435; "6080_bug.c"	SY_2();        	       	       	       	       	       	       	       	       	       	       	       	    
	CALL	_SY_2
	GOTO	_00450_DS_
_00393_DS_
;	.line	437; "6080_bug.c"	else if(soudbuff == 3)
	MOVAR	_soudbuff
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00390_DS_
;	.line	439; "6080_bug.c"	T1CR = 0xc4;
	MOVAI	0xc4
	MOVRA	_T1CR
;	.line	440; "6080_bug.c"	mod3();        	       	       	       	
	CALL	_mod3
	GOTO	_00450_DS_
_00390_DS_
;	.line	442; "6080_bug.c"	else if(soudbuff == 4)
	MOVAR	_soudbuff
	XORAI	0x04
	JBSET	STATUS,2
	GOTO	_00387_DS_
;	.line	444; "6080_bug.c"	T1CR = 0xc4;
	MOVAI	0xc4
	MOVRA	_T1CR
;	.line	445; "6080_bug.c"	mod4();        	       	       	       	       	       	       	       	
	CALL	_mod4
	GOTO	_00450_DS_
_00387_DS_
;	.line	447; "6080_bug.c"	else if(soudbuff == 5)
	MOVAR	_soudbuff
	XORAI	0x05
	JBSET	STATUS,2
	GOTO	_00450_DS_
;	.line	449; "6080_bug.c"	T1CR = 0xc4;           	       	       	       	
	MOVAI	0xc4
	MOVRA	_T1CR
;	.line	450; "6080_bug.c"	mod5();        	       	       	       	       	       	       	       	
	CALL	_mod5
	GOTO	_00450_DS_
_00447_DS_
;	.line	455; "6080_bug.c"	T1CR = 0xc2;//1100 0100 1/4*16*2 = 8us         	       	       	
	MOVAI	0xc2
	MOVRA	_T1CR
;	.line	456; "6080_bug.c"	T1LOAD = 128;
	MOVAI	0x80
	MOVRA	_T1LOAD
;	.line	457; "6080_bug.c"	PWMCR = 0xa1;
	MOVAI	0xa1
	MOVRA	_PWMCR
;	.line	458; "6080_bug.c"	FLAG_CHANGE = 0;       	       	
	BCLR	_Flag,3
;	.line	459; "6080_bug.c"	if(!flag_kai)
	JBCLR	_Flag,2
	GOTO	_00444_DS_
;	.line	461; "6080_bug.c"	T1DATA2 = 0;           	       	       	       	       	       	       	               	       	       	
	CLRR	_T1DATA2
;	.line	462; "6080_bug.c"	zstime = 0;
	CLRR	_zstime
	CLRR	(_zstime + 1)
;	.line	463; "6080_bug.c"	if(KEY1 && KeyBuff == 0&&KEY2&&buff == 0&&CHRG&&STDBY)
	JBSET	_P1bits,5
	GOTO	_00403_DS_
	MOVAR	_KeyBuff
	ORAR	(_KeyBuff + 1)
	JBSET	STATUS,2
	GOTO	_00403_DS_
	JBSET	_P1bits,4
	GOTO	_00403_DS_
	MOVAI	0x00
	ORAR	_buff
	JBSET	STATUS,2
	GOTO	_00403_DS_
	JBSET	_P1bits,6
	GOTO	_00403_DS_
	JBSET	_P1bits,7
	GOTO	_00403_DS_
;	.line	465; "6080_bug.c"	if(flag_256us)
	JBSET	_Flag,5
	GOTO	_00450_DS_
;	.line	467; "6080_bug.c"	flag_256us = 0;
	BCLR	_Flag,5
;	.line	468; "6080_bug.c"	LED1 = 0;
	BCLR	_P0bits,0
;	.line	469; "6080_bug.c"	LED2 = 0; 
	BCLR	_P0bits,2
;	.line	470; "6080_bug.c"	sleeptime++;
	INCR	_sleeptime
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xFB=251), size=1
;	.line	471; "6080_bug.c"	if(sleeptime>250)
	MOVAI	0xfb
	RSUBAR	_sleeptime
	JBSET	STATUS,0
	GOTO	_00450_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	473; "6080_bug.c"	sleeptime = 251;
	MOVAI	0xfb
	MOVRA	_sleeptime
;	.line	474; "6080_bug.c"	IC_SLEEP();
	CALL	_IC_SLEEP
	GOTO	_00450_DS_
_00403_DS_
;	.line	478; "6080_bug.c"	else sleeptime = 0;    	       	       	
	CLRR	_sleeptime
	GOTO	_00450_DS_
_00444_DS_
;	.line	482; "6080_bug.c"	sleeptime = 0;         	       	       	
	CLRR	_sleeptime
;	.line	483; "6080_bug.c"	if(work == 1)T1DATA2 = 128;
	MOVAR	_work
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00441_DS_
	MOVAI	0x80
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00441_DS_
;	.line	484; "6080_bug.c"	else if(work == 2)T1DATA2 = 64;
	MOVAR	_work
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00438_DS_
	MOVAI	0x40
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00438_DS_
;	.line	485; "6080_bug.c"	else if(work == 3)T1DATA2 = 26;
	MOVAR	_work
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00435_DS_
	MOVAI	0x1a
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00435_DS_
;	.line	486; "6080_bug.c"	else if(work == 4)T1DATA2 = 6;
	MOVAR	_work
	XORAI	0x04
	JBSET	STATUS,2
	GOTO	_00432_DS_
	MOVAI	0x06
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00432_DS_
;	.line	487; "6080_bug.c"	else if(work == 5)
	MOVAR	_work
	XORAI	0x05
	JBSET	STATUS,2
	GOTO	_00429_DS_
;	.line	489; "6080_bug.c"	tne6 = 0;
	CLRR	_tne6
	CLRR	(_tne6 + 1)
;	.line	490; "6080_bug.c"	if(flag_256us)
	JBSET	_Flag,5
	GOTO	_00450_DS_
;	.line	492; "6080_bug.c"	flag_256us = 0;
	BCLR	_Flag,5
;	.line	493; "6080_bug.c"	tne5++;
	INCR	_tne5
	JBCLR	STATUS,2
	INCR	(_tne5 + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x6A9=1705), size=2
;	.line	494; "6080_bug.c"	if(tne5>1704)tne5 = 0;
	MOVAI	0x06
	RSUBAR	(_tne5 + 1)
	JBSET	STATUS,2
	GOTO	_00511_DS_
	MOVAI	0xa9
	RSUBAR	_tne5
_00511_DS_
	JBSET	STATUS,0
	GOTO	_00414_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	_tne5
	CLRR	(_tne5 + 1)
	GOTO	_00450_DS_
;;unsigned compare: left < lit(0x354=852), size=2
_00414_DS_
;	.line	495; "6080_bug.c"	else if(tne5<852)
	MOVAI	0x03
	RSUBAR	(_tne5 + 1)
	JBSET	STATUS,2
	GOTO	_00512_DS_
	MOVAI	0x54
	RSUBAR	_tne5
_00512_DS_
	JBCLR	STATUS,0
	GOTO	_00411_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	496; "6080_bug.c"	T1DATA2 = 96;                  	       	       	       	       	       	       	       	
	MOVAI	0x60
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00411_DS_
;	.line	497; "6080_bug.c"	else T1DATA2 = 0;                      	       	       	
	CLRR	_T1DATA2
	GOTO	_00450_DS_
_00429_DS_
;	.line	500; "6080_bug.c"	else if(work == 6)
	MOVAR	_work
	XORAI	0x06
	JBSET	STATUS,2
	GOTO	_00450_DS_
;	.line	502; "6080_bug.c"	tne5 = 0;
	CLRR	_tne5
	CLRR	(_tne5 + 1)
;	.line	503; "6080_bug.c"	if(flag_256us)
	JBSET	_Flag,5
	GOTO	_00450_DS_
;	.line	505; "6080_bug.c"	flag_256us = 0;
	BCLR	_Flag,5
;	.line	506; "6080_bug.c"	tne6++;
	INCR	_tne6
	JBCLR	STATUS,2
	INCR	(_tne6 + 1)
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x215=533), size=2
;	.line	507; "6080_bug.c"	if(tne6>532)tne6 = 0;
	MOVAI	0x02
	RSUBAR	(_tne6 + 1)
	JBSET	STATUS,2
	GOTO	_00513_DS_
	MOVAI	0x15
	RSUBAR	_tne6
_00513_DS_
	JBSET	STATUS,0
	GOTO	_00422_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	_tne6
	CLRR	(_tne6 + 1)
	GOTO	_00450_DS_
;;unsigned compare: left < lit(0x10A=266), size=2
_00422_DS_
;	.line	508; "6080_bug.c"	else if(tne6<266)
	MOVAI	0x01
	RSUBAR	(_tne6 + 1)
	JBSET	STATUS,2
	GOTO	_00514_DS_
	MOVAI	0x0a
	RSUBAR	_tne6
_00514_DS_
	JBCLR	STATUS,0
	GOTO	_00419_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	509; "6080_bug.c"	T1DATA2 = 96;                  	       	       	       	       	       	       	       	
	MOVAI	0x60
	MOVRA	_T1DATA2
	GOTO	_00450_DS_
_00419_DS_
;	.line	510; "6080_bug.c"	else T1DATA2 = 0;                      	       	       	
	CLRR	_T1DATA2
	GOTO	_00450_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IC_SLEEP	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_IC_SLEEP	;Function start
; 2 exit points
;	.line	377; "6080_bug.c"	GIE = 0;
	BCLR	_INTECONbits,7
;	.line	378; "6080_bug.c"	T0IE = 0;
	BCLR	_INTECONbits,0
;	.line	379; "6080_bug.c"	T1IE = 0;
	BCLR	_TM0CRbits,1
;	.line	380; "6080_bug.c"	INTIE = 0;
	BCLR	_INTECONbits,2
;	.line	381; "6080_bug.c"	KBIM = 0xf0;//12
	MOVAI	0xf0
	MOVRA	_KBIM
;	.line	382; "6080_bug.c"	KBIE = 1;
	BSET	_INTECONbits,1
;	.line	383; "6080_bug.c"	INTFLAG = 0;
	CLRR	_INTFLAG
;	.line	384; "6080_bug.c"	LVDEN = 0;
	BCLR	_MCRbits,0
;	.line	388; "6080_bug.c"	__endasm;
	STOP
	
;	.line	389; "6080_bug.c"	LVDEN = 1; 
	BSET	_MCRbits,0
;	.line	390; "6080_bug.c"	KBIE = 0;
	BCLR	_INTECONbits,1
;	.line	391; "6080_bug.c"	KBIM = 0;
	CLRR	_KBIM
;	.line	392; "6080_bug.c"	INTFLAG = 0;
	CLRR	_INTFLAG
;	.line	393; "6080_bug.c"	T0IE = 1;
	BSET	_INTECONbits,0
;	.line	394; "6080_bug.c"	T1IE = 1;
	BSET	_TM0CRbits,1
;	.line	395; "6080_bug.c"	FALG_LVD = 0;
	BCLR	_Flag1,0
;	.line	396; "6080_bug.c"	GIE = 1;
	BSET	_INTECONbits,7
	RETURN	
; exit point of _IC_SLEEP

;***
;  pBlock Stats: dbName = C
;***
;entry:  _mod5	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay640us
;   _delay640us
;   _delay640us
;   _delay640us
;2 compiler assigned registers:
;   r0x101A
;   STK00
;; Starting pCode block
_mod5	;Function start
; 2 exit points
;	.line	351; "6080_bug.c"	for(i=0;i<181;i++)
	CLRR	r0x101A
;;unsigned compare: left < lit(0xB5=181), size=1
_00371_DS_
	MOVAI	0xb5
	RSUBAR	r0x101A
	JBCLR	STATUS,0
	GOTO	_00374_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	353; "6080_bug.c"	T1LOAD = 32;
	MOVAI	0x20
	MOVRA	_T1LOAD
;	.line	354; "6080_bug.c"	T1DATA0 = 16;
	MOVAI	0x10
	MOVRA	_T1DATA0
;;unsigned compare: left < lit(0x34=52), size=1
_00363_DS_
;	.line	355; "6080_bug.c"	while(T1LOAD<52)
	MOVAI	0x34
	RSUBAR	_T1LOAD
	JBCLR	STATUS,0
	GOTO	_00365_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	357; "6080_bug.c"	T1LOAD++;
	INCR	_T1LOAD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=0, offr=0
;	.line	358; "6080_bug.c"	T1DATA0 = T1LOAD>>1;       	       	       	
	BCLR	STATUS,0
	RRAR	_T1LOAD
	MOVRA	_T1DATA0
;	.line	359; "6080_bug.c"	delay640us(1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay640us
;	.line	360; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00363_DS_
	GOTO	_00375_DS_
_00365_DS_
;	.line	362; "6080_bug.c"	T1LOAD = 52;
	MOVAI	0x34
	MOVRA	_T1LOAD
;	.line	363; "6080_bug.c"	T1DATA0 = 26;
	MOVAI	0x1a
	MOVRA	_T1DATA0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x21=33), size=1
_00368_DS_
;	.line	364; "6080_bug.c"	while(T1LOAD>32)
	MOVAI	0x21
	RSUBAR	_T1LOAD
	JBSET	STATUS,0
	GOTO	_00373_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	366; "6080_bug.c"	T1LOAD--;
	DECR	_T1LOAD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=0, offr=0
;	.line	367; "6080_bug.c"	T1DATA0 = T1LOAD>>1;       	       	       	
	BCLR	STATUS,0
	RRAR	_T1LOAD
	MOVRA	_T1DATA0
;	.line	368; "6080_bug.c"	delay640us(1);
	MOVAI	0x01
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay640us
;	.line	369; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00368_DS_
	GOTO	_00375_DS_
_00373_DS_
;	.line	351; "6080_bug.c"	for(i=0;i<181;i++)
	INCR	r0x101A
	GOTO	_00371_DS_
_00374_DS_
;	.line	372; "6080_bug.c"	time1 = 0;
	CLRR	_time1
	CLRR	(_time1 + 1)
;	.line	373; "6080_bug.c"	soudbuff = 1;          	
	MOVAI	0x01
	MOVRA	_soudbuff
_00375_DS_
	RETURN	
; exit point of _mod5

;***
;  pBlock Stats: dbName = C
;***
;entry:  _mod4	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay640us
;   _delay640us
;1 compiler assigned register :
;   STK00
;; Starting pCode block
_mod4	;Function start
; 2 exit points
;	.line	342; "6080_bug.c"	T1LOAD = 44;
	MOVAI	0x2c
	MOVRA	_T1LOAD
;	.line	343; "6080_bug.c"	T1DATA0 = 22;      	
	MOVAI	0x16
	MOVRA	_T1DATA0
;	.line	344; "6080_bug.c"	delay640us(6797);
	MOVAI	0x8d
	MOVRA	STK00
	MOVAI	0x1a
	CALL	_delay640us
;	.line	345; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00355_DS_
	GOTO	_00356_DS_
_00355_DS_
;	.line	346; "6080_bug.c"	soudbuff = 5;          	       	       	
	MOVAI	0x05
	MOVRA	_soudbuff
_00356_DS_
	RETURN	
; exit point of _mod4

;***
;  pBlock Stats: dbName = C
;***
;entry:  _mod3	;Function start
; 2 exit points
;has an exit
;functions called:
;   _delay640us
;   _delay640us
;   _delay640us
;   _delay640us
;2 compiler assigned registers:
;   r0x101A
;   STK00
;; Starting pCode block
_mod3	;Function start
; 2 exit points
;	.line	317; "6080_bug.c"	for(i=0;i<46;i++)
	CLRR	r0x101A
;;unsigned compare: left < lit(0x2E=46), size=1
_00345_DS_
	MOVAI	0x2e
	RSUBAR	r0x101A
	JBCLR	STATUS,0
	GOTO	_00348_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	319; "6080_bug.c"	T1LOAD = 32;
	MOVAI	0x20
	MOVRA	_T1LOAD
;	.line	320; "6080_bug.c"	T1DATA0 = 16;
	MOVAI	0x10
	MOVRA	_T1DATA0
;;unsigned compare: left < lit(0x34=52), size=1
_00337_DS_
;	.line	321; "6080_bug.c"	while(T1LOAD<52)
	MOVAI	0x34
	RSUBAR	_T1LOAD
	JBCLR	STATUS,0
	GOTO	_00339_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	323; "6080_bug.c"	T1LOAD++;
	INCR	_T1LOAD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=0, offr=0
;	.line	324; "6080_bug.c"	T1DATA0 = T1LOAD>>1;       	       	       	
	BCLR	STATUS,0
	RRAR	_T1LOAD
	MOVRA	_T1DATA0
;	.line	325; "6080_bug.c"	delay640us(4);
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay640us
;	.line	326; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00337_DS_
	GOTO	_00349_DS_
_00339_DS_
;	.line	328; "6080_bug.c"	T1LOAD = 52;
	MOVAI	0x34
	MOVRA	_T1LOAD
;	.line	329; "6080_bug.c"	T1DATA0 = 26;
	MOVAI	0x1a
	MOVRA	_T1DATA0
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x21=33), size=1
_00342_DS_
;	.line	330; "6080_bug.c"	while(T1LOAD>32)
	MOVAI	0x21
	RSUBAR	_T1LOAD
	JBSET	STATUS,0
	GOTO	_00347_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	332; "6080_bug.c"	T1LOAD--;
	DECR	_T1LOAD
;;shiftRight_Left2ResultLit:5216: shCount=1, size=1, sign=0, same=0, offr=0
;	.line	333; "6080_bug.c"	T1DATA0 = T1LOAD>>1;       	       	       	
	BCLR	STATUS,0
	RRAR	_T1LOAD
	MOVRA	_T1DATA0
;	.line	334; "6080_bug.c"	delay640us(4);
	MOVAI	0x04
	MOVRA	STK00
	MOVAI	0x00
	CALL	_delay640us
;	.line	335; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00342_DS_
	GOTO	_00349_DS_
_00347_DS_
;	.line	317; "6080_bug.c"	for(i=0;i<46;i++)
	INCR	r0x101A
	GOTO	_00345_DS_
_00348_DS_
;	.line	338; "6080_bug.c"	soudbuff = 4;          	
	MOVAI	0x04
	MOVRA	_soudbuff
_00349_DS_
	RETURN	
; exit point of _mod3

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SY_2	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1016
;   r0x1017
;   r0x1018
;   STK01
;   STK00
;   r0x1019
;; Starting pCode block
_SY_2	;Function start
; 2 exit points
;	.line	296; "6080_bug.c"	i = 0;
	CLRR	r0x1016
;	.line	297; "6080_bug.c"	T1CR = 0xc4;//1/4*8*2 = 8us
	MOVAI	0xc4
	MOVRA	_T1CR
_00328_DS_
;	.line	300; "6080_bug.c"	T1LOAD = SY2[i];
	MOVAR	r0x1016
	ADDAI	(_SY2 + 0)
	MOVRA	r0x1017
	MOVAI	high (_SY2 + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1018
	MOVAR	r0x1017
	MOVRA	STK01
	MOVAR	r0x1018
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_T1LOAD
;	.line	301; "6080_bug.c"	T1DATA0 = SY2[i+1];
	INCAR	r0x1016
	MOVRA	r0x1017
	MOVAR	r0x1017
	ADDAI	(_SY2 + 0)
	MOVRA	r0x1017
	MOVAI	high (_SY2 + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1019
	MOVAR	r0x1017
	MOVRA	STK01
	MOVAR	r0x1019
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_T1DATA0
_00318_DS_
;	.line	302; "6080_bug.c"	while(!flag_pwm);
	JBSET	_Flag,0
	GOTO	_00318_DS_
;	.line	303; "6080_bug.c"	flag_pwm = 0;
	BCLR	_Flag,0
;	.line	304; "6080_bug.c"	i += 2;
	INCR	r0x1016
	INCR	r0x1016
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x9=9), size=1
;	.line	305; "6080_bug.c"	if(i>8)i = 0;
	MOVAI	0x09
	RSUBAR	r0x1016
	JBSET	STATUS,0
	GOTO	_00322_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	r0x1016
_00322_DS_
;	.line	306; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00324_DS_
	GOTO	_00330_DS_
_00324_DS_
;	.line	307; "6080_bug.c"	if(FLAG_2)
	JBSET	_Flag,7
	GOTO	_00328_DS_
;	.line	309; "6080_bug.c"	soudbuff = 3;
	MOVAI	0x03
	MOVRA	_soudbuff
_00330_DS_
;	.line	310; "6080_bug.c"	return;
	RETURN	
; exit point of _SY_2

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SY_1	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;   __gptrget1
;   __gptrget1
;6 compiler assigned registers:
;   r0x1016
;   r0x1017
;   r0x1018
;   STK01
;   STK00
;   r0x1019
;; Starting pCode block
_SY_1	;Function start
; 2 exit points
;	.line	266; "6080_bug.c"	i = 0;
	CLRR	r0x1016
;	.line	267; "6080_bug.c"	T1CR = 0xc3;//1/4*8*2 = 4us
	MOVAI	0xc3
	MOVRA	_T1CR
_00311_DS_
;	.line	271; "6080_bug.c"	T1LOAD = SY1[i];
	MOVAR	r0x1016
	ADDAI	(_SY1 + 0)
	MOVRA	r0x1017
	MOVAI	high (_SY1 + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1018
	MOVAR	r0x1017
	MOVRA	STK01
	MOVAR	r0x1018
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_T1LOAD
;	.line	272; "6080_bug.c"	T1DATA0 = SY1[i+1];
	INCAR	r0x1016
	MOVRA	r0x1017
	MOVAR	r0x1017
	ADDAI	(_SY1 + 0)
	MOVRA	r0x1017
	MOVAI	high (_SY1 + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x1019
	MOVAR	r0x1017
	MOVRA	STK01
	MOVAR	r0x1019
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	_T1DATA0
_00301_DS_
;	.line	273; "6080_bug.c"	while(!flag_pwm);
	JBSET	_Flag,0
	GOTO	_00301_DS_
;	.line	274; "6080_bug.c"	flag_pwm = 0;
	BCLR	_Flag,0
;	.line	275; "6080_bug.c"	i += 2;
	INCR	r0x1016
	INCR	r0x1016
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xB=11), size=1
;	.line	276; "6080_bug.c"	if(i>10)i = 0;
	MOVAI	0x0b
	RSUBAR	r0x1016
	JBSET	STATUS,0
	GOTO	_00305_DS_
;;genSkipc:3195: created from rifx:00DE608C
	CLRR	r0x1016
_00305_DS_
;	.line	277; "6080_bug.c"	if(!FLAG_SOUND)return;
	JBCLR	_Flag,4
	GOTO	_00307_DS_
	GOTO	_00313_DS_
_00307_DS_
;	.line	278; "6080_bug.c"	if(FLAG_1)
	JBSET	_Flag,6
	GOTO	_00311_DS_
;	.line	280; "6080_bug.c"	soudbuff = 2;
	MOVAI	0x02
	MOVRA	_soudbuff
_00313_DS_
;	.line	281; "6080_bug.c"	return;
	RETURN	
; exit point of _SY_1

;***
;  pBlock Stats: dbName = C
;***
;entry:  _delay640us	;Function start
; 2 exit points
;has an exit
;5 compiler assigned registers:
;   r0x1016
;   STK00
;   r0x1017
;   r0x1018
;   r0x1019
;; Starting pCode block
_delay640us	;Function start
; 2 exit points
;	.line	241; "6080_bug.c"	void delay640us(unsigned int i1)
	MOVRA	r0x1016
	MOVAR	STK00
	MOVRA	r0x1017
_00293_DS_
;	.line	245; "6080_bug.c"	while(i--)
	MOVAR	r0x1017
	MOVRA	r0x1018
	MOVAR	r0x1016
	MOVRA	r0x1019
	MOVAI	0xff
	ADDRA	r0x1017
	JBSET	STATUS,0
	DECR	r0x1016
	MOVAR	r0x1018
	ORAR	r0x1019
	JBCLR	STATUS,2
	GOTO	_00296_DS_
_00290_DS_
;	.line	247; "6080_bug.c"	while(!flag_640us)
	JBCLR	_Flag,1
	GOTO	_00292_DS_
;	.line	249; "6080_bug.c"	if(!FLAG_SOUND) return;
	JBCLR	_Flag,4
	GOTO	_00290_DS_
	GOTO	_00296_DS_
_00292_DS_
;	.line	251; "6080_bug.c"	flag_640us=0;
	BCLR	_Flag,1
	GOTO	_00293_DS_
_00296_DS_
	RETURN	
; exit point of _delay640us

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Sys_Init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Sys_Init	;Function start
; 2 exit points
;	.line	44; "6080_bug.c"	P1 = 0;
	CLRR	_P1
;	.line	45; "6080_bug.c"	DDR0 = 0xfa;//1111 1010
	MOVAI	0xfa
	MOVRA	_DDR0
;	.line	46; "6080_bug.c"	DDR1 = 0xf8;//1111 1000   
	MOVAI	0xf8
	MOVRA	_DDR1
;	.line	47; "6080_bug.c"	PUCON=0x07;//0000 0111
	MOVAI	0x07
	MOVRA	_PUCON
;	.line	48; "6080_bug.c"	PDCON = 0xff;
	MOVAI	0xff
	MOVRA	_PDCON
;	.line	49; "6080_bug.c"	ODCON = 0;
	CLRR	_ODCON
;	.line	51; "6080_bug.c"	T0CR = 0x02;//1/4m*8*2 = 4us
	MOVAI	0x02
	MOVRA	_T0CR
;	.line	52; "6080_bug.c"	TM0CR = 0x00; 
	CLRR	_TM0CR
;	.line	53; "6080_bug.c"	T0CNT = 96;    	               	
	MOVAI	0x60
	MOVRA	_T0CNT
;	.line	54; "6080_bug.c"	KBIM = 0;
	CLRR	_KBIM
;	.line	55; "6080_bug.c"	T0IE = 1;
	BSET	_INTECONbits,0
;	.line	56; "6080_bug.c"	INTFLAG = 0;
	CLRR	_INTFLAG
;	.line	57; "6080_bug.c"	GIE = 1;
	BSET	_INTECONbits,7
;	.line	58; "6080_bug.c"	MCR = 0x39;//001 1100 1
	MOVAI	0x39
	MOVRA	_MCR
;	.line	60; "6080_bug.c"	T1CR = 0xc2;//1100 0100 1/4*16*2 = 8us         	
	MOVAI	0xc2
	MOVRA	_T1CR
;	.line	61; "6080_bug.c"	T1LOAD = 128; 
	MOVAI	0x80
	MOVRA	_T1LOAD
;	.line	62; "6080_bug.c"	T1IE = 1;
	BSET	_TM0CRbits,1
;	.line	63; "6080_bug.c"	timcd = 0;     	       	       	   
	CLRR	_timcd
	CLRR	(_timcd + 1)
	RETURN	
; exit point of _Sys_Init


;	code size estimation:
;	  807+    0 =   807 instructions ( 1614 byte)

	end
