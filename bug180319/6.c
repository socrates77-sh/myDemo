
#include "mc32p7323.h"

unsigned char data;
unsigned char flag;


void main()
{
    
    unsigned char temp;

    temp = data;
    // right
    // temp = temp + 0x02; 

    // wrong
    temp = temp & 0x02; 
    
    if (temp)
    //if (temp & 0x02)
    {
        flag = 1;
    }
    else
    {
        flag = 0;
    }
}
