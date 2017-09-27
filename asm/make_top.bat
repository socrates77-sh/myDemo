@echo off
PATH=e:\tools\sn-sdcc;e:\tools\snutils\gpasm;e:\tools\snutils\gplink
set GPASM_ARG=-p 3221 -I"e:\tools\sn-sdcc\share\header"
set GPLINK_ARG=-m -I "e:\tools\sn-sdcc\share\lkr" -s mc32p21.lkr
@echo on

::note
gpasm.exe %GPASM_ARG% -c switch.asm
::gpasm.exe %GPASM_ARG% -c mastri2c.asm
::gpasm.exe %GPASM_ARG% -c i2ccomm.asm
gplink.exe %GPLINK_ARG% -c -o top switch.o 