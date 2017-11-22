;#include "2K7041.inc"
;#include "_gptrget1.S"

sharebank  	udata_ovr  	0x0000 
STK00  	res 1
STK01  	res 1
STK02  	res 1
STK03  	res 1
STK04  	res 1
STK05  	res 1
STK06  	res 1  
   	   	
   	global 	STK00
   	global 	STK01
   	global 	STK02
   	global 	STK03
   	global 	STK04
   	global 	STK05
   	global 	STK06
   	   	
   	extern __gptrget
   	extern __gptrput
   	extern __gptrget2


ID_aaa_0   	code 0x2ff
_rom
   	dw 0x55
   	dw 0x66
   	dw 0x77
   	dw 0x88

UD_abs_aaa_20  	udata_ovr  	0x0020
ram0 res 1
ram1 res 1
ram2 res 1
ram3 res 1

data_try udata_ovr 0x30
td0 res 1
td1 res 1
td2 res 1
td3 res 1

STARTUP	code 0x0000
   	goto start

start:
   	call td_init
   	
   	call t_gptrget_d   	; (ram0) <= 0x11
   	call t_getrget_c   	; (ram0) <= 0x55
   	call t_gptrput 	   	; (ram0) <= 0x12
   	call t_gptrget2_d  	; (ram1:ram0) <= 0x2211
   	call t_gptrget2_c  	; (ram1:ram0) <= 0x6655
   	
   	goto $
   	
td_init:
   	movai 0x11
   	movra td0
   	movai 0x22
   	movra td1
   	movai 0x33
   	movra td2
   	movai 0x44
   	movra td3
   	return

t_gptrget_d:
   	movai (td0)
   	movra STK01
   	movai high(td0)
   	movra STK00
   	movai 0x00
   	call __gptrget
   	movra ram0
   	return

t_getrget_c:
   	movai (_rom)
   	movra STK01
   	movai high(_rom)
   	movra STK00
   	movai 0x80
   	call __gptrget
   	movra ram0
   	return
   	
t_gptrput:
   	movai 0x12
   	movra STK02
   	movai (ram0)
   	movra STK01
   	movai high(ram0)
   	movra STK00
   	movai 0x00
   	call __gptrput
   	return

t_gptrget2_d:
   	movai (td0)
   	movra STK01
   	movai high(td0)
   	movra STK00
   	movai 0x00
   	call __gptrget2
   	movra ram1
   	movar STK00
   	movra ram0
   	return

t_gptrget2_c:
   	movai (_rom)
   	movra STK01
   	movai high(_rom)
   	movra STK00
   	movai 0x80
   	call __gptrget2
   	movra ram1
   	movar STK00
   	movra ram0
   	return

   	end