@echo off

echo "Starting New PC Setup"
set curpath = %~dp0

if not defined ChocolateyInstall (
	echo Must define ChocolateyInstall 
	goto exit
)

Powershell.exe -ExecutionPolicy Unrestricted -File %curpath%newpc_setup.ps1

:exit
echo "Done"
