#include <mc32p21.h>

long c_a, c_b;
ulong uc_a, uc_b;

volatile __at (0x23) uchar ram4;
volatile __at (0x22) uchar ram3;
volatile __at (0x21) uchar ram2;
volatile __at (0x20) uchar ram1;

volatile __at (0x30) ulong lram;
volatile __at (0x40) ulong lram1;

void main(void)
{
   //  	ram1 = 0xff;
   //  	ram1 = 0x23;
   //  	c_a = 0x10092028;
   //  	c_b = -464623344;  	//0xe44e6910
   //  	uc_a = 0x23572028;
   //  	uc_b = 0x9023e380;
   	

   	ram4 = 0x10;
   	ram3 = 0x09;
   	ram2 = 0x20;
   	ram1 = 0x28;
    c_a = (long)(((ulong)ram4<<24) + ((ulong)ram3<<16) + ((ulong)ram2<<8) + ram1);
   	lram = c_a;

   	ram4 = 0xe4;
   	ram3 = 0x4e;
   	ram2 = 0x69;
   	ram1 = 0x10;
    c_b = (long)(((ulong)ram4<<24) + ((ulong)ram3<<16) + ((ulong)ram2<<8) + ram1);
   	lram = ((ulong)ram4<<24);
   	lram1 = lram;
   	lram = ((ulong)ram3<<16);
   	lram1 += lram;
   	lram = ((ulong)ram2<<8);
   	lram1 += lram;
   	lram = ((ulong)ram1);
   	lram1 += lram;
   	lram = c_b;

   	ram4 = 0x23;
   	ram3 = 0x57;
   	ram2 = 0x20;
   	ram1 = 0x28;
    uc_a = ((ulong)ram4<<24) + ((ulong)ram3<<16) + ((long)ram2<<8) + ram1;
   	lram = uc_a;

   	ram4 = 0x90;
   	ram3 = 0x23;
   	ram2 = 0xe3;
   	ram1 = 0x80;
   //  	lram = 0;
   //  	lram = ((ulong)ram4<<24);
   //  	lram = ((ulong)ram3<<16);
   //  	lram = (((ulong)ram2)<<8);
   //  	lram = ((ulong)ram1);
    uc_b = ((ulong)ram4<<24) + ((ulong)ram3<<16) + ((long)ram2<<8) + ram1;
   	lram = uc_b;

//     	
//
//     	lram = (c_a + c_b);
//     	ram4 = (c_a + c_b)>>24;    	   	   	// 0xf4578938
//     	ram3 = (c_a + c_b)>>16;
//     	ram2 = (c_a + c_b)>>8;
//     	ram1 = (c_a + c_b);
//
//     	lram = uc_a;
//     	lram = uc_b;
//     	lram = (uc_a + uc_b);
//     	ram4 = (uc_a + uc_b)>>24;      	   	   	// 0xf4578938
//     	ram3 = (uc_a + uc_b)>>16;
//     	ram2 = (uc_a + uc_b)>>8;
//     	ram1 = (uc_a + uc_b);
//
//     	lram = (c_a - c_b);
//     	ram4 = (c_a - c_b)>>24;        	   	   	// 0xf4578938
//     	ram3 = (c_a - c_b)>>16;
//     	ram2 = (c_a - c_b)>>8;
//     	ram1 = (c_a - c_b);
//
//     	lram = (uc_a - uc_b);
//     	ram4 = (uc_a - uc_b)>>24;          	   	   	// 0xf4578938
//     	ram3 = (uc_a - uc_b)>>16;
//     	ram2 = (uc_a - uc_b)>>8;
//     	ram1 = (uc_a - uc_b);
//
//     	lram = (uc_a + c_b);
//     	ram4 = (uc_a + c_b)>>24;       	   	   	// 0xf4578938
//     	ram3 = (uc_a + c_b)>>16;
//     	ram2 = (uc_a + c_b)>>8;
//     	ram1 = (uc_a + c_b);
//
//     	lram = (c_a + uc_b);
//     	ram4 = (c_a + uc_b)>>24;           	   	   	// 0xf4578938
//     	ram3 = (c_a + uc_b)>>16;
//     	ram2 = (c_a + uc_b)>>8;
//     	ram1 = (c_a + uc_b);
//
//     	lram = (uc_a - c_b);
//     	ram4 = (uc_a - c_b)>>24;       	   	   	// 0xf4578938
//     	ram3 = (uc_a - c_b)>>16;
//     	ram2 = (uc_a - c_b)>>8;
//     	ram1 = (uc_a - c_b);
//
//     	lram = (c_a - uc_b);
//     	ram4 = (c_a - uc_b)>>24;           	   	   	// 0xf4578938
//     	ram3 = (c_a - uc_b)>>16;
//     	ram2 = (c_a - uc_b)>>8;
//     	ram1 = (c_a - uc_b);
//
//
//
//     	if (c_a > 0) ram1 = c_a;   	   	   	// true
//     	if (uc_a > 0) ram1 = c_a + 1;      	// true
//     	   	
//     	if (c_b > -3) ram1 = c_a + 2;  	   	// false
//     	if (uc_b > -3) ram1 = c_a + 3;     	// false

   	while(1);
}
