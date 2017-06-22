#include "MC30P6060.h"
#include  "const.h"
#include  "var.h"

//void I2C_Ack(void);
//void I2C_delay(void);


/***************************************************
ACK£∫   	       	SDA=0  SCL…œ…˝—ÿ
****************************************************/
void I2C_Ack(void) 
{      	
   	SCL_L; 
   	I2C_delay(); 
   	SDA_L; 
   	I2C_delay(); 
   	SCL_H; 
   	I2C_delay(); 
   	SCL_L; 
   	I2C_delay(); 
} 

