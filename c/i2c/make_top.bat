@echo off
PATH=d:\work\compiler\sn-sdcc;d:\work\compiler\snutils
set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc30p011.lkr
set SDCC_HOME=d:\work\compiler\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc30 -p30p011 --debug ^
	-Wa"-I%SDCC_HOME%\share\header" ^
	-Wl"-s%SDCC_HOME%\share\lkr\mc30p011.lkr"
@echo on

::note
sdcc %SDCC_ARG% -c fun.c
sdcc %SDCC_ARG% -c main.c
sdcc %SDCC_ARG% main.o fun.o -o i2c
