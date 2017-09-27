#include <mc32p21.h>

char c_a;
const char c_b = 100;

void main(void)
{
	c_a = MCR;
	//c_b = KBIM;

	IOP0 = c_a + c_b;
	IOP1 = c_a - c_b;

	__asm
		movai 100
		movra IOP1
	__endasm;

	__asm__("stop");

	Nop();
	ClrWdt();
	Stop();

	while(1);
}
