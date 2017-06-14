@echo off
PATH=e:\tools\sn-sdcc;e:\tools\snutils\gpasm;e:\tools\snutils\gplink
set GPASM_ARG=-p mc30p011 -I"e:\tools\sn-sdcc\share\header"
set GPLINK_ARG=-m -I "e:\tools\sn-sdcc\share\lkr" -s mc30p011.lkr
@echo on

::note
gpasm.exe %GPASM_ARG% -c init.asm
gpasm.exe %GPASM_ARG% -c mastri2c.asm
gpasm.exe %GPASM_ARG% -c i2ccomm.asm
gplink.exe %GPLINK_ARG% -c -o top init.o i2ccomm.o mastri2c.o