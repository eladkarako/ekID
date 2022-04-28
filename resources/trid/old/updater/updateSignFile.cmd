@echo off
::-----------------------------------
::- downloads a new signature file. -
::-----------------------------------

pushd "%~sdp0"

del /f /q "triddefs.zip"               1>nul 2>nul

call "%~sdp0\curl.exe" --ipv4 --anyauth --insecure --location-trusted --verbose --user-agent "Mozilla/5.0 Chrome" --resolve "mark0.net:443:198.54.114.128" --resolve "mark0.net:80:198.54.114.128" --url "http://mark0.net/download/triddefs.zip" --output "triddefs.zip" 

if not exist "%~sdp0\triddefs.zip" ( goto END )
unzip.exe -j -o -qq "triddefs.zip"
ren "triddefs.trd" "sgncontainer"
del /f /q "triddefs.zip"                  1>nul 2>nul
del /f /q "..\sgncontainer_old"           1>nul 2>nul
ren "..\sgncontainer" "sgncontainer_old"  1>nul 2>nul
move /y "sgncontainer" "..\."             1>nul 2>nul

:END
  pause
  popd
  exit /b 0
