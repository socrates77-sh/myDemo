#include <mc32p21.h>

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

void main(void)
{


   	__asm
   	   	movai 100
   	   	movra T0DATA
   	__endasm;

   	__asm__("stop");

   	Nop();
   	ClrWdt();
   	Stop();

   	while(1);
}
