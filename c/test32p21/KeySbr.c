

#include <mc32p21.h>
#include "CONST.h"
#include "externVar.h"


//长按 短按 2次连击
void Key_Scan(void)
{
    if(!KEY_I) //有按键
    {     
        if(key_time <= KEY_EFFECT) //去抖
        { 
            key_time++;
            if(key_time == KEY_EFFECT)
            {   
                if(!key_flag_bak)  //赋值
                {   
                    key_flag = 1;        //按键有效标志
                    key_flag_bak = 1;    //松开时清除标志
                    key_press_time = 0;  //有效按键计数   
                }
            }
        }
    }
    else //no key,松开消抖
    {       
        if(key_time)
        {
            if(key_time > 5)
            {
                key_time-=3;
            }
            else
            {
                key_time = 0;
                key_flag_bak = 0;
            } 
        }      
        //key_time=0;
        //key_flag_bak=0;    
    }
}


//*******按键函数实现DiplayModel的转换***************
void Key_Deal(void) //每次处理后把key_flag清掉，保证一次按键处理一次
{    
    if(key_flag)
    {
        if(key_press_time >= 20) //大于2s
        {
            key_flag = 0;
            Keycode = LONGKEY;  
            //key_cnt = 0;
            //key_ack = 0;
        }
        else if(key_flag_bak == 0)// 按键已释放
        {
            key_flag = 0;
            Keycode = SHORTKEY;
            //key_ack = 1;
            //key_cnt++; // 记录按键次数
            //short_press_time = 0; // 2次按键之间的时间     
        }
    }
    else
    {
        Keycode = NOKEY;
    }
}

/*
void Key_Get(void)
{
    if(key_ack == 1)
    {
        if((short_press_time >= 6)&&(key_cnt == 1)) // 600ms时间内没第二次按键将这次按键判为短按键
        {
            key_ack = 0;
            key_cnt = 0;
            short_press_time = 0;
            Keycode = SHORTKEY;
        }
        else if(key_cnt >= 2)
        {
            key_ack = 0;
            key_cnt = 0;
            Keycode = DoubleKEY; 
            short_press_time = 0;
        }
    }
    //else
    //{
    //  Keycode=NOKEY;
    //}
}
*/

