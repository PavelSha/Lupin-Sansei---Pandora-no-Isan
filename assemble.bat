:: in order to enable "comparsion with previous version" and "restoring backup" functions
:: make 2 copies of <!lupin.nes> and rename them as <!lupin.old> and <!lupin.bak>

:: disable unnecessary console messages if possible
echo off

:: create a copy of previous compiled version
if exist !lupin.old (copy !lupin.nes !lupin.old)

:: launch preparation script and wait until finished
start /wait lua53 preparations.lua

:: -U = no need to use .import
:: -l = create listing file
:: -g = create debug file
ca65 -U -l copy_bank_00.lst  -g copy_bank_00.asm
ca65 -U -l copy_bank_01_1.lst  -g copy_bank_01_1.asm
ca65 -U -l copy_bank_01_2.lst  -g copy_bank_01_2.asm
ca65 -U -l copy_bank_02_1.lst  -g copy_bank_02_1.asm
ca65 -U -l copy_bank_02_2.lst  -g copy_bank_02_2.asm
ca65 -U -l copy_bank_03.lst  -g copy_bank_03.asm
ca65 -U -l copy_bank_04_1.lst  -g copy_bank_04_1.asm
ca65 -U -l copy_bank_04_2.lst  -g copy_bank_04_2.asm
ca65 -U -l copy_bank_05.lst  -g copy_bank_05.asm
ca65 -U -l copy_bank_06_1.lst  -g copy_bank_06_1.asm
ca65 -U -l copy_bank_06_2.lst  -g copy_bank_06_2.asm
ca65 -U -l copy_bank_FF.lst  -g copy_bank_FF.asm

:: assemble code into binaries
ld65 -C ld65.cfg -o PRG_ROM.bin --dbgfile _debug.txt ^
    copy_bank_00.o ^
    copy_bank_01_1.o ^
    copy_bank_01_2.o ^
    copy_bank_02_1.o ^
    copy_bank_02_2.o ^
    copy_bank_03.o ^
    copy_bank_04_1.o ^
    copy_bank_04_2.o ^
    copy_bank_05.o ^
    copy_bank_06_1.o ^
    copy_bank_06_2.o ^
    copy_bank_FF.o

:: split PRG_ROM.bin into actual PRG_ROM.bin and CHR_screens.chr
start /wait lua53 split.lua

:: join header, prg and chr into a single ROM file
copy /B header.bin + PRG_ROM.bin + CHR_ROM.chr + CHR_screens.chr !lupin.nes

:: join listing files into a single file
copy /A copy_*.lst _listing.txt

:: delete leftover garbage and copies
del *.o + PRG_ROM.bin + copy_*

:: create a copy of .nl file for original ROM
if exist original_rom.nes (copy !lupin.nes.ram.nl original_rom.nes.ram.nl)

:: check file size and display corresponding message
setlocal enableextensions
FOR %%A IN ("!lupin.nes") DO set "size=%%~zA"
if %size% EQU 196624 (
    echo.
    echo -----------------------------------------------
    echo Done! Look for !lupin.nes file in your folder.
    if exist !lupin.bak (
        echo.
        fc /A /B /T !lupin.nes !lupin.bak > nul && echo Perfect match || echo Differences found 
        echo.
        copy !lupin.nes !lupin.bak
        echo Backup created
    )
    echo -----------------------------------------------
    timeout /T 10
) else (
    echo.
    echo --------------------------------------------------
    echo Something's wrong, check log for more information. 
    if exist !lupin.bak (
        echo.
        copy !lupin.bak !lupin.nes
        echo Backup restored
    )
    echo --------------------------------------------------
    echo.
    pause
)