;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.3 (Jul 18 2013) (MINGW32)
; This file was generated Thu Dec 12 11:10:13 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"test32p21.c"
	list	p=32p21
	radix dec
	include "mc32p21.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_InitialSys
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
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_ABuf
	global	_StatusBuf
	global	_Keycode
	global	_DisplayMode
	global	_MasterTime_1ms
	global	_MasterTime_10ms
	global	_MasterTime_100ms
	global	_MasterTime_1s
	global	_sleeptime
	global	_key_cnt
	global	_key_time
	global	_key_press_time
	global	_short_press_time
	global	_BAT_avgAD
	global	_Load_avgAD
	global	_Last_BATAD
	global	_Load_avgAD2
	global	_NoLoadCount
	global	_ZNB602Register
	global	_Flag
	global	_Flag1

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
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
UD_test32p21_0	udata
_ABuf	res	1

UD_test32p21_1	udata
_StatusBuf	res	1

UD_test32p21_2	udata
_Keycode	res	1

UD_test32p21_3	udata
_DisplayMode	res	1

UD_test32p21_4	udata
_MasterTime_1ms	res	1

UD_test32p21_5	udata
_MasterTime_10ms	res	1

UD_test32p21_6	udata
_MasterTime_100ms	res	1

UD_test32p21_7	udata
_MasterTime_1s	res	1

UD_test32p21_8	udata
_sleeptime	res	1

UD_test32p21_9	udata
_key_cnt	res	1

UD_test32p21_10	udata
_key_time	res	1

UD_test32p21_11	udata
_key_press_time	res	1

UD_test32p21_12	udata
_short_press_time	res	1

UD_test32p21_13	udata
_BAT_avgAD	res	2

UD_test32p21_14	udata
_Load_avgAD	res	2

UD_test32p21_15	udata
_Last_BATAD	res	2

UD_test32p21_16	udata
_Load_avgAD2	res	2

UD_test32p21_17	udata
_NoLoadCount	res	1

UD_test32p21_18	udata
_ZNB602Register	res	6

UD_test32p21_19	udata
_Flag	res	1

UD_test32p21_20	udata
_Flag1	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_test32p21	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _InitialSys
;   _InitialSys
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	17; "test32p21.c"	GIE = 0;
	BCLR	_MCRbits,7
;	.line	18; "test32p21.c"	InitialSys();
	CALL	_InitialSys
;	.line	20; "test32p21.c"	GIE = 1;
	BSET	_MCRbits,7
_00109_DS_
;	.line	23; "test32p21.c"	if(InQt_Flag) P14 = 1;
	JBSET	_Flag,7
	GOTO	_00106_DS_
	BSET	_IOP1bits,4
	GOTO	_00109_DS_
_00106_DS_
;	.line	24; "test32p21.c"	else P14 = 0;
	BCLR	_IOP1bits,4
	GOTO	_00109_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   10+    0 =    10 instructions (   20 byte)

	end
