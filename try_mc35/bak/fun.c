#include <mc32p21.h>

uchar global_a;

uchar fun1(uchar a, uchar b)
{
	uchar i;
	for(i=0; i<a; i++)
		b += a;

	return b;
}

uchar fun2(uchar a, uchar b)
{
	uchar i;
	for(i=0; i<a; i++)
		b -= a;

	return b;
}

void main(void)
{
	uchar b;

	global_a = MCR;
	b = MCR;

	IOP0 = fun1(global_a, b);
	IOP1 = fun2(global_a, b);

	while(1);
}
