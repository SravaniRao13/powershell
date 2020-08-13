$data = Read-Host "Enter your Choice(aadharno,creditno,pan,date,ip)"

switch ($data)
    {
 aadharno   {
        $a=Read-Host -Prompt 'enter the number'
        if( $a -match '\d\d\d\d-\d\d\d\d-\d\d\d\d' )
        {
        Write-Output "It is a Aadhar Number"
        }
        else
        {
        Write-Warning 'message may not contain a aadhar card number'
        }
}
creditno {
        $b=Read-Host -Prompt 'Enter the number'
        if($b -match '\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d' )
{
Write-Output "It is a Credit card Number"
}
else
{
write-Warning 'message may not contain a credit card number'
}
}
pan {
     $c=Read-Host -Prompt 'enter the PAN Number'
     if( $c -cmatch "[A-Z]{5}[0-9]{4}[A-Z]{1}" )
        {
        Write-Output "It is a PAN Number"
        }
        else
        {
        Write-Warning 'message may not contain a PAN number'
        }
}
date {
        $d=Read-Host -Prompt 'enter the Date( dd-mm-yyyy format )'
        $dateregex = "(0[1-9]|1[0-9]|2[0-9]|3[0-1])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)[0-9]{2}"

               if($d -match $dateregex)
       {

         Write-Output "The Input you entered is DATE Format"
        }
        else
        {
        Write-Warning 'message Invalied Date Format'
        }
}
ip {
      $e=Read-Host -Prompt 'enter the IP'
      $ipRegex= '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b'
  
       if($e -match $ipregex) 
       {
        Write-Output "It is an IP Address"
        }
        else
        {
        Write-Warning 'Enter Proper IP'
        }
}
}
   
 ##'\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d' {
   ##         Write-Warning 'message may contain a credit card number'
    ##    }
      ##  '\d\d\d-\d\d\d-\d\d\d\d' {
        ##    Write-Warning 'message may contain a phone number'
        ##}
    ##}
