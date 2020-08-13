Function aadhar
{
param(
[Parameter(Mandatory-$true, HelpMessage- "Enter aadhar Number xxxx-xxxx-xxxx")]
[ValidatePattern("\d{4}-\d{4}-\d{4}")]
$aadhar
)
Write-Host "$aadhar is valid"
}

aadhar 1234-5678-9012

Function credit
{
[ValidatePattern("\d{4}-\d{4}-\d{4}-\d{4}")]
$credit
Write-Host " $entered number is a  credit card number"
}

credit 1234-1234-1234-12345


$data = Read-Host "Enter your Aadhar Number"
if ( $data -match '\d\d\d\d-\d\d\d\d-\d\d\d\d' )
{
Write-Output "It is a Aadhar Number"
}
else
{
Write-Output "It is not a Aadhar Number"
}