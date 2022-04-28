@echo off
chcp 65001 1>nul 2>nul

pushd "%~sdp0"

set "ARGS="
set ARGS=%ARGS% -ignoreMinorErrors
set ARGS=%ARGS% -preserve
set ARGS=%ARGS% -progress
set ARGS=%ARGS% -duplicates
set ARGS=%ARGS% -scanForXMP
set ARGS=%ARGS% -extractEmbedded
set ARGS=%ARGS% -unknown
set ARGS=%ARGS% -unknown2
set ARGS=%ARGS% "-groupHeadings1"
set ARGS=%ARGS% -forcePrint
set ARGS=%ARGS% -verbose

call "%~sdp0\exiftool.exe" %ARGS% "%~1"
set "EXIT_CODE=%ErrorLevel%"


echo [INFO] EXIT_CODE: %EXIT_CODE%. 1>&2
pause
popd
exit /b %EXIT_CODE%
