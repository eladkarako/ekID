@echo off
chcp 65001 1>nul 2>nul

call where python 1>nul 2>nul
set "EXIT_CODE=%ErrorLevel%"
if ["%EXIT_CODE%"] NEQ ["0"] ( goto ERROR_NO_PYTHON )


set "TARGET=%~sdp0\program\binwalk.py"
set "TARGET=%TARGET:\=/%"

call "python" "%TARGET%" %*
set "EXIT_CODE=%ErrorLevel%"
goto END


:ERROR_NO_PYTHON
  set "EXIT_CODE=1"
  goto END

:END
  ::pause
  exit /b %EXIT_CODE%
