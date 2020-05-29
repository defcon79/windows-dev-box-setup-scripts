# Description: Boxstarter Script
# Author: Microsoft
# Common settings for web development with NodeJS

Write-Host "Start New PC setup PS Script `n----------------------"

#Set-Variable -Name "ChocolateyInstall" -Value (Read-Host -Prompt "Install location")
#New-Item $ChocolateyInstall -Type Directory -Force
#[Environment]::SetEnvironmentVariable("ChocolateyInstall", $ChocolateyInstall, "User")

Write-Host "installing chocolatey to path: "  $env:ChocolateyInstall 
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
#Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Disable-UAC

$curDir = $PSScriptRoot
$scriptsDir = $curDir + "/newpc_scripts"

write-host "script folder is $scriptsDir"

function executeScript {
    Param ([string]$script)
    $scriptPath = $scriptsDir + "\" + $script
    write-host "----> executing $scriptPath"
    & $scriptPath
    write-host "----> finished $scriptPath"
}

#--- Setting up Windows ---
#executeScript "hello.ps1";
executeScript "FileExplorerSettings.ps1";
# executeScript "NewPcApps.ps1";

Write-Host "Finish dev setup PS Script `n----------------------"
