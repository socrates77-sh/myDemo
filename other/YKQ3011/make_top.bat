@echo off
set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header\mc30"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr\mc30" -s mc30p011.lkr
set SDCC_HOME=d:\work\compiler\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc30 -p30p011 ^
	-Wa"-I%SDCC_HOME%\share\header\mc30" ^
	-Wl"-s%SDCC_HOME%\share\lkr\mc30\mc30p011.lkr"
@echo on

::note
sdcc %SDCC_ARG% -c YKQ3011.c
sdcc %SDCC_ARG% -c initSys.c
sdcc %SDCC_ARG% -c CtrlSbr.c
sdcc %SDCC_ARG% -c T1sSbr.c
sdcc %SDCC_ARG% -c IR.c
sdcc %SDCC_ARG% YKQ3011.o initSys.o CtrlSbr.o T1sSbr.o IR.o -o top
