#include "MC32P7511.H"
/*     	        _______________________________
           01--|VDD            	AC8P5501       	VSSD|--16
seg4       02--|P16                            	 P06|--15  SEG3/B
com0       03--|P15                            	 P05|--14  SEG2/A 
seg5       04--|P14/VPP                        	 P04|--13  SEG1/SPEED 
seg6/BAT   05--|P13                            	 P03|--12  COM4 
seg7/VD    06--|P12                    P02/AIN2|--11  COM3
seg8/VR    07--|P11                    P01/Vref|--10  COM2 
seg9/VL    08--|P10                         P00|--09  COM1 
                -------------------------------
*/
//�ٶ��ͻ��趨
//����Ҫ�� 48���ٶ�45km��60��48km��72��51km��Ĭ��48��~60��ͨ�á���a��48��72��ab��ͬ��60��
//����һ������Ҫ�� 48���ٶ�45km��60��55km��72��65km��Ĭ��48��~60��ͨ�á���a��48��72��ab��ͬ��60������
#define Set_High_Seg_1  { P04OE = 1; P04D = 1;}  //04
#define Set_High_Seg_2  { P05OE = 1; P05D = 1;}  //05
#define Set_High_Seg_3  { P06OE = 1; P06D = 1;}  //06
#define Set_High_Seg_4  { P16OE = 1; AUCR|=0X02; P16D = 1;}  //16
#define Set_High_Seg_5  { P14OE = 1; P14D = 1;}  //14
#define Set_High_Seg_6  { P13OE = 1; P13D = 1;}  //13
#define Set_High_Seg_7  { P12OE = 1; P12D = 1;}  //12
#define Set_High_Seg_8  { P11OE = 1; P11D = 1;}  //11
#define Set_High_Seg_9  { P10OE = 1; P10D = 1;}  //10

#define Set_Low_Seg_1  { P04OE = 1; P04D = 0;}  //04
#define Set_Low_Seg_2  { P05OE = 1; P05D = 0;}  //05
#define Set_Low_Seg_3  { P06OE = 1; P06D = 0;}  //06
#define Set_Low_Seg_4  { P16OE = 1; AUCR&=0Xfd; P16D = 0;}  //16
#define Set_Low_Seg_5  { P14OE = 1; P14D = 0;}  //14
#define Set_Low_Seg_6  { P13OE = 1; P13D = 0;}  //13
#define Set_Low_Seg_7  { P12OE = 1; P12D = 0;}  //12
#define Set_Low_Seg_8  { P11OE = 1; P11D = 0;}  //11
#define Set_Low_Seg_9  { P10OE = 1; P10D = 0;}  //10

// com0
#define COM0_OUT_H  { P15OE = 1; P15D = 1; } // �������
#define COM0_OUT_L  { P15OE = 1; P15D = 0; } // �������
#define COM0_IN_FL  { P15OE = 0; } // 1 0 ��������   
//COM1
#define COM1_OUT_H  { P00OE = 1; P00D = 1; }
#define COM1_OUT_L  { P00OE = 1; P00D = 0; }
#define COM1_IN_FL  { P00OE = 0; } // 1 0 ��������
//COM2
#define COM2_OUT_H  { P01OE = 1; P01D = 1; }
#define COM2_OUT_L  { P01OE = 1; P01D = 0; }
#define COM2_IN_FL  { P01OE = 0; } // 1 0 �������� 
//com3
#define COM3_OUT_H  { P02OE = 1; P02D = 1; }
#define COM3_OUT_L  { P02OE = 1; P02D = 0; }
#define COM3_IN_FL  { P02OE = 0; } // 1 0 ��������

#define COM4_OUT_H  { P03OE = 1; P03D = 1; }
#define COM4_OUT_L  { P03OE = 1; P03D = 0;}
#define COM4_IN_FL  { P03OE = 0; } // 1 0 ��������

#define	COM0   	    P15D 
#define	COM1   	    P00D
#define	COM2   	    P01D
#define	COM3   	    P02D
#define	COM4   	    P03D

#define        	VD_IN_FL { P12OE = 0; }
#define        	VL_IN_FL { P10OE = 0; }
#define        	VR_IN_FL { P11OE = 0; }
#define        	A_IN_FL  { P05OE = 0; } 
#define        	B_IN_FL  { P06OE = 0; }

#define        	VD  P12D 
#define        	VL  P10D 
#define        	VR  P11D 
#define        	A_IN  P05D 
#define        	B_IN  P06D
     
#define Stalls0_48V 420
#define Stalls1_48V 440
#define Stalls2_48V 460
#define Stalls3_48V 480

#define Stalls0_60V 520
#define Stalls1_60V 540
#define Stalls2_60V 570
#define Stalls3_60V 600

#define Stalls0_72V 630
#define Stalls1_72V 670
#define Stalls2_72V 690
#define Stalls3_72V 720


#define Nop()  	       	       	__asm__("nop")
#define ClrWdt()       	       	__asm__("clrwdt")

unsigned char ABuf;
unsigned char PFLAGBuf;
unsigned char VR_count;
unsigned char scan_cnt;
//============================================================================================
//=====================================������������=================================================
//============================================================================================
volatile unsigned char Lcd_seg[9];
unsigned char LCD_COPY;
unsigned char seg_bit[5];

unsigned int  Stalls_Bat[4];

unsigned char time1_cnt , time1_cnt1;

unsigned int BAT_AD,speed_AD,BAT_AD_copy;
unsigned int voltage,sub_km,Milage_temp;
unsigned int voltage_copy;
unsigned int SpdInt,SpeedTest;
unsigned int ShowSpeed;
unsigned char choice_vol,voltage_TY_flag;

unsigned char VR_flag1;
unsigned char VR_flag2;
unsigned char VL_flag1;
unsigned char VL_flag2;
unsigned char VD_flag1;
unsigned char VD_flag2;
       
unsigned char R2,R5,R6,R7;
unsigned int  R3R4,R1R0;
unsigned int  DivResult;


typedef union
{
    unsigned char  all;
    struct
    {
       unsigned b0:1;
       unsigned b1:1;
       unsigned b2:1;
       unsigned b3:1;
       unsigned b4:1;
       unsigned b5:1;
       unsigned b6:1;
       unsigned b7:1;
    }one;
}bits;
#define	       	Bit0   	       	one.b0
#define	       	Bit1   	       	one.b1
#define	       	Bit2   	       	one.b2
#define	       	Bit3   	       	one.b3
#define	       	Bit4   	       	one.b4
#define	       	Bit5   	       	one.b5
#define	       	Bit6   	       	one.b6
#define	       	Bit7   	       	one.b7

volatile bits PAC;
#define	 VR_twink_self_flag   PAC.Bit7
#define	 VL_twink_self_flag   PAC.Bit6
#define	 B_500ms_flag         PAC.Bit5
#define	 B_100ms_flag         PAC.Bit4
#define	 uc_disp_all_flag     PAC.Bit3
#define	 disp_VR              PAC.Bit2
#define	 disp_VD              PAC.Bit1
#define	 disp_VL              PAC.Bit0
volatile bits FLAG1;
#define	 B_2ms_flag   FLAG1.Bit7

/***************************************************
;* 
;* Function Name: ΢�뼶��ʱ�Ӻ���
;* Inputs:        
;* Returns:       
;* Description:   ��Ƶ��4MHz
;*     	
;***************************************************/
void delay_us(unsigned int time_delay)
{
    while( time_delay!=0 )     	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	       	
    {
      time_delay--;
      ClrWdt();
    }
}  
//-------------------------------------------------------
/***************************************************
;* 
;* Function Name: ��������
;* Inputs:        
;* Returns:       
;* Description:  R3R4,R5�Ǳ������ͳ���.������R1R0,���������R2 
;*     	
;***************************************************/
void TwobyteDIVone (void)
{      	        
   __asm               	  
         CLRR   _R1R0
       	 CLRR   _R1R0+1        	
       	 CLRR  	_R2  ;����̺������ļĴ���               	
       	 MOVR  	_R5
       	 JBCLR 	PFLAG,2  ;�жϳ����Ƿ�Ϊ0����0�����壬�˳�
       	 RETURN	
       	 MOVAI 	16
       	 MOVRA 	_R6  ;���ݱ���������������ȷ������16��        	
       	 MOVR  	_R3R4+1
       	 JBSET 	PFLAG,2  ;�жϱ������Ƿ�Ϊ0����0���Ϊ0���˳�
       	 GOTO  	DIV_LOOP
       	 MOVR  	_R3R4
       	 JBCLR 	PFLAG,2
       	 RETURN	       	       	       	       	         
DIV_LOOP:  ;������ѭ��
       	 BCLR  	PFLAG,0
       	 RLR   	_R3R4  ;ÿѭ��1�Σ��Ͱѱ����������ɸߵ��ͷſ�1λ
       	 RLR   	_R3R4+1        	
       	 RLR   	_R2            	
       	 RLR   	_R7
       	 MOVAR 	_R5  ;ÿ�ſ�1λ���Ͱ������ºͳ������±Ƚ�
       	 RSUBAR	_R2
       	 JBCLR 	PFLAG,0
       	 GOTO  	UPDATA_DIV
       	 JBCLR 	_R7,0
       	 GOTO  	$+3
       	 BCLR  	PFLAG,0  ;�ſ�1λ��ı���������ȳ���С����0��־λ
       	 GOTO  	R0_SHIFT
UPDATA_DIV:    	       	       	       	       	       	       	       	          
       	 MOVRA 	_R2
       	 BSET  	PFLAG,0  ;�ſ�1λ��ı���������ȳ�������1��־λ
R0_SHIFT:
       	 RLR   	_R1R0  ;1��ѭ��������������������1λ
       	 RLR   	_R1R0+1
       	 DJZR  	_R6  ;�жϼ�������
       	 GOTO  	DIV_LOOP       	     
   __endasm;    
}
void adc_loop_bat(void)
{      	
        P13OE = 0;
        AN1SEL = 0b00001000;   	//P16Ĭ�Ͼ�Ȼ��AD��   p13�ǵ�ѹ�ɼ��� 
       	ADCR0  = 0b10100001; 
       	ADCR1  = 0b00000010; // 4V ����׼
       	ADCR2  = 0b00001111;
        delay_us(100);
       	ADEOC = 0;
       	while(!ADEOC);
        ADEOC = 0;
       	while(!ADEOC);
        ADEOC = 0;
       	while(!ADEOC);
        BAT_AD = ADRH;
       	BAT_AD = ( BAT_AD << 4 )+ ADRL;
        BAT_AD = BAT_AD >> 2;

        ADON = 0;
        AN1SEL = 0b00000000; //���û������IO
}
void adc_loop_speed(void)
{              	
        P04OE = 0;
        AN0SEL = 0b00010000;  //P04�����ٶȲɼ���
        ADCR0  = 0b01000001; 
        ADCR1  = 0b00000010; //4V ����׼
       	ADCR2  = 0b00001111;
       	delay_us(100);
       	ADEOC = 0;
       	while(!ADEOC);
       	ADEOC = 0;
       	while(!ADEOC);
       	ADEOC = 0;
       	while(!ADEOC);
        speed_AD = ADRH;
        speed_AD = ( speed_AD << 4 )+ ADRL;
        speed_AD = speed_AD >> 2;
        ADON = 0;  
        AN0SEL = 0b00000000; //���û������IO
}

//=============================================================================================
//=========================================�˿�����1===============================================
//=============================================================================================
void setb_io(unsigned char seg_nums)  
{
 if( seg_nums==0 ) Set_High_Seg_1
 if( seg_nums==1 ) Set_High_Seg_2
 if( seg_nums==2 ) Set_High_Seg_3
 if( seg_nums==3 ) Set_High_Seg_4
 if( seg_nums==4 ) Set_High_Seg_5
 if( seg_nums==5 ) Set_High_Seg_6
 if( seg_nums==6 ) Set_High_Seg_7
 if( seg_nums==7 ) Set_High_Seg_8 
 if( seg_nums==8 ) Set_High_Seg_9
}

void clrb_io(unsigned char seg_nums)  
{
        if( seg_nums==0 ) Set_Low_Seg_1
        if( seg_nums==1 ) Set_Low_Seg_2
        if( seg_nums==2 ) Set_Low_Seg_3
        if( seg_nums==3 ) Set_Low_Seg_4
        if( seg_nums==4 ) Set_Low_Seg_5
        if( seg_nums==5 ) Set_Low_Seg_6
        if( seg_nums==6 ) Set_Low_Seg_7
        if( seg_nums==7 ) Set_Low_Seg_8 
        if( seg_nums==8 ) Set_Low_Seg_9        
}
//=====================================================================================================
//========================================����LCD���==================================================
//=====================================================================================================
void set_normal_seg(unsigned char sta,unsigned char which_com) 
{
    unsigned char i,t;
    unsigned char mem_mask; 
    mem_mask = seg_bit[which_com];  
    for(i=0;i<9;i++)    //0-7������� 7��IO SEG ǰ���7�����涼����������ͨIO���ϵ� ������017ֻ�õ���6��
    {
        t = mem_mask&Lcd_seg[i];     //��ȡ�����е�����
        if(sta == 0x00)
        {
            if(t == 0x00)
            {
                setb_io(i);
            }
            else
            {
                clrb_io(i);
            }   
        }
        else
        {
            if(t == 0x00)
            {
                clrb_io(i);
            }
            else
            {
                setb_io(i);
            }          
        }
    }
}
//=====================================================================================================
//========================================��ʾ����1====================================================
//=====================================================================================================
const uchar __at 0x79C LED7Code10[]={0x1B,0x00,0x17,0x15,0x0C,0x1D,0x1F,0x10,0x1F,0x1D };
const uchar __at 0x7A6 LED7Code11[]={0x0A,0x0A,0x08,0x0A,0x0A,0x02,0x02,0x0A,0x0A,0x0A };
void disp_num_1( unsigned char num )
{
       //---------------------------
       Lcd_seg[1] &= 0b00010101;
       Lcd_seg[0]= LED7Code10[num];
       Lcd_seg[1]|= LED7Code11[num];
       //---------------------------
}
const uchar __at 0x7B0 LED7Code20[]={0x05,0x00,0x01,0x00,0x04,0x04,0x05,0x00,0x05,0x04 };
const uchar __at 0x7BA LED7Code21[]={0x1B,0x0A,0x1D,0x1F,0x0E,0x17,0x17,0x1A,0x1F,0x1F };
void disp_num_2( unsigned char num )
{
       Lcd_seg[1] &= 0b00011010;
       Lcd_seg[1]|= LED7Code20[num];
       Lcd_seg[2]= LED7Code21[num];
}
const uchar __at 0x7C4 LED7Code30[]={0x1B,0x0A,0x17,0x1F,0x0E,0x1D,0x1D,0x0B,0x1F,0x1F };
const uchar __at 0x7CE LED7Code31[]={0x05,0x00,0x04,0x00,0x01,0x01,0x05,0x00,0x05,0x01 };
void disp_num_5( unsigned char num )
{
       Lcd_seg[4] &= 0b00011010;
       Lcd_seg[3]= LED7Code30[num];
       Lcd_seg[4]|= LED7Code31[num];      
}
const uchar __at 0x7D8 LED7Code40[]={0x12,0x12,0x02,0x12,0x12,0x10,0x10,0x12,0x12,0x12 };
const uchar __at 0x7E2 LED7Code41[]={0x1B,0x00,0x1D,0x15,0x06,0x17,0x1F,0x01,0x1F,0x17 };
void disp_num_4( unsigned char num )
{
       Lcd_seg[4] &= 0b00001101;
       Lcd_seg[4]|= LED7Code40[num];
       Lcd_seg[5]= LED7Code41[num];  
}
const uchar __at 0x7EC LED7Code50[]={0x1B,0x0A,0x17,0x1F,0x0E,0x1D,0x1D,0x0B,0x1F,0x1F };
const uchar __at 0x7F6 LED7Code51[]={0x14,0x00,0x10,0x00,0x04,0x04,0x14,0x00,0x14,0x04 };
void disp_num_3( unsigned char num )
{      
       Lcd_seg[6]= LED7Code50[num];
       //Lcd_seg[7] &= 0b00001011;
       Lcd_seg[7] &= 0b00001000;
       Lcd_seg[7]|= LED7Code51[num]; 
       if( disp_VR ) Lcd_seg[7] |= 0b00000001;
       if( disp_VL ) Lcd_seg[7] |= 0b00000010;
}

//=====================================================================================================
//========================================��ʾ����=====================================================
//=====================================================================================================
void disp_speed_trip_bat(unsigned char bl)
{
       	unsigned int num;
        if( bl ) //��ʾ���
        {
       	       	Lcd_seg[4] &= 0b00010111;  
       	       	Lcd_seg[7] |= 0b00001000; 
                num = sub_km; 
       	       	}  
        else  //��ʾ��ѹ
        {
               	Lcd_seg[7] &= 0b00010111;  
               	Lcd_seg[4] |= 0b00001000;
                num = voltage;
        }
       R3R4 = num;
       R5 = 100;
       TwobyteDIVone();
       disp_num_3( R1R0 );
       R3R4 = R2;
       R5 = 10;
       TwobyteDIVone();
       disp_num_4( R1R0 );
       
       R2 = 0 ;
       R3R4 = num;
       R5 = 10;
       TwobyteDIVone();
       disp_num_5( R2 );
       
        R2 = 0;
        R3R4 = ShowSpeed;  //ShowSpeed
        R5 = 10;
        TwobyteDIVone();
        disp_num_1( R1R0 );
        disp_num_2( R2 );
}
//=====================================================================================================
//=======================================������ʾ����==================================================
//=====================================================================================================
void bat_how_many(unsigned int Vol)
{
    Lcd_seg[8] &= 0b00010001;
    if(Vol >= Stalls_Bat[3] ) 
    {
            Lcd_seg[8] = 0b00011111;
    }
    else if((Vol<Stalls_Bat[3])&&(Vol>=Stalls_Bat[2]))
    {
            Lcd_seg[8] = 0b00011101;
    }
    else if((Vol<Stalls_Bat[2])&&(Vol>=Stalls_Bat[1]))
    {
            Lcd_seg[8] = 0b00011001;
    }
    else if((Vol<Stalls_Bat[1])&&(Vol>=Stalls_Bat[0]))
    {

            Lcd_seg[8] = 0b00010001;
    }
    else if(Vol<Stalls_Bat[0])
    {  
            Lcd_seg[8] ^= 0b00010000;
            Lcd_seg[8] |= 0b00000001;
    }
}
//================================================================================================
//=======================================LCD���㺯��==================================================
//================================================================================================
void LCD_DispALL(unsigned char uc_data)
{
    unsigned char uc_i;
    uc_i = 0;
    for( uc_i = 0; uc_i < 9; uc_i++ )
    {
       	Lcd_seg[uc_i] = uc_data;
    }
}
//=====================================================================================================
//=======================================�������ݺ���==================================================
//=====================================================================================================
void learn_while_type(void)
{                               ////�ߵ�ƽ�� Ĭ��״̬
        if( choice_vol == 48 )
       	 {
       	       	 Stalls_Bat[0] = Stalls0_48V;
       	       	 Stalls_Bat[1] = Stalls1_48V;
       	       	 Stalls_Bat[2] = Stalls2_48V;            
       	       	 Stalls_Bat[3] = Stalls3_48V;
       	  }  
       	  else if( choice_vol == 60  )
       	  {
       	       	 Stalls_Bat[0] = Stalls0_60V;
       	       	 Stalls_Bat[1] = Stalls1_60V;
       	       	 Stalls_Bat[2] = Stalls2_60V;            
       	       	 Stalls_Bat[3] = Stalls3_60V;
       	  }    
       	  else if( choice_vol == 72  )
       	  {
       	       	 Stalls_Bat[0] = Stalls0_72V;
       	       	 Stalls_Bat[1] = Stalls1_72V;
       	       	 Stalls_Bat[2] = Stalls2_72V;            
       	       	 Stalls_Bat[3] = Stalls3_72V;
       	  } 
}
//=====================================================================================================
//======================================IO����ѡ���ѹ=================================================
//=====================================================================================================
void choice_bat( void )
{
        if( (A_IN == 1) && (B_IN==1) )
       	{
       	       	voltage_TY_flag = 1;  //��ʾ 4860��ʶ��
       	}
       	       	else if( (A_IN==0) && (B_IN==1) )  //A��̽� 48 72
       	{
               	voltage_TY_flag = 2;
       	}
       	else
       	{
                choice_vol = 60;voltage_TY_flag = 0;
       	}
}
 //=====================================================================================================
//======================================IO�ڸ��ú���===================================================
//=====================================================================================================
void mux_ioport(void) 
{
        //unsigned char VR_count;
        PDP1 = 0x27;
        VD_IN_FL; 
       	VL_IN_FL;
       	VR_IN_FL;
       	//A_IN_FL;  
       	//B_IN_FL;             	 
       	delay_us(200);  //��ʱʱ��̫�̵Ļ� �ɼ��᲻��
        //choice_bat( ); //ɸѡ����ѹ״̬
       	  if( VD == 1 )  // VD  �ڻ���1����
       	  {
       	    VD_flag1++;VD_flag2 = 0;
       	    if( VD_flag1 > 3 ) 
       	    { disp_VD = 1;VD_flag1 = 0;}
       	  }
       	  else
       	  {
       	    VD_flag2++;VD_flag1 = 0;
       	    if( VD_flag2 > 3 ) 
       	    { disp_VD = 0;VD_flag2 = 0;}
       	  }
        if( disp_VD )
        {
                Lcd_seg[1] |= 0b00010000;      	
        }
        else
        {
                Lcd_seg[1] &= 0b00001111;
        }
               	if( VR || VL )  //��Ч��ʼ��ʱ500ms��ȥ��ȡ��ƽ״̬�����
       	{
               if( VR )
               {
                       	if( VR_twink_self_flag == 0 ) disp_VR = 1;
       	       	}
                if( VL )
               {
                       	if( VL_twink_self_flag == 0 ) disp_VL = 1;
                }
       	       	VR_count++;
       	       	if( VR_count > 24 )  //��ʱ
       	       	{
               	       	VR_count = 0;
       	       	       	if( VR ) 
       	       	       	{
       	       	       	       	VR_twink_self_flag ^= 1;
       	       	       	       	disp_VR = 0;
       	       	       	}
       	       	       	if( VL ) 
       	       	       	{
               	       	       	VL_twink_self_flag ^= 1;
                                disp_VL = 0;
                               	       	       	}      	
       	       	}
       	}
       	else
       	{
               	VR_count = 0;VR_twink_self_flag = 0;VL_twink_self_flag = 0;
                disp_VR = 0;disp_VL = 0;
       	}
}
 //=====================================================================================================
//======================================IO�ڸ��ú���===================================================
//=====================================================================================================
void mux_ab(void) 
{
       	A_IN_FL;  
       	B_IN_FL;       	 
       	delay_us(200);  //��ʱʱ��̫�̵Ļ� �ɼ��᲻��
        choice_bat( ); //ɸѡ����ѹ״̬
}
/***************************************************
;* 
;* Function Name: ��ʾ�����Ӻ���
;* Inputs:        
;* Returns:       
;* Description:   
;*     	
;***************************************************/
void Drive_lcd(void)
{
        //     	static unsigned char scan_cnt=0; 
        NMOS0ON=0;
       if( scan_cnt == 0 )
       {
       	       	       	COM4_IN_FL;         // com �� ɨ�� 
       	       	       	if( uc_disp_all_flag == 0 )
       	       	       	{
       	       	       	       mux_ioport();
       	       	       	}
       	       	       	else
       	       	       	{
               	       	       mux_ab();       	
       	       	       	}
       	       	       	set_normal_seg(0,0);
       	       	       	COM0_OUT_H;    	
       	       	       	scan_cnt = 1;          	
       } 
       	else if( scan_cnt == 1 )
       {
       	       	       	COM0_IN_FL;            	       	
       	       	       	set_normal_seg(0,1);
       	       	       	COM1_OUT_H;
       	       	       	scan_cnt = 2;
       }       	
               else if( scan_cnt == 2 ) 
               {
               	       	COM1_IN_FL;            	       	       	
       	       	       	set_normal_seg(0,2);
       	       	       	COM2_OUT_H;
       	       	       	scan_cnt = 3;
               }       	
               else if( scan_cnt == 3 )
               {
       	       	       	COM2_IN_FL;
                        adc_loop_speed();                      	
       	       	       	set_normal_seg(0,3);
       	       	       	COM3_OUT_H;
       	       	       	scan_cnt = 4;
               }       	
               else if( scan_cnt == 4 )
               {
               	       	COM3_IN_FL;                    	
       	       	       	set_normal_seg(0,4);
       	       	       	COM4_OUT_H;
       	       	       	scan_cnt = 5;
               }       	
               else if( scan_cnt == 5 )
               {
       	       	       	COM4_IN_FL;            	
       	       	       	set_normal_seg(1,0);
       	       	       	COM0_OUT_L;
       	       	       	scan_cnt = 6;
               }       	
               else if( scan_cnt == 6 )
               {
       	       	       	COM0_IN_FL; 
       	       	       	adc_loop_bat( );       	
       	       	       	set_normal_seg(1,1);
       	       	       	COM1_OUT_L;
       	       	       	scan_cnt = 7;
               }       	
               else if( scan_cnt == 7 )
               {
                       	COM1_IN_FL;            	       	       	
       	       	       	set_normal_seg(1,2);
       	       	       	COM2_OUT_L;
       	       	       	scan_cnt = 8;
               }       	
               else if( scan_cnt == 8 )
               {
       	       	       	COM2_IN_FL;            	       	       	
       	       	       	set_normal_seg(1,3);
       	       	       	COM3_OUT_L;
       	       	       	scan_cnt = 9;
               }       	
               else if( scan_cnt == 9 )
               {
                       	COM3_IN_FL;            	       	       	       	       	       	       	
       	       	       	set_normal_seg(1,4);
       	       	       	COM4_OUT_L;
       	       	       	scan_cnt = 0;
               } 
}
//=========================================================================
void SysInit()
{
       	__asm
       	       	clrr   	       	FSR0
       	ClrRAM0:
       	       	clrr   	       	INDF0
       	       	incr   	       	FSR0
       	       	jbset  	       	FSR0,7
       	       	goto   	       	ClrRAM0
       	__endasm;
       	MCR = 0;
       	INTE = 0;
       	INTF = 0;
   
       	IOP0 = 0;     //p0���ݿ�
       	OEP0 = 0x00;  //0�����  1���
       	PUP0 = 0x6f;  //p0�������� 0��ֹ 1��  a b������
       	PDP0 = 0x0f;  //p0�������� 0��ֹ 1��
    
       	IOP1 = 0x00;  //�������и�mos�����Ҫ����ߵͣ�Ҫ����λһ����� PMOSION=1  IOP16=1
       	OEP1 = 0x00;
       	PUP1 = 0x20;
       	PDP1 = 0x27;  //���Ҵ�������� 10 11 12
 
       	AUCR = 0x0C;  
   
       	AN1SEL = 0x0;  	//P16Ĭ�Ͼ�Ȼ��AD��   p13�ǵ�ѹ�ɼ��� 
    
       	T1LOAD = 250;   //187*8=1.5ms
       	T1DATA = 0;
       	T1CR   = 0x8F;  //16M��Ƶ ���3��bit ��Ƶ128
       	//T0CR   = 0x88;
       	//T0LOAD = 0xFF;
       	//T0DATA = 0;
}   
//=====================================================================================================
//=======================================ADC������===================================================
//=====================================================================================================
unsigned int AverageADCData( unsigned int adcopy )
{      	
       	unsigned char R7;
       	unsigned int ADC_TotalData;            	//4���������ݵ�
       	ADC_TotalData = 0;
        for(R7=0;R7<24;R7++)
       	{      	       	 
       	       	ADC_TotalData += adcopy;               	
       	}
        ADC_TotalData = (ADC_TotalData / 24);
       	return ADC_TotalData;  	       	       	       	   //���صڶ������ݣ�����������������
}
void speed_handle( void )
{  
        unsigned int temp_s,Speed;
        unsigned char data1;
        data1 = Speed - ShowSpeed;
        temp_s = ShowSpeed*10+8;
        SpeedTest = AverageADCData( speed_AD ); //���˲�
        if( SpeedTest < 40 )  //�ɼ����ĵ�ѹ�������0.7V������
       	{
       	       	SpeedTest = 0;
                ShowSpeed = 0;
       	}
       	else
       {      
               	if( choice_vol == 48 )
                       	       	SpdInt = ( unsigned char )( ((SpeedTest-40) * 5)  / 18 );  //45
               else if( choice_vol == 60 )
                       	SpdInt = ( unsigned char )( ((SpeedTest-40) * 25)  / 110 );  //48
               else if( choice_vol == 72 )
               	       	SpdInt = ( unsigned char )( ((SpeedTest-40) * 25)  / 126 ); //51
               Speed = SpdInt;
               SpdInt = SpdInt*10;
               //ShowSpeed=(ShowSpeed*2+SpdInt*8)/10;  //�˲��㷨
                if(ShowSpeed > Speed)
               	{
                       	       	data1 ^= 0xFF;
                       	       	data1++;
               	}
               	if(data1 > 2 || Speed <= 2)
               	{
               	       	ShowSpeed = Speed;
               	}
                else  if( SpdInt >= temp_s )
               {
                       	ShowSpeed++;   	
               }
               else
               {
                        temp_s =  temp_s - 23;
                        if( SpdInt <= temp_s )
                         ShowSpeed--;       
               }
       	}
        if( ShowSpeed > 99 ) ShowSpeed = 99;  //��ʾ����99
}
//=====================================================================================================
//========================================��̴���=====================================================
//=====================================================================================================
void odo_handle(void)
{
       	if( ShowSpeed > 0 )
       	{
       	    Milage_temp = Milage_temp+ShowSpeed/2;
       	    if( Milage_temp >= 360 )// (V1+V2+V3+....V4)*(1/3600)>=0.1���� 360
       	    {       
               	       	sub_km++;
       	       	       	Milage_temp = Milage_temp - 360;       	       	       	    
       	    }
       	}
}//end  odo_handle
void sys_bat(void)
{
        // adc_loop_bat( );  //��ȡ�����ݵ�ѹ
        voltage = ( BAT_AD * 50 ) / 41; //�������ص�ѹ
        //choice_bat( ); //ɸѡ����ѹ״̬
        if( voltage_TY_flag == 1 )  //��ѹͨ��,�жϵ�ѹ
       	{
             if( voltage >= 555 )
             {
               	choice_vol = 60;
             } 
             else
             {
               	choice_vol = 48;
             }  
       	}
       	else if( voltage_TY_flag == 2 )
       	{
             if( voltage >= 620 )
             {
                       choice_vol = 72;
             } 
             else
             {
                       choice_vol = 48;
             }
       	}
        learn_while_type();
}
/**********************************************
;* 
;* Function Name: main
;* Inputs:        None
;* Returns:       None
;* Description:   the main process
;*     	
;**********************************************/
void main(void)
{
        unsigned char disp_flag,bat_km_qh_cnt,disp_all_cnt,disp_all_flag;
        GIE = 0;
        SysInit();
        choice_vol = 48;uc_disp_all_flag = 1;
        T1IE = 1;      	
        GIE = 1;
        seg_bit[0] = 0x01;seg_bit[1] = 0x02;seg_bit[2] = 0x04;seg_bit[3] = 0x08;seg_bit[4] = 0x10;
        LCD_DispALL(0xff);             	
        //A��̽ӵ� 48 72ͨ��  ����62V ����70Vϵͳ
       	while(1)
       	{
             ClrWdt();
             if(B_100ms_flag)
             {
                 B_100ms_flag = 0;
                 BAT_AD_copy = AverageADCData( BAT_AD ); //���˲�
                 voltage_copy = BAT_AD_copy * 50;
                 voltage_copy = voltage_copy / 41; //�������ص�ѹ  100K  3.3K ��ѹ
                 voltage =(voltage*2+voltage_copy*8)/10;  //�˲��㷨
                 speed_handle();
                 if( disp_all_flag ) disp_speed_trip_bat( disp_flag );  //��̺͵�ѹ5S�����л�
             }
             if(B_500ms_flag)
             {
                 B_500ms_flag = 0; 
                 if( disp_all_flag == 0 )
                 {
                         disp_all_cnt++;
                         if( disp_all_cnt > 2 )
                         {
                               	disp_all_flag = 1;
                                sys_bat();
                                uc_disp_all_flag = 0; 
                         }
       	       	 }
               if( disp_all_flag ) bat_how_many(voltage);
                 odo_handle();
                 bat_km_qh_cnt++;
                 if( bat_km_qh_cnt > 10 )
                 {
                         bat_km_qh_cnt = 0;
                         disp_flag ^= 1;       	
                 }
                 //learn_while_type();  //��ֵ��ѹ�����õ�
             } 
             if(B_2ms_flag)
             {
                     B_2ms_flag=0;
                       	Drive_lcd();    
               	}
       	} 
}

void int_isr(void) __interrupt
{
       	__asm
       	       	movra  	_ABuf
       	       	swapr  	_ABuf
       	       	swapar 	PFLAG
       	       	movra  	_PFLAGBuf
       	__endasm;    
       	if(T1IF)
       	{
       	       	T1IF = 0;
       	       	B_2ms_flag=1;
                time1_cnt1++;
                if( time1_cnt1 > 50 )
                {
                        time1_cnt1 = 0;
                        B_100ms_flag = 1;      	
                }
                time1_cnt++;
                if( time1_cnt > 250 )
                {
                        time1_cnt = 0;
                        B_500ms_flag = 1;      	
                }
                
       	       	       //      	Drive_lcd();  //2ms
                
       	}
       	   __asm
       	       	swapar 	_PFLAGBuf
       	       	movra  	PFLAG
       	       	swapar 	_ABuf
       __endasm;
}

