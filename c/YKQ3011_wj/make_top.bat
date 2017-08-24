@echo off
set PATH=%PATH%;E:\tools\snutils\gplink;E:\tools\snutils\gpasm;E:\tools\snutils\gputils
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
sdcc %SDCC_ARG% -c YKQ3011.c
sdcc %SDCC_ARG% -c initSys.c
sdcc %SDCC_ARG% -c CtrlSbr.c
sdcc %SDCC_ARG% -c T1sSbr.c
sdcc %SDCC_ARG% -c IR.c
sdcc %SDCC_ARG% YKQ3011.o initSys.o CtrlSbr.o T1sSbr.o IR.o -o top
