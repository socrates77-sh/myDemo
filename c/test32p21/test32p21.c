

#include <mc32p21.h>
#include <mc3x-common.h>
#include  "CONST.H"
#include  "VAR.H"



//extern  uchar IIC_Host_to_Slave_Writer(uchar ID,uchar addr,uchar *str,uchar datacnt);

extern void InitialSys(void);
//extern void InitalRAM(void);

void main(void)
{
    GIE = 0;
    InitialSys();
    //InitalRAM();
    GIE = 1;
    while(1)
    {
        if(InQt_Flag) P14 = 1;
        else P14 = 0;

        #if 0
        switch(DisplayMode)
        {
            case 1: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5) { LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;} 
                        else { LED1=OFFLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;
                    }
            break;

            case 2: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5) { LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;} 
                        else { LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;
                    }
            break;

            case 3: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5) { LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;} 
                        else { LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;
                    }
            break;

            case 4: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5) { LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;} 
                        else { LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;
                    }
            break;
            
            default:break;
        }
        #endif
    }
   
}




