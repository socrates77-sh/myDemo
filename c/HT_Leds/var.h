
#include "mc3x-common.h"
/*****************************************************************
;       Function : Define variables
;*****************************************************************/
#ifndef _VAR_H_
#define _VAR_H_

uchar  	n = 0;

uchar   ABuf,StatusBuf = 0;
//uchar   R_r0,R_r1;         //临时变量
uchar			R_r1;

uchar   R_keycount,R_keyvalue,R_keybak;

uchar   R_timer0count;

uchar   R_irtimes,R_irbytes,R_irdata = 0,R_ircount = 0;
uchar   R_irtable[4];

uchar   R_timecontr1,R_timecontr2,R_timecontr3,R_timecontr4;

volatile BITS_T   Flag1,Flag2;

//;标志定义-------------------------------------
#define      F_keyflag     Flag1.bit0
#define      F_tm0flag     Flag1.bit1

#define      F_irflag      Flag1.bit2
#define      F_irokflag    Flag1.bit3
#define      F_irenflag    Flag1.bit4
#define      F_leadflag    Flag1.bit5
#define      F_hlflag      Flag1.bit6
#define      F_wakeflag    Flag1.bit7

#define      F_TCCflag     Flag2.bit0
#define      F_t25flag     Flag2.bit1
#define      F_tofflag     Flag2.bit2
#define      F_irlianflag  Flag2.bit3
#define      F_irdealflag  Flag2.bit4

#define      F_irstopflag  Flag2.bit5


uchar time_us1;

uchar time_key;
uchar time_beep;
uchar key_id;
uchar led_state;
uchar ir_state;

void I2C_delay(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_Ack(void);
void I2C_NoAck(void);
void I2C_SendByte(uchar SendByte);
uchar I2C_ReceiveByte();
void IIC_write_onebyte(uchar write_add,uchar write_data);
void IIC_read_onebyte(uchar read_add);

#endif


