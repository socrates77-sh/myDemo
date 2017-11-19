#include <mc32p21.h>

void main(void)
{
	char c_a;
	volatile char c_b;

	c_a = 0x80;
	c_b = 0b00001111;

	c_a = MCR;
	c_a = IOP1;

	c_b = MCR;
	c_b = IOP1;

	IOP0 = c_a + c_b;
	IOP1 = c_a - c_b;

	if (c_a > 0) IOP0 = c_b;
	
	if (c_a > -3) IOP0 = c_b;

	while(1);
}
