If([Version](Get-ItemPropertyValue -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{28B89EEF-8101-0407-2102-CF3F3A09B77D}' -Name DisplayVersion -ea SilentlyContinue) -ge '25.0.58.0') {
Write-Host "Installed"
Exit 0
}
else {
Exit 1
}

