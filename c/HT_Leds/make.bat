@echo off
PATH=e:\tools\sn-sdcc\bin;e:\tools\snutils\gplink;e:\tools\snutils\gpasm
set GPASM_ARG=-p 6060 -I"e:\tools\sn-sdcc\share\header"
set GPLINK_ARG=-I"e:\tools\sn-sdcc\share\lkr" -s 0311.lkr ^
	-I"e:\tools\sn-sdcc\share\lib" ^
	-w -m -c 
set SDCC_HOME=e:\tools\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc3x -p6060 ^
	-Wa"-I%SDCC_HOME%\share\header" ^
	-Wa"-I%SDCC_HOME%\share\include" ^
	-Wl"-s%SDCC_HOME%\share\lkr\0311.lkr"
@echo on

::note
::sdcc %SDCC_ARG% -c HT_1.c
sdcc %SDCC_ARG% -c HT_Leds.c
::sdcc %SDCC_ARG% HT_1.o HT_Leds.o -o top
::sdcc %SDCC_ARG%  HT_Leds.o -o top

gplink %GPLINK_ARG%  6060.lib HT_Leds.o -o top

::PATH=E:\temp\Debug\tools
::sdcc -V --verbose --use-non-free -mmc3x -p6060  -Wa -IE:\temp\Debug\tools\share\header -IE:\temp\Debug\tools\share\include -Wl -sE:\temp\Debug\tools\share\lkr\0311.lkr -c HT_Leds.c
::gplink -I E:\temp\Debug\tools\share\lib -s E:\temp\Debug\tools\share\lkr\0311.lkr -w -m -c -o top HT_Leds.o  6060.lib
