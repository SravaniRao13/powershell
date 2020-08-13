$Server = Read-host -Prompt 'Input your server name'
$User = Read-host - Prompt 'Input the user name'
$Date = Get-Date
Write-Host "You input server is '$Server' add username is '$User' on '$Date'"
start-sleep 15