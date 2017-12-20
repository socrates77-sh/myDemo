#include <mc32p7010.h>

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

void main(void)
{


   	__asm
   	   	movai 100
   	   	movra 0x33
   	__endasm;

   	__asm__("nop");

   	Nop();


   	while(1);
}
