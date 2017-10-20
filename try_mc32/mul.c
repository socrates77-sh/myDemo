#include <mc32p21.h>

char c_a, c_b;
int i_a, i_b;

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

volatile __at (0x30) int iram0;
volatile __at (0x32) int iram1;

volatile __at (0x40) long lram0;


void main(void)
{

   	ram0 = -0x53;
   	ram1 = -0x78;

   	c_a = ram0;
   	c_b = ram1;

   	iram0 = (int)c_a * (int)c_b;   	// 0x26e8
   	iram0 = c_a * c_b;   	 	   	   	// 0xffe8
   	
   	iram0 = 0xfe53;
   	iram1 = 0x2b78;

   	i_a = iram0;
   	i_b = iram1;

   	lram0 = (long)i_a * (long)i_b;   	 	// 0xffb727e8
   	lram0 = i_a * i_b;     	   	   	   	// 0x000027e8

   	

   	while(1);
}
