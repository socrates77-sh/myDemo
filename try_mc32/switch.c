#include <mc32p7010.h>

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

const char rom[0xd1]={1,2};

void fun1(unsigned int n)
{
   	switch(n)
   	{
   	   	case 1:
   	   	   	ram0 = 1;
   	   	   	break;     	   	
   	   	case 2:    	 
   	   	   	ram0 = 2;    	
   	   	   	break;     	
   	   	case 3:
   	   	   	ram0 = 3;
   	   	   	break;
   	   	case 4:
   	   	   	ram0 = 4;
   	   	   	break;
   	   	default:
   	   	   	ram0 = 100;
   	   	   	break;
   	}
}
   	

void main()
{
   //	unsigned int i=3;
   	ram0 = 0xfe;
   	for(ram1=0; ram1<6; ram1++)
   	   	fun1(ram1);
   	
   	while(1);
}

