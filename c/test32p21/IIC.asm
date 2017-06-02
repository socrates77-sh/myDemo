;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.3 (Jul 18 2013) (MINGW32)
; This file was generated Wed Dec 11 14:50:47 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"IIC.c"
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
	extern	__gptrget1
	extern	__gptrput1

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
	global	_Delayus
	global	_IIC_Start
	global	_IIC_Stop
	global	_IIC_Host_Receive_Ack
	global	_IIC_Host_Send_Ack
	global	_IIC_Send_Byte
	global	_IIC_Receive_Byte
	global	_IIC_Host_to_Slave_Writer
	global	_IIC_Host_to_Slave_Read

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_IIC_0	udata
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1005	res	1
r0x1006	res	1
r0x100A	res	1
r0x1009	res	1
r0x1004	res	1
r0x1015	res	1
r0x1016	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x101A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x1010	res	1
r0x1011	res	1
r0x1012	res	1
r0x1014	res	1
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
code_IIC	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Host_to_Slave_Read	;Function start
; 2 exit points
;has an exit
;functions called:
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Send_Byte
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Receive_Byte
;   __gptrput1
;   _IIC_Host_Send_Ack
;   _IIC_Receive_Byte
;   __gptrput1
;   _IIC_Host_Send_Ack
;   _IIC_Stop
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Send_Byte
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Receive_Byte
;   __gptrput1
;   _IIC_Host_Send_Ack
;   _IIC_Receive_Byte
;   __gptrput1
;   _IIC_Host_Send_Ack
;   _IIC_Stop
;15 compiler assigned registers:
;   r0x100B
;   STK00
;   r0x100C
;   STK01
;   r0x100D
;   STK02
;   r0x100E
;   STK03
;   r0x100F
;   STK04
;   r0x1010
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;; Starting pCode block
_IIC_Host_to_Slave_Read	;Function start
; 2 exit points
;	.line	108; "IIC.c"	uchar IIC_Host_to_Slave_Read(uchar ID,uchar addr,uchar *str,uchar datacnt)
	MOVRA	r0x100B
	MOVAR	STK00
	MOVRA	r0x100C
	MOVAR	STK01
	MOVRA	r0x100D
	MOVAR	STK02
	MOVRA	r0x100E
	MOVAR	STK03
	MOVRA	r0x100F
	MOVAR	STK04
	MOVRA	r0x1010
;	.line	111; "IIC.c"	IIC_Start();
	CALL	_IIC_Start
;	.line	112; "IIC.c"	IIC_Send_Byte(ID);
	MOVAR	r0x100B
	CALL	_IIC_Send_Byte
;	.line	113; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00187_DS_
	MOVAI	0x00
	GOTO	_00196_DS_
_00187_DS_
;	.line	114; "IIC.c"	IIC_Send_Byte(addr);
	MOVAR	r0x100C
	CALL	_IIC_Send_Byte
;	.line	115; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00189_DS_
	MOVAI	0x00
	GOTO	_00196_DS_
_00189_DS_
;	.line	116; "IIC.c"	IIC_Start();
	CALL	_IIC_Start
;	.line	117; "IIC.c"	IIC_Send_Byte(ID+1);
	INCR	r0x100B
	MOVAR	r0x100B
	CALL	_IIC_Send_Byte
;	.line	118; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00202_DS_
	MOVAI	0x00
	GOTO	_00196_DS_
_00202_DS_
;	.line	119; "IIC.c"	for(i=0;i<datacnt-1;i++)
	MOVAR	r0x100F
	MOVRA	r0x100B
	MOVAR	r0x100E
	MOVRA	r0x100C
	MOVAR	r0x100D
	MOVRA	r0x100F
	CLRR	r0x100E
_00192_DS_
	MOVAR	r0x1010
	MOVRA	r0x100D
	CLRR	r0x1011
	MOVAI	0xff
	ADDRA	r0x100D
	JBSET	STATUS,0
	DECR	r0x1011
	MOVAR	r0x100E
	MOVRA	r0x1012
;;1	CLRR	r0x1013
	MOVAI	0x00
	ADDAI	0x80
	MOVRA	r0x1014
	MOVAR	r0x1011
	ADDAI	0x80
	RSUBAR	r0x1014
	JBSET	STATUS,2
	GOTO	_00209_DS_
	MOVAR	r0x100D
	RSUBAR	r0x1012
_00209_DS_
	JBCLR	STATUS,0
	GOTO	_00195_DS_
;;genSkipc:3246: created from rifx:0028608C
;	.line	121; "IIC.c"	*str = IIC_Receive_Byte();
	CALL	_IIC_Receive_Byte
	MOVRA	r0x100D
	MOVAR	r0x100D
	MOVRA	STK02
	MOVAR	r0x100B
	MOVRA	STK01
	MOVAR	r0x100C
	MOVRA	STK00
	MOVAR	r0x100F
	CALL	__gptrput1
;	.line	122; "IIC.c"	IIC_Host_Send_Ack(0);
	MOVAI	0x00
	CALL	_IIC_Host_Send_Ack
;	.line	123; "IIC.c"	str++;
	INCR	r0x100B
	JBCLR	STATUS,2
	INCR	r0x100C
	JBCLR	STATUS,2
	INCR	r0x100F
;	.line	119; "IIC.c"	for(i=0;i<datacnt-1;i++)
	INCR	r0x100E
	GOTO	_00192_DS_
_00195_DS_
;	.line	125; "IIC.c"	*str = IIC_Receive_Byte();
	CALL	_IIC_Receive_Byte
	MOVRA	r0x100E
	MOVAR	r0x100E
	MOVRA	STK02
	MOVAR	r0x100B
	MOVRA	STK01
	MOVAR	r0x100C
	MOVRA	STK00
	MOVAR	r0x100F
	CALL	__gptrput1
;	.line	126; "IIC.c"	IIC_Host_Send_Ack(1);
	MOVAI	0x01
	CALL	_IIC_Host_Send_Ack
;	.line	127; "IIC.c"	IIC_Stop();
	CALL	_IIC_Stop
;	.line	128; "IIC.c"	return 1;
	MOVAI	0x01
_00196_DS_
	RETURN	
; exit point of _IIC_Host_to_Slave_Read

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Host_to_Slave_Writer	;Function start
; 2 exit points
;has an exit
;functions called:
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Send_Byte
;   __gptrget1
;   _IIC_Send_Byte
;   _IIC_Stop
;   _IIC_Start
;   _IIC_Send_Byte
;   _IIC_Send_Byte
;   __gptrget1
;   _IIC_Send_Byte
;   _IIC_Stop
;11 compiler assigned registers:
;   r0x1015
;   STK00
;   r0x1016
;   STK01
;   r0x1017
;   STK02
;   r0x1018
;   STK03
;   r0x1019
;   STK04
;   r0x101A
;; Starting pCode block
_IIC_Host_to_Slave_Writer	;Function start
; 2 exit points
;	.line	90; "IIC.c"	uchar IIC_Host_to_Slave_Writer(uchar ID,uchar addr,uchar *str,uchar datacnt)
	MOVRA	r0x1015
	MOVAR	STK00
	MOVRA	r0x1016
	MOVAR	STK01
	MOVRA	r0x1017
	MOVAR	STK02
	MOVRA	r0x1018
	MOVAR	STK03
	MOVRA	r0x1019
	MOVAR	STK04
	MOVRA	r0x101A
;	.line	93; "IIC.c"	IIC_Start();
	CALL	_IIC_Start
;	.line	94; "IIC.c"	IIC_Send_Byte(ID);
	MOVAR	r0x1015
	CALL	_IIC_Send_Byte
;	.line	95; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00166_DS_
	MOVAI	0x00
	GOTO	_00175_DS_
_00166_DS_
;	.line	96; "IIC.c"	IIC_Send_Byte(addr);
	MOVAR	r0x1016
	CALL	_IIC_Send_Byte
;	.line	97; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00181_DS_
	MOVAI	0x00
	GOTO	_00175_DS_
_00181_DS_
;	.line	98; "IIC.c"	for(i=0;i<datacnt;i++)
	MOVAR	r0x1019
	MOVRA	r0x1015
	MOVAR	r0x1018
	MOVRA	r0x1016
	MOVAR	r0x1017
	MOVRA	r0x1019
	CLRR	r0x1018
_00171_DS_
	MOVAR	r0x101A
	RSUBAR	r0x1018
	JBCLR	STATUS,0
	GOTO	_00174_DS_
;;genSkipc:3246: created from rifx:0028608C
;	.line	100; "IIC.c"	IIC_Send_Byte(*str);
	MOVAR	r0x1015
	MOVRA	STK01
	MOVAR	r0x1016
	MOVRA	STK00
	MOVAR	r0x1019
	CALL	__gptrget1
	MOVRA	r0x1017
	MOVAR	r0x1017
	CALL	_IIC_Send_Byte
;	.line	101; "IIC.c"	if(F_IIC_ASK == 0) return 0;
	JBCLR	_Flag1,5
	GOTO	_00170_DS_
	MOVAI	0x00
	GOTO	_00175_DS_
_00170_DS_
;	.line	102; "IIC.c"	str++;
	INCR	r0x1015
	JBCLR	STATUS,2
	INCR	r0x1016
	JBCLR	STATUS,2
	INCR	r0x1019
;	.line	98; "IIC.c"	for(i=0;i<datacnt;i++)
	INCR	r0x1018
	GOTO	_00171_DS_
_00174_DS_
;	.line	104; "IIC.c"	IIC_Stop();
	CALL	_IIC_Stop
;	.line	105; "IIC.c"	return 1;
	MOVAI	0x01
_00175_DS_
	RETURN	
; exit point of _IIC_Host_to_Slave_Writer

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Receive_Byte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;4 compiler assigned registers:
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;; Starting pCode block
_IIC_Receive_Byte	;Function start
; 2 exit points
;	.line	73; "IIC.c"	uchar i,DataTemp = 0;
	CLRR	r0x1003
;	.line	74; "IIC.c"	SCL = 0;
	BCLR	_IOP1bits,0
;	.line	75; "IIC.c"	SET_I2C_DATA_INPUT;
	BCLR	_OEP0bits,0
;	.line	76; "IIC.c"	Delayus(IIC_Freq);
	MOVAI	0x02
	CALL	_Delayus
;	.line	77; "IIC.c"	for(i=0;i<8;i++)
	CLRR	r0x1004
;;unsigned compare: left < lit(0x8=8), size=1
_00157_DS_
	MOVAI	0x08
	RSUBAR	r0x1004
	JBCLR	STATUS,0
	GOTO	_00160_DS_
;;genSkipc:3246: created from rifx:0028608C
;	.line	79; "IIC.c"	DataTemp <<= 1; 
	BCLR	STATUS,0
	RLR	r0x1003
;	.line	80; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	81; "IIC.c"	Delayus(IIC_Freq);
	MOVAI	0x02
	CALL	_Delayus
;	.line	82; "IIC.c"	if(SDA==1)
	CLRR	r0x1005
	JBCLR	_IOP0bits,0
	INCR	r0x1005
;;105	MOVAR	r0x1005
;;103	MOVRA	r0x1006
;;104	MOVAR	r0x1006
	MOVAR	r0x1005
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00156_DS_
;	.line	83; "IIC.c"	{DataTemp += 1;}
	INCR	r0x1003
_00156_DS_
;	.line	84; "IIC.c"	SCL = 0;
	BCLR	_IOP1bits,0
;	.line	85; "IIC.c"	Delayus(IIC_Freq);      
	MOVAI	0x02
	CALL	_Delayus
;	.line	77; "IIC.c"	for(i=0;i<8;i++)
	INCR	r0x1004
	GOTO	_00157_DS_
_00160_DS_
;	.line	87; "IIC.c"	return(DataTemp);   
	MOVAR	r0x1003
	RETURN	
; exit point of _IIC_Receive_Byte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Send_Byte	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _IIC_Host_Receive_Ack
;   _Delayus
;   _IIC_Host_Receive_Ack
;6 compiler assigned registers:
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;; Starting pCode block
_IIC_Send_Byte	;Function start
; 2 exit points
;	.line	55; "IIC.c"	void IIC_Send_Byte(uchar datatemp)
	MOVRA	r0x1005
;	.line	58; "IIC.c"	SCL = 0;
	BCLR	_IOP1bits,0
;	.line	59; "IIC.c"	SET_I2C_DATA_OUTPUT;
	BSET	_OEP0bits,0
;	.line	60; "IIC.c"	for(i=0;i<8;i++)
	CLRR	r0x1006
;;unsigned compare: left < lit(0x8=8), size=1
_00135_DS_
	MOVAI	0x08
	RSUBAR	r0x1006
	JBCLR	STATUS,0
	GOTO	_00138_DS_
;;genSkipc:3246: created from rifx:0028608C
;	.line	62; "IIC.c"	if((datatemp << i) & 0x80){SDA = 1;}    
	MOVAR	r0x1005
	MOVRA	r0x100A
;;1	MOVRA	r0x1007
;;1	CLRR	r0x1008
	MOVAI	0x00
	MOVRA	r0x1009
;;102	MOVAR	r0x1007
	MOVAR	r0x1006
	ISUBAI	0x00
	JBCLR	STATUS,2
	GOTO	_00150_DS_
_00149_DS_
	RLR	r0x100A
	RLR	r0x1009
	ADDAI	0x01
	JBSET	STATUS,0
	GOTO	_00149_DS_
_00150_DS_
	JBSET	r0x100A,7
	GOTO	_00133_DS_
	BSET	_IOP0bits,0
	GOTO	_00134_DS_
_00133_DS_
;	.line	63; "IIC.c"	else{SDA = 0;}
	BCLR	_IOP0bits,0
_00134_DS_
;	.line	64; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	65; "IIC.c"	Delayus(IIC_Freq);
	MOVAI	0x02
	CALL	_Delayus
;	.line	66; "IIC.c"	SCL = 0;                    
	BCLR	_IOP1bits,0
;	.line	60; "IIC.c"	for(i=0;i<8;i++)
	INCR	r0x1006
	GOTO	_00135_DS_
_00138_DS_
;	.line	68; "IIC.c"	IIC_Host_Receive_Ack();     
	CALL	_IIC_Host_Receive_Ack
	RETURN	
; exit point of _IIC_Send_Byte

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Host_Send_Ack	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _Delayus
;1 compiler assigned register :
;   r0x1003
;; Starting pCode block
_IIC_Host_Send_Ack	;Function start
; 2 exit points
;	.line	44; "IIC.c"	void IIC_Host_Send_Ack(uchar ack)
	MOVRA	r0x1003
;	.line	46; "IIC.c"	SCL = 0;
	BCLR	_IOP1bits,0
;	.line	47; "IIC.c"	SET_I2C_DATA_OUTPUT;
	BSET	_OEP0bits,0
;	.line	48; "IIC.c"	if(ack == 1){SDA = 1;} 
	MOVAR	r0x1003
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00126_DS_
	BSET	_IOP0bits,0
	GOTO	_00127_DS_
_00126_DS_
;	.line	49; "IIC.c"	else {SDA = 0;}
	BCLR	_IOP0bits,0
_00127_DS_
;	.line	50; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	51; "IIC.c"	Delayus(IIC_Freq);  
	MOVAI	0x02
	CALL	_Delayus
;	.line	52; "IIC.c"	SCL = 0;
	BCLR	_IOP1bits,0
	RETURN	
; exit point of _IIC_Host_Send_Ack

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Host_Receive_Ack	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;2 compiler assigned registers:
;   r0x1003
;   r0x1004
;; Starting pCode block
_IIC_Host_Receive_Ack	;Function start
; 2 exit points
;	.line	35; "IIC.c"	SET_I2C_DATA_INPUT;
	BCLR	_OEP0bits,0
;	.line	36; "IIC.c"	Delayus(IIC_Freq);
	MOVAI	0x02
	CALL	_Delayus
;	.line	37; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	38; "IIC.c"	Delayus(IIC_Freq); 
	MOVAI	0x02
	CALL	_Delayus
;	.line	39; "IIC.c"	if(SDA == 1){F_IIC_ASK = 0;}  //0无应答位 1有应答位
	CLRR	r0x1003
	JBCLR	_IOP0bits,0
	INCR	r0x1003
;;101	MOVAR	r0x1003
;;99	MOVRA	r0x1004
;;100	MOVAR	r0x1004
	MOVAR	r0x1003
	XORAI	0x01
	JBSET	STATUS,2
	GOTO	_00119_DS_
	BCLR	_Flag1,5
	GOTO	_00120_DS_
_00119_DS_
;	.line	40; "IIC.c"	else {F_IIC_ASK = 1;} 
	BSET	_Flag1,5
_00120_DS_
;	.line	41; "IIC.c"	SCL = 0;    
	BCLR	_IOP1bits,0
	RETURN	
; exit point of _IIC_Host_Receive_Ack

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Stop	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;; Starting pCode block
_IIC_Stop	;Function start
; 2 exit points
;	.line	25; "IIC.c"	SET_I2C_DATA_OUTPUT;
	BSET	_OEP0bits,0
;	.line	26; "IIC.c"	SDA = 0;    
	BCLR	_IOP0bits,0
;	.line	27; "IIC.c"	Delayus(IIC_Freq);          
	MOVAI	0x02
	CALL	_Delayus
;	.line	28; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	29; "IIC.c"	Delayus(IIC_Freq);  
	MOVAI	0x02
	CALL	_Delayus
;	.line	30; "IIC.c"	SDA = 1;    
	BSET	_IOP0bits,0
	RETURN	
; exit point of _IIC_Stop

;***
;  pBlock Stats: dbName = C
;***
;entry:  _IIC_Start	;Function start
; 2 exit points
;has an exit
;functions called:
;   _Delayus
;   _Delayus
;   _Delayus
;   _Delayus
;; Starting pCode block
_IIC_Start	;Function start
; 2 exit points
;	.line	14; "IIC.c"	SDA = 1;    
	BSET	_IOP0bits,0
;	.line	15; "IIC.c"	SCL = 1;
	BSET	_IOP1bits,0
;	.line	16; "IIC.c"	SET_I2C_DATA_OUTPUT;        
	BSET	_OEP0bits,0
;	.line	17; "IIC.c"	Delayus(IIC_Freq);          
	MOVAI	0x02
	CALL	_Delayus
;	.line	18; "IIC.c"	SDA = 0;        
	BCLR	_IOP0bits,0
;	.line	19; "IIC.c"	Delayus(IIC_Freq);          
	MOVAI	0x02
	CALL	_Delayus
;	.line	20; "IIC.c"	SCL = 0;                
	BCLR	_IOP1bits,0
	RETURN	
; exit point of _IIC_Start

;***
;  pBlock Stats: dbName = C
;***
;entry:  _Delayus	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1001
;   r0x1002
;; Starting pCode block
_Delayus	;Function start
; 2 exit points
;	.line	7; "IIC.c"	void Delayus(uchar us) 
	MOVRA	r0x1001
_00105_DS_
;	.line	9; "IIC.c"	while(us--);               
	MOVAR	r0x1001
	MOVRA	r0x1002
	DECR	r0x1001
	MOVAI	0x00
	ORAR	r0x1002
	JBSET	STATUS,2
	GOTO	_00105_DS_
	RETURN	
; exit point of _Delayus


;	code size estimation:
;	  277+    0 =   277 instructions (  554 byte)

	end
