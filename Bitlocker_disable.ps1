# Remediation Script to Disable BitLocker Encryption on All Volumes

$encryptionStatus = Get-BitLockerVolume

if ($encryptionStatus -eq $null) {
    # BitLocker is not enabled on any volume
    Write-Host "BitLocker is not enabled on any volume. No action needed."
    exit 0
} else {
    # BitLocker is enabled on at least one volume
    Write-Host "Disabling BitLocker on all volumes..."
    Disable-BitLocker -MountPoint $encryptionStatus.MountPoint -Confirm:$false
    Write-Host "BitLocker has been disabled on all volumes."
    
}