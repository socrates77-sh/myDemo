@echo off
set SDCC_HOME=e:\tools\sn-sdcc
set GPUTILS_HOME=e:\tools\snutils
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p 7030 -I"%SDCC_HOME%\share\header"
set GPLINK_ARG=-I"%GPUTILS_HOME%\lkr" -s 16f87.lkr

set SDCC_ARG=-V -c --verbose --use-non-free -mmc35 -p7030 ^
-I"%SDCC_HOME%\share\include" ^
-Wa"-I%SDCC_HOME%\share\header" ^
-Wl"-s%SDCC_HOME%\share\lkr\mc32p21.lkr" ^
-Wl"-IE:\tools\bak\share\lib"

@echo on

::note
sdcc %SDCC_ARG% %1.c
::gpasm %GPASM_ARG% %1.asm



