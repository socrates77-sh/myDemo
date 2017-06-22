	org 0h
Read macro device, buffer
	movar buffer
	movra device
	call delay
	endm
	
	nop
	Read 0x01, 0x03
	movai 01h
	Read 0x05, 0x07
	nop
	movai 01h
	movra 78h
	movai 80h
	movra 7bh
	
delay:
	nop
	nop
	return


	end
