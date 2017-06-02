
#include <mc32p21.h>
#include "externVar.H"
#include "CONST.H"


void int_isr(void) __interrupt
{
  //  #if 0
    _asm
        movra   _ABuf
        swapar  _STATUS
        movra   _StatusBuf
   _endasm;
   
    if (T0IF) //��ʱ��0�ж��ӳ���
    {
        T0IF = 0;
        if(++MasterTime_1ms >= 10)
        {
            MasterTime_1ms = 0;
            MasterTime_10ms++;
            InQt_Flag = ~InQt_Flag;
			if(MasterTime_10ms >= 10)
			{
				MasterTime_10ms = 0;
				if(++MasterTime_100ms >= 100)MasterTime_100ms = 0;
			}
        }
    }
    ------------------------------------------
    if (T1IF) //��ʱ��1�ж��ӳ���
    {
        T1IF = 0;
    }

    if(INT0IF) INT0IF = 0; // �ⲿ�ж�0
    if(INT1IF) INT1IF = 0; // �ⲿ�ж�1
    if(KBIF)   KBIF = 0; // �����ж�
    
    _asm
        swapar  _StatusBuf
        movra   _STATUS
        swapr   _ABuf
        swapar  _ABuf
   _endasm;
   //#endif
}

    
    
