#include "mc32p21.h"

char gVar;

void fun1()
{
	char lVar;
	lVar = gVar-1;
	if(lVar==18)
	{
		IOP1 = 0;
	}
	else
	{
		IOP1 = 1;
	}
}

void main()
{
	gVar = 18;
	fun1();
	
	IOP0 = 0XFF;

	while(1)
	{
		IOP0=~IOP0;
		P00 = ~P00;       
	}    
}

