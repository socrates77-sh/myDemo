#include <mc32p21.h>

//unsigned char c_a;

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

void main(void)
{
   	char c_a;
   	const unsigned char c_b = 100;

   	c_a = 55;
   	//c_b = KBIM;

   	ram0 = c_a + c_b;  	// 9b
   	ram1 = c_a - c_b;  	// d3

   	if (c_a > 0) ram0 = c_b;   	   	// true
   	   	
   	if (c_a > -3) ram0 = c_b+1;	   	// true

   	while(1);
}
