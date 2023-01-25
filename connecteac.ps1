$policy = get-executionpolicy
if($policy -ne "RemoteSigned")
{
	Set-ExecutionPolicy RemoteSigned
}
Import-Module ExchangeOnlineManagement
$UserCredential = Get-Credential | Connect-ExchangeOnline
Connect-IPPSSession -UserPrincipalName $UserCredential -ConnectionUri https://ps.protection.outlook.com/powershell-liveid/