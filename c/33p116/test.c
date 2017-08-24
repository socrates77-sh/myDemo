#include "mc33p116.h"

void main()
{
   	short i;
 
   	i=0;
   	while(1)
   	{
   	   	if(i%2==0)
   	   	{
   	   	   	IOP1=0x00;
   	   	   	IOP1=0x01;
   	   	}
   	   	i+=1;
   	}
}