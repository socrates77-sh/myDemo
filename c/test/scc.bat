@echo off
set SDCC_HOME=d:\work\compiler\sn-sdcc
PATH=d:\work\compiler\sn-sdcc;d:\work\compiler\snutils

set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc30p011.lkr
set SDCC_HOME1=d:\work\compiler\sn-sdcc
set SDCC_ARG=-V --verbose --use-non-free -mmc3x -p30p011 ^
	-Wa"-I%SDCC_HOME1%\share\header" ^
	-Wl"-s%SDCC_HOME1%\share\lkr\mc30p011.lkr"
@echo on

::note
sdcc %SDCC_ARG% %1