#include <mc32p7010.h>

short c_a, c_b;
ushort uc_a, uc_b;

volatile __at (0x21) uchar ram1;
volatile __at (0x20) uchar ram0;

volatile __at (0x30) short iram;

void main(void)
{

   	
   	ram1 = 0x20;
   	ram0 = 0x28;
   	c_a = (ram1<<8) + ram0;

   	ram1 = 0xa4;
   	ram0 = 0xd0;
   	c_b = (ram1<<8) + ram0;

   	ram1 = 0x20;
   	ram0 = 0x28;
   	uc_a = (ram1<<8) + ram0;

   	ram1 = 0xe3;
   	ram0 = 0x80;
   	uc_b = (ram1<<8) + ram0;


   	ram1 = (c_a + c_b)>>8;   	   	   	// 0xc4f8
   	ram0 = (c_a + c_b) & 0xff;
   	iram = (c_a + c_b);

   	ram1 = (uc_a + uc_b)>>8;     	   	   	// 0x03a8
   	ram0 = (uc_a + uc_b) & 0xff;
   	iram = (uc_a + uc_b);

   	ram1 = (c_a - c_b)>>8;   	   	   	// 0x7b58
   	ram0 = (c_a - c_b) & 0xff;
   	iram = (c_a - c_b);

   	ram1 = (uc_a - uc_b)>>8;     	   	   	// 0x3ca8
   	ram0 = (uc_a - uc_b) & 0xff;
   	iram = (uc_a - uc_b);

   	
   	ram1 = (uc_a + c_b)>>8;      	   	   	// 0xc4f8
   	ram0 = (uc_a + c_b) & 0xff;
   	iram = (uc_a + c_b);

   	ram1 = (c_a + uc_b)>>8;      	   	   	// 0x03a8
   	ram0 = (c_a + uc_b) & 0xff;
   	iram = (c_a + uc_b);

   	ram1 = (uc_a - c_b)>>8;      	   	   	// 0x7b58
   	ram0 = (uc_a - c_b) & 0xff;
   	iram = (uc_a - c_b);

   	ram1 = (c_a - uc_b)>>8;      	   	   	// 0x3ca8
   	ram0 = (c_a - uc_b) & 0xff;
   	iram = (c_a - uc_b);


   	if (c_a > 0) ram0 = c_a; 	   	   	// true
   	if (uc_a > 0) ram0 = c_a + 1;    	// true
   	   	
   	if (c_b > -3) ram0 = c_a + 2;	   	// false
   	if (uc_b > -3) ram0 = c_a + 3;   	// false

   	while(1);
}

