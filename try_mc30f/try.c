#include <mc30p6080.h>

void main(void)
{
	LVDEN=1;
   	
   	//if(LVDEN==1) LVDEN=0;
   	if(LVDEN==0);
   	//LVDEN==1;
   	GIE=1;

   	while(1);
}
