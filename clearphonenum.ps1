$csvfile=$args[0]

if(!$csvfile)
{
	Write-Host 'You must use a csv file to run this program, use syntax .\\clearphone.ps1 csvfilename.csv'
	exit
}

$users = import-csv $csvfile
foreach ($user in $users)
{ 
set-aduser $user.Email -clear telephonenumber, pager, facsimileTelephoneNumber
}
