Get-WinEvent -ListLog * -Force | % { Wevtutil.exe cl $_.LogName }
