@echo off
set SDCC_HOME=e:\tools\sn-sdcc
set GPUTILS_HOME=e:\tools\snutils
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-I"%GPUTILS_HOME%\lkr" -s 16f87.lkr

set SDCC_ARG=-V --verbose -mmc30 -p3264 ^
-I"%SDCC_HOME%\share\include" ^
-Wa"-I%SDCC_HOME%\share\header" ^
--std-c99 --i-code-in-asm -c -o 

@echo on

::note
sdcc %SDCC_ARG% mc32p64.o mc32p64.c



