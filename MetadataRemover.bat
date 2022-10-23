@ECHO OFF

if not exist "./Clean" mkdir "./Clean"

SET PARAMS=

:_PARAMS_LOOP

REM
SET PARAMS=%PARAMS%%1 
ECHO %1

FOR %%A IN (%*) DO (
magick mogrify -path ./Clean/ %%A
)

SHIFT

IF NOT "%1"=="" GOTO _PARAMS_LOOP

ECHO %PARAMS%
