$url = "https://app.ringcentral.com/download/RingCentral-x64.msi"
$outpath = "$PSScriptRoot/ring_central.msi"
Invoke-WebRequest -Uri $url -OutFile $outpath
msiexec.exe /I ring_central.msi /qn ALLUSERS=1
Start-Sleep -Seconds 60
del ring_central.msi