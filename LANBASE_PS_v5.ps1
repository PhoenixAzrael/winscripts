Get-SmbMapping | Remove-SmbMapping -Force
New-SmbMapping -LocalPath 'G:' -RemotePath '\\arrakis\games' -Persistent $True
New-SmbMapping -LocalPath 'H:' -RemotePath '\\arrakis\christian' -Persistent $True
New-SmbMapping -LocalPath 'M:' -RemotePath '\\arrakis\musix' -Persistent $True
New-SmbMapping -LocalPath 'R:' -RemotePath '\\arrakis\root' -Persistent $True
New-SmbMapping -LocalPath 'T:' -RemotePath '\\arrakis\abcTeam' -Persistent $True
New-SmbMapping -LocalPath 'U:' -RemotePath '\\arrakis\upload' -Persistent $True
New-SmbMapping -LocalPath 'V:' -RemotePath '\\arrakis\video' -Persistent $True
New-SmbMapping -LocalPath 'Z:' -RemotePath '\\arrakis\data' -Persistent $True
