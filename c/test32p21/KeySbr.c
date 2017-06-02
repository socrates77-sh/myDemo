

#include <mc32p21.h>
#include "CONST.h"
#include "externVar.h"


//���� �̰� 2������
void Key_Scan(void)
{
    if(!KEY_I) //�а���
    {     
        if(key_time <= KEY_EFFECT) //ȥ��
        { 
            key_time++;
            if(key_time == KEY_EFFECT)
            {   
                if(!key_flag_bak)  //��ֵ
                {   
                    key_flag = 1;        //������Ч��־
                    key_flag_bak = 1;    //�ɿ�ʱ�����־
                    key_press_time = 0;  //��Ч��������   
                }
            }
        }
    }
    else //no key,�ɿ�����
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


//*******��������ʵ��DiplayModel��ת��***************
void Key_Deal(void) //ÿ�δ�����key_flag�������֤һ�ΰ�������һ��
{    
    if(key_flag)
    {
        if(key_press_time >= 20) //����2s
        {
            key_flag = 0;
            Keycode = LONGKEY;  
            //key_cnt = 0;
            //key_ack = 0;
        }
        else if(key_flag_bak == 0)// �������ͷ�
        {
            key_flag = 0;
            Keycode = SHORTKEY;
            //key_ack = 1;
            //key_cnt++; // ��¼��������
            //short_press_time = 0; // 2�ΰ���֮���ʱ��     
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
        if((short_press_time >= 6)&&(key_cnt == 1)) // 600msʱ����û�ڶ��ΰ�������ΰ�����Ϊ�̰���
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

