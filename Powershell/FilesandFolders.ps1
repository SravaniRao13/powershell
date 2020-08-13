#----------------Files and Folders-----------------#

#create directory
New-Item -Path 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder' -ItemType Directory
#Creating File
New-Item -Path 'C:\Users\vantaku.sravani\Desktop\powershell\Testfile.txt' -ItemType File
#Copying Folder
Copy-Item 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder' 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder1'
#Copying File
Copy-Item 'C:\Users\vantaku.sravani\Desktop\powershell\new.txt' 'C:\Users\vantaku.sravani\Desktop\powershell\new1.txt'
#Delete Directory
Remove-Item 'C:\Users\vantaku.sravani\Desktop\powershell\TestFolder'
#Delete File
Remove-Item 'C:\Users\vantaku.sravani\Desktop\powershell\test.txt'
#Moving Directory
Move-Item 'C:\Users\vantaku.sravani\Desktop\powershell\new C:\Users\vantaku.sravani\Desktop\Powershell\new1'
#Moving File
Move-Item 'C:\Users\vantaku.sravani\Desktop\powershell\new.txt C:\Users\vantaku.sravani\Desktop\Powershell\new1.txt'
#Rename Directory
Rename-Item 'C:\Users\vantaku.sravani\Desktop\powershell\test C:\Users\vantaku.sravani\Desktop\powershell\test1'
#Rename File
Rename-Item 'C:\Users\vantaku.sravani\Desktop\powershell\test.txt test1.txt'
#Retreiving the Item
Get-Content C:\Users\vantaku.sravani\Desktop\powershell\test.txt
#Check Directory Existence
Test-Path 'C:\Users\vantaku.sravani\Desktop\powershell'
#Check File Existence
Test-Path 'C:\Users\vantaku.sravani\Desktop\powershell\test.txt'


