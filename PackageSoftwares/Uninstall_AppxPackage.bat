@echo off

set "getPackage=PowerShell.exe Get-AppxPackage"

%getPackage% "*3dbuilder* | Remove-AppxPackage"
%getPackage% "*officehub* | Remove-AppxPackage"
%getPackage% "*skypeapp* | Remove-AppxPackage"
%getPackage% "*getstarted* | Remove-AppxPackage"
%getPackage% "*zunemusic* | Remove-AppxPackage"
%getPackage% "*windowsmaps* | Remove-AppxPackage"
%getPackage% "*solitairecollection* | Remove-AppxPackage"
%getPackage% "*onenote* | Remove-AppxPackage"
%getPackage% "*bingsports* | Remove-AppxPackage"
