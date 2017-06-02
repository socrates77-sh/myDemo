@echo off
PATH=d:\work\compiler\sn-sdcc;d:\work\compiler\snutils
set GPASM_ARG=-p mc32p21 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc32p21.lkr
set SDCC_HOME=d:\work\compiler\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc3x -p32p21 ^
	-Wa"-I%SDCC_HOME%\share\header" ^
	-Wl"-s%SDCC_HOME%\share\lkr\mc32p21.lkr"
@echo on

::note
sdcc %SDCC_ARG% -c adcsbr.c
sdcc %SDCC_ARG% -c displaysbr.c
sdcc %SDCC_ARG% -c dischgsbr.c
sdcc %SDCC_ARG% -c T500mssbr.c
sdcc %SDCC_ARG% -c KeySbr.c
sdcc %SDCC_ARG% -c workctrlsbr.c
sdcc %SDCC_ARG% -c interrupt.c
sdcc %SDCC_ARG% -c initSys.c
sdcc %SDCC_ARG% -c yddy3221.c
sdcc %SDCC_ARG% yddy3221.o initSys.o interrupt.o workctrlsbr.o T500mssbr.o adcsbr.o dischgsbr.o displaysbr.o KeySbr.o -o YDDY
::sdcc %SDCC_ARG% yddy3221.o initSys.o workctrlsbr.o T500mssbr.o adcsbr.o dischgsbr.o displaysbr.o KeySbr.o -o YDDY

