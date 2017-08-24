@echo off
set SDCC_HOME=e:\tools\pic\sn-sdcc-wj
set PATH=%SDCC_HOME%;%SDCC_HOME%\bin

set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc30p011.lkr

set SDCC_ARG=-V -S --verbose --use-non-free -mmc3x -p0311 ^
	-Wa"-I%SDCC_HOME%\share\header" ^
	-Wl"-s%SDCC_HOME%\share\lkr\mc30p011.lkr"
@echo on

::note
sdcc %SDCC_ARG% %1