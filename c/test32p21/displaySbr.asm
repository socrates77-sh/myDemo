;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Nov 20 2013) (MINGW32)
; This file was generated Fri Dec 13 13:44:48 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"displaysbr.c"
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
	global	_Battery_MODE
	global	_Display_LED

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_displaysbr_0	udata
r0x1005	res	1
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
code_displaysbr	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _Display_LED	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1005
;; Starting pCode block
_Display_LED	;Function start
; 2 exit points
;	.line	38; "displaysbr.c"	if(CHRG)
	JBSET	_IOP1bits,1
	GOTO	_00160_DS_
;	.line	40; "displaysbr.c"	LED1 = ONLED;LED2 = ONLED;LED3 = ONLED;LED4 = ONLED;
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BSET	_IOP1bits,2
	GOTO	_00162_DS_
;;unsigned compare: left < lit(0x1=1), size=1
_00160_DS_
;	.line	45; "displaysbr.c"	switch(DisplayMode)
	MOVAI	0x01
	RSUBAR	_DisplayMode
	JBSET	STATUS,0
	GOTO	_00162_DS_
;;genSkipc:3246: created from rifx:0022608C
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x5=5), size=1
	MOVAI	0x05
	RSUBAR	_DisplayMode
	JBCLR	STATUS,0
	GOTO	_00162_DS_
;;genSkipc:3246: created from rifx:0022608C
	DECAR	_DisplayMode
	MOVRA	r0x1005
	MOVAI	HIGH(_00188_DS_)
	MOVRA	PCLATH
	MOVAI	_00188_DS_
	ADDAR	r0x1005
	JBCLR	STATUS,0
	INCR	PCLATH
	BANKSEL	PCL
	MOVRA	PCL
_00188_DS_
	GOTO	_00129_DS_
	GOTO	_00136_DS_
	GOTO	_00143_DS_
	GOTO	_00150_DS_
_00129_DS_
;	.line	48; "displaysbr.c"	if(Power_Flag)
	JBSET	_Flag,1
	GOTO	_00134_DS_
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	50; "displaysbr.c"	if(MasterTime_100ms<5){ LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;} 
	MOVAI	0x05
	RSUBAR	_MasterTime_100ms
	JBCLR	STATUS,0
	GOTO	_00131_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00131_DS_
;	.line	51; "displaysbr.c"	else{LED1=OFFLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
	BCLR	_IOP1bits,4
	BCLR	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00134_DS_
;	.line	55; "displaysbr.c"	LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
;	.line	57; "displaysbr.c"	break;
	GOTO	_00162_DS_
_00136_DS_
;	.line	60; "displaysbr.c"	if(Power_Flag)
	JBSET	_Flag,1
	GOTO	_00141_DS_
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	62; "displaysbr.c"	if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;} 
	MOVAI	0x05
	RSUBAR	_MasterTime_100ms
	JBCLR	STATUS,0
	GOTO	_00138_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00138_DS_
;	.line	63; "displaysbr.c"	else{ LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
	BSET	_IOP1bits,4
	BCLR	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00141_DS_
;	.line	67; "displaysbr.c"	LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
;	.line	69; "displaysbr.c"	break;
	GOTO	_00162_DS_
_00143_DS_
;	.line	72; "displaysbr.c"	if(Power_Flag)
	JBSET	_Flag,1
	GOTO	_00148_DS_
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	74; "displaysbr.c"	if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;} 
	MOVAI	0x05
	RSUBAR	_MasterTime_100ms
	JBCLR	STATUS,0
	GOTO	_00145_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00145_DS_
;	.line	75; "displaysbr.c"	else{ LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;}
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BCLR	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00148_DS_
;	.line	79; "displaysbr.c"	LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BCLR	_IOP1bits,2
;	.line	81; "displaysbr.c"	break;
	GOTO	_00162_DS_
_00150_DS_
;	.line	84; "displaysbr.c"	if(Power_Flag)
	JBSET	_Flag,1
	GOTO	_00155_DS_
;;unsigned compare: left < lit(0x5=5), size=1
;	.line	86; "displaysbr.c"	if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;} 
	MOVAI	0x05
	RSUBAR	_MasterTime_100ms
	JBCLR	STATUS,0
	GOTO	_00152_DS_
;;genSkipc:3246: created from rifx:0022608C
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BSET	_IOP1bits,2
	GOTO	_00162_DS_
_00152_DS_
;	.line	87; "displaysbr.c"	else{LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;}
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BCLR	_IOP1bits,2
	GOTO	_00162_DS_
_00155_DS_
;	.line	91; "displaysbr.c"	LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;
	BSET	_IOP1bits,4
	BSET	_IOP1bits,5
	BSET	_IOP1bits,3
	BSET	_IOP1bits,2
_00162_DS_
;	.line	96; "displaysbr.c"	}
	RETURN	
; exit point of _Display_LED

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Battery_MODE	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Battery_MODE	;Function start
; 2 exit points
;;unsigned compare: left < lit(0x280=640), size=2
;	.line	11; "displaysbr.c"	if(BAT_avgAD < BATAhAD1)
	MOVAI	0x02
	RSUBAR	(_BAT_avgAD + 1)
	JBSET	STATUS,2
	GOTO	_00122_DS_
	MOVAI	0x80
	RSUBAR	_BAT_avgAD
_00122_DS_
	JBCLR	STATUS,0
	GOTO	_00112_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	13; "displaysbr.c"	DisplayMode = 1;
	MOVAI	0x01
	MOVRA	_DisplayMode
	GOTO	_00114_DS_
;;unsigned compare: left < lit(0x28F=655), size=2
_00112_DS_
;	.line	17; "displaysbr.c"	if(BAT_avgAD < BATAhAD2)
	MOVAI	0x02
	RSUBAR	(_BAT_avgAD + 1)
	JBSET	STATUS,2
	GOTO	_00123_DS_
	MOVAI	0x8f
	RSUBAR	_BAT_avgAD
_00123_DS_
	JBCLR	STATUS,0
	GOTO	_00109_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	19; "displaysbr.c"	DisplayMode = 2;
	MOVAI	0x02
	MOVRA	_DisplayMode
	GOTO	_00114_DS_
;;unsigned compare: left < lit(0x2D2=722), size=2
_00109_DS_
;	.line	23; "displaysbr.c"	if(BAT_avgAD < BATAhAD3)
	MOVAI	0x02
	RSUBAR	(_BAT_avgAD + 1)
	JBSET	STATUS,2
	GOTO	_00124_DS_
	MOVAI	0xd2
	RSUBAR	_BAT_avgAD
_00124_DS_
	JBCLR	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3246: created from rifx:0022608C
;	.line	25; "displaysbr.c"	DisplayMode = 3;
	MOVAI	0x03
	MOVRA	_DisplayMode
	GOTO	_00114_DS_
_00106_DS_
;	.line	29; "displaysbr.c"	DisplayMode = 4;
	MOVAI	0x04
	MOVRA	_DisplayMode
_00114_DS_
	RETURN	
; exit point of _Battery_MODE


;	code size estimation:
;	  148+    1 =   149 instructions (  300 byte)

	end
