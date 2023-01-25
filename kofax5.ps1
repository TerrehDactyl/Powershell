Expand-Archive -Path .\KofaxPowerPDFAdvancedVolume-5.0.0.zip
cd KofaxPowerPDFAdvancedVolume-5.0.0/System64
msiexec.exe /i "Kofax Power PDF Advanced.msi" /qb isx_serialnum=$env:serial
