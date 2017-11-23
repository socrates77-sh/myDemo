@echo off
PATH=e:\tools\sn-sdcc;e:\tools\snutils\gpasm
set GPASM_ARG=-p mc32p21 -I"e:\tools\\sn-sdcc\share\header"
set GPLINK_ARG=-I "e:\tools\\sn-sdcc\share\lkr" -s mc32p21.lkr
@echo on

::note
gpasm.exe %GPASM_ARG% try.asm
