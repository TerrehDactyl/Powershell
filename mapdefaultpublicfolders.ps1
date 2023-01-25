$csvfile=$args[0]
$path=$args[1]

if(!$csvfile)
{
	Write-Host 'You must use a csv file to run this program, use syntax .\\mapdefaultfolders.ps1 csvfilename.csv "name of primary hierarchy mailbox"'
	exit
}

$users = import-csv $csvfile
foreach ($user in $users)
{
Set-mailbox -identity $user.Email -defaultpublicfoldermailbox $path 
}
