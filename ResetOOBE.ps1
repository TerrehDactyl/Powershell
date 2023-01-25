REG ADD HKLM\SYSTEM\Setup /v "CmdLine" /t REG_SZ /f
REG ADD HKLM\SYSTEM\Setup /v "RespecializeCmdLine" /t REG_SZ /f
REG ADD HKLM\SYSTEM\Setup /v "OOBEInProgress" /t REG_DWORD /d 0 /f
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v "EnableCursorSuppression" /t REG_DWORD /d 0 /f
echo "OOBE Bypassed"
net user /add anchor t8976512
net localgroup administrators /add anchor 
echo "local admin account created"
shutdown /r -t 30
echo "rebooting"
