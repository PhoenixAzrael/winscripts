Get-PSDrive G, H, M, R, T, U, Z | Remove-PSDrive
New-PSDrive -Name "G" -PSProvider FileSystem -Root "\\arrakis\games" -Persist
New-PSDrive -Name "H" -PSProvider FileSystem -Root "\\arrakis\christian" -Persist
New-PSDrive -Name "M" -PSProvider Filesystem -Root "\\arrakis\musix" -Persist
New-PSDrive -Name "R" -PSProvider Filesystem -Root "\\arrakis\root" -Persist
New-PSDrive -Name "T" -PSProvider Filesystem -Root "\\arrakis\abcTeam" -Persist
New-PSDrive -Name "U" -PSProvider Filesystem -Root "\\arrakis\upload" -Persist
New-PSDrive -Name "Z" -PSProvider Filesystem -Root "\\arrakis\data" -Persist
