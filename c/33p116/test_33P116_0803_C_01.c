#include "mc33p116.h"
//unsigned char str3[100]={1,2,3};

const uchar str2[4000]={1,2,3};
const uchar str3[4000]={1,2,3};

void main()
{
   	int i;
   	unsigned char str1[188]={1,2,3};

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
   	return;
}