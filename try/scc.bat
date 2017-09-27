@echo off
set SDCC_HOME=e:\tools\sn-sdcc
set GPUTILS_HOME=e:\tools\snutils
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-I"%GPUTILS_HOME%\lkr" -s 16f87.lkr

set SDCC_ARG=-V -S --verbose --use-non-free -mmc3x -p3221 ^
-I"%SDCC_HOME%\share\include" ^
-Wa"-I%SDCC_HOME%\share\header" ^
-Wl"-s%SDCC_HOME%\share\lkr\mc32p21.lkr" ^
-Wl"-IE:\tools\bak\share\lib"

@echo on

::note
sdcc %SDCC_ARG% %1



