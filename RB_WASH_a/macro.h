/******************************************************************************/
#ifndef __MACRO_H
#define __MACRO_H

typedef unsigned char   u8;
typedef signed  char    s8;
//
typedef unsigned int   u16;
typedef signed  int    s16;
//
typedef unsigned long   u32;
typedef signed  long    s32;
/******************************************************************************/
#define BIN(B7,B6,B5,B4,B3,B2,B1,B0)   (B7<<7 | B6<<6 | B5<<5 | B4<<4 | B3<<3 | B2<<2 | B1<<1 | B0)
//BIN(1,1,1,1,1,1,1,1);
/******************************************************************************/

#define CLR(x)      x = 0
#define SET(x)      x = 1
/******************************************************************************/
#define CLR_BITS(byte, data, bit)  byte &= (u8)~(data << bit)
#define SET_BITS(byte, data, bit)  byte |= (u8)(data << bit)
#define CPL_BITS(byte, data, bit)  byte ^= (u8)(data << bit)

#endif  //__MACRO_H
/******************************************************************************/
