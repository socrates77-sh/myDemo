#include <mc35p7041.h>

volatile __at (0x20) char ram0;
volatile __at (0x21) char ram1;

volatile __at (0x22) int iram0;
volatile __at (0x24) int iram1;

volatile __at (0x26) long lram0;
volatile __at (0x2a) long lram1;

const char rom[10]={0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
const int irom[4]={0x101, 0x202, 0x303, 0x404};
const long lrom[4]={0x1010101, 0x2020202, 0x3030303, 0x4040404};

void main()
{
   	int i;
   	ram0 = 0xfe;
   	ram1 = 0;
    iram1 = 0;
   	lram1 = 0;

   	for(i=0; i<10; i++)
   	{
   	   	ram0 = rom[i];
   	   	ram1 += rom[i];	   	// ram1 = 0x2d
   	}

   	for(i=0; i<4; i++)
   	{
   	   	iram0 = irom[i];
   	   	iram1 += irom[i];	   	// iram1 = 0x0a0a
   	}

   	for(i=0; i<4; i++)
   	{
   	   	lram0 = lrom[i];
   	   	lram1 += lrom[i];  	   	// lram1 = 0x0a0a0a0a0a
   	}
   	
   	
   	while(1);
}

