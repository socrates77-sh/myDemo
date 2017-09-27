#include <mc32p21.h>

const char rom[0xf3]={1,2};

void fun1(unsigned int n)
{
	switch(n)
   	{
   	   	case 1:
   	   	   	IOP0=1;
   	   	   	break;  	   	
   	   	case 2:  	 
   	   	   	IOP0=0;  	
   	   	   	break;   	
   	   	case 3:
   	   	   	IOP1=1;
   	   	   	break;
   	   	case 5:
   	   	   	IOP1=0;
   	   	   	break;
   	   	default:
   	   	   	break;
   	}
}
	

void main()
{
	unsigned int i=3;

	fun1(i);
}

