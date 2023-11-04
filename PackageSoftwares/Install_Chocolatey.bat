@echo off

:: Installing Powershell.exe chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

ECHO ========== START INSTALL PACKAGES ========== 

REM ========== SET VARIABLE for CHOCOLATEY ========== 
set "PS=Powershell.exe choco install"
set "Force=-y"

call :packagePERSONAL

pause
exit /B 0

:packagePERSONAL
	setlocal

		REM ========== CONTACTS ==========
		rem %PS% skype %force%
		rem %PS% zalopc %force%
		%PS% telegram %force%
		%PS% discord %force%
		%PS% zoom %force%

		REM ========== TEXT EDITOR ==========
		rem %PS% sublimetext3 %force%
		%PS% notepadplusplus %force%
		rem %PS% "microsoft-windows-terminal" %force%
		rem %PS% neovim %force%
		rem %PS% Vim %force%
		%PS% cascadiacode %force%

		REM ========== IDE for CODE ==========
		:: IDE All in One
		%PS% vscode %force%
		:: IDE Java Programming Language
		rem %PS% eclipse %force%
		:: IDE C++/C#
		%PS% visualstudio2022community %force%

		%PS% python3 %force%
		rem %PS% autohotkey %force%
		rem %PS% autoit %force%

		REM ========== AUTOMATION TESTING ==========
		%PS% postman %force%
		:: %PS% jmeter %force%
		%PS% selenium %force%
		
		REM ========== EXTENSIONS ==========
		%PS% git %force%
		rem %PS% scite4autoit3 %force%
		%PS% chromedriver %force%

		REM ========== WEB BROWSERS ==========
		%PS% googlechrome %force%
		rem %PS% tor-browser %force%
		%PS% firefox %force%

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
		:: %PS% wireshark %force%
		@REM %PS% docker-desktop %force%

		REM ========== SYSTEM ==========
		:: Process Explorer
		%PS% procexp %force%
		:: Process Monitor
		@REM %PS% procmon %force%
		:: CPU-Z
		@REM %PS% CPU-Z %force%
		:: Folders Management
		%PS% onecommander %force%

		REM ========== UTILITIES ==========
		:: Capture Screen
		%PS% qbittorrent %force%
		%PS% greenshot %force%
		%PS% screenpixelruler %force%
		%PS% zoomit %force%
		:: Record Press Keyboard
		rem %PS% carnac %force%
		:: Pomodoro Timer
		rem %PS% tomighty %force%

		REM ========== OTHER TOOLS ==========
		%PS% stremio %force%
		%PS% vlc %force%
		%PS% 7zip %force%
		%PS% winrar %force%
		rem %PS% spotify %force%
	endlocal
	goto :eof
