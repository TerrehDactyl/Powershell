$key = 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client\'
if (Test-Path $key)
{
  $TLS12 = Get-ItemProperty $key
  if ($TLS12.DisabledByDefault -ne 0 -or $TLS12.Enabled -eq 0) 
  {
    Throw "TLS 1.2 Not Enabled"
  }
}