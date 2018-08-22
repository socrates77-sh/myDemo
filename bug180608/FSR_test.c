
#include "MC32F7333.h"

#define LENGTH 	10

typedef struct {
   	uchar ad_pitch_l;
   	uchar ad_pitch_h;
   	uchar ad_roll_l;
   	uchar  	ad_roll_h;
   	uchar  	ad_throttle_l;
   	uchar  	ad_throttle_h;
   	uchar  	ad_yaw_l;
   	uchar  	ad_yaw_h;
   	uint   	ad_key;
   	uint   	ad_bat;    	
}member_adc;

typedef union{
  uint 	ad_array[10];
   	member_adc ad_member;
}union_adc_t;

typedef struct{
   	uchar ch;
   	uchar  	cnt;
   	union_adc_t ad_data;
}adc_t;


 static const uchar _ad_ch_code[LENGTH]={0,1,2,3,4,5,6,7,8,9};
 uchar _ad_ch[LENGTH];
 adc_t _adc;   	

void adc_initial()
{
   	uchar i;
   	static uint ad_value=0;
   	ADIOS0=0X38;
   	ADIOS1=0X38;
   	ADCR1=0X23;
   	for(i=0;i<LENGTH;i++)
   	{
   	   	_ad_ch[i]=_ad_ch_code[i];
   	}
   	_adc.ch=0;
   	//就这一句有问题。。。。
   	_adc.ad_data.ad_array[_adc.ch]=ad_value & 0xffc0;
   	//======================
}


void main()
{


   	adc_initial();
   	while(1);
}