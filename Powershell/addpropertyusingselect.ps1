$o1 = New-Object -TypeName PsObject -Property @{
    Name = 'Siva';
    ID = '51830011';
    City = 'Navallur'
    Pincode = '506002'}
$o2 = $o1.PsObject.Copy()
Get-Service | Select-Object -Property @{Name = 'Name'; Expression = {$_.Name}}
$o2.ID = '23456'
$o2.Pincode = '600119'
$o2.City = 'vizag'

 

$o1 | Format-List
$o2 | Format-List