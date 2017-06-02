@echo off
set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header\mc30"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr\mc30" -s mc30p011.lkr
set SDCC_HOME=d:\work\compiler\sn-sdcc
set SDCC_ARG=-verbose -p=18f1220 ^
	-I=D:\work\mcc18\h 
	
@echo on

::note
D:\work\mcc18\bin\mcc18 %SDCC_ARG% type_char.c
D:\work\mcc18\bin\mplink D:\work\mcc18\lkr\18f1220.lkr ^
	/l D:\work\mcc18\lib ^
	type_char.o /o a