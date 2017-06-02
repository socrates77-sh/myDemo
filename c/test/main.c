
#include "mc32p64.h"
//#include "mc3x-common.h"



void main()
{
   uchar i,k;
   
     GIE=0;
     IOP1=0XFF;
     IOP2=0XFF;
     OEP0=0XFF;
     OEP1=0XFF;
     
     
     while(1)
     {
       IOP1=~IOP1;       
             
     }
        
        
}

