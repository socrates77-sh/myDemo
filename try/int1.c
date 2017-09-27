#include <mc32p21.h>

void int_isr(void) __interrupt
{
	P01 = 1;
	P01 = 0;
	P01 = 1;
	T1IF = 0;
}

void main(void)
{
	unsigned char a, b, c;

	OEP1 = 0x01;
	KBIM = OEP1 & 0x55;
	KBIM = OEP1 | 0x66;
	KBIM = OEP1 ^ 0x66;
	KBIE = 1;

	a = 1;
	b = 2;
	while(a==3)
	{
		a++;
		b = b + 2;
		c = a + b;
	}

}
