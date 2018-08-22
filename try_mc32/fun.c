#include <mc32p7010.h>

uchar global_a;

volatile __at (0x21) uchar ram1;
volatile __at (0x20) uchar ram0;

uchar fun1(uchar a, uchar b)
{
   	uchar i;
   	uchar b0;
   	b0 = b;
   	for(i=0; i<a; i++)
   	   	b0 += a;

   	return b0;
}

uchar fun2(uchar a, uchar b)
{
   	uchar i;
   	uchar b0;
   	b0 = b;
   	for(i=0; i<a; i++)
   	   	b0 -= a;

   	return b0;
}

void main(void)
{
   	uchar b;
   	ram0 = (1<<1);
   	ram0 = 3;
   	ram1 = 0x5f;
   	global_a = ram0;
   	b = ram1;

   	ram0 = fun1(global_a, b);  	// 0x68
   	ram1 = fun2(global_a, b);  	// 0x56

   	while(1);
}
