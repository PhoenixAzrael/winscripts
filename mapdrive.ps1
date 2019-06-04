# Drive letter to map to
$destinationDriveLetter = "G"
# Username to map the network drive
$userName = "username"
# Password to use when mapping
$userPass = ConvertTo-SecureString "password" -AsPlainText -Force

#check if Drive is already mapped
if ( Test-Path -LiteralPath $destinationDriveLetter":" -ErrorVariable errVar ) {
    Write-Host "Drive already mapped.`r`n"
    Write-Host "Exiting script`r`n"
    exit
}

Write-Host "Destination Driveletter $destinationDriveLetter not mapped. Doing it...`r`n"

$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $userName, $userPass
Write-Debug "Command: New-PSDrive -Persist -Name $destinationDriveLetter -PSProvider FileSystem -Root '\\server\share' -Credential $Credential -ErrorVariable errVar"

New-PSDrive -Persist -Name $destinationDriveLetter -PSProvider FileSystem -Root '\\server\share' -Credential $Credential -ErrorVariable errVar

if ( $errVar ) {
    Write-Error "`r`nError mapping destination drive $destinationDriveLetter. Check!`r`n"
}
else {
    Write-Host "Destination drive mapped successfully.`r`n"
    # test if drive truly mapped and destination folder exist
    Test-Path -LiteralPath $destinationDriveLetter":" -ErrorVariable errVar
    # debugging, roar!
    Write-Host "Drives during script:`r`n"
    Get-PSDrive
}
# dirty fix to actually confirm that the drive is mapped during script execution
pause
