#include <mc32p21.h>

int c_a, c_b;
uint uc_a, uc_b;

void main(void)
{
	c_a = MCR;
	c_b = KBIM;
	uc_a = MCR;
	uc_b = KBIM;

	IOP0 = c_a + c_b;
	IOP0 = uc_a + uc_b;
	IOP1 = c_a - c_b;
	IOP1 = uc_a - uc_b;

	if (c_a > 0) IOP0 = c_b;
	if (uc_a > 0) IOP0 = uc_b;
	
	if (c_a > -3) IOP0 = c_b;
	if (uc_a > -3) IOP0 = uc_b;

	while(1);
}
