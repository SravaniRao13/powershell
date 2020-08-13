##---------Divide by zero----------##
try{
$a=Read-Host 'enter the number' 
$b=Read-Host 'enter the number'
$c=$a/$b
$c
}
catch [System.SystemException]
{
Write-Host " 1/0undefined"
}
finally{
Write-Host "give the correct value "
}





##---------itemnot found exception---------##
try{
Get-Item -Path 'C:\Users\vantaku.sravani\Desktop\powershell'
}
catch
{
Write-Host 'provide correct path'
}
finally
{
Write-Host 'provided correct path'
}









##-------parameter binding validation exception---------##
try{
Get-Item -Path $null
}
catch [System.Management.Automation.ItenNotFoundException]{
Write-Host -Object 'item specified not found'
}
catch [ParameterBindingValidationException] {
Write- Host 'Parameter Binding has failed'
}
finally {
Write-Host -Object 'Closing all open file handles'
}


try{
#Result in NoSupportException
#New-Item -Path c:\Users\kolipally.priyanka\desktop\folder -Name my:test.txt -ItemType file -ErrorAction Stop

 

#Results in DirectoryNotFoundException
New-Item -Path C:\Users\kolipally.priyanka\Desktop\folder -Name test.txt -ItemType File -ErrorAction Stop
}
catch [System.NotSupportedException] {
   Write-Warning -Message "Illegal character used in the filename."
   }
   catch [System.IO.DirectoryNotFoundException] {
   Write-Warning -Message "This path is not valid."
   }
   catch {
   Write-Warning -Message "An unexpected error occured."
   }
 finally
   {
   Write-Host -Object 'check the file'
}
 