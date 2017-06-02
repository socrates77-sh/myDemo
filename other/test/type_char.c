#include <p18f1220.h>

char c_a, c_b;
unsigned char uc_a, uc_b;

void main(void)
{
	c_a = PORTB;
	c_b = PORTA;
	uc_a = PORTB;
	uc_b = PORTB;

	PORTA = c_a + c_b;
	PORTA = uc_a + uc_b;
	PORTB = c_a - c_b;
	PORTB = uc_a - uc_b;

	if (c_a > 0) PORTA = c_b;
	if (uc_a > 0) PORTA = uc_b;
	
	if (c_a > -3) PORTA = c_b;
	if (uc_a > -3) PORTA = uc_b;
	
	if (uc_a == ~uc_b) PORTA = uc_b;
	
	uc_a = uc_b = 0x33;

	while(1);
}
