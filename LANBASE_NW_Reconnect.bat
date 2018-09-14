net use g: /d
net use h: /d
net use m: /d
net use r: /d
net use t: /d
net use u: /d
net use z: /d

net use g: \\arrakis\games /persistent:yes
net use h: \\arrakis\christian /persistent:yes
net use m: \\arrakis\musix /persistent:yes
net use r: \\arrakis\root /persistent:yes
net use t: \\arrakis\abcTeam /persistent:yes
net use u: \\arrakis\upload /persistent:yes
net use z: \\arrakis\data /persistent:yes


New-PSDrive -Name <drive letter> -PSProvider FileSystem -Root "\\ComputerName\ShareName" -Credential "UserName" -Persist
