@echo off
set SDCC_HOME=e:\tools\sn-sdcc
set GPUTILS_HOME=e:\tools\snutils
set SNLIB=e:\tools\snlib
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-s %SNLIB%\share\lkr\3316.lkr ^
%SNLIB%\share\lib\3316.lib ^
-w -m -c

set SDCC_ARG=-V --verbose --use-non-free -mmc32 --long-call -p3316 ^
-I"%SNLIB%\share\include" ^
-Wa"-I%SNLIB%\share\header" ^
-Wl"-s%SNLIB%\share\lkr\3316.lkr" ^
-Wl"-I%SNLIB%\share\lib"

@echo on

::note
sdcc %SDCC_ARG% -c %1.c
gplink %GPLINK_ARG% -o %1 %1.o 



::sdcc -V --verbose --use-non-free -mmc3x -p3221  -Wa -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\header -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\include -Wl -sE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -c aaa.c
::gplink -I E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lib -s E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -w -m -c -o Output\aaa E:\temp\aaa\aaa.o  3221.lib