#include "mc32p7323.h"

void main(void)
{
   	Sub_IoInitial();

}


void Sub_IoInitial(void)
{  	
   	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high;
   	OEP0=0X00;//P0M = 0x00; //0000 0000B;  //1=Output,0=input
   	PUP0=0XFF;//P0UR = 0xFF; //1111 1111B; //1=Enable,0=Disable Pull High
   	IOP0=0XFF;//P0  = 0xFF; //1111 1111B;  //0=low; 1=high

   	IOP1=0XFF;//P1  = 0xFF; //0000 0000B;  //0=low; 1=high;24c02(FP13:SCL, FP12:SDA = high.)
   	OEP1=0XBC;//P1M = 0x00; //0000 0000B;  //1=Output,0=input
   	PUP1=0X43;//P1UR = 0xFF;//1111 1111B;  //1=Enable,0=Disable Pull High
   	IOP1=0XFF;//P1  = 0xFF; //1111 1111B;  //0=low; 1=high

   	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
   	OEP2=0X0A;//P4M = 0x3F; //0011 1111B;  //1=Output,0=input
   	PUP2=0XF5;//P4UR = 0xC0;//1100 0000B;  //1=Enable,0=Disable Pull High
   	IOP2=0XFF;//P4  = 0x1F; //0001 1111B;  //0=low; 1=high

   	//P5 = 0xFF; //1111 1111B;   //0=low; 1=high;24c02(FP43:SCL, FP42:SDA = high.)
   	//P5M = 0xFF; //1111 1111B;  //1=Output,0=input
   	//P5UR = 0x00;//0000 0000B;  //1=Enable,0=Disable Pull High
   	//P5  = 0xFF; //1111 1111B;  //0=low; 1=high

   	DisableBuzzer();
}
