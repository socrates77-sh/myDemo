@echo off
PATH=d:\work\compiler\sn-sdcc;d:\work\compiler\snutils\gpasm;d:\work\compiler\snutils\gplink
set GPASM_ARG=-p mc30p011 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc30p011.lkr
@echo on

::note
gpasm.exe %GPASM_ARG% -c withmacro.asm
gplink.exe %GPLINK_ARG% -c -o top withmacro.o