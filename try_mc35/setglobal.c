#include <mc35p7041.h>

char c_a = 5;
const char c_b = 100;

void main(void)
{
	//c_a = MCR;
	//c_b = KBIM;

	IOP0 = c_a + c_b;
	IOP4 = c_a - c_b;

	if (c_a > 0) IOP0 = c_b;
	
	if (c_a > -3) IOP0 = c_b;

	while(1);
}
