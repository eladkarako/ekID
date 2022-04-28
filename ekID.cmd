@echo off
chcp 65001 1>nul 2>nul

pushd "%~sdp0"

if ["%~1"] EQU [""] ( goto END ) 
if not exist "%~1"  ( goto END ) 


title %~nx1
echo [%~f1] 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"

::=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓[ekID] 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
call "%~sdp0\resources\trid\trid.exe" "-r:3" "%~1"  2>&1  |  "%~sdp0\resources\gnu\tail.exe" "--lines=+7" 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"

echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"

echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓[FILE] 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
call "%~sdp0\resources\gnu\file.exe" --brief --magic-file "%~sdp0\resources\gnu\magic.mgc" "%~1" 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"

::=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓[exiftool] 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
call "%~sdp0\resources\exiftool\exiftool.exe" -ignoreMinorErrors -preserve -progress -duplicates -scanForXMP -extractEmbedded -unknown -unknown2 -groupHeadings1 -forcePrint -verbose "%~1"  2>&1  |  "%~sdp0\resources\gnu\tail.exe" "--lines=+7" 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"

::=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

::BinWalk will only run if it founds 'python' in the 'PATH' environment variable.
::you can either install the official one of a portable mini-version named WinPython("Zero"), and add the bin folder if it to the PATH yourself.

call where python 1>nul 2>nul
set "EXIT_CODE=%ErrorLevel%"
if ["%EXIT_CODE%"] NEQ ["0"] ( goto END )

echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓[BinWalk] 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
call "python" "%~sdp0\resources\binwalk\program\binwalk.py" "%~1"  2>&1  |  "%~sdp0\resources\gnu\tail.exe" "--lines=+2"  |  "%~sdp0\resources\gnu\head.exe" "--lines=-1" 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo. 2>&1 | "%~sdp0\resources\gnu\tee.exe" "%TEMP%\ekid__%~nx1.txt"
echo.


::fix EOL to Windows-EOL.
call "%~sdp0\resources\gnu\unix2dos.exe" --quiet --remove-bom "%TEMP%\ekid__%~nx1.txt" 1>nul 2>nul


echo.
echo [INFO] output also available in: "%TEMP%\ekid__%~nx1.txt"
echo.

:END
  ::call notepad "%TEMP%\ekid__%~nx1.txt"
  pause
  popd
  exit /b 0
