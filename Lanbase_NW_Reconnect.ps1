Get-PSDrive G, H, M, R, T, U, V, Z | Remove-PSDrive
New-PSDrive -Name "G" -PSProvider FileSystem -Root "\\arrakis\games" -Persist -Scope Global
New-PSDrive -Name "H" -PSProvider FileSystem -Root "\\arrakis\christian" -Persist -Scope Global
New-PSDrive -Name "M" -PSProvider Filesystem -Root "\\arrakis\musix" -Persist -Scope Global
New-PSDrive -Name "R" -PSProvider Filesystem -Root "\\arrakis\root" -Persist -Scope Global
New-PSDrive -Name "T" -PSProvider Filesystem -Root "\\arrakis\abcTeam" -Persist -Scope Global
New-PSDrive -Name "U" -PSProvider Filesystem -Root "\\arrakis\upload" -Persist -Scope Global
New-PSDrive -Name "V" -PSProvider FileSystem -Root "\\arrakis\video" -Persist -Scope Global
New-PSDrive -Name "Z" -PSProvider Filesystem -Root "\\arrakis\data" -Persist -Scope Global
