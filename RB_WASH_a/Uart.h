#ifndef _Uart_h_
#define _Uart_h_


#ifdef	Uart_Global
#define	Uart_EXT
#else
#define Uart_EXT extern
#endif 


Uart_EXT unsigned char UartStep;
Uart_EXT unsigned char UartTemp;
void InitUart(void);
void EndUart(void);
void UartSendByte(unsigned char Data);
void UartDelay(unsigned char SetBaud);
void UartSendInt(const unsigned char *String);

#endif 