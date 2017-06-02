@echo off
set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header\mc30"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr\mc30" -s mc30p011.lkr
set SDCC_HOME=d:\work\compiler\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc30 -p30p011 ^
	-Wa"-I%SDCC_HOME%\share\header\mc30" ^
	-Wl"-s%SDCC_HOME%\share\lkr\mc30\mc30p011.lkr"
@echo on

::note
sdcc %SDCC_ARG% -c fun.c
sdcc %SDCC_ARG% -c main.c
sdcc %SDCC_ARG% main.o fun.o -o i2c
