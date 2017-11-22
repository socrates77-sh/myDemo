UD_abs_mc35p7041_82	udata_ovr  	0x0082
_HIBYTE
   	res	1
UD_abs_mc35p7041_83	udata_ovr  	0x0083
_FSR0
   	res	1
UD_abs_mc35p7041_84	udata_ovr  	0x0084
_FSR1
   	res	1
UD_abs_mc35p7041_86	udata_ovr  	0x0086
_STATUS
   	res	1
UD_abs_mc35p7041_ce	udata_ovr  	0x00ce
_PCL
   	res	1
UD_abs_mc35p7041_cf	udata_ovr  	0x00cf
_PCH
   	res	1
UD_abs_mc35p7041_e7	udata_ovr  	0x00e7 
_INDF
   	res	1




; -----------------------------------------------
; --- extern declared SFRs
; -----------------------------------------------
;  	extern _STATUS
;  	extern _FSR0
;  	extern _FSR1
;  	extern _INDF0
;  	extern _INDF1
;  	extern _INDF2
;  	extern _INDF3
;  	extern _FSR
;  	extern _INDF
;  	extern _PCLATH
;  	extern _PCL
   	

C  	EQU	2
DC 	EQU	1
Z  	EQU	0
IRP	EQU	7
   	
; -----------------------------------------------
; --- generic pointer access helpers
; -----------------------------------------------

GPTRTAG_DATA   	EQU	0x00
GPTRTAG_CODE   	EQU	0x80

; setup FSR to point to (STK00:STK01)
setup_fsr  	macro
	movar	STK00
	movra	_FSR1
	movar	STK01
	movra	_FSR0
	endm

inc_fsr	   	macro
   	;;incr 	_FSR
   	movai	1
   	addra 	_FSR0
   	jbclr	_STATUS, Z
   	addra	_FSR1
	endm

; dispatch according to gptr type
select_routine 	macro  	dataptr, codeptr
   	; __data pointer tag: 0x00
	xorai  	GPTRTAG_DATA
	jbclr  	_STATUS, Z
	goto   	dataptr
   	; __code pointer tag: 0x80
	xorai  	(GPTRTAG_DATA ^ GPTRTAG_CODE)
	jbclr  	_STATUS, Z
	goto   	codeptr
	endm

check_data 	macro  	dataptr
   	; __data pointer tag: 0x00
	xorai  	GPTRTAG_DATA
	jbclr  	_STATUS, Z
	goto   	dataptr
	endm

