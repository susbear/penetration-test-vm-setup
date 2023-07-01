Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade chocolatey -y
choco install python vscode git wsl2 openssh openvpn microsoft-windows-terminal burp-suite-free-edition
refresh env
New-Item C:\Users\IEUser\Tools -ItemType directory
Add-MpPreference -ExclusionPath "C:\Users\IEUser\AppData\Local\Temp\chocolatey\"
Add-MpPreference -ExclusionPath "C:\Users\IEUser\Tools\"
cd C:\Users\IEUser\Tools
git clone https://github.com/ParrotSec/mimikatz.git
