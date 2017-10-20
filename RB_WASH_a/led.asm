;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Fri Oct 13 17:03:22 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"led.c"
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
