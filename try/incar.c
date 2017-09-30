#include "mc32p21.h"


void main()
{
//	unsigned char i;
	unsigned char a, b, c;
	
	a = MCR;
	IOP0 = a;
	b = a + 1;
	IOP1 = b;
	
	c = 1;
	c += P00;
	IOP1 = c;
	
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

