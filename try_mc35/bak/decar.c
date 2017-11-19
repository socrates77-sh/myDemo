#include "mc32p21.h"


void main()
{
//	unsigned char i;
	unsigned char a, b;
//	char c;
//	int x, y, z;
	
	a = MCR;
	IOP0 = a;
	b = a - 1;
	IOP1 = b;
	
//	x = 2352 + IOP0;
//	y = 3654 + IOP1;
//	
//	y = 0xff00 - x;
//	IOP1 = y;
//
//	b = 255;
//	IOP0 = b;
//	c = 127;
//	P04 = b + c + P00;
//	KBIM = b;
	
//	for(i=0; i++; i<10)
//	{
//		IOP0 = i;
//		a = i;
//		b = a + 1;
//		IOP1 = b;
//	}
		
//	a = b+1;
//	if(a==18)
//	{
//		IOP1 = 0;
//	}		

	while(1);   
}

