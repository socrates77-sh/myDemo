
#include "mc30p011.h"

static char gVar;

void fun1()
{
	char lVar;
	lVar = gVar-1;
	if(lVar==18)
	{
		P1 = 0;
	}
	else
	{
		P1 = 1;
	}
}

void main()
{
	gVar = 18;
	fun1();
	
	P1 = 0XFF;

	while(1)
	{
		P1=~P1;
		P00 = ~P00;    
	}    
}
