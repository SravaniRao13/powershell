1#-------------CheatSheet---------------#
#-----Print Array elements----#
$arrA=@(1,2,3)
$arrB=@("hi","hello","welcome")
 $arrC=$arrA+$arrB
 Write-Host $arrC

 ##------add elements into array-------##
 $arrA=@(4)
 $arrB=@("Powershell")
 $arrC=$arrA+$arrB
 Write-Host $arrC
 
 ##-------Get-Process
 Get-Process winword, explorer | Format-List *

 ##-----difference between set and add content-------##
 Set-Content D:\temp\test\test.txt 'Hello'
Add-Content D:\temp\test\test.txt 'World!'

##----------CopyItem----------##
Copy-Item 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder' 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder1'

##------Setitemproperty----------##
Set-ItemProperty -Path C:\Users\vantaku.sravani\Desktop\powershell\final.doc -Name IsReadOnly -Value $true

##-------getitemproperty-----------##
Get-ItemProperty -Path C:\Users\vantaku.sravani

##-----Sortobject------##
Get-ChildItem -Path C:\Test -File | Sort-Object -Property Length

##----compare object-----##
Compare-Object -ReferenceObject (Get-Content -Path C:\Users\vantaku.sravani\Desktop\powershell\Testfile1.txt) -DifferenceObject (Get-Content -Path C:\Test\Testfile2.txt)
