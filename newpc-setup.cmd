@echo off

echo "Starting New PC Setup"

set curpath = %~dp0
Powershell.exe -ExecutionPolicy Unrestricted -File %curpath%newpc_setup.ps1

echo "Done"