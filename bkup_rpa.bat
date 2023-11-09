REM echo "__________________________________________________________________________________________________ echo s
@echo off
REM echo "__________________________________________________________________________________________________ echo e
echo "__________________________________________________________________________________________________ title s
title %~n0
echo "__________________________________________________________________________________________________ title e
echo "__________________________________________________________________________________________________ maximized window s
if not "%maximized%"=="" goto :maximized
set maximized=true
start /max cmd /C "%~dpnx0"
goto :EOF
:maximized
echo "__________________________________________________________________________________________________ maximized window e"
@REM echo "__________________________________________________________________________________________________ minimized window s
@REM if not "%minimized%"=="" goto :minimized
@REM set minimized=true
@REM start /min cmd /C "%~dpnx0"
@REM goto :EOF
@REM :minimized
@REM echo "__________________________________________________________________________________________________ minimized window e
@REM echo "__________________________________________________________________________________________________ Admin s"
@REM >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
@REM if '%errorlevel%' NEQ '0' ( echo Requesting administrative privileges... goto UACPrompt 
@REM ) else ( goto gotAdmin ) 
@REM :UACPrompt 
	@REM echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
	@REM set params = %*:"="" 
	@REM echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" 
	@REM "%temp%\getadmin.vbs" 
	@REM del "%temp%\getadmin.vbs" 
	@REM exit /B 
@REM :gotAdmin
	@REM pushd "%CD%"
	@REM CD /D "%~dp0"
@REM :------------------------------------------ below cript will acted as administrator mode ------------------------------------------ 
@REM echo "__________________________________________________________________________________________________ Admin e"

color 0a
chcp 65001
cls
setlocal



cls
echo "______________________________________________________________________________________________________________________________ s"
:: venv running
	call ".venv\Scripts\activate.bat"

:: run python program
	py "bkup_rpa.py"

echo "______________________________________________________________________________________________________________________________ e"

echo "______________________________________________________________________________________________________________________________ debugging s"
timeout 22
echo "______________________________________________________________________________________________________________________________ debugging e"