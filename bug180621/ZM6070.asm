;--------------------------------------------------------
; File Created by SN-SDCC : SinoMCU ANSI-C Compiler
; Version 1.1.4 (Jun 11 2018) (MINGW32)
; This file was generated Thu Jun 21 20:03:13 2018
;--------------------------------------------------------
; MC30 port for the RISC core
;--------------------------------------------------------
;	.file	"ZM6070.c"
	list	p=6060
	radix dec
	include "6060.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_INDFbits
	extern	_T0CNTbits
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
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_PWMCRbits
	extern	_T1DAT1bits
	extern	_T1DAT2bits
	extern	_TM0CRbits
	extern	_T1CRbits
	extern	_T1CNTbits
	extern	_T1LOADbits
	extern	_T1DAT0bits
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
	extern	_T1DAT1
	extern	_T1DAT2
	extern	_TM0CR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DAT0
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_ResetSysConfig
	global	_SysStatusSwitchHandle
	global	_SysLoadDetect
	global	_SysTotalCloseTime
	global	_SysInit
	global	_main
	global	_isr
	global	_StatusBuf
	global	_ABuf
	global	_gSysLoadStatus
	global	_gSysChildStatus
	global	_gPreSysLoadStatus
	global	_gSysLoadDetectCntA
	global	_gSysLoadDetectCntB
	global	_overflow
	global	_gTotalCloseTimeA
	global	_gTotalCloseTimeB
	global	_gSleepCnt
	global	_gPinStatus
	global	_gTempBackupP1
	global	_gCntA
	global	_gCntB
	global	_gCntA_1
	global	_gCntB_1
	global	_gCurPortStatus
	global	_sss_buf

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
UD_ZM6070_0	udata
_StatusBuf	res	1

UD_ZM6070_1	udata
_ABuf	res	1

UD_ZM6070_2	udata
_gSysLoadStatus	res	1

UD_ZM6070_3	udata
_gSysChildStatus	res	1

UD_ZM6070_4	udata
_gPreSysLoadStatus	res	1

UD_ZM6070_5	udata
_overflow	res	1

UD_ZM6070_6	udata
_gTotalCloseTimeA	res	1

UD_ZM6070_7	udata
_gTotalCloseTimeB	res	1

UD_ZM6070_8	udata
_gSleepCnt	res	2

UD_ZM6070_9	udata
_gPinStatus	res	1

UD_ZM6070_10	udata
_gTempBackupP1	res	1

UD_ZM6070_11	udata
_sss_buf	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ZM6070_0	udata
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1018	res	1
r0x1019	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_ZM6070_0	idata
_gSysLoadDetectCntA
	db	0x00


ID_ZM6070_1	idata
_gSysLoadDetectCntB
	db	0x00


ID_ZM6070_2	idata
_gCntA
	db	0x00


ID_ZM6070_3	idata
_gCntB
	db	0x00


ID_ZM6070_4	idata
_gCntA_1
	db	0x00


ID_ZM6070_5	idata
_gCntB_1
	db	0x00


ID_ZM6070_6	idata
_gCurPortStatus
	db	0x00


;@Allocation info for local variables in function 'ResetSysConfig'
;@ResetSysConfig ResetSysConfig            Allocated to registers ;size:2
;@ResetSysConfig INDFbits                  Allocated to registers ;size:1
;@ResetSysConfig T0CNTbits                 Allocated to registers ;size:1
;@ResetSysConfig PCLbits                   Allocated to registers ;size:1
;@ResetSysConfig STATUSbits                Allocated to registers ;size:1
;@ResetSysConfig FSRbits                   Allocated to registers ;size:1
;@ResetSysConfig P0bits                    Allocated to registers ;size:1
;@ResetSysConfig P1bits                    Allocated to registers ;size:1
;@ResetSysConfig MCRbits                   Allocated to registers ;size:1
;@ResetSysConfig KBIMbits                  Allocated to registers ;size:1
;@ResetSysConfig PCLATHbits                Allocated to registers ;size:1
;@ResetSysConfig PDCONbits                 Allocated to registers ;size:1
;@ResetSysConfig ODCONbits                 Allocated to registers ;size:1
;@ResetSysConfig PUCONbits                 Allocated to registers ;size:1
;@ResetSysConfig INTECONbits               Allocated to registers ;size:1
;@ResetSysConfig INTFLAGbits               Allocated to registers ;size:1
;@ResetSysConfig T0CRbits                  Allocated to registers ;size:1
;@ResetSysConfig DDR0bits                  Allocated to registers ;size:1
;@ResetSysConfig DDR1bits                  Allocated to registers ;size:1
;@ResetSysConfig PWMCRbits                 Allocated to registers ;size:1
;@ResetSysConfig T1DAT1bits                Allocated to registers ;size:1
;@ResetSysConfig T1DAT2bits                Allocated to registers ;size:1
;@ResetSysConfig TM0CRbits                 Allocated to registers ;size:1
;@ResetSysConfig T1CRbits                  Allocated to registers ;size:1
;@ResetSysConfig T1CNTbits                 Allocated to registers ;size:1
;@ResetSysConfig T1LOADbits                Allocated to registers ;size:1
;@ResetSysConfig T1DAT0bits                Allocated to registers ;size:1
;@ResetSysConfig StatusBuf                 Allocated to registers ;size:1
;@ResetSysConfig ABuf                      Allocated to registers ;size:1
;@ResetSysConfig gSysLoadStatus            Allocated to registers ;size:1
;@ResetSysConfig gSysChildStatus           Allocated to registers ;size:1
;@ResetSysConfig gPreSysLoadStatus         Allocated to registers ;size:1
;@ResetSysConfig gSysLoadDetectCntA        Allocated to registers ;size:1
;@ResetSysConfig gSysLoadDetectCntB        Allocated to registers ;size:1
;@ResetSysConfig overflow                  Allocated to registers ;size:1
;@ResetSysConfig gTotalCloseTimeA          Allocated to registers ;size:1
;@ResetSysConfig gTotalCloseTimeB          Allocated to registers ;size:1
;@ResetSysConfig gSleepCnt                 Allocated to registers ;size:2
;@ResetSysConfig gPinStatus                Allocated to registers ;size:1
;@ResetSysConfig gTempBackupP1             Allocated to registers ;size:1
;@ResetSysConfig gCntA                     Allocated to registers ;size:1
;@ResetSysConfig gCntB                     Allocated to registers ;size:1
;@ResetSysConfig gCntA_1                   Allocated to registers ;size:1
;@ResetSysConfig gCntB_1                   Allocated to registers ;size:1
;@ResetSysConfig gCurPortStatus            Allocated to registers ;size:1
;@ResetSysConfig sss_buf                   Allocated to registers ;size:1
;@ResetSysConfig INDF                      Allocated to registers ;size:1
;@ResetSysConfig T0CNT                     Allocated to registers ;size:1
;@ResetSysConfig PCL                       Allocated to registers ;size:1
;@ResetSysConfig STATUS                    Allocated to registers ;size:1
;@ResetSysConfig FSR                       Allocated to registers ;size:1
;@ResetSysConfig P0                        Allocated to registers ;size:1
;@ResetSysConfig P1                        Allocated to registers ;size:1
;@ResetSysConfig MCR                       Allocated to registers ;size:1
;@ResetSysConfig KBIM                      Allocated to registers ;size:1
;@ResetSysConfig PCLATH                    Allocated to registers ;size:1
;@ResetSysConfig PDCON                     Allocated to registers ;size:1
;@ResetSysConfig ODCON                     Allocated to registers ;size:1
;@ResetSysConfig PUCON                     Allocated to registers ;size:1
;@ResetSysConfig INTECON                   Allocated to registers ;size:1
;@ResetSysConfig INTFLAG                   Allocated to registers ;size:1
;@ResetSysConfig T0CR                      Allocated to registers ;size:1
;@ResetSysConfig DDR0                      Allocated to registers ;size:1
;@ResetSysConfig DDR1                      Allocated to registers ;size:1
;@ResetSysConfig PWMCR                     Allocated to registers ;size:1
;@ResetSysConfig T1DAT1                    Allocated to registers ;size:1
;@ResetSysConfig T1DAT2                    Allocated to registers ;size:1
;@ResetSysConfig TM0CR                     Allocated to registers ;size:1
;@ResetSysConfig T1CR                      Allocated to registers ;size:1
;@ResetSysConfig T1CNT                     Allocated to registers ;size:1
;@ResetSysConfig T1LOAD                    Allocated to registers ;size:1
;@ResetSysConfig T1DAT0                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'ResetSysConfig';
;@Allocation info for local variables in function 'SysStatusSwitchHandle'
;@end Allocation info for local variables in function 'SysStatusSwitchHandle';
;@Allocation info for local variables in function 'SysLoadDetect'
;@SysLoadDetect load_debounceA            Allocated to registers r0x1013 ;size:1
;@SysLoadDetect load_debounceB            Allocated to registers r0x1015 ;size:1
;@end Allocation info for local variables in function 'SysLoadDetect';
;@Allocation info for local variables in function 'SysTotalCloseTime'
;@end Allocation info for local variables in function 'SysTotalCloseTime';
;@Allocation info for local variables in function 'SysInit'
;@end Allocation info for local variables in function 'SysInit';
;@Allocation info for local variables in function 'main'
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'isr'
;@end Allocation info for local variables in function 'isr';

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
;entry:  _isr	;Function start
; 0 exit points
;2 compiler assigned registers:
;   r0x1018
;   r0x1019
;; Starting pCode block
_isr	;Function start
; 0 exit points
;	.line	546; "ZM6070.c"	__endasm;
	movra _ABuf
	swapar _STATUS
	movra _StatusBuf
	
;	.line	548; "ZM6070.c"	if(T0IF)
	JBSET	_INTFLAGbits,0
	GOTO	_00439_DS_
;	.line	550; "ZM6070.c"	T0IF = 0;
	BCLR	_INTFLAGbits,0
;	.line	551; "ZM6070.c"	T0CNT += 61;
	MOVAI	0x3d
	ADDRA	_T0CNT
;	.line	552; "ZM6070.c"	overflow = 1;
	MOVAI	0x01
	MOVRA	_overflow
_00439_DS_
;	.line	555; "ZM6070.c"	if(KBIF)
	JBSET	_INTFLAGbits,1
	GOTO	_00445_DS_
;	.line	557; "ZM6070.c"	if((gTempBackupP1 & 0x04) != (P1 &0x04))
	MOVAI	0x04
	ANDAR	_gTempBackupP1
	MOVRA	r0x1018
	MOVAI	0x04
	ANDAR	_P1
	MOVRA	r0x1019
	MOVAR	r0x1019
	XORAR	r0x1018
	JBSET	STATUS,2
	GOTO	_00456_DS_
	GOTO	_00441_DS_
_00456_DS_
;	.line	559; "ZM6070.c"	gPinStatus |= 0x02;
	BSET	_gPinStatus,1
_00441_DS_
;	.line	561; "ZM6070.c"	if((gTempBackupP1 & 0x10) != (P1 &0x10))
	MOVAI	0x10
	ANDAR	_gTempBackupP1
	MOVRA	r0x1018
	MOVAI	0x10
	ANDAR	_P1
	MOVRA	r0x1019
	MOVAR	r0x1019
	XORAR	r0x1018
	JBSET	STATUS,2
	GOTO	_00457_DS_
	GOTO	_00443_DS_
_00457_DS_
;	.line	563; "ZM6070.c"	gPinStatus |= 0x01;
	BSET	_gPinStatus,0
_00443_DS_
;	.line	565; "ZM6070.c"	gTempBackupP1 = P1;
	MOVAR	_P1
	MOVRA	_gTempBackupP1
;	.line	566; "ZM6070.c"	KBIF = 0;
	BCLR	_INTFLAGbits,1
_00445_DS_
;	.line	573; "ZM6070.c"	__endasm;     
	swapar _StatusBuf
	movra _STATUS
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_ZM6070	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SysInit
;   _SysTotalCloseTime
;   _SysLoadDetect
;   _SysStatusSwitchHandle
;   _SysInit
;   _SysTotalCloseTime
;   _SysLoadDetect
;   _SysStatusSwitchHandle
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	515; "ZM6070.c"	SysInit();    
	CALL	_SysInit
_00433_DS_
;	.line	521; "ZM6070.c"	overflow = 0;
	CLRR	_overflow
;	.line	526; "ZM6070.c"	SysTotalCloseTime();
	CALL	_SysTotalCloseTime
;	.line	528; "ZM6070.c"	SysLoadDetect();
	CALL	_SysLoadDetect
;	.line	530; "ZM6070.c"	SysStatusSwitchHandle();
	CALL	_SysStatusSwitchHandle
_00429_DS_
;	.line	533; "ZM6070.c"	SysClrWdt(); 
	clrwdt
;	.line	534; "ZM6070.c"	}while(overflow == 0);
	MOVAI	0x00
	ORAR	_overflow
	JBCLR	STATUS,2
	GOTO	_00429_DS_
	GOTO	_00433_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SysInit	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_SysInit	;Function start
; 2 exit points
;	.line	484; "ZM6070.c"	DDR1 = 0xD4;     //  1 as input
	MOVAI	0xd4
	MOVRA	_DDR1
;	.line	485; "ZM6070.c"	P1 = 0x00;
	CLRR	_P1
;	.line	488; "ZM6070.c"	T0CR = 0x07;
	MOVAI	0x07
	MOVRA	_T0CR
;	.line	489; "ZM6070.c"	T0CNT = 61;
	MOVAI	0x3d
	MOVRA	_T0CNT
;	.line	490; "ZM6070.c"	T0IE = 1;
	BSET	_INTECONbits,0
;	.line	492; "ZM6070.c"	gTempBackupP1 = P1;
	MOVAR	_P1
	MOVRA	_gTempBackupP1
;	.line	495; "ZM6070.c"	KBIM=0;
	CLRR	_KBIM
;	.line	496; "ZM6070.c"	KBIM1 = 1;
	BSET	_KBIMbits,1
;	.line	497; "ZM6070.c"	KBIM3 = 1;
	BSET	_KBIMbits,3
;	.line	498; "ZM6070.c"	KBIE = 1;
	BSET	_INTECONbits,1
;	.line	501; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gSysLoadStatus
;	.line	502; "ZM6070.c"	gPreSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gPreSysLoadStatus
;	.line	503; "ZM6070.c"	gSleepCnt = 0;
	CLRR	_gSleepCnt
	CLRR	(_gSleepCnt + 1)
;	.line	504; "ZM6070.c"	gPinStatus = 0;
	CLRR	_gPinStatus
;	.line	505; "ZM6070.c"	gTotalCloseTimeA = 0;
	CLRR	_gTotalCloseTimeA
;	.line	506; "ZM6070.c"	gTotalCloseTimeB = 0;
	CLRR	_gTotalCloseTimeB
;	.line	508; "ZM6070.c"	GIE = 1;
	BSET	_INTECONbits,7
	RETURN	
; exit point of _SysInit

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SysTotalCloseTime	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_SysTotalCloseTime	;Function start
; 2 exit points
;	.line	432; "ZM6070.c"	if((gSysLoadStatus == SYS_LOAD_NONE) || (gPreSysLoadStatus != gSysLoadStatus))
	MOVAI	0x00
	ORAR	_gSysLoadStatus
	JBCLR	STATUS,2
	GOTO	_00400_DS_
	MOVAR	_gSysLoadStatus
	XORAR	_gPreSysLoadStatus
	JBSET	STATUS,2
	GOTO	_00400_DS_
	GOTO	_00401_DS_
;;unsigned compare: left < lit(0x14=20), size=1
_00400_DS_
;	.line	434; "ZM6070.c"	if(gTotalCloseTimeA < SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeA
	JBCLR	STATUS,0
	GOTO	_00388_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	435; "ZM6070.c"	gTotalCloseTimeA++;
	INCR	_gTotalCloseTimeA
;;unsigned compare: left < lit(0x14=20), size=1
_00388_DS_
;	.line	436; "ZM6070.c"	if(gTotalCloseTimeB < SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeB
	JBCLR	STATUS,0
	GOTO	_00404_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	437; "ZM6070.c"	gTotalCloseTimeB++;
	INCR	_gTotalCloseTimeB
	GOTO	_00404_DS_
_00401_DS_
;	.line	439; "ZM6070.c"	else if(gSysLoadStatus == SYS_LOAD_A_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00398_DS_
;;unsigned compare: left < lit(0x14=20), size=1
;	.line	441; "ZM6070.c"	if(gTotalCloseTimeB < SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeB
	JBCLR	STATUS,0
	GOTO	_00404_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	442; "ZM6070.c"	gTotalCloseTimeB++;
	INCR	_gTotalCloseTimeB
	GOTO	_00404_DS_
_00398_DS_
;	.line	444; "ZM6070.c"	else if(gSysLoadStatus == SYS_LOAD_B_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00404_DS_
;;unsigned compare: left < lit(0x14=20), size=1
;	.line	446; "ZM6070.c"	if(gTotalCloseTimeA < SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeA
	JBCLR	STATUS,0
	GOTO	_00404_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	447; "ZM6070.c"	gTotalCloseTimeA++;
	INCR	_gTotalCloseTimeA
_00404_DS_
	RETURN	
; exit point of _SysTotalCloseTime

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SysLoadDetect	;Function start
; 2 exit points
;has an exit
;functions called:
;   _ResetSysConfig
;   _ResetSysConfig
;   _ResetSysConfig
;   _ResetSysConfig
;6 compiler assigned registers:
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;; Starting pCode block
_SysLoadDetect	;Function start
; 2 exit points
;	.line	173; "ZM6070.c"	if((gSysLoadStatus == SYS_LOAD_A_ON) || (gSysLoadStatus == SYS_LOAD_BOTH_ON))
	CLRR	r0x1012
	MOVAR	_gSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00357_DS_
	INCR	r0x1012
_00357_DS_
	MOVAI	0x00
	ORAR	r0x1012
	JBSET	STATUS,2
	GOTO	_00155_DS_
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00156_DS_
_00155_DS_
;	.line	175; "ZM6070.c"	load_debounceA = LOAD_DEBOUNCE_TO_OFF;
	MOVAI	0x1e
	MOVRA	r0x1013
;	.line	176; "ZM6070.c"	gPinStatus |= 0x04;
	BSET	_gPinStatus,2
	GOTO	_00157_DS_
_00156_DS_
;	.line	180; "ZM6070.c"	load_debounceA = LOAD_DEBOUNCE_TO_ON;
	MOVAI	0x0a
	MOVRA	r0x1013
_00157_DS_
;	.line	184; "ZM6070.c"	if(gSysLoadStatus == SYS_LOAD_B_ON || gSysLoadStatus == SYS_LOAD_BOTH_ON)
	CLRR	r0x1014
	MOVAR	_gSysLoadStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00358_DS_
	INCR	r0x1014
_00358_DS_
	MOVAI	0x00
	ORAR	r0x1014
	JBSET	STATUS,2
	GOTO	_00159_DS_
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00160_DS_
_00159_DS_
;	.line	186; "ZM6070.c"	load_debounceB = LOAD_DEBOUNCE_TO_OFF;
	MOVAI	0x1e
	MOVRA	r0x1015
;	.line	187; "ZM6070.c"	gPinStatus |= 0x08;
	BSET	_gPinStatus,3
	GOTO	_00161_DS_
_00160_DS_
;	.line	191; "ZM6070.c"	load_debounceB = LOAD_DEBOUNCE_TO_ON;
	MOVAI	0x0a
	MOVRA	r0x1015
_00161_DS_
;	.line	195; "ZM6070.c"	if(gPinStatus & 0x04)
	JBSET	_gPinStatus,2
	GOTO	_00182_DS_
;	.line	197; "ZM6070.c"	if((PIN_DETECT_A == 1) && ((gPinStatus & 0x01) == 0))
	CLRR	r0x1016
	JBCLR	_P1bits,4
	INCR	r0x1016
;;101	MOVAR	r0x1016
;;99	MOVRA	r0x1017
;;100	MOVAR	r0x1017
	MOVAR	r0x1016
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00169_DS_
	JBCLR	_gPinStatus,0
	GOTO	_00169_DS_
;	.line	199; "ZM6070.c"	if(gSysLoadStatus != SYS_LOAD_A_ON)
	MOVAI	0x00
	ORAR	r0x1012
	JBSET	STATUS,2
	GOTO	_00166_DS_
;	.line	200; "ZM6070.c"	gSysLoadDetectCntA++;
	INCR	_gSysLoadDetectCntA
	GOTO	_00183_DS_
;;unsigned compare: left < lit(0x1E=30), size=1
_00166_DS_
;	.line	203; "ZM6070.c"	if(gCntA_1 < LOAD_DEBOUNCE_TO_OFF)
	MOVAI	0x1e
	RSUBAR	_gCntA_1
	JBCLR	STATUS,0
	GOTO	_00183_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	204; "ZM6070.c"	gCntA_1++;
	INCR	_gCntA_1
	GOTO	_00183_DS_
_00169_DS_
;	.line	209; "ZM6070.c"	gSysLoadDetectCntA=0;
	CLRR	_gSysLoadDetectCntA
;	.line	210; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
	GOTO	_00183_DS_
_00182_DS_
;	.line	215; "ZM6070.c"	if(gPinStatus & 0x01)
	JBSET	_gPinStatus,0
	GOTO	_00179_DS_
;	.line	217; "ZM6070.c"	gSysLoadDetectCntA++;
	INCR	_gSysLoadDetectCntA
;	.line	218; "ZM6070.c"	gCntA++;
	INCR	_gCntA
	GOTO	_00183_DS_
_00179_DS_
;	.line	222; "ZM6070.c"	gSysLoadDetectCntA=0;
	CLRR	_gSysLoadDetectCntA
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xB=11), size=1
;	.line	223; "ZM6070.c"	if(gTotalCloseTimeA > 10)
	MOVAI	0x0b
	RSUBAR	_gTotalCloseTimeA
	JBSET	STATUS,0
	GOTO	_00183_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	225; "ZM6070.c"	if(((gPinStatus & 0x40)&&(gSysLoadStatus == SYS_LOAD_B_ON)) || gCurPortStatus !=0)
	JBSET	_gPinStatus,6
	GOTO	_00175_DS_
	MOVAI	0x00
	ORAR	r0x1014
	JBSET	STATUS,2
	GOTO	_00172_DS_
_00175_DS_
	MOVAI	0x00
	ORAR	_gCurPortStatus
	JBCLR	STATUS,2
	GOTO	_00173_DS_
_00172_DS_
;	.line	227; "ZM6070.c"	ResetSysConfig();      
	CALL	_ResetSysConfig
_00173_DS_
;	.line	230; "ZM6070.c"	gPinStatus &= 0xBF;
	BCLR	_gPinStatus,6
_00183_DS_
;	.line	235; "ZM6070.c"	if(gPinStatus & 0x08)
	JBSET	_gPinStatus,3
	GOTO	_00203_DS_
;	.line	237; "ZM6070.c"	if((PIN_DETECT_B == 1) && ((gPinStatus & 0x02) == 0))
	CLRR	r0x1012
	JBCLR	_P1bits,2
	INCR	r0x1012
;;103	MOVAR	r0x1012
;;102	MOVAR	r0x1014
	MOVAR	r0x1012
	MOVRA	r0x1014
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00190_DS_
	JBCLR	_gPinStatus,1
	GOTO	_00190_DS_
;	.line	239; "ZM6070.c"	if(gSysLoadStatus != SYS_LOAD_B_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00361_DS_
	GOTO	_00187_DS_
_00361_DS_
;	.line	240; "ZM6070.c"	gSysLoadDetectCntB++;
	INCR	_gSysLoadDetectCntB
	GOTO	_00204_DS_
;;unsigned compare: left < lit(0x1E=30), size=1
_00187_DS_
;	.line	243; "ZM6070.c"	if(gCntB_1 < LOAD_DEBOUNCE_TO_OFF)
	MOVAI	0x1e
	RSUBAR	_gCntB_1
	JBCLR	STATUS,0
	GOTO	_00204_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	244; "ZM6070.c"	gCntB_1++;
	INCR	_gCntB_1
	GOTO	_00204_DS_
_00190_DS_
;	.line	249; "ZM6070.c"	gCntB_1	 = 0;
	CLRR	_gCntB_1
;	.line	250; "ZM6070.c"	gSysLoadDetectCntB=0;
	CLRR	_gSysLoadDetectCntB
	GOTO	_00204_DS_
_00203_DS_
;	.line	255; "ZM6070.c"	if((gPinStatus &0x02))
	JBSET	_gPinStatus,1
	GOTO	_00200_DS_
;	.line	257; "ZM6070.c"	gSysLoadDetectCntB++;
	INCR	_gSysLoadDetectCntB
;	.line	258; "ZM6070.c"	gCntB++;
	INCR	_gCntB
	GOTO	_00204_DS_
_00200_DS_
;	.line	262; "ZM6070.c"	gSysLoadDetectCntB=0;
	CLRR	_gSysLoadDetectCntB
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xB=11), size=1
;	.line	263; "ZM6070.c"	if(gTotalCloseTimeB > 10)
	MOVAI	0x0b
	RSUBAR	_gTotalCloseTimeB
	JBSET	STATUS,0
	GOTO	_00204_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	265; "ZM6070.c"	if(((gPinStatus & 0x80)&&(gSysLoadStatus == SYS_LOAD_A_ON)) ||(gCurPortStatus !=0))
	JBSET	_gPinStatus,7
	GOTO	_00196_DS_
	MOVAR	_gSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00196_DS_
	GOTO	_00193_DS_
_00196_DS_
	MOVAI	0x00
	ORAR	_gCurPortStatus
	JBCLR	STATUS,2
	GOTO	_00194_DS_
_00193_DS_
;	.line	267; "ZM6070.c"	ResetSysConfig();
	CALL	_ResetSysConfig
_00194_DS_
;	.line	269; "ZM6070.c"	gPinStatus &= 0x7F;
	BCLR	_gPinStatus,7
_00204_DS_
;	.line	275; "ZM6070.c"	gPinStatus &= 0xF0;
	MOVAI	0xf0
	ANDRA	_gPinStatus
;	.line	278; "ZM6070.c"	if((gPinStatus & 0x10) && (gTotalCloseTimeA > 10))
	JBSET	_gPinStatus,4
	GOTO	_00208_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xB=11), size=1
	MOVAI	0x0b
	RSUBAR	_gTotalCloseTimeA
	JBSET	STATUS,0
	GOTO	_00208_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	280; "ZM6070.c"	gPinStatus &= 0xEF;
	BCLR	_gPinStatus,4
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x5=5), size=1
;	.line	281; "ZM6070.c"	if(gCntA > 4)
	MOVAI	0x05
	RSUBAR	_gCntA
	JBSET	STATUS,0
	GOTO	_00208_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	282; "ZM6070.c"	gPinStatus |= 0x40;
	BSET	_gPinStatus,6
_00208_DS_
;	.line	285; "ZM6070.c"	if((gPinStatus & 0x20) &&(gTotalCloseTimeB > 10))
	JBSET	_gPinStatus,5
	GOTO	_00213_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xB=11), size=1
	MOVAI	0x0b
	RSUBAR	_gTotalCloseTimeB
	JBSET	STATUS,0
	GOTO	_00213_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	287; "ZM6070.c"	gPinStatus &= 0xDF;    	       	
	BCLR	_gPinStatus,5
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x5=5), size=1
;	.line	288; "ZM6070.c"	if(gCntB > 4)
	MOVAI	0x05
	RSUBAR	_gCntB
	JBSET	STATUS,0
	GOTO	_00213_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	289; "ZM6070.c"	gPinStatus |= 0x80;
	BSET	_gPinStatus,7
_00213_DS_
;	.line	292; "ZM6070.c"	if(gSysLoadDetectCntA >= load_debounceA)
	MOVAR	r0x1013
	RSUBAR	_gSysLoadDetectCntA
	JBSET	STATUS,0
	GOTO	_00240_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	294; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	296; "ZM6070.c"	switch(gSysLoadStatus)
	MOVAI	0x04
	RSUBAR	_gSysLoadStatus
	JBCLR	STATUS,0
	GOTO	_00224_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAR	_gSysLoadStatus
	ADDRA	PCL
	GOTO	_00215_DS_
	GOTO	_00216_DS_
	GOTO	_00217_DS_
	GOTO	_00222_DS_
_00215_DS_
;	.line	299; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_A_ON;
	MOVAI	0x01
	MOVRA	_gSysLoadStatus
;	.line	300; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
;	.line	301; "ZM6070.c"	break;
	GOTO	_00224_DS_
_00216_DS_
;	.line	303; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gSysLoadStatus
;	.line	304; "ZM6070.c"	gTotalCloseTimeA = 0;
	CLRR	_gTotalCloseTimeA
;	.line	305; "ZM6070.c"	break;
	GOTO	_00224_DS_
_00217_DS_
;	.line	307; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_BOTH_ON;
	MOVAI	0x03
	MOVRA	_gSysLoadStatus
;;unsigned compare: left < lit(0x1E=30), size=1
;	.line	308; "ZM6070.c"	if(gCntB_1 >= LOAD_DEBOUNCE_TO_OFF)
	MOVAI	0x1e
	RSUBAR	_gCntB_1
	JBSET	STATUS,0
	GOTO	_00224_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	310; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
;	.line	311; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_A_ON;
	MOVAI	0x01
	MOVRA	_gSysLoadStatus
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x12=18), size=1
;	.line	312; "ZM6070.c"	if(gTotalCloseTimeA > (SYS_INTERVAL_CLOSE_TO_OPEN-3))
	MOVAI	0x12
	RSUBAR	_gTotalCloseTimeA
	JBSET	STATUS,0
	GOTO	_00224_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	314; "ZM6070.c"	gTotalCloseTimeA -=2;
	MOVAI	0xfe
	ADDRA	_gTotalCloseTimeA
;	.line	317; "ZM6070.c"	break;
	GOTO	_00224_DS_
_00222_DS_
;	.line	319; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_B_ON;
	MOVAI	0x02
	MOVRA	_gSysLoadStatus
;	.line	320; "ZM6070.c"	gTotalCloseTimeA = 0;
	CLRR	_gTotalCloseTimeA
;	.line	321; "ZM6070.c"	gPinStatus |= 0x10;
	BSET	_gPinStatus,4
;	.line	322; "ZM6070.c"	gCntA = 0;
	CLRR	_gCntA
;	.line	323; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
;	.line	324; "ZM6070.c"	gCntB_1 = 0;
	CLRR	_gCntB_1
_00224_DS_
;	.line	330; "ZM6070.c"	gSysLoadDetectCntA = 0;
	CLRR	_gSysLoadDetectCntA
;	.line	331; "ZM6070.c"	gSysChildStatus = SYS_CHILD_STATUS_INIT;
	CLRR	_gSysChildStatus
;	.line	333; "ZM6070.c"	if(gPinStatus & 0x40)
	JBSET	_gPinStatus,6
	GOTO	_00237_DS_
;	.line	335; "ZM6070.c"	gCurPortStatus = 0;
	CLRR	_gCurPortStatus
;	.line	336; "ZM6070.c"	A_OFF_WITHOUT_B();
	BCLR	_P1bits,5
;	.line	337; "ZM6070.c"	if(gSysLoadStatus != SYS_LOAD_BOTH_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00374_DS_
	GOTO	_00240_DS_
_00374_DS_
;	.line	338; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
	GOTO	_00240_DS_
_00237_DS_
;	.line	342; "ZM6070.c"	if((gPreSysLoadStatus == SYS_LOAD_BOTH_ON) || (gPreSysLoadStatus == SYS_LOAD_B_ON))
	MOVAR	_gPreSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00375_DS_
	GOTO	_00227_DS_
_00375_DS_
	MOVAR	_gPreSysLoadStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00228_DS_
_00227_DS_
;	.line	343; "ZM6070.c"	gTotalCloseTimeB = 0;
	CLRR	_gTotalCloseTimeB
_00228_DS_
;	.line	344; "ZM6070.c"	if(gSysLoadStatus == SYS_LOAD_B_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00234_DS_
;	.line	346; "ZM6070.c"	gCurPortStatus = PORT_B_ON_NO_QC;
	MOVAI	0x02
	MOVRA	_gCurPortStatus
;	.line	347; "ZM6070.c"	A_OFF_WITHOUT_B();
	BCLR	_P1bits,5
;	.line	348; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
	GOTO	_00240_DS_
_00234_DS_
;	.line	350; "ZM6070.c"	else if((gSysLoadStatus == SYS_LOAD_BOTH_ON) &&(gCurPortStatus == PORT_B_ON_NO_QC))
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00240_DS_
	MOVAR	_gCurPortStatus
	XORAI	0x02
	JBSET	STATUS,2
	GOTO	_00240_DS_
;	.line	352; "ZM6070.c"	A_OFF_WITHOUT_B();
	BCLR	_P1bits,5
_00240_DS_
;	.line	359; "ZM6070.c"	sss_buf = 0;
	CLRR	_sss_buf
;	.line	360; "ZM6070.c"	if(gSysLoadDetectCntB >= load_debounceB)
	MOVAR	r0x1015
	RSUBAR	_gSysLoadDetectCntB
	JBSET	STATUS,0
	GOTO	_00267_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	362; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	364; "ZM6070.c"	switch(gSysLoadStatus)
	MOVAI	0x04
	RSUBAR	_gSysLoadStatus
	JBCLR	STATUS,0
	GOTO	_00250_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAR	_gSysLoadStatus
	ADDRA	PCL
	GOTO	_00241_DS_
	GOTO	_00242_DS_
	GOTO	_00247_DS_
	GOTO	_00248_DS_
_00241_DS_
;	.line	367; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_B_ON;
	MOVAI	0x02
	MOVRA	_gSysLoadStatus
;	.line	368; "ZM6070.c"	gCntB_1 = 0;
	CLRR	_gCntB_1
;	.line	369; "ZM6070.c"	break;
	GOTO	_00250_DS_
_00242_DS_
;	.line	371; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_BOTH_ON;
	MOVAI	0x03
	MOVRA	_gSysLoadStatus
;;unsigned compare: left < lit(0x1E=30), size=1
;	.line	372; "ZM6070.c"	if(gCntA_1 >= LOAD_DEBOUNCE_TO_OFF)
	MOVAI	0x1e
	RSUBAR	_gCntA_1
	JBSET	STATUS,0
	GOTO	_00250_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	374; "ZM6070.c"	gCntB_1 =0;
	CLRR	_gCntB_1
;	.line	375; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_B_ON;
	MOVAI	0x02
	MOVRA	_gSysLoadStatus
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x12=18), size=1
;	.line	376; "ZM6070.c"	if(gTotalCloseTimeB > (SYS_INTERVAL_CLOSE_TO_OPEN-3))
	MOVAI	0x12
	RSUBAR	_gTotalCloseTimeB
	JBSET	STATUS,0
	GOTO	_00250_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	378; "ZM6070.c"	gTotalCloseTimeB -=2;
	MOVAI	0xfe
	ADDRA	_gTotalCloseTimeB
;	.line	381; "ZM6070.c"	break;
	GOTO	_00250_DS_
_00247_DS_
;	.line	383; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gSysLoadStatus
;	.line	384; "ZM6070.c"	gTotalCloseTimeB = 0;
	CLRR	_gTotalCloseTimeB
;	.line	385; "ZM6070.c"	break;
	GOTO	_00250_DS_
_00248_DS_
;	.line	387; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_A_ON;
	MOVAI	0x01
	MOVRA	_gSysLoadStatus
;	.line	388; "ZM6070.c"	gTotalCloseTimeB = 0;
	CLRR	_gTotalCloseTimeB
;	.line	389; "ZM6070.c"	gPinStatus |= 0x20;
	BSET	_gPinStatus,5
;	.line	390; "ZM6070.c"	gCntB = 0;
	CLRR	_gCntB
;	.line	391; "ZM6070.c"	gCntB_1 = 0;
	CLRR	_gCntB_1
;	.line	392; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
_00250_DS_
;	.line	398; "ZM6070.c"	gSysLoadDetectCntB = 0;
	CLRR	_gSysLoadDetectCntB
;	.line	399; "ZM6070.c"	gSysChildStatus = SYS_CHILD_STATUS_INIT;
	CLRR	_gSysChildStatus
;	.line	402; "ZM6070.c"	if(gPinStatus & 0x80)
	JBSET	_gPinStatus,7
	GOTO	_00263_DS_
;	.line	404; "ZM6070.c"	gCurPortStatus = 0;
	CLRR	_gCurPortStatus
;	.line	405; "ZM6070.c"	B_OFF_WITHOUT_A();
	BCLR	_P1bits,1
;	.line	406; "ZM6070.c"	if(gSysLoadStatus != SYS_LOAD_BOTH_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00381_DS_
	GOTO	_00267_DS_
_00381_DS_
;	.line	407; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
	GOTO	_00267_DS_
_00263_DS_
;	.line	411; "ZM6070.c"	if((gPreSysLoadStatus == SYS_LOAD_BOTH_ON) || (gPreSysLoadStatus == SYS_LOAD_A_ON))
	MOVAR	_gPreSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00382_DS_
	GOTO	_00253_DS_
_00382_DS_
	MOVAR	_gPreSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00254_DS_
_00253_DS_
;	.line	412; "ZM6070.c"	gTotalCloseTimeA = 0;
	CLRR	_gTotalCloseTimeA
_00254_DS_
;	.line	413; "ZM6070.c"	if(gSysLoadStatus == SYS_LOAD_A_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00260_DS_
;	.line	415; "ZM6070.c"	gCurPortStatus = PORT_A_ON_NO_QC;
	MOVAI	0x01
	MOVRA	_gCurPortStatus
;	.line	416; "ZM6070.c"	B_OFF_WITHOUT_A();
	BCLR	_P1bits,1
;	.line	417; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
	GOTO	_00267_DS_
_00260_DS_
;	.line	419; "ZM6070.c"	else if((gSysLoadStatus == SYS_LOAD_BOTH_ON) &&(gCurPortStatus == PORT_A_ON_NO_QC))
	MOVAR	_gSysLoadStatus
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00267_DS_
	MOVAR	_gCurPortStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00267_DS_
;	.line	421; "ZM6070.c"	B_OFF_WITHOUT_A();
	BCLR	_P1bits,1
_00267_DS_
	RETURN	
; exit point of _SysLoadDetect

;***
;  pBlock Stats: dbName = C
;***
;entry:  _SysStatusSwitchHandle	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_SysStatusSwitchHandle	;Function start
; 2 exit points
;	.line	105; "ZM6070.c"	if(gSysLoadStatus != gPreSysLoadStatus)
	MOVAR	_gPreSysLoadStatus
	XORAR	_gSysLoadStatus
	JBSET	STATUS,2
	GOTO	_00150_DS_
	GOTO	_00132_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
_00150_DS_
;	.line	107; "ZM6070.c"	switch(gSysLoadStatus)
	MOVAI	0x04
	RSUBAR	_gSysLoadStatus
	JBCLR	STATUS,0
	GOTO	_00132_DS_
;;genSkipc:3195: created from rifx:00DE608C
	MOVAR	_gSysLoadStatus
	ADDRA	PCL
	GOTO	_00109_DS_
	GOTO	_00113_DS_
	GOTO	_00113_DS_
	GOTO	_00123_DS_
_00109_DS_
;	.line	110; "ZM6070.c"	if(gSysChildStatus == SYS_CHILD_STATUS_INIT)
	MOVAI	0x00
	ORAR	_gSysChildStatus
	JBSET	STATUS,2
	GOTO	_00132_DS_
;	.line	112; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
;	.line	113; "ZM6070.c"	gCurPortStatus=0;
	CLRR	_gCurPortStatus
;	.line	115; "ZM6070.c"	break;
	GOTO	_00132_DS_
_00113_DS_
;	.line	118; "ZM6070.c"	if(gSysLoadStatus == SYS_LOAD_A_ON)
	MOVAR	_gSysLoadStatus
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00121_DS_
;;unsigned compare: left < lit(0x14=20), size=1
;	.line	120; "ZM6070.c"	if(gTotalCloseTimeA >= SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeA
	JBSET	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	122; "ZM6070.c"	QC_CTL_A = 0;
	BCLR	_P1bits,3
;	.line	124; "ZM6070.c"	gCntA = 0;
	CLRR	_gCntA
;	.line	125; "ZM6070.c"	gPinStatus &= 0xEF;
	BCLR	_gPinStatus,4
	GOTO	_00122_DS_
_00115_DS_
;	.line	128; "ZM6070.c"	return;
	GOTO	_00132_DS_
;;unsigned compare: left < lit(0x14=20), size=1
_00121_DS_
;	.line	132; "ZM6070.c"	if(gTotalCloseTimeB >= SYS_INTERVAL_CLOSE_TO_OPEN)
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeB
	JBSET	STATUS,0
	GOTO	_00118_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	134; "ZM6070.c"	QC_CTL_B = 0;          	       	
	BCLR	_P1bits,0
;	.line	137; "ZM6070.c"	gCntB = 0;
	CLRR	_gCntB
;	.line	138; "ZM6070.c"	gPinStatus &= 0xDF;
	BCLR	_gPinStatus,5
	GOTO	_00122_DS_
_00118_DS_
;	.line	141; "ZM6070.c"	return;
	GOTO	_00132_DS_
_00122_DS_
;	.line	143; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;    
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
;	.line	144; "ZM6070.c"	gCurPortStatus =0;
	CLRR	_gCurPortStatus
;	.line	145; "ZM6070.c"	break;
	GOTO	_00132_DS_
;;unsigned compare: left < lit(0x14=20), size=1
_00123_DS_
;	.line	147; "ZM6070.c"	if((gTotalCloseTimeA >= SYS_INTERVAL_CLOSE_TO_OPEN) && (gTotalCloseTimeB >= SYS_INTERVAL_CLOSE_TO_OPEN))
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeA
	JBSET	STATUS,0
	GOTO	_00125_DS_
;;genSkipc:3195: created from rifx:00DE608C
;;unsigned compare: left < lit(0x14=20), size=1
	MOVAI	0x14
	RSUBAR	_gTotalCloseTimeB
	JBSET	STATUS,0
	GOTO	_00125_DS_
;;genSkipc:3195: created from rifx:00DE608C
;	.line	151; "ZM6070.c"	gCntA = 0;
	CLRR	_gCntA
;	.line	152; "ZM6070.c"	gCntB = 0;
	CLRR	_gCntB
;	.line	153; "ZM6070.c"	gPinStatus &= 0xCF;
	MOVAI	0xcf
	ANDRA	_gPinStatus
	GOTO	_00126_DS_
_00125_DS_
;	.line	156; "ZM6070.c"	return;
	GOTO	_00132_DS_
_00126_DS_
;	.line	158; "ZM6070.c"	gPreSysLoadStatus = gSysLoadStatus;
	MOVAR	_gSysLoadStatus
	MOVRA	_gPreSysLoadStatus
;	.line	159; "ZM6070.c"	gCurPortStatus=0;
	CLRR	_gCurPortStatus
_00132_DS_
;	.line	163; "ZM6070.c"	}
	RETURN	
; exit point of _SysStatusSwitchHandle

;***
;  pBlock Stats: dbName = C
;***
;entry:  _ResetSysConfig	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_ResetSysConfig	;Function start
; 2 exit points
;	.line	89; "ZM6070.c"	gTotalCloseTimeA = 0;
	CLRR	_gTotalCloseTimeA
;	.line	90; "ZM6070.c"	gTotalCloseTimeB = 0;
	CLRR	_gTotalCloseTimeB
;	.line	91; "ZM6070.c"	gSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gSysLoadStatus
;	.line	92; "ZM6070.c"	gPreSysLoadStatus = SYS_LOAD_NONE;
	CLRR	_gPreSysLoadStatus
;	.line	93; "ZM6070.c"	gCntA = 0;
	CLRR	_gCntA
;	.line	94; "ZM6070.c"	gCntA_1 = 0;
	CLRR	_gCntA_1
;	.line	95; "ZM6070.c"	gCntB = 0;
	CLRR	_gCntB
;	.line	96; "ZM6070.c"	gCntB_1 = 0;
	CLRR	_gCntB_1
;	.line	97; "ZM6070.c"	gPinStatus = 0;
	CLRR	_gPinStatus
;	.line	98; "ZM6070.c"	gSysLoadDetectCntA = 0;
	CLRR	_gSysLoadDetectCntA
;	.line	99; "ZM6070.c"	gSysLoadDetectCntB = 0;
	CLRR	_gSysLoadDetectCntB
;	.line	100; "ZM6070.c"	gCurPortStatus=0;
	CLRR	_gCurPortStatus
	RETURN	
; exit point of _ResetSysConfig


;	code size estimation:
;	  536+    0 =   536 instructions ( 1072 byte)

	end
