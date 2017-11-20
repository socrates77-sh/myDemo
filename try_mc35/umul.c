#include <mc35p7041.h>


char uc_a, uc_b;
int ui_a, ui_b;

volatile __at (0x29) uchar uram1;
volatile __at (0x28) uchar uram0;

volatile __at (0x38) uint uiram0;
volatile __at (0x3a) uint uiram1;

volatile __at (0x48) ulong ulram0;

void main(void)
{
   	uram0 = 0xad; 	// 0xad
   	uram1 = 0x88; 	// 0x88

   	uc_a = uram0;
   	uc_b = uram1;

   	uiram0 = (uint)uc_a * (uint)uc_b;      	// 0x26e8? (0x5b18)
   	uiram0 = uc_a * uc_b;      	   	   	   	// 0x00e8
   	
   	uiram0 = 0xfe53;
   	uiram1 = 0x2b78;

   	ui_a = uiram0;
   	ui_b = uiram1;

   	ulram0 = (ulong)ui_a * (ulong)ui_b;     	   	// 0xffb727e8? (0x2b2f27e8)
   	ulram0 = ui_a * ui_b;     	   	   	   		   	// 0x000027e8

   	while(1);

}
