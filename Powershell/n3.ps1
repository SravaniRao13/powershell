if(5 -lt 10){
Write-Host 'True'
}
else {
Write-Host 'False'
}


if(5 -le 5){
Write-Host 'True'
}
else {
Write-Host 'False'
}




$string = 'Glass half empty, glass half full.'
$string -replace 'glass','cup'

$message = 'there is an error with your file'
$message -match 'error'

$message = 'there is an error with your file'
$message -notmatch 'an'

"Windows", "PowerShell" -contains "windows"
"Windows", "PowerShell" -notcontains "Shell"

 "PowerShell", "Server" -like "*shell"
 "PowerShell", "Server", "scripting" -notlike "*shell"
     
 "Windows", "PowerShell" -in "Windows"
 "Shell" -in "Windows", "PowerShell"
 "PowerShell" -in "Windows","PowerShell"
 "PowerShell" -notin "Windows","PowerShell"

 
 $status = @{1 = "Offline" ; 2 = "Paper Tray Empty" ; 4 = "Toner Exhausted" ; 8 = "Paper Jam" }
 $value = 12
 $status.Keys | where { $_ -band $value } | foreach { $status.Get_Item($_) }

# [enum]::GetValues([io.fileoptions]) | ?{$_.value__ -band 0x90000000}
 
 123 -band 321
123 -bor 321
123 -bxor 321
-bnot 123

$HOME
$host
1,2,3 | &{$input -join ','}
(1,2,3) -join ','
$PsVersionTable

$mycmd = ps | select id,ProcessName
foreach ($proc in $mycmd) {"{0,-8}{1,-20}" -f $proc.id, $proc.ProcessName}

 
'string' -is [String] 
1 -is [Int32] 
[String] -is [Type] 
123 -isnot [String] 

 3 -is [Int]
"fabrikam" -isnot [String]
    
[DateTime]::Now

 "{0:N1} and {1:N2}" -f (100/3),(76/3)

   [datetime]$birthday = "1/10/66"
    $birthday
 
