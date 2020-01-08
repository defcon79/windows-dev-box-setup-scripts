@echo off

echo "Starting Dev Setup"

set curpath = %~dp0
Powershell.exe -ExecutionPolicy Unrestricted -File %curpath%dev_setup_node.ps1

echo "Done"