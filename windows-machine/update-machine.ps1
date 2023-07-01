Set-ExecutionPolicy Unrestricted -Scope Process -Force
Install-Module PSWindowsUpdate
Import-Module PSWindowsUpdate 
Install-WindowsUpdate -AcceptAll
Restart-Computer -Force
