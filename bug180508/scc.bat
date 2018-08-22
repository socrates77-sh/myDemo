@echo off
::set SDCC_HOME=E:\temp\WinScopeIDE_v1.02bt_20160606\tools
::set GPUTILS_HOME=E:\temp\WinScopeIDE_v1.02bt_20160606\tools
::set SNLIB=E:\temp\WinScopeIDE_v1.02bt_20160606\tools
::PATH=%SDCC_HOME%


set SDCC_HOME=e:\tools\sn-sdcc\bin
set GPUTILS_HOME=e:\tools\snutils
set SNLIB=E:\tools\demo\bug180508
PATH=%SDCC_HOME%;%SDCC_HOME%\bin;%GPUTILS_HOME%\gpasm;%GPUTILS_HOME%\gplink


::set GPASM_ARG=-p p16f87 -I"%GPUTILS_HOME%\header"
set GPLINK_ARG=-s %SNLIB%\share\lkr\7311.lkr ^
%SNLIB%\share\lib\7311.lib ^
-w -m -c

set SDCC_ARG=-V --verbose --use-non-free -mmc32 -p7311 ^
-I"%SNLIB%\share\include" ^
-Wa"-I%SNLIB%\share\header" ^
-Wl"-s%SNLIB%\share\lkr\7311.lkr" ^
-Wl"-I%SNLIB%\share\lib"

@echo on

::note
sdcc %SDCC_ARG% -c %1.c
::gplink %GPLINK_ARG% -o %1 %1.o 



::sdcc -V --verbose --use-non-free -mmc3x -p3221  -Wa -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\header -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\include -Wl -sE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -c aaa.c
::gplink -I E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lib -s E:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\3221.lkr -w -m -c -o Output\aaa E:\temp\aaa\aaa.o  3221.lib


::sdcc -V --verbose --use-non-free -mmc3x -p6060  -Wa -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\header -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\include -Wl -sE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\0311.lkr -c 6080_bug.c

::sdcc -V --verbose --use-non-free -mmc30 -p6060  -Wa -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\header -IE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\include -Wl -sE:\temp\WinScopeIDE_v1.02bt_20160606\tools\share\lkr\0311.lkr -c 6080_bug.c