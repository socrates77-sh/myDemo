#include <mc32p21.h>

volatile __at (0x21) char ram1;
volatile __at (0x20) char ram0;

const char rom[10]={0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

   	

void main()
{
   	int i;
   	ram0 = 0xfe;
   	ram1 = 0;
   	for(i=0; i<10; i++)
   	{
   	   	ram0 = rom[i];
   	   	ram1 += rom[i];	   	// ram1 = 0x2d
   	}
 	
   	
   	while(1);
}

