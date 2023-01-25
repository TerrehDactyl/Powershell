Stop-Service 'ISDAdminSenderService'
$services = "ISDAdminSenderService"
$maxRepeat = 20
$status = "Running" 

do 
{
    $count = (Get-Service $services | ? {$_.status -eq $status}).count
    $maxRepeat--
    sleep -Milliseconds 600
} until ($count -eq 0 -or $maxRepeat -eq 0)

Stop-Service 'ISDAdminTaskService'
$services = "ISDAdminTaskService"
$maxRepeat = 20
$status = "Running" 

do 
{
    $count = (Get-Service $services | ? {$_.status -eq $status}).count
    $maxRepeat--
    sleep -Milliseconds 600
} until ($count -eq 0 -or $maxRepeat -eq 0)

Start-Service 'ISDAdminSenderService'
$services = "ISDAdminSenderService"
$status = "Stopped"

do
{
    $count = (Get-Service $services | ? {$_.status -eq $status}).count
    $maxRepeat--
    sleep -Milliseconds 600
} until ($count -eq 0 -or $maxRepeat -eq 0)

Start-Service 'ISDAdminTaskService'
$services = "ISDAdminTaskService"
$status = "Stopped"

do
{
    $count = (Get-Service $services | ? {$_.status -eq $status}).count
    $maxRepeat--
    sleep -Milliseconds 600
} until ($count -eq 0 -or $maxRepeat -eq 0)