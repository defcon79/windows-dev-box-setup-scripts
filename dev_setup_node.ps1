# Description: Boxstarter Script
# Author: Microsoft
# Common settings for web development with NodeJS

Write-Host "Start dev setup PS Script `n----------------------"

Write-Host "installing chocolatey"
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Disable-UAC

$curDir = $PSScriptRoot
$scriptsDir = $curDir + "/scripts"

write-host "script folder is $scriptsDir"

function executeScript {
    Param ([string]$script)
    $scriptPath = $scriptsDir + "\" + $script
    write-host "executing $scriptPath ..."
    & $scriptPath
    write-host "finished $scriptPath ..."
}

#--- Setting up Windows ---
executeScript "hello.ps1";
executeScript "SystemConfiguration.ps1";
executeScript "FileExplorerSettings.ps1";
executeScript "RemoveDefaultApps.ps1";
executeScript "CommonDevTools.ps1";
#executeScript "WSL.ps1";
#executeScript "Browsers.ps1";

#--- Tools ---
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge
code --install-extension 2gua.rainbow-brackets
code --install-extension SimonSiefke.html-language-features

#--- Tools ---
choco install -y nodejs-lts # Node.js LTS, Recommended for most users
# choco install -y nodejs # Node.js Current, Latest features
choco install -y visualstudio2017buildtools
choco install -y visualstudio2017-workload-vctools
choco install -y python2 # Node.js requires Python 2 to build native modules
choco install -y yarn

Write-Host "Finish dev setup PS Script `n----------------------"
