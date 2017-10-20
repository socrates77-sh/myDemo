;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:26:50 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"sleep.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_WorkOnInit
	extern	_Detection
	extern	_Actuation
	extern	_ConsecutiveFive
	extern	_init
	extern	_ClrrRAM
	extern	_KeyScan
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
	extern	_WorkONInitStep
	extern	_LEDFlashTimes
	extern	_LEDFlashSpace
	extern	_RXDebounce
	extern	_RXCnt
	extern	_DetectSpace
	extern	_DetectStep
	extern	_SleepCnt
	extern	_MaxRunTimes
	extern	_MaxMotorTimes
	extern	_MotorFiveCnt
	extern	_PositionDelay
	extern	_Flag1
	extern	_Flag2
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
	global	_NeedSleep

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'NeedSleep'
;@NeedSleep WorkOnInit                Allocated to registers ;size:2
;@NeedSleep Detection                 Allocated to registers ;size:2
;@NeedSleep Actuation                 Allocated to registers ;size:2
;@NeedSleep ConsecutiveFive           Allocated to registers ;size:2
;@NeedSleep init                      Allocated to registers ;size:2
;@NeedSleep ClrrRAM                   Allocated to registers ;size:2
;@NeedSleep KeyScan                   Allocated to registers ;size:2
;@NeedSleep InitUart                  Allocated to registers ;size:2
;@NeedSleep EndUart                   Allocated to registers ;size:2
;@NeedSleep UartSendByte              Allocated to registers ;size:2
;@NeedSleep UartDelay                 Allocated to registers ;size:2
;@NeedSleep UartSendInt               Allocated to registers ;size:2
;@NeedSleep STATUSbits                Allocated to registers ;size:1
;@NeedSleep P0bits                    Allocated to registers ;size:1
;@NeedSleep P1bits                    Allocated to registers ;size:1
;@NeedSleep MCRbits                   Allocated to registers ;size:1
;@NeedSleep KBIMbits                  Allocated to registers ;size:1
;@NeedSleep PDCONbits                 Allocated to registers ;size:1
;@NeedSleep ODCONbits                 Allocated to registers ;size:1
;@NeedSleep PUCONbits                 Allocated to registers ;size:1
;@NeedSleep INTECONbits               Allocated to registers ;size:1
;@NeedSleep INTFLAGbits               Allocated to registers ;size:1
;@NeedSleep T0CRbits                  Allocated to registers ;size:1
;@NeedSleep DDR0bits                  Allocated to registers ;size:1
;@NeedSleep DDR1bits                  Allocated to registers ;size:1
;@NeedSleep TMCRbits                  Allocated to registers ;size:1
;@NeedSleep T1CRbits                  Allocated to registers ;size:1
;@NeedSleep WorkONInitStep            Allocated to registers ;size:1
;@NeedSleep LEDFlashTimes             Allocated to registers ;size:1
;@NeedSleep LEDFlashSpace             Allocated to registers ;size:1
;@NeedSleep RXDebounce                Allocated to registers ;size:1
;@NeedSleep RXCnt                     Allocated to registers ;size:1
;@NeedSleep DetectSpace               Allocated to registers ;size:1
;@NeedSleep DetectStep                Allocated to registers ;size:1
;@NeedSleep SleepCnt                  Allocated to registers ;size:1
;@NeedSleep MaxRunTimes               Allocated to registers ;size:2
;@NeedSleep MaxMotorTimes             Allocated to registers ;size:2
;@NeedSleep MotorFiveCnt              Allocated to registers ;size:1
;@NeedSleep PositionDelay             Allocated to registers ;size:1
;@NeedSleep Flag1                     Allocated to registers ;size:1
;@NeedSleep Flag2                     Allocated to registers ;size:1
;@NeedSleep UartStep                  Allocated to registers ;size:1
;@NeedSleep UartTemp                  Allocated to registers ;size:1
;@NeedSleep INDF                      Allocated to registers ;size:1
;@NeedSleep T0CNT                     Allocated to registers ;size:1
;@NeedSleep PCL                       Allocated to registers ;size:1
;@NeedSleep STATUS                    Allocated to registers ;size:1
;@NeedSleep FSR                       Allocated to registers ;size:1
;@NeedSleep P0                        Allocated to registers ;size:1
;@NeedSleep P1                        Allocated to registers ;size:1
;@NeedSleep MCR                       Allocated to registers ;size:1
;@NeedSleep KBIM                      Allocated to registers ;size:1
;@NeedSleep PCLATH                    Allocated to registers ;size:1
;@NeedSleep PDCON                     Allocated to registers ;size:1
;@NeedSleep ODCON                     Allocated to registers ;size:1
;@NeedSleep PUCON                     Allocated to registers ;size:1
;@NeedSleep INTECON                   Allocated to registers ;size:1
;@NeedSleep INTFLAG                   Allocated to registers ;size:1
;@NeedSleep T0CR                      Allocated to registers ;size:1
;@NeedSleep DDR0                      Allocated to registers ;size:1
;@NeedSleep DDR1                      Allocated to registers ;size:1
;@NeedSleep TMCR                      Allocated to registers ;size:1
;@NeedSleep T1CR                      Allocated to registers ;size:1
;@NeedSleep T1CNT                     Allocated to registers ;size:1
;@NeedSleep T1LOAD                    Allocated to registers ;size:1
;@NeedSleep T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'NeedSleep';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_sleep	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _NeedSleep	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_NeedSleep	;Function start
; 2 exit points
;	.line	10; "sleep.c"	}
	RETURN	
; exit point of _NeedSleep


;	code size estimation:
;	    1+    0 =     1 instructions (    2 byte)

	end
