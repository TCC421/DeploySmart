$ProgressPreference = 'SilentlyContinue'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$msiUrl = "https://aka.ms/GetPCHealthCheckApp"
$downloadPath = "C:\TempPath\PCHealthCheckSetup.msi"

# Download the MSI
Invoke-WebRequest -Uri $msiUrl -OutFile $downloadPath

# Install silently
Start-Process "msiexec.exe" -ArgumentList "/i `"$downloadPath`" /quiet /norestart" -Wait

# Optionally delete the installer

Remove-Item $downloadPath -Force
