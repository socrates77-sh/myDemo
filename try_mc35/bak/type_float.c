#include <mc32p21.h>

float c_a;

void main(void)
{
	c_a = 1.13;

	IOP0 = c_a;

	while(1);
}
