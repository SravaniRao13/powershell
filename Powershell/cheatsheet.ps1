(Get-Item C:\Users\vantaku.sravani\Desktop\powershell).LastAccessTime
Move-Item -Path C:\Users\vantaku.sravani\Desktop\powershell -Destination Documents
Remove-Item C:\Users\vantaku.sravani\Desktop\powershell\add.ps1
Rename-Item -Path C:\Users\vantaku.sravani\Desktop\powershell\FibDiamond.ps1 -NewName "FiboDiamond.ps1"
Get-Service | Where-Object {$_.Status -eq 'Running'}
Get-ChildItem -Path C:\Users
Get-Content -Path C:\Users\vantaku.sravani\Desktop\Powershell\KT_Notes.txt -TotalCount 5
Get-Process | Where-Object {$KT_Notes.txt -gt 100}
 Wait-Process -Name "notepad"
 Get-Process | Sort-Object name -Descending | Select-Object -Index 0,1,2,3,4