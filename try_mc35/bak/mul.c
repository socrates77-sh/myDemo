#include <mc32p21.h>

char c_a, c_b;

void main(void)
{
	c_a = MCR;
	c_b = IOP1;

	IOP0 = c_a * c_b;

	if (c_a > 0) IOP0 = c_b;
	
	if (c_a > -3) IOP0 = c_b;

	while(1);
}
