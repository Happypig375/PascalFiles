@echo off
SET THEFILE=h:\diamondwithhole.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o h:\diamondwithhole.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
