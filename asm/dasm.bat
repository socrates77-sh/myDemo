@echo off
PATH=d:\work\compiler\sn-sdcc;d:\work\compiler\snutils
set GPASM_ARG=-p mc34p01 -I"d:\work\compiler\sn-sdcc\share\header"
set GPLINK_ARG=-I"d:\work\compiler\sn-sdcc\share\lkr" -s mc30p011.lkr
@echo on

::note
gpdasm.exe -p mc34p01 all_code_mc34p01.s19
