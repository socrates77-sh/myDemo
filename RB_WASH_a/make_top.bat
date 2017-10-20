@echo off
set PATH=%PATH%;E:\tools\snutils\gplink;E:\tools\snutils\gpasm;E:\tools\snutils\gputils;e:\tools\pic\sn-sdcc-wj\bin
::set GPASM_ARG=-p mc30p011 -I"e:\tools\pic\sn-sdcc-wj\share\header"
::set GPLINK_ARG=-I"e:\tools\pic\sn-sdcc-wj\share\lkr" -s mc30p011.lkr
set SDCC_HOME=e:\tools\pic\sn-sdcc-wj
set SDCC_ARG=-V --verbose --use-non-free -mmc3x -p0311 ^
-Wa"-I%SDCC_HOME%\share\header" ^
-Wa"-I%SDCC_HOME%\share\include" ^
-Wl"-s%SDCC_HOME%\share\lkr\mc30p011.lkr"
-WI"-s%SDCC_HOME%\share\lib"
@echo on

::note
sdcc %SDCC_ARG% -c ad.c
sdcc %SDCC_ARG% -c init.c
sdcc %SDCC_ARG% -c key.c
::sdcc %SDCC_ARG% -c led.c
sdcc %SDCC_ARG% -c sleep.c
::sdcc %SDCC_ARG% -c test.c
sdcc %SDCC_ARG% -c Uart.c
sdcc %SDCC_ARG% -c main.c


sdcc %SDCC_ARG% ^
ad.o ^
init.o ^
key.o ^
sleep.o ^
Uart.o ^
main.o ^
-o test








