#include "0311.inc"
	GLOBAL	init_timer1
	GLOBAL	init_ports

INIT_CODE		CODE

Read macro device, buffer
	movar buffer
	movra device
	call delay
	endm

init_ports:
	;movai 0x0d
	Read 0x01, 0x03
	movai 0xff
	Read 0x01, 0x03
	return
	
delay:
	nop
	nop
	return

;----------------------------------------------------------------------
;  ******************* INITIALIZE TIMER1 MODULE  *******************
;----------------------------------------------------------------------
init_timer1:
	movai b'00110000'  
	movra MCR
	return

	end
