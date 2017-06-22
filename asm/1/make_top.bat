@echo off
PATH=e:\tools\sn-sdcc;e:\tools\snutils\gpasm;e:\tools\snutils\gplink
set GPASM_ARG=-p 7212 -I"e:\tools\sn-sdcc\share\header"
set GPLINK_ARG=-m -I "e:\tools\sn-sdcc\share\lkr" -s 7212.lkr
@echo on

::note
gpasm.exe %GPASM_ARG% -c main.asm
gplink.exe %GPLINK_ARG% -c -o top main.o