#include <mc32p7010.h>

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

void main(void)
{
   	static char c_a;
   	char c_b;

   	ram0 = 0x53;
   	ram1 = 0x78;

   	c_a = ram0;
   	c_b = ram1;

   	ram0 = c_a + c_b;  	// 0xcb
   	ram1 = c_a - c_b;  	// 0xdb

   	if (c_a > 0) ram0 = c_b;   	// true
   	   	
   	if (c_a > -3) ram0 = c_b+1;	// true

   	while(1);
}
