$url = "https://aka.ms/wvd/clients/windows"
$outpath = "$PSScriptRoot/remoteinstall.msi"
Invoke-WebRequest -Uri $url -OutFile $outpath
msiexec.exe /I remoteinstall.msi /qn ALLUSERS=1
Start-Sleep -Seconds 60
del remoteinstall.msi