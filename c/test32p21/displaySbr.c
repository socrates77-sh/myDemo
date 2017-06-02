

#include <mc32p21.h>
#include <mc3x-common.h>
#include "CONST.h"
#include "externVar.h"


void Battery_MODE(void) 
{
    if(BAT_avgAD < BATAhAD1)
    {  
        DisplayMode = 1;
    }   
    else
    {
        if(BAT_avgAD < BATAhAD2)
        {
            DisplayMode = 2;
        }
        else
        {
            if(BAT_avgAD < BATAhAD3)
            {
                DisplayMode = 3;
            }
            else
            {
                DisplayMode = 4;
            }
        }
    }                           
}


void Display_LED(void) //电池充电时 LED的显示状态
{
   if(CHRG)
   {
        LED1 = ONLED;LED2 = ONLED;LED3 = ONLED;LED4 = ONLED;
   }
   else
   {
    //#if 0
	    switch(DisplayMode)
        {
            case 1: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5){ LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;} 
                        else{LED1=OFFLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;
                    }
            break;

            case 2: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;} 
                        else{ LED1=ONLED;LED2=OFFLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;
                    }
            break;

            case 3: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;} 
                        else{ LED1=ONLED;LED2=ONLED;LED3=OFFLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;
                    }
            break;

            case 4: 
                    if(Power_Flag)
                    {
                        if(MasterTime_100ms<5){ LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;} 
                        else{LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=OFFLED;}
                    }
                    else
                    {
                        LED1=ONLED;LED2=ONLED;LED3=ONLED;LED4=ONLED;
                    }
            break;
			
            default:break;
        }
		//#endif
    }
}

