
##------------Assignment operators Code---------------#
$data = Read-Host 'Enter the Operation you want(=,+=,-=,*=,/=,%=,++,--)'

switch ($data)
    {
 = {
        $a = Read-Host 'enter a value'
        $b = Read-Host 'enter b value'
        if( $a = $b){
        Write-Host $a 
        }
        else
        {
        Write-Host $b   
         }
}
}



$message = "Hi, my name is Dave."
$message.replace('Dave','Kevin')


$output[1] =  “abcd,fghi” -split “,”
    