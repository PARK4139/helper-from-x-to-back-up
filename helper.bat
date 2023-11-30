:: echo setting
@echo off

:: title setting
title %~n0

:: maximized window setting
if not "%maximized%"=="" goto :maximized
set maximized=true
start /max cmd /C "%~dpnx0"
goto :EOF
:maximized

:: minimized window setting
@REM if not "%minimized%"=="" goto :minimized
@REM set minimized=true
@REM start /min cmd /C "%~dpnx0"
@REM goto :EOF
@REM :minimized



:: admin mode setting
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


:: console color setting
color 0a

:: korean encoding setting
chcp 65001

:: local envrionment mode setting
setlocal



:: 콘솔 화면 정리
cls

:: 프로젝트로 이동
cd "C:\Users\WIN10PROPC3\Desktop\services\helper-from-x-to-back_up"

:: 파이썬 가상환경 실행
call ".\.venv\Scripts\activate.bat"

:: 파이썬 프로그램 실행
:: python ".\helper.py" 
python helper.py "C:\Users\WIN10PROPC3\Desktop\박정훈 이력서 2023-10-15.pdf"


:: debugging setting
timeout 600