@echo off

rem ========== Install Package ========== 
rem https://docs.microsoft.com/en-us/windows/wsl/install-manual

cd /d %Public%\Downloads

rem Enable the Windows Subsystem for Linux
PowerShell.exe dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

rem Turn Hyper-V off & note: please restart your computer
bcdedit /set hypervisorlaunchtype off
