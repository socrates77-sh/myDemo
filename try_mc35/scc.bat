@echo off
set SDCC_HOME=e:\tools\sn-sdcc
set GPUTILS_HOME=e:\tools\snutils
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-s %SDCC_HOME%\share\lkr\mc35p7041.lkr ^
%SDCC_HOME%\share\lib\mc35p7041.lib ^
-w -m -c

set SDCC_ARG=-V --verbose --use-non-free -mmc35 -p2K7041 ^
-I"%SDCC_HOME%\share\include" ^
-Wa"-I%SDCC_HOME%\share\header" ^
-Wl"-s%SDCC_HOME%\share\lkr\mc35p7041.lkr" ^
-Wl"-IE:\tools\bak\share\lib"

@echo on

::note
sdcc %SDCC_ARG% -c %1.c
gplink %GPLINK_ARG% -o %1 %1.o 



::sdcc -V --verbose --use-non-free -mmc3x -p3221  -Wa -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\header -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\include -Wl -sE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -c aaa.c
::gplink -I E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lib -s E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -w -m -c -o Output\aaa E:\temp\aaa\aaa.o  3221.lib