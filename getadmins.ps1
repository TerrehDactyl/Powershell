Write-Output "Domain Admins"
Write-Output "--------------------------------------"
get-adgroupmember 'domain admins' | select name,samaccountname
Write-Output "`nEnterprise Admins"
Write-Output "--------------------------------------"
get-adgroupmember 'enterprise admins' | select name,samaccountname
Write-Output "`nAdministrators"
Write-Output "--------------------------------------"
get-adgroupmember 'administrators' | select name,samaccountname
Write-Output "`nSchema Admins"
Write-Output "--------------------------------------"
get-adgroupmember 'schema admins' | select name,samaccountname
Write-Output "`nGroup Policy Creator Owners"
Write-Output "--------------------------------------"
get-adgroupmember 'group policy creator owners' | select name,samaccountname
Write-Output "`nADSync Admins"
Write-Output "--------------------------------------"
get-adgroupmember 'adsyncadmins' | select name,samaccountname
