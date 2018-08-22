@echo off
set GPUTILS_HOME=e:\tools\snutils
set SDCC_HOME=e:\tools\sn-sdcc
PATH=%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink;%GPUTILS_HOME%\gputils
set GPASM_ARG=-p mc34p01 -I"%SDCC_HOME%\share\header"
set GPLINK_ARG=-I"%SDCC_HOME%\share\lkr" -s mc30p011.lkr
@echo on

::note
gpdasm.exe -p mc34p01 all_code_mc34p01.s19
