$LocalUser = "Admin"
$Password = ConvertTo-SecureString "!admin!" -AsPlainText -Force
Function Create_LocalWindowsAccount
{
    New-LocalUser $LocalUser -Password $Password -FullName "Lokaler Admin" -Description "Localer Administrator Account"
    Add-LocalGroupMember -Group "Administratoren" -Member $LocalUser
    Set-LocalUser -Name $LocalUser -PasswordNeverExpires:$true
}
Create_LocalWindowsAccount
