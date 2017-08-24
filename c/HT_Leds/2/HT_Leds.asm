;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Jan  7 2016) (MINGW32)
; This file was generated Thu Jun 22 17:50:28 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"HT_Leds.c"
	list	p=6060
	radix dec
	include "6060.inc"
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
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_IIC_read_onebyte
	global	_IIC_write_onebyte
	global	_I2C_ReceiveByte
	global	_I2C_SendByte
	global	_I2C_NoAck
	global	_I2C_Ack
	global	_I2C_Stop
	global	_I2C_Start
	global	_I2C_delay
	global	_Ir_Decode
	global	_Timecontr
	global	_Init_sys
	global	_InitRam
	global	_stop
	global	_main
	global	_int_isr
	global	_n
	global	_ABuf
	global	_StatusBuf
	global	_R_r1
	global	_R_keycount
	global	_R_keyvalue
	global	_R_keybak
	global	_R_timer0count
	global	_R_irtimes
	global	_R_irbytes
	global	_R_irdata
	global	_R_ircount
	global	_R_irtable
	global	_R_timecontr1
	global	_R_timecontr2
	global	_R_timecontr3
	global	_R_timecontr4
	global	_Flag1
	global	_Flag2
	global	_time_us1
	global	_time_key
	global	_time_beep
	global	_key_id
	global	_led_state
	global	_ir_state
	global	_iic_data
	global	_Tab_data
	global	_Tab_data1
	global	_Tab_data2
	global	_Tab_data3
	global	_Tab_data4
	global	_Tab_data5
	global	_Tab_data6
	global	_Tab_data7
	global	_Tab_data8
	global	_Tab_data9
	global	_Tab_data10
	global	_Tab_data11
	global	_GPR

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
UD_HT_Leds_0	udata
_ABuf	res	1

UD_HT_Leds_1	udata
_R_r1	res	1

UD_HT_Leds_2	udata
_R_keycount	res	1

UD_HT_Leds_3	udata
_R_keyvalue	res	1

UD_HT_Leds_4	udata
_R_keybak	res	1

UD_HT_Leds_5	udata
_R_timer0count	res	1

UD_HT_Leds_6	udata
_R_irtimes	res	1

UD_HT_Leds_7	udata
_R_irbytes	res	1

UD_HT_Leds_8	udata
_R_irtable	res	4

UD_HT_Leds_9	udata
_R_timecontr1	res	1

UD_HT_Leds_10	udata
_R_timecontr2	res	1

UD_HT_Leds_11	udata
_R_timecontr3	res	1

UD_HT_Leds_12	udata
_R_timecontr4	res	1

UD_HT_Leds_13	udata
_Flag1	res	1

UD_HT_Leds_14	udata
_Flag2	res	1

UD_HT_Leds_15	udata
_time_us1	res	1

UD_HT_Leds_16	udata
_time_key	res	1

UD_HT_Leds_17	udata
_time_beep	res	1

UD_HT_Leds_18	udata
_key_id	res	1

UD_HT_Leds_19	udata
_led_state	res	1

UD_HT_Leds_20	udata
_ir_state	res	1

UD_HT_Leds_21	udata
_iic_data	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_HT_Leds_7	udata_ovr	0x0007
_GPR
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_HT_Leds_0	udata
r0x101B	res	1
r0x101C	res	1
r0x101A	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1018	res	1
r0x1019	res	1
r0x1017	res	1
r0x101D	res	1
r0x101E	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_HT_Leds_0	idata
_n
	db	0x00


ID_HT_Leds_1	idata
_StatusBuf
	db	0x00


ID_HT_Leds_2	idata
_R_irdata
	db	0x00


ID_HT_Leds_3	idata
_R_ircount
	db	0x00


ID_HT_Leds_4	code
_Tab_data
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_5	code
_Tab_data1
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_6	code
_Tab_data2
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_7	code
_Tab_data3
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_8	code
_Tab_data4
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_9	code
_Tab_data5
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_10	code
_Tab_data6
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_11	code
_Tab_data7
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_12	code
_Tab_data8
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_13	code
_Tab_data9
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_14	code
_Tab_data10
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


ID_HT_Leds_15	code
_Tab_data11
	retai 0x01
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22
	retai 0x17
	retai 0x09
	retai 0x11
	retai 0x22


;@Allocation info for local variables in function 'Ir_Decode'
;@Ir_Decode I2C_delay                 Allocated to registers ;size:2
;@Ir_Decode I2C_Start                 Allocated to registers ;size:2
;@Ir_Decode I2C_Stop                  Allocated to registers ;size:2
;@Ir_Decode I2C_Ack                   Allocated to registers ;size:2
;@Ir_Decode I2C_NoAck                 Allocated to registers ;size:2
;@Ir_Decode I2C_SendByte              Allocated to registers ;size:2
;@Ir_Decode I2C_ReceiveByte           Allocated to registers ;size:2
;@Ir_Decode IIC_write_onebyte         Allocated to registers ;size:2
;@Ir_Decode IIC_read_onebyte          Allocated to registers ;size:2
;@Ir_Decode Ir_Decode                 Allocated to registers ;size:2
;@Ir_Decode INDFbits                  Allocated to registers ;size:1
;@Ir_Decode PCLbits                   Allocated to registers ;size:1
;@Ir_Decode STATUSbits                Allocated to registers ;size:1
;@Ir_Decode FSRbits                   Allocated to registers ;size:1
;@Ir_Decode P0bits                    Allocated to registers ;size:1
;@Ir_Decode P1bits                    Allocated to registers ;size:1
;@Ir_Decode MCRbits                   Allocated to registers ;size:1
;@Ir_Decode KBIMbits                  Allocated to registers ;size:1
;@Ir_Decode PCLATHbits                Allocated to registers ;size:1
;@Ir_Decode PDCONbits                 Allocated to registers ;size:1
;@Ir_Decode ODCONbits                 Allocated to registers ;size:1
;@Ir_Decode PUCONbits                 Allocated to registers ;size:1
;@Ir_Decode INTECONbits               Allocated to registers ;size:1
;@Ir_Decode INTFLAGbits               Allocated to registers ;size:1
;@Ir_Decode T0CRbits                  Allocated to registers ;size:1
;@Ir_Decode TM0CRbits                 Allocated to registers ;size:1
;@Ir_Decode T0CNTbits                 Allocated to registers ;size:1
;@Ir_Decode DDR0bits                  Allocated to registers ;size:1
;@Ir_Decode DDR1bits                  Allocated to registers ;size:1
;@Ir_Decode T1CRbits                  Allocated to registers ;size:1
;@Ir_Decode PWMCRbits                 Allocated to registers ;size:1
;@Ir_Decode T1CNTbits                 Allocated to registers ;size:1
;@Ir_Decode T1LOADbits                Allocated to registers ;size:1
;@Ir_Decode T1DATA0bits               Allocated to registers ;size:1
;@Ir_Decode T1DATA1bits               Allocated to registers ;size:1
;@Ir_Decode T1DATA2bits               Allocated to registers ;size:1
;@Ir_Decode n                         Allocated to registers ;size:1
;@Ir_Decode ABuf                      Allocated to registers ;size:1
;@Ir_Decode StatusBuf                 Allocated to registers ;size:1
;@Ir_Decode R_r1                      Allocated to registers ;size:1
;@Ir_Decode R_keycount                Allocated to registers ;size:1
;@Ir_Decode R_keyvalue                Allocated to registers ;size:1
;@Ir_Decode R_keybak                  Allocated to registers ;size:1
;@Ir_Decode R_timer0count             Allocated to registers ;size:1
;@Ir_Decode R_irtimes                 Allocated to registers ;size:1
;@Ir_Decode R_irbytes                 Allocated to registers ;size:1
;@Ir_Decode R_irdata                  Allocated to registers ;size:1
;@Ir_Decode R_ircount                 Allocated to registers ;size:1
;@Ir_Decode R_irtable                 Allocated to registers ;size:4
;@Ir_Decode R_timecontr1              Allocated to registers ;size:1
;@Ir_Decode R_timecontr2              Allocated to registers ;size:1
;@Ir_Decode R_timecontr3              Allocated to registers ;size:1
;@Ir_Decode R_timecontr4              Allocated to registers ;size:1
;@Ir_Decode Flag1                     Allocated to registers ;size:1
;@Ir_Decode Flag2                     Allocated to registers ;size:1
;@Ir_Decode time_us1                  Allocated to registers ;size:1
;@Ir_Decode time_key                  Allocated to registers ;size:1
;@Ir_Decode time_beep                 Allocated to registers ;size:1
;@Ir_Decode key_id                    Allocated to registers ;size:1
;@Ir_Decode led_state                 Allocated to registers ;size:1
;@Ir_Decode ir_state                  Allocated to registers ;size:1
;@Ir_Decode iic_data                  Allocated to registers ;size:1
;@Ir_Decode INDF                      Allocated to registers ;size:1
;@Ir_Decode T0CNT                     Allocated to registers ;size:1
;@Ir_Decode PCL                       Allocated to registers ;size:1
;@Ir_Decode STATUS                    Allocated to registers ;size:1
;@Ir_Decode FSR                       Allocated to registers ;size:1
;@Ir_Decode P0                        Allocated to registers ;size:1
;@Ir_Decode P1                        Allocated to registers ;size:1
;@Ir_Decode GPR                       Allocated to registers ;size:1
;@Ir_Decode MCR                       Allocated to registers ;size:1
;@Ir_Decode KBIM                      Allocated to registers ;size:1
;@Ir_Decode PCLATH                    Allocated to registers ;size:1
;@Ir_Decode PDCON                     Allocated to registers ;size:1
;@Ir_Decode ODCON                     Allocated to registers ;size:1
;@Ir_Decode PUCON                     Allocated to registers ;size:1
;@Ir_Decode INTECON                   Allocated to registers ;size:1
;@Ir_Decode INTFLAG                   Allocated to registers ;size:1
;@Ir_Decode T0CR                      Allocated to registers ;size:1
;@Ir_Decode DDR0                      Allocated to registers ;size:1
;@Ir_Decode DDR1                      Allocated to registers ;size:1
;@Ir_Decode PWMCR                     Allocated to registers ;size:1
;@Ir_Decode T1DATA1                   Allocated to registers ;size:1
;@Ir_Decode T1DATA2                   Allocated to registers ;size:1
;@Ir_Decode TM0CR                     Allocated to registers ;size:1
;@Ir_Decode T1CR                      Allocated to registers ;size:1
;@Ir_Decode T1CNT                     Allocated to registers ;size:1
;@Ir_Decode T1LOAD                    Allocated to registers ;size:1
;@Ir_Decode T1DATA0                   Allocated to registers ;size:1
;@end Allocation info for local variables in function 'Ir_Decode';
;@Allocation info for local variables in function 'Timecontr'
;@end Allocation info for local variables in function 'Timecontr';
;@Allocation info for local variables in function 'Init_sys'
;@end Allocation info for local variables in function 'Init_sys';
;@Allocation info for local variables in function 'InitRam'
;@end Allocation info for local variables in function 'InitRam';
;@Allocation info for local variables in function 'stop'
;@end Allocation info for local variables in function 'stop';
;@Allocation info for local variables in function 'main'
;@main R0                        Allocated to registers ;size:2
;@end Allocation info for local variables in function 'main';
;@Allocation info for local variables in function 'I2C_delay'
;@I2C_delay i                         Allocated to registers r0x1014 ;size:1
;@end Allocation info for local variables in function 'I2C_delay';
;@Allocation info for local variables in function 'I2C_Start'
;@end Allocation info for local variables in function 'I2C_Start';
;@Allocation info for local variables in function 'I2C_Stop'
;@end Allocation info for local variables in function 'I2C_Stop';
;@Allocation info for local variables in function 'I2C_Ack'
;@end Allocation info for local variables in function 'I2C_Ack';
;@Allocation info for local variables in function 'I2C_NoAck'
;@end Allocation info for local variables in function 'I2C_NoAck';
;@Allocation info for local variables in function 'I2C_SendByte'
;@I2C_SendByte SendByte                  Allocated to registers r0x1015 ;size:1
;@I2C_SendByte i                         Allocated to registers r0x1016 ;size:1
;@end Allocation info for local variables in function 'I2C_SendByte';
;@Allocation info for local variables in function 'I2C_ReceiveByte'
;@I2C_ReceiveByte i                         Allocated to registers r0x1016 ;size:1
;@I2C_ReceiveByte ReceiveByte               Allocated to registers r0x1015 ;size:1
;@end Allocation info for local variables in function 'I2C_ReceiveByte';
;@Allocation info for local variables in function 'IIC_write_onebyte'
;@IIC_write_onebyte write_data                Allocated to registers r0x1019 ;size:1
;@IIC_write_onebyte write_add                 Allocated to registers r0x1018 ;size:1
;@end Allocation info for local variables in function 'IIC_write_onebyte';
;@Allocation info for local variables in function 'IIC_read_onebyte'
;@IIC_read_onebyte read_add                  Allocated to registers r0x1017 ;size:1
;@IIC_read_onebyte read_temp                 Allocated to registers ;size:1
;@IIC_read_onebyte i                         Allocated to registers ;size:1
;@end Allocation info for local variables in function 'IIC_read_onebyte';
;@Allocation info for local variables in function 'int_isr'
;@end Allocation info for local variables in function 'int_isr';

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
;functions called:
;   _Ir_Decode
;   _Ir_Decode
;2 compiler assigned registers:
;   r0x101D
;   r0x101E
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	867; "HT_Leds.c"	__endasm;
	movra _ABuf
	swapar _STATUS
	movra _StatusBuf
	
;	.line	870; "HT_Leds.c"	T0IF  = 0;
	BCLR	_INTFLAGbits,0
;	.line	871; "HT_Leds.c"	T0CNT = 160;  
	MOVAI	0xa0
	MOVRA	_T0CNT
;	.line	873; "HT_Leds.c"	time_us1++;
	INCR	_time_us1
;;unsigned compare: left < lit(0xCC=204), size=1
;	.line	874; "HT_Leds.c"	if(time_us1>=204)
	MOVAI	0xcc
	RSUBAR	_time_us1
	JBSET	STATUS,0
	GOTO	_00383_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	876; "HT_Leds.c"	time_us1 = 0;//20ms计时时间到
	CLRR	_time_us1
;	.line	877; "HT_Leds.c"	if(time_key > 0)
	MOVAI	0x00
	ORAR	_time_key
	JBCLR	STATUS,2
	GOTO	_00370_DS_
;	.line	879; "HT_Leds.c"	time_key--;
	DECR	_time_key
_00370_DS_
;	.line	881; "HT_Leds.c"	if(time_key == 0)
	MOVAI	0x00
	ORAR	_time_key
	JBSET	STATUS,2
	GOTO	_00372_DS_
;	.line	883; "HT_Leds.c"	time_key--;
	DECR	_time_key
_00372_DS_
;	.line	885; "HT_Leds.c"	if(time_beep > 0)
	MOVAI	0x00
	ORAR	_time_beep
	JBCLR	STATUS,2
	GOTO	_00374_DS_
;	.line	887; "HT_Leds.c"	time_beep--;
	DECR	_time_beep
_00374_DS_
;	.line	889; "HT_Leds.c"	if(time_beep== 0)
	MOVAI	0x00
	ORAR	_time_beep
	JBSET	STATUS,2
	GOTO	_00378_DS_
;	.line	891; "HT_Leds.c"	time_beep--;
	DECR	_time_beep
_00378_DS_
;	.line	898; "HT_Leds.c"	if(P00D == 1)
	CLRR	r0x101D
	JBCLR	_P0bits,0
	INCR	r0x101D
;;106	MOVAR	r0x101D
;;105	MOVAR	r0x101E
	MOVAR	r0x101D
	MOVRA	r0x101E
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00380_DS_
;	.line	899; "HT_Leds.c"	P0 &= ~0x01;
	MOVAR	_P0
	MOVRA	r0x101D
	MOVAI	0xfe
	ANDAR	r0x101D
	MOVRA	_P0
	GOTO	_00381_DS_
_00380_DS_
;	.line	901; "HT_Leds.c"	P0 |= 0x01; 
	BSET	_P0,0
_00381_DS_
;	.line	902; "HT_Leds.c"	P0 = ~P0; 
	COMAR	_P0
	MOVRA	_P0
_00383_DS_
;	.line	904; "HT_Leds.c"	P0 = ~P0; 
	COMAR	_P0
	MOVRA	_P0
;	.line	906; "HT_Leds.c"	R_timer0count++;
	INCR	_R_timer0count
;	.line	907; "HT_Leds.c"	if(F_irenflag==1)
	CLRR	r0x101D
	JBCLR	_Flag1,4
	INCR	r0x101D
;;102	MOVAR	r0x101D
;;101	MOVAR	r0x101E
	MOVAR	r0x101D
	MOVRA	r0x101E
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00385_DS_
;	.line	908; "HT_Leds.c"	Ir_Decode();
	CALL	_Ir_Decode
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xA=10), size=1
_00385_DS_
;	.line	909; "HT_Leds.c"	if(R_timer0count>9)
	MOVAI	0x0a
	RSUBAR	_R_timer0count
	JBSET	STATUS,0
	GOTO	_00387_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	911; "HT_Leds.c"	R_timer0count=0;
	CLRR	_R_timer0count
;	.line	912; "HT_Leds.c"	F_tm0flag = 1;
	BSET	_Flag1,1
_00387_DS_
;	.line	921; "HT_Leds.c"	__endasm;
	swapar _StatusBuf
	movra _STATUS
	swapr _ABuf
	swapar _ABuf
	
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_HT_Leds	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _InitRam
;   _Init_sys
;   _IIC_read_onebyte
;   _InitRam
;   _Init_sys
;   _IIC_read_onebyte
;1 compiler assigned register :
;   r0x101A
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	404; "HT_Leds.c"	GIE = 0;
	BCLR	_INTECONbits,7
;	.line	405; "HT_Leds.c"	DDR1 = R0;
	MOVAI	0x01
	MOVRA	_DDR1
;	.line	406; "HT_Leds.c"	DDR10 = R0;
	MOVAI	0x01
	MOVRA	r0x101A
	RRAR	r0x101A
	JBSET	STATUS,0
	BCLR	_DDR1bits,0
	JBCLR	STATUS,0
	BSET	_DDR1bits,0
;	.line	407; "HT_Leds.c"	ClrWdt();
	clrwdt
;	.line	408; "HT_Leds.c"	InitRam();
	CALL	_InitRam
;	.line	409; "HT_Leds.c"	Init_sys();
	CALL	_Init_sys
;	.line	410; "HT_Leds.c"	GIE = 1;
	BSET	_INTECONbits,7
;	.line	411; "HT_Leds.c"	led_state = 7;
	MOVAI	0x07
	MOVRA	_led_state
_00252_DS_
;	.line	414; "HT_Leds.c"	if(time_key == 0)
	MOVAI	0x00
	ORAR	_time_key
	JBSET	STATUS,2
	GOTO	_00220_DS_
;	.line	416; "HT_Leds.c"	KEY_SEND_PREV = 1;
	BSET	_P1bits,5
;	.line	417; "HT_Leds.c"	KEY_SEND_PLAY = 1;
	BSET	_P0bits,0
;	.line	418; "HT_Leds.c"	KEY_SEND_NEXT = 1;
	BSET	_P1bits,4
_00220_DS_
;	.line	422; "HT_Leds.c"	if(F_irokflag)
	JBSET	_Flag1,3
	GOTO	_00252_DS_
;	.line	424; "HT_Leds.c"	F_irokflag = 0;
	BCLR	_Flag1,3
;	.line	428; "HT_Leds.c"	if(time_beep == 0)
	MOVAI	0x00
	ORAR	_time_beep
	JBSET	STATUS,2
	GOTO	_00222_DS_
;	.line	430; "HT_Leds.c"	time_beep = 5;
	MOVAI	0x05
	MOVRA	_time_beep
_00222_DS_
;	.line	433; "HT_Leds.c"	switch(R_irtable[2])
	MOVAR	(_R_irtable + 2)
	MOVRA	r0x101A
	MOVAR	r0x101A
	XORAI	0x10
	JBSET	STATUS,2
	GOTO	_00300_DS_
	GOTO	_00235_DS_
_00300_DS_
	MOVAR	r0x101A
	XORAI	0x12
	JBSET	STATUS,2
	GOTO	_00301_DS_
	GOTO	_00224_DS_
_00301_DS_
	MOVAR	r0x101A
	XORAI	0x1c
	JBSET	STATUS,2
	GOTO	_00302_DS_
	GOTO	_00241_DS_
_00302_DS_
	MOVAR	r0x101A
	XORAI	0x1e
	JBSET	STATUS,2
	GOTO	_00303_DS_
	GOTO	_00252_DS_
_00303_DS_
	MOVAR	r0x101A
	XORAI	0x21
	JBSET	STATUS,2
	GOTO	_00304_DS_
	GOTO	_00228_DS_
_00304_DS_
	MOVAR	r0x101A
	XORAI	0x22
	JBSET	STATUS,2
	GOTO	_00305_DS_
	GOTO	_00238_DS_
_00305_DS_
	MOVAR	r0x101A
	XORAI	0x47
	JBSET	STATUS,2
	GOTO	_00306_DS_
	GOTO	_00233_DS_
_00306_DS_
	MOVAR	r0x101A
	XORAI	0x55
	JBSET	STATUS,2
	GOTO	_00307_DS_
	GOTO	_00244_DS_
_00307_DS_
	MOVAR	r0x101A
	XORAI	0x59
	JBSET	STATUS,2
	GOTO	_00308_DS_
	GOTO	_00225_DS_
_00308_DS_
	MOVAR	r0x101A
	XORAI	0x5a
	JBSET	STATUS,2
	GOTO	_00309_DS_
	GOTO	_00223_DS_
_00309_DS_
	MOVAR	r0x101A
	XORAI	0x5b
	JBSET	STATUS,2
	GOTO	_00310_DS_
	GOTO	_00252_DS_
_00310_DS_
	MOVAR	r0x101A
	XORAI	0x5c
	JBSET	STATUS,2
	GOTO	_00311_DS_
	GOTO	_00234_DS_
_00311_DS_
	GOTO	_00252_DS_
_00223_DS_
;	.line	436; "HT_Leds.c"	led_state = 6;
	MOVAI	0x06
	MOVRA	_led_state
;	.line	437; "HT_Leds.c"	T1DATA0 = 0x80;
	MOVAI	0x80
	MOVRA	_T1DATA0
;	.line	438; "HT_Leds.c"	T1DATA1 = 0x80;
	MOVAI	0x80
	MOVRA	_T1DATA1
;	.line	439; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00224_DS_
;	.line	441; "HT_Leds.c"	led_state = 0; 	
	CLRR	_led_state
;	.line	442; "HT_Leds.c"	T1DATA0 = 0;
	CLRR	_T1DATA0
;	.line	443; "HT_Leds.c"	T1DATA1 = 0;   	   	   	   	   	
	CLRR	_T1DATA1
;	.line	444; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00225_DS_
;	.line	446; "HT_Leds.c"	led_state++;
	INCR	_led_state
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	447; "HT_Leds.c"	if(led_state>=LED_STATE_MAX)
	MOVAI	0x0a
	RSUBAR	_led_state
	JBSET	STATUS,0
	GOTO	_00252_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	449; "HT_Leds.c"	led_state = LED_STATE_MAX;
	MOVAI	0x0a
	MOVRA	_led_state
;	.line	451; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00228_DS_
;	.line	453; "HT_Leds.c"	if(led_state>0)
	MOVAI	0x00
	ORAR	_led_state
	JBCLR	STATUS,2
	GOTO	_00230_DS_
;	.line	454; "HT_Leds.c"	led_state--;
	DECR	_led_state
_00230_DS_
;	.line	455; "HT_Leds.c"	if(led_state==0)
	MOVAI	0x00
	ORAR	_led_state
	JBSET	STATUS,2
	GOTO	_00252_DS_
;	.line	457; "HT_Leds.c"	led_state = 0;
	CLRR	_led_state
;	.line	459; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00233_DS_
;	.line	461; "HT_Leds.c"	IIC_read_onebyte(0);
	MOVAI	0x00
	CALL	_IIC_read_onebyte
;	.line	462; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00234_DS_
;	.line	464; "HT_Leds.c"	BT_POWER = 1;  	   	   	   	   	   	
	BSET	_P0bits,2
;	.line	465; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00235_DS_
;	.line	467; "HT_Leds.c"	BT_POWER = 0;      	   	   	   	   	   	
	BCLR	_P0bits,2
;	.line	468; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00238_DS_
;	.line	488; "HT_Leds.c"	if(time_key == 0)
	MOVAI	0x00
	ORAR	_time_key
	JBSET	STATUS,2
	GOTO	_00252_DS_
;	.line	490; "HT_Leds.c"	KEY_SEND_PREV = 0;
	BCLR	_P1bits,5
;	.line	491; "HT_Leds.c"	time_key = 5;
	MOVAI	0x05
	MOVRA	_time_key
;	.line	492; "HT_Leds.c"	key_id = 1;
	MOVAI	0x01
	MOVRA	_key_id
;	.line	494; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00241_DS_
;	.line	496; "HT_Leds.c"	if(time_key == 0)
	MOVAI	0x00
	ORAR	_time_key
	JBSET	STATUS,2
	GOTO	_00252_DS_
;	.line	498; "HT_Leds.c"	KEY_SEND_PLAY = 0;
	BCLR	_P0bits,0
;	.line	499; "HT_Leds.c"	time_key = 5;   
	MOVAI	0x05
	MOVRA	_time_key
;	.line	500; "HT_Leds.c"	key_id = 2;
	MOVAI	0x02
	MOVRA	_key_id
;	.line	502; "HT_Leds.c"	break;
	GOTO	_00252_DS_
_00244_DS_
;	.line	504; "HT_Leds.c"	if(time_key == 0)
	MOVAI	0x00
	ORAR	_time_key
	JBSET	STATUS,2
	GOTO	_00252_DS_
;	.line	506; "HT_Leds.c"	KEY_SEND_NEXT = 0;
	BCLR	_P1bits,4
;	.line	507; "HT_Leds.c"	time_key = 5;  
	MOVAI	0x05
	MOVRA	_time_key
;	.line	508; "HT_Leds.c"	key_id = 3;
	MOVAI	0x03
	MOVRA	_key_id
;	.line	516; "HT_Leds.c"	if(led_state == 7)
	GOTO	_00252_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_read_onebyte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_ReceiveByte
;   _I2C_NoAck
;   _I2C_Stop
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_Ack
;   _I2C_ReceiveByte
;   _I2C_NoAck
;   _I2C_Stop
;1 compiler assigned register :
;   r0x1017
;; Starting pCode block
_IIC_read_onebyte	;Function start
; 2 exit points
;	.line	832; "HT_Leds.c"	void IIC_read_onebyte(uchar read_add)
	MOVRA	r0x1017
;	.line	837; "HT_Leds.c"	I2C_Start();
	CALL	_I2C_Start
;	.line	838; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	839; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	840; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	841; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	842; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	843; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	844; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	845; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	846; "HT_Leds.c"	I2C_Ack();
	CALL	_I2C_Ack
;	.line	848; "HT_Leds.c"	I2C_SendByte(read_add);   //设置段内地址 
	MOVAR	r0x1017
	CALL	_I2C_SendByte
;	.line	849; "HT_Leds.c"	I2C_Ack();
	CALL	_I2C_Ack
;	.line	851; "HT_Leds.c"	I2C_Start();
	CALL	_I2C_Start
;	.line	852; "HT_Leds.c"	I2C_SendByte(0xa1); //读命令
	MOVAI	0xa1
	CALL	_I2C_SendByte
;	.line	853; "HT_Leds.c"	I2C_Ack();
	CALL	_I2C_Ack
;	.line	854; "HT_Leds.c"	iic_data = I2C_ReceiveByte();
	CALL	_I2C_ReceiveByte
	MOVRA	_iic_data
;	.line	856; "HT_Leds.c"	I2C_NoAck();
	CALL	_I2C_NoAck
;	.line	857; "HT_Leds.c"	I2C_Stop();   
	CALL	_I2C_Stop
	RETURN	
; exit point of _IIC_read_onebyte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_write_onebyte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_Stop
;   _I2C_Start
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_SendByte
;   _I2C_Stop
;3 compiler assigned registers:
;   r0x1018
;   STK00
;   r0x1019
;; Starting pCode block
_IIC_write_onebyte	;Function start
; 2 exit points
;	.line	818; "HT_Leds.c"	void IIC_write_onebyte(uchar write_add,uchar write_data)
	MOVRA	r0x1018
	MOVAR	STK00
	MOVRA	r0x1019
;	.line	820; "HT_Leds.c"	I2C_Start();
	CALL	_I2C_Start
;	.line	821; "HT_Leds.c"	I2C_SendByte(0xa0);       //器件地址
	MOVAI	0xa0
	CALL	_I2C_SendByte
;	.line	824; "HT_Leds.c"	I2C_SendByte(write_add);  //设置段内地址 
	MOVAR	r0x1018
	CALL	_I2C_SendByte
;	.line	827; "HT_Leds.c"	I2C_SendByte(write_data);  //写的数据
	MOVAR	r0x1019
	CALL	_I2C_SendByte
;	.line	829; "HT_Leds.c"	I2C_Stop();      
	CALL	_I2C_Stop
	RETURN	
; exit point of _IIC_write_onebyte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_ReceiveByte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;2 compiler assigned registers:
;   r0x1015
;   r0x1016
;; Starting pCode block
_I2C_ReceiveByte	;Function start
; 2 exit points
;	.line	801; "HT_Leds.c"	uchar ReceiveByte=0; 
	CLRR	r0x1015
;	.line	802; "HT_Leds.c"	SDA_H;     	       	           	       	       	  
	BSET	_DDR1bits,7
;	.line	803; "HT_Leds.c"	for(i=0;i<8;i++)
	CLRR	r0x1016
;;unsigned compare: left < lit(0x8=8), size=1
_00353_DS_
	MOVAI	0x08
	RSUBAR	r0x1016
	JBCLR	STATUS,0
	GOTO	_00356_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	805; "HT_Leds.c"	ReceiveByte<<=1;       
	BCLR	STATUS,0
	RLR	r0x1015
;	.line	806; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	807; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	808; "HT_Leds.c"	SCL_H; 	       	       	       	    //在SCL高电平期间读取数据
	BSET	_DDR1bits,6
;	.line	809; "HT_Leds.c"	I2C_delay();   	       	       	
	CALL	_I2C_delay
;	.line	810; "HT_Leds.c"	if(SDA_read) 
	JBSET	_P1bits,7
	GOTO	_00355_DS_
;	.line	811; "HT_Leds.c"	ReceiveByte|=0x01; 
	BSET	r0x1015,0
_00355_DS_
;	.line	803; "HT_Leds.c"	for(i=0;i<8;i++)
	INCR	r0x1016
	GOTO	_00353_DS_
_00356_DS_
;	.line	814; "HT_Leds.c"	SCL_L;     	       	       	       	   //数据读完后，将SCL拉低，等待下一位数据
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	815; "HT_Leds.c"	return ReceiveByte; 
	MOVAR	r0x1015
	RETURN	
; exit point of _I2C_ReceiveByte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_SendByte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;2 compiler assigned registers:
;   r0x1015
;   r0x1016
;; Starting pCode block
_I2C_SendByte	;Function start
; 2 exit points
;	.line	776; "HT_Leds.c"	void I2C_SendByte(uchar SendByte) //数据从高位到低位// 
	MOVRA	r0x1015
;	.line	779; "HT_Leds.c"	for(i=0;i<8;i++)
	CLRR	r0x1016
;;unsigned compare: left < lit(0x8=8), size=1
_00343_DS_
	MOVAI	0x08
	RSUBAR	r0x1016
	JBCLR	STATUS,0
	GOTO	_00346_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	781; "HT_Leds.c"	SCL_L; 	       	       	  //SCL低电平期间，数据可改变
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	782; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	783; "HT_Leds.c"	if((SendByte)&0x80) 
	JBSET	r0x1015,7
	GOTO	_00341_DS_
;	.line	784; "HT_Leds.c"	SDA_H;  
	BSET	_DDR1bits,7
	GOTO	_00342_DS_
_00341_DS_
;	.line	786; "HT_Leds.c"	SDA_L;    
	BCLR	_DDR1bits,7
_00342_DS_
	BCLR	_P1bits,7
;	.line	787; "HT_Leds.c"	SendByte<<=1; 
	BCLR	STATUS,0
	RLR	r0x1015
;	.line	788; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	789; "HT_Leds.c"	SCL_H; 	       	        //把数据送到SDA上后，拉高
	BSET	_DDR1bits,6
;	.line	790; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	779; "HT_Leds.c"	for(i=0;i<8;i++)
	INCR	r0x1016
	GOTO	_00343_DS_
_00346_DS_
;	.line	792; "HT_Leds.c"	SCL_L;     	       	       	//数据送出后，SCL拉低
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
	RETURN	
; exit point of _I2C_SendByte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_NoAck	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;; Starting pCode block
_I2C_NoAck	;Function start
; 2 exit points
;	.line	763; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	764; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	765; "HT_Leds.c"	SDA_H; 
	BSET	_DDR1bits,7
;	.line	766; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	767; "HT_Leds.c"	SCL_H; 
	BSET	_DDR1bits,6
;	.line	768; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	769; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	770; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
	RETURN	
; exit point of _I2C_NoAck

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_Ack	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;; Starting pCode block
_I2C_Ack	;Function start
; 2 exit points
;	.line	749; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	750; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	751; "HT_Leds.c"	SDA_L; 
	BCLR	_DDR1bits,7
	BCLR	_P1bits,7
;	.line	752; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	753; "HT_Leds.c"	SCL_H; 
	BSET	_DDR1bits,6
;	.line	754; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	755; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	756; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
	RETURN	
; exit point of _I2C_Ack

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_Stop	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;; Starting pCode block
_I2C_Stop	;Function start
; 2 exit points
;	.line	735; "HT_Leds.c"	SDA_L;
	BCLR	_DDR1bits,7
	BCLR	_P1bits,7
;	.line	736; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	737; "HT_Leds.c"	SCL_H; 
	BSET	_DDR1bits,6
;	.line	738; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	739; "HT_Leds.c"	SDA_H; 
	BSET	_DDR1bits,7
;	.line	740; "HT_Leds.c"	I2C_delay(); 
	CALL	_I2C_delay
;	.line	741; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	742; "HT_Leds.c"	I2C_delay();
	CALL	_I2C_delay
	RETURN	
; exit point of _I2C_Stop

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_Start	;Function start
; 2 exit points
;has an exit
;functions called:
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;   _I2C_delay
;; Starting pCode block
_I2C_Start	;Function start
; 2 exit points
;	.line	721; "HT_Leds.c"	SDA_H; 
	BSET	_DDR1bits,7
;	.line	722; "HT_Leds.c"	I2C_delay();
	CALL	_I2C_delay
;	.line	723; "HT_Leds.c"	SCL_H; 
	BSET	_DDR1bits,6
;	.line	724; "HT_Leds.c"	I2C_delay();   	  
	CALL	_I2C_delay
;	.line	725; "HT_Leds.c"	SDA_L; 
	BCLR	_DDR1bits,7
	BCLR	_P1bits,7
;	.line	726; "HT_Leds.c"	I2C_delay();   	       	       	       	       	               	
	CALL	_I2C_delay
;	.line	727; "HT_Leds.c"	SCL_L; 
	BCLR	_DDR1bits,6
	BCLR	_P1bits,6
;	.line	728; "HT_Leds.c"	I2C_delay();
	CALL	_I2C_delay
	RETURN	
; exit point of _I2C_Start

;***
;  pBlock Stats: dbName = C
;***
;entry:  _I2C_delay	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1014
;; Starting pCode block
_I2C_delay	;Function start
; 2 exit points
;	.line	711; "HT_Leds.c"	while(i)  
	MOVAI	0x64
	MOVRA	r0x1014
_00316_DS_
	MOVAI	0x00
	ORAR	r0x1014
	JBCLR	STATUS,2
	GOTO	_00319_DS_
;	.line	713; "HT_Leds.c"	i--;  
	DECR	r0x1014
	GOTO	_00316_DS_
_00319_DS_
	RETURN	
; exit point of _I2C_delay

;***
;  pBlock Stats: dbName = C
;***
;entry:  _stop	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_stop	;Function start
; 2 exit points
;	.line	391; "HT_Leds.c"	__endasm;
	nop
	nop
	bset P1,3
	nop
	nop
	nop
	nop
	nop
	NOP
	nop
	nop
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	NOP
	nop
	nop
	nop
	stop
	nop
	nop
	
	RETURN	
; exit point of _stop

;***
;  pBlock Stats: dbName = C
;***
;entry:  _InitRam	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_InitRam	;Function start
; 2 exit points
;	.line	339; "HT_Leds.c"	__endasm;  
	movai 0x3f
	movra FSR
	movai 47
	movra _GPR
	decr FSR
	clrr INDF
	djzr _GPR
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	goto $-3
	clrr INDF
	clrr _GPR
	
	RETURN	
; exit point of _InitRam

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Init_sys	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Init_sys	;Function start
; 2 exit points
;	.line	280; "HT_Leds.c"	P0    = 0xf1;  	//1111 0001
	MOVAI	0xf1
	MOVRA	_P0
;	.line	281; "HT_Leds.c"	DDR0  = 0x00;  //0000 0000 	0--输出
	CLRR	_DDR0
;	.line	282; "HT_Leds.c"	PUCON = 0x00;  //0--上拉 
	CLRR	_PUCON
;	.line	284; "HT_Leds.c"	P1    = 0xff;
	MOVAI	0xff
	MOVRA	_P1
;	.line	285; "HT_Leds.c"	DDR1  = 0x01;  //0000 0001 	0--输出
	MOVAI	0x01
	MOVRA	_DDR1
;	.line	286; "HT_Leds.c"	PUCON = 0x00;  //0--上拉 
	CLRR	_PUCON
;	.line	288; "HT_Leds.c"	T0CR  = 0x01;   
	MOVAI	0x01
	MOVRA	_T0CR
;	.line	289; "HT_Leds.c"	T0IE  = 1; 
	BSET	_INTECONbits,0
;	.line	291; "HT_Leds.c"	T1CR  = 0x00;   
	CLRR	_T1CR
;	.line	292; "HT_Leds.c"	TC1EN = 1;
	BSET	_T1CRbits,7
;	.line	295; "HT_Leds.c"	PWMCR = 0x42;      	//0100 0010
	MOVAI	0x42
	MOVRA	_PWMCR
;	.line	296; "HT_Leds.c"	PWM1E = 1;
	BSET	_PWMCRbits,1
;	.line	297; "HT_Leds.c"	T1CR = 0xc8;
	MOVAI	0xc8
	MOVRA	_T1CR
;	.line	298; "HT_Leds.c"	T1LOAD = 249;  	//T1LOAD=249 -- 15.85K
	MOVAI	0xf9
	MOVRA	_T1LOAD
;	.line	299; "HT_Leds.c"	T1DATA0 = 0x10;
	MOVAI	0x10
	MOVRA	_T1DATA0
;	.line	300; "HT_Leds.c"	T1DATA1 = 80;
	MOVAI	0x50
	MOVRA	_T1DATA1
	RETURN	
; exit point of _Init_sys

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Timecontr	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
_Timecontr	;Function start
; 2 exit points
;	.line	258; "HT_Leds.c"	R_timecontr1++;
	INCR	_R_timecontr1
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xFA=250), size=1
;	.line	259; "HT_Leds.c"	if(R_timecontr1>249)
	MOVAI	0xfa
	RSUBAR	_R_timecontr1
	JBSET	STATUS,0
	GOTO	_00202_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	261; "HT_Leds.c"	R_timecontr1 = 0;  //250ms
	CLRR	_R_timecontr1
;	.line	262; "HT_Leds.c"	F_t25flag    = 1;
	BSET	_Flag2,1
;	.line	263; "HT_Leds.c"	R_timecontr2++;
	INCR	_R_timecontr2
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0xF0=240), size=1
;	.line	264; "HT_Leds.c"	if(R_timecontr2>239)
	MOVAI	0xf0
	RSUBAR	_R_timecontr2
	JBSET	STATUS,0
	GOTO	_00202_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	266; "HT_Leds.c"	R_timecontr2=0;
	CLRR	_R_timecontr2
;	.line	267; "HT_Leds.c"	R_timecontr3++;
	INCR	_R_timecontr3
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x2=2), size=1
;	.line	268; "HT_Leds.c"	if(R_timecontr3>1) //29
	MOVAI	0x02
	RSUBAR	_R_timecontr3
	JBSET	STATUS,0
	GOTO	_00202_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	270; "HT_Leds.c"	R_timecontr3 = 0;
	CLRR	_R_timecontr3
;	.line	271; "HT_Leds.c"	F_tofflag    = 1;
	BSET	_Flag2,2
_00202_DS_
	RETURN	
; exit point of _Timecontr

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Ir_Decode	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x101B
;   r0x101C
;; Starting pCode block
_Ir_Decode	;Function start
; 2 exit points
;	.line	54; "HT_Leds.c"	if(F_irokflag==0)      
	JBCLR	_Flag1,3
	GOTO	_00189_DS_
;	.line	56; "HT_Leds.c"	if(F_irflag==0)      
	JBCLR	_Flag1,2
	GOTO	_00162_DS_
;	.line	58; "HT_Leds.c"	if(IR_read==0)      
	JBCLR	_P1bits,0
	GOTO	_00191_DS_
;	.line	60; "HT_Leds.c"	F_irflag = 1;
	BSET	_Flag1,2
;	.line	61; "HT_Leds.c"	F_leadflag=0;
	BCLR	_Flag1,5
;	.line	62; "HT_Leds.c"	F_hlflag = 0;//电平状态,低电平为0
	BCLR	_Flag1,6
;	.line	64; "HT_Leds.c"	R_irtimes = 0;
	CLRR	_R_irtimes
;	.line	65; "HT_Leds.c"	R_irbytes = 0;
	CLRR	_R_irbytes
;	.line	66; "HT_Leds.c"	R_irdata  = 0;
	CLRR	_R_irdata
;	.line	67; "HT_Leds.c"	R_ircount = 0;          
	CLRR	_R_ircount
	GOTO	_00191_DS_
_00162_DS_
;	.line	73; "HT_Leds.c"	if(F_leadflag==0)     
	JBCLR	_Flag1,5
	GOTO	_00159_DS_
;	.line	75; "HT_Leds.c"	if(F_hlflag==0)
	JBCLR	_Flag1,6
	GOTO	_00127_DS_
;	.line	77; "HT_Leds.c"	R_ircount++;
	INCR	_R_ircount
;;unsigned compare: left < lit(0x64=100), size=1
;	.line	78; "HT_Leds.c"	if(R_ircount<100) 
	MOVAI	0x64
	RSUBAR	_R_ircount
	JBCLR	STATUS,0
	GOTO	_00113_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	80; "HT_Leds.c"	if(IR_read==1)
	CLRR	r0x101B
	JBCLR	_P1bits,0
	INCR	r0x101B
;;108	MOVAR	r0x101B
;;107	MOVAR	r0x101C
	MOVAR	r0x101B
	MOVRA	r0x101C
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3D=61), size=1
;	.line	82; "HT_Leds.c"	if(R_ircount>60)
	MOVAI	0x3d
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00108_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	84; "HT_Leds.c"	R_ircount = 0;
	CLRR	_R_ircount
;	.line	85; "HT_Leds.c"	F_hlflag  = 1; 
	BSET	_Flag1,6
	GOTO	_00191_DS_
_00108_DS_
;	.line	88; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00113_DS_
;	.line	92; "HT_Leds.c"	F_irflag=0; 
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00127_DS_
;	.line	96; "HT_Leds.c"	R_ircount++; 
	INCR	_R_ircount
;;unsigned compare: left < lit(0x32=50), size=1
;	.line	97; "HT_Leds.c"	if(R_ircount<50)       
	MOVAI	0x32
	RSUBAR	_R_ircount
	CLRR	r0x101B
	JBSET	STATUS,0
	BSET	r0x101B,0
	MOVAI	0x00
	ORAR	r0x101B
	JBCLR	STATUS,2
	GOTO	_00124_DS_
;	.line	99; "HT_Leds.c"	if(IR_read==0)
	JBCLR	_P1bits,0
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x29=41), size=1
;	.line	101; "HT_Leds.c"	if(R_ircount>40)
	MOVAI	0x29
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00119_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	103; "HT_Leds.c"	if(R_ircount<50)
	MOVAI	0x00
	ORAR	r0x101B
	JBCLR	STATUS,2
	GOTO	_00116_DS_
;	.line	105; "HT_Leds.c"	R_ircount  = 0;
	CLRR	_R_ircount
;	.line	106; "HT_Leds.c"	F_hlflag   = 0;
	BCLR	_Flag1,6
;	.line	107; "HT_Leds.c"	F_leadflag = 1;
	BSET	_Flag1,5
	GOTO	_00191_DS_
_00116_DS_
;	.line	110; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00119_DS_
;	.line	113; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00124_DS_
;	.line	117; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00159_DS_
;	.line	124; "HT_Leds.c"	if(F_hlflag==0)
	JBCLR	_Flag1,6
	GOTO	_00156_DS_
;	.line	126; "HT_Leds.c"	R_ircount++;
	INCR	_R_ircount
;;unsigned compare: left < lit(0xA=10), size=1
;	.line	127; "HT_Leds.c"	if(R_ircount<10) 
	MOVAI	0x0a
	RSUBAR	_R_ircount
	JBCLR	STATUS,0
	GOTO	_00135_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	129; "HT_Leds.c"	if(IR_read==1)
	CLRR	r0x101B
	JBCLR	_P1bits,0
	INCR	r0x101B
;;104	MOVAR	r0x101B
;;103	MOVAR	r0x101C
	MOVAR	r0x101B
	MOVRA	r0x101C
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	131; "HT_Leds.c"	if(R_ircount>3)
	MOVAI	0x04
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00130_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	133; "HT_Leds.c"	R_ircount = 0;
	CLRR	_R_ircount
;	.line	134; "HT_Leds.c"	F_hlflag  = 1;                                              
	BSET	_Flag1,6
	GOTO	_00191_DS_
_00130_DS_
;	.line	137; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00135_DS_
;	.line	141; "HT_Leds.c"	F_irflag=0;     
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00156_DS_
;	.line	146; "HT_Leds.c"	R_ircount++; 
	INCR	_R_ircount
;;unsigned compare: left < lit(0x14=20), size=1
;	.line	147; "HT_Leds.c"	if(R_ircount<20)       
	MOVAI	0x14
	RSUBAR	_R_ircount
	JBCLR	STATUS,0
	GOTO	_00153_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	149; "HT_Leds.c"	if(IR_read==0)
	JBCLR	_P1bits,0
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3=3), size=1
;	.line	151; "HT_Leds.c"	if(R_ircount>2)
	MOVAI	0x03
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00191_DS_
;;genSkipc:3251: created from rifx:0022608C
;;unsigned compare: left < lit(0x8=8), size=1
;	.line	153; "HT_Leds.c"	if(R_ircount<8)
	MOVAI	0x08
	RSUBAR	_R_ircount
	JBCLR	STATUS,0
	GOTO	_00146_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	155; "HT_Leds.c"	R_ircount = 0;
	CLRR	_R_ircount
;	.line	156; "HT_Leds.c"	F_hlflag = 0;                                            
	BCLR	_Flag1,6
;;shiftRight_Left2ResultLit:5283: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	157; "HT_Leds.c"	R_irdata = R_irdata>>1;
	BCLR	STATUS,0
	RRR	_R_irdata
;	.line	158; "HT_Leds.c"	R_irtimes++;
	INCR	_R_irtimes
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x8=8), size=1
;	.line	159; "HT_Leds.c"	if(R_irtimes>7)
	MOVAI	0x08
	RSUBAR	_R_irtimes
	JBSET	STATUS,0
	GOTO	_00191_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	161; "HT_Leds.c"	R_irtimes = 0;
	CLRR	_R_irtimes
;	.line	162; "HT_Leds.c"	R_irtable[R_irbytes]=R_irdata;
	MOVAR	_R_irbytes
	ADDAI	(_R_irtable + 0)
	MOVRA	r0x101B
	MOVAI	high (_R_irtable + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x101C
	MOVAR	r0x101B
	MOVRA	FSR
	BCLR	STATUS,7
	JBCLR	r0x101C,0
	BSET	STATUS,7
	MOVAR	_R_irdata
	MOVRA	INDF
;	.line	163; "HT_Leds.c"	R_irbytes++;
	INCR	_R_irbytes
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	164; "HT_Leds.c"	if(R_irbytes>3)
	MOVAI	0x04
	RSUBAR	_R_irbytes
	JBSET	STATUS,0
	GOTO	_00191_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	166; "HT_Leds.c"	F_irokflag=1;
	BSET	_Flag1,3
;	.line	167; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00146_DS_
;	.line	173; "HT_Leds.c"	R_ircount = 0;
	CLRR	_R_ircount
;	.line	174; "HT_Leds.c"	F_hlflag  = 0;
	BCLR	_Flag1,6
;;shiftRight_Left2ResultLit:5283: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	175; "HT_Leds.c"	R_irdata  = R_irdata>>1;
	BCLR	STATUS,0
	RRR	_R_irdata
;	.line	176; "HT_Leds.c"	R_irdata  = R_irdata|0x80;
	BSET	_R_irdata,7
;	.line	177; "HT_Leds.c"	R_irtimes++;
	INCR	_R_irtimes
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x8=8), size=1
;	.line	178; "HT_Leds.c"	if(R_irtimes>7)
	MOVAI	0x08
	RSUBAR	_R_irtimes
	JBSET	STATUS,0
	GOTO	_00191_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	180; "HT_Leds.c"	R_irtimes = 0;
	CLRR	_R_irtimes
;	.line	181; "HT_Leds.c"	R_irtable[R_irbytes]=R_irdata;
	MOVAR	_R_irbytes
	ADDAI	(_R_irtable + 0)
	MOVRA	r0x101B
	MOVAI	high (_R_irtable + 0)
	JBCLR	STATUS,0
	ADDAI	0x01
	MOVRA	r0x101C
	MOVAR	r0x101B
	MOVRA	FSR
	BCLR	STATUS,7
	JBCLR	r0x101C,0
	BSET	STATUS,7
	MOVAR	_R_irdata
	MOVRA	INDF
;	.line	182; "HT_Leds.c"	R_irbytes++;
	INCR	_R_irbytes
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x4=4), size=1
;	.line	183; "HT_Leds.c"	if(R_irbytes>3)
	MOVAI	0x04
	RSUBAR	_R_irbytes
	JBSET	STATUS,0
	GOTO	_00191_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	185; "HT_Leds.c"	F_irokflag=1;
	BSET	_Flag1,3
;	.line	186; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00153_DS_
;	.line	194; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00189_DS_
;	.line	202; "HT_Leds.c"	if(F_irstopflag==0)     
	JBCLR	_Flag2,5
	GOTO	_00191_DS_
;	.line	204; "HT_Leds.c"	if(F_hlflag==0)
	JBCLR	_Flag1,6
	GOTO	_00184_DS_
;	.line	206; "HT_Leds.c"	R_ircount++;
	INCR	_R_ircount
;;unsigned compare: left < lit(0x64=100), size=1
;	.line	207; "HT_Leds.c"	if(R_ircount<100) 
	MOVAI	0x64
	RSUBAR	_R_ircount
	JBCLR	STATUS,0
	GOTO	_00170_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	209; "HT_Leds.c"	if(IR_read==1)
	CLRR	r0x101B
	JBCLR	_P1bits,0
	INCR	r0x101B
;;100	MOVAR	r0x101B
;;99	MOVAR	r0x101C
	MOVAR	r0x101B
	MOVRA	r0x101C
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x3D=61), size=1
;	.line	211; "HT_Leds.c"	if(R_ircount>60)
	MOVAI	0x3d
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00165_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	213; "HT_Leds.c"	R_ircount = 0;
	CLRR	_R_ircount
;	.line	214; "HT_Leds.c"	F_hlflag  = 1; 
	BSET	_Flag1,6
	GOTO	_00191_DS_
_00165_DS_
;	.line	217; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00170_DS_
;	.line	221; "HT_Leds.c"	F_irflag=0; 
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00184_DS_
;	.line	225; "HT_Leds.c"	R_ircount++; 
	INCR	_R_ircount
;;unsigned compare: left < lit(0x32=50), size=1
;	.line	226; "HT_Leds.c"	if(R_ircount<50)       
	MOVAI	0x32
	RSUBAR	_R_ircount
	CLRR	r0x101B
	JBSET	STATUS,0
	BSET	r0x101B,0
	MOVAI	0x00
	ORAR	r0x101B
	JBCLR	STATUS,2
	GOTO	_00181_DS_
;	.line	228; "HT_Leds.c"	if(IR_read==0)
	JBCLR	_P1bits,0
	GOTO	_00191_DS_
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x29=41), size=1
;	.line	230; "HT_Leds.c"	if(R_ircount>40)
	MOVAI	0x29
	RSUBAR	_R_ircount
	JBSET	STATUS,0
	GOTO	_00176_DS_
;;genSkipc:3251: created from rifx:0022608C
;	.line	232; "HT_Leds.c"	if(R_ircount<50)
	MOVAI	0x00
	ORAR	r0x101B
	JBCLR	STATUS,2
	GOTO	_00173_DS_
;	.line	234; "HT_Leds.c"	R_ircount  = 0;
	CLRR	_R_ircount
;	.line	235; "HT_Leds.c"	F_hlflag   = 0;
	BCLR	_Flag1,6
;	.line	236; "HT_Leds.c"	F_leadflag = 1;
	BSET	_Flag1,5
	GOTO	_00191_DS_
_00173_DS_
;	.line	239; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00176_DS_
;	.line	242; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
	GOTO	_00191_DS_
_00181_DS_
;	.line	246; "HT_Leds.c"	F_irflag=0;
	BCLR	_Flag1,2
_00191_DS_
	RETURN	
; exit point of _Ir_Decode


;	code size estimation:
;	  659+    0 =   659 instructions ( 1318 byte)

	end
