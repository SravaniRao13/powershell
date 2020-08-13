


[string]$data = Read-Host "Enter your Choice(emailid,pincode)"
if(($data -eq 'emailid')-or ($data -eq 'pincode'))
{
switch ($data)
    {
 emailid   {
        $a=Read-Host -Prompt 'enter the mailid'
        if( $a -match '^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$' )
        {
        Write-Output "It is a proper email id"
        }
        else
        {
        Write-Warning 'enter correct mail id'
        }
}
pincode{

$a=Read-Host -Prompt 'enter the pincode'
        if( $a -match '^[1-9][0-9]{5}$' )
        {
        Write-Output "Correct Pincode"
        }
        else
        {
        Write-Warning 'incorrect pincode'
        }
        }
        }
        }
        else
    {
    Write-Warning 'Enter Proper Input'
    }
    