
#include <mc32p21.h>
#include <mc3x-common.h>
#include "CONST.H"
#include "externVar.h"

void Delayus(uchar us) 
{       
    while(us--);               
}

void IIC_Start(void)
{                   
    SDA = 1;    
    SCL = 1;
    SET_I2C_DATA_OUTPUT;        
    Delayus(IIC_Freq);          
    SDA = 0;        
    Delayus(IIC_Freq);          
    SCL = 0;                
}

void IIC_Stop(void)
{                           
    SET_I2C_DATA_OUTPUT;
    SDA = 0;    
    Delayus(IIC_Freq);          
    SCL = 1;
    Delayus(IIC_Freq);  
    SDA = 1;    
}

void IIC_Host_Receive_Ack(void)
{        
    SET_I2C_DATA_INPUT;
    Delayus(IIC_Freq);
    SCL = 1;
    Delayus(IIC_Freq); 
    if(SDA == 1){F_IIC_ASK = 0;}  //0无应答位 1有应答位
    else {F_IIC_ASK = 1;} 
    SCL = 0;    
}

void IIC_Host_Send_Ack(uchar ack)
{  
    SCL = 0;
    SET_I2C_DATA_OUTPUT;
    if(ack == 1){SDA = 1;} 
    else {SDA = 0;}
    SCL = 1;
    Delayus(IIC_Freq);  
    SCL = 0;
}
 
void IIC_Send_Byte(uchar datatemp)
{
    uchar i = 0;
    SCL = 0;
    SET_I2C_DATA_OUTPUT;
    for(i=0;i<8;i++)
    {       
        if((datatemp << i) & 0x80){SDA = 1;}    
        else{SDA = 0;}
        SCL = 1;
        Delayus(IIC_Freq);
        SCL = 0;                    
    }
    IIC_Host_Receive_Ack();     
}

uchar IIC_Receive_Byte(void)
{
    uchar i,DataTemp = 0;
    SCL = 0;
    SET_I2C_DATA_INPUT;
    Delayus(IIC_Freq);
    for(i=0;i<8;i++)
    {
        DataTemp <<= 1; 
        SCL = 1;
        Delayus(IIC_Freq);
        if(SDA==1)
        {DataTemp += 1;}
        SCL = 0;
        Delayus(IIC_Freq);      
    }   
    return(DataTemp);   
}

uchar IIC_Host_to_Slave_Writer(uchar ID,uchar addr,uchar *str,uchar datacnt)
{
    uchar i;
    IIC_Start();
    IIC_Send_Byte(ID);
    if(F_IIC_ASK == 0) return 0;
    IIC_Send_Byte(addr);
    if(F_IIC_ASK == 0) return 0;
    for(i=0;i<datacnt;i++)
    {
        IIC_Send_Byte(*str);
        if(F_IIC_ASK == 0) return 0;
        str++;
    }
    IIC_Stop();
    return 1;
}

uchar IIC_Host_to_Slave_Read(uchar ID,uchar addr,uchar *str,uchar datacnt)
{
    uchar i;
    IIC_Start();
    IIC_Send_Byte(ID);
    if(F_IIC_ASK == 0) return 0;
    IIC_Send_Byte(addr);
    if(F_IIC_ASK == 0) return 0;
    IIC_Start();
    IIC_Send_Byte(ID+1);
    if(F_IIC_ASK == 0) return 0;
    for(i=0;i<datacnt-1;i++)
    {
        *str = IIC_Receive_Byte();
        IIC_Host_Send_Ack(0);
        str++;
    }
    *str = IIC_Receive_Byte();
    IIC_Host_Send_Ack(1);
    IIC_Stop();
    return 1;
}




