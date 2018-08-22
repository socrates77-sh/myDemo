#include <mc35p7041.h>

volatile __at (0x2f) char ram1;
volatile __at (0x20) char ram0;

void main(void)
{
   	char c_a;
   	volatile char c_b;
   	
   	ram1 = 0xff;
   	ram1 = 0x23;

   	ram0 = 0x3e;

   	c_a = 0x80;
   	c_b = 0b00001111;

   	c_a = ram1;
   	c_a = ram0;

   	c_b = ram1;
   	c_b = ram0;

   	ram0 = c_a + c_b;
   	ram1 = c_a - c_b;

   	if (c_a > 0) ram0 = c_b;   	// true
   	
   	if (c_a > -3) ram0 = c_b+1;	// true

   	while(1);
}
