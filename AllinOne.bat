@echo off

REM Double-Click File will Require Admin as Run as Administrator

if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload

::ENTER YOUR CODE BELOW::   

REM ========== INSTALL CUSTOMIZE folder ==========

REM ========== INSTALL EVKEY folder ==========

REM ========== INSTALL PACKAGE SOFTWARES folder ==========
	%~dp"PackageSoftwares\Install_Chocolatey.bat"
	%~dp"PackageSoftwares\Uninstall_AppxPackage.bat"

::END OF YOUR CODE::