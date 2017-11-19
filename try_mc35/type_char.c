#include <mc35p7041.h>

char c_a, c_b;
uchar uc_a, uc_b;

volatile __at (0x21) uchar ram2;
volatile __at (0x20) uchar ram1;
volatile __at (0x30) uchar cram;


void main(void)
{

   	
   	ram1 = 0x05;
   	ram2 = 0xf3;
   	
   	c_a = ram1;
   	c_b = ram2;
   	uc_a = ram1;
   	uc_b = ram2;

   	cram = c_a + c_b;	   	   	// 0xf8
   	cram = uc_a + uc_b;  	   	// 0xf8
   	cram = c_a - c_b;	   	   	// 0x12
   	cram = uc_a - uc_b;  	   	// 0x12
   	cram = c_a + uc_b;   	   	   // 0xf8
   	cram = uc_a + c_b;   	   	 // 0xf8
   	cram = uc_a - c_b;   	   	   // 0x12
   	cram = c_a - uc_b;   	   	 // 0x12

   	if (c_a > 0) cram = c_b; 	   	   	// true
   	if (uc_a > 0) cram = uc_b + 1;   	// true
   	   	
   	if (c_b > -3) cram = c_b + 2;	   	// false
   	if (uc_b > -3) cram = uc_b + 3;  	// true

   	while(1);
}

