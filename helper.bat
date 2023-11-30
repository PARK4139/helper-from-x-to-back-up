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
setlocal

:: 콘솔 화면 정리
cls

:: 프로젝트로 이동
cd "C:\Users\WIN10PROPC3\Desktop\services\helper-from-x-to-back_up"

:: 파이썬 가상환경 실행
call ".venv\Scripts\activate.bat"

:: 파이썬 프로그램 실행
:: python ".\helper.py" 
python helper.py "C:\Users\WIN10PROPC3\Desktop\박정훈 이력서 2023-10-15.pdf"


:: debugging
timeout 600
