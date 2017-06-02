
#include <mc32p21.h>
#include <mc3x-common.h>
#include "CONST.h"
#include "externVar.h"


//extern void Delayms(uchar ms);

uint AD_Check(uchar AD_enter) //检测AD
{
     uint AD_Value = 0;
     ADCHS = AD_enter; //选择通道
     ADCKS = 3; //AD时钟频率不分频
     Nop();
     Nop();
     Nop();
     ADON = 1; //启动AD
     ADEOC = 0;
     while(ADEOC==0);//AD转换中
     AD_Value = ADRH; //获取AD值
     AD_Value = (AD_Value<<4)|ADRL; 
     return AD_Value;
}

uint Battery_Check(uchar number)
{
    uchar i;
    uint sum = 0;
    for(i=0;i<8;i++)
    {
        sum += AD_Check(number);
    }
    return  (sum/8);
}


uint Compare_AD(uint str[])//(uint  *str)//(uint str[])// ////// 冒泡法排序
{
    uint temp=0;
    uchar i,j;

    for(i=0;i<5;i++) //比较的数是6-1
    {
        for(j = 0;j<5-i;j++)
        {
            if(str[j+1]>str[j])
            {
                 temp = str[j];
                 str[j] = str[j+1];
                 str[j+1] = temp;
            }   
        }
    }
    return ((uint)(str[2]+str[3])/2);
}


uint Dispose_AD(uchar adway)
{
    uint arrayAD[6];
    uchar i;
    for(i=0;i<6;i++)
    {
        arrayAD[i] = AD_Check(adway);
    }
    return Compare_AD(arrayAD);
}


