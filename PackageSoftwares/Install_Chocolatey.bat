@echo off

:: Installing Powershell.exe chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM ========== START INSTALL PACKAGES ========== 
ECHO ========== START INSTALL PACKAGES ========== 

REM ========== SET VARIABLE for CHOCOLATEY ========== 
set "PS=Powershell.exe choco install"
set "Force=-vy"

call :packagePERSONAL

pause
exit /B 0

:packagePERSONAL
	setlocal

		REM ========== CONTACTS ==========
		rem %PS% skype %force%
		rem %PS% zalopc %force%
		rem %PS% telegram %force%

		REM ========== TEXT EDITOR ==========
		rem %PS% sublimetext3 %force%
		rem %PS% notepadplusplus %force%
		rem %PS% "microsoft-windows-terminal" %force%
		rem %PS% neovim %force%
		@REM %PS% Vim %force%
		%PS% cascadiacode %force%

		REM ========== IDE for CODE ==========
		:: IDE All in One
		%PS% vscode %force%
		:: IDE Java Programming Language
		rem %PS% eclipse %force%
		:: IDE C++/C#
		%PS% visualstudio2019professional %force%

		%PS% python %force%
		%PS% autohotkey %force%
		%PS% autoit %force%

		REM ========== AUTOMATION TESTING ==========
		%PS% postman %force%
		%PS% jmeter %force%
		@REM %PS% selenium %force%
		
		REM ========== EXTENSIONS ==========
		%PS% git %force%
		%PS% dotnet-5.0-sdk %force%
		%PS% pip %force%
		%PS% scite4autoit3 %force%
		%PS% selenium %force%
		%PS% chromedriver %force%


		REM ========== WEB BROWSERS ==========
		%PS% google-chrome-x64 %force%
		%PS% tor-browser %force%
		%PS% firefox %force%
		rem %PS% chromium %force%

		REM ========== VPNs ==========
		%PS% warp %force%

		REM ========== VIRTUAL MACHINE ==========
		rem %PS% "wsl-ubuntu-2004" %force%
		%PS% virtualbox %force%
		rem %PS% citrix-workspace %force%
		rem %PS% install nox %force%
		
		REM ========== TO DO LIST ==========
		%PS% notion %force%

		REM ========== REMOTE DESKTOP CONNECTION ==========
		@REM %PS% vnc-connect %force%
		@REM %PS% vnc-viewer %force%
		@REM %PS% teamviewer %force%

		REM ========== NETWORK SYSTEM ==========
		@REM %PS% winbox %force%
		%PS% wireshark %force%
		@REM %PS% docker-desktop %force%

		REM ========== SYSTEM ==========
		:: Process Explorer
		%PS% procexp %force%
		:: Process Monitor
		%PS% procmon %force%
		:: CPU-Z
		%PS% CPU-Z %force%
		:: Folders Management
		%PS% onecommander %force%


		REM ========== UTILITIES ==========
		:: Capture Screen
		%PS% lightshot %force%
		%PS% screenpixelruler %force%
		%PS% zoomit %force%
		:: Record Press Keyboard
		%PS% carnac %force%
		:: Pomodoro Timer
		%PS% tomighty %force%


		REM ========== OTHER TOOLS ==========
		%PS% vlc %force%
		%PS% 7zip %force%
		%PS% winrar %force%
		%PS% spotify %force%

	endlocal
	goto :eof
