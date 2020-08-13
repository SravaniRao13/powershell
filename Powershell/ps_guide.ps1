write-host "Hello World"

write-host -foregroundcolor yellow "Hello World"

Write-Host -BackgroundColor Yellow  -foregroundcolor blue "Hello World"

 clear-host -Online

$a = 3
Write-Host $a

$a.GetType()

$b = 3.3
Write-Host $b

$b.GetType()

$c = 3.3
Write-Host $c

 $c.GetType()

 $d=$a+$b
 Write-Host $d

 $a=3.4
$b=3.6
$c=$a+$b
Write-Host $c

get-content address.txt


$myname ="sravanivantaku"
$myname= $myname.ToUpper() 
$myname 
$myname | gm

$a=3.4
$b=3.6
$c=$a+$b
Write-Host $c


"Navallur 'r' 'n Chennai"
"Navallur{0}Chennai" -f[environment]::NewLine




[string]$name=@{$v1="sravani";$v2="priyanka"}; 
[datetime]$born=@{$b1="13-07-1997";$b2="20-12-1998"};
[string]$name=Read-Host -Prompt 'Enter name:'
if($name -eq $v1){
Write-Host $b1
}
elseif($name -eq $v2){
Write-Host $b2
}
else{
Write-Warning 'Invalied'
}



$birthday = Get-Date -Date '1997-07-13'
$today = Get-Date
$timedifference = $today - $birthday
$timedifference


 $elements=Import-Csv C:\Users\vantaku.sravani\Desktop\element1.csv
 $gcontent= Get-Content C:\Users\vantaku.sravani\Desktop\element1.csv
  $gcontent
  $gcontent.neutrons
 $elements
 $elements.neutrons 
 ($elements.Protons | Measure-Object -average).average

 Get-content ($elements.symbol |where-object  $elements.protons -match $elements.neutrons)
 ($elements | Where-Object { $_.protons -eq $_.neutrons }).elements
 
 
 