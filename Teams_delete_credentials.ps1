# Create a new registry key path
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WorkplaceJoin"

# Set the default value (empty string)
Set-ItemProperty -Path $registryPath -Name "(Default)" -Value ""

# Create a DWORD value named "BlockAADWorkplaceJoin" with a value of 1
Set-ItemProperty -Path $registryPath -Name "BlockAADWorkplaceJoin" -Value 1



# Define the path to the folder you want to delete
$folderPath1 = "C:\Users\Halvar\AppData\Local\Packages\Microsoft.AAD.BrokerPlugin_cw5n1h2txyewy"
$folderPath2 = "C:\Users\Halvar\AppData\Local\Packages\MSTeams_8wekyb3d8bbwe"

# Remove the folder recursively for all users
Get-ItemProperty -Path $folderPath1 | ForEach-Object {
    Remove-Item -Path $_.PSPath -Recurse -Force | Out-Null
}

Get-ItemProperty -Path $folderPath2 | ForEach-Object {
    Remove-Item -Path $_.PSPath -Recurse -Force | Out-Null
}


