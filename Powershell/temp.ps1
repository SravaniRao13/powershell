$directory = Get-Item .

$directory | Get-ChildItem |

  Measure-Object -Sum Length | Select-Object `

    @{Name=”Path”; Expression={$directory.FullName}},

    @{Name=”Files”; Expression={$_.Count}},


    @{Name=”Size”; Expression={$_.Sum}}


    GetChildItem -Path C:\Temp -FormatNumbers -Total


  Get-ChildItem -r| C:\ | select Name, @{Name="Type";Expression={if($_.psIsContainer){"Directory"}else{"File"}}}, @{Name="Size(GB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1GB, 3)}}| sort -property "Size(GB)" -desc | Select -First 20




  #get all from c Get-ChildItem -Path C:\ -Force -Recurse

Get-ChildItem -Path C:\Temp -Recurse -Include *.*  | Sort-Object Descending 

Get-ChildItem -Path $env:ProgramFiles -Recurse -Include *.exe | Sort-Object Descending 

Get-ChildItem -Path $env:ProgramFiles -Recurse -Include *.exe | Where-Object -FilterScript {($_.Length )}

gci -path C:\Temp -r -Include *.* |sort -descending -property length | select -first 20 name, @{Name="Megabytes";Expression={[Math]::round($_.length / 1MB, 2)}}

#3.	It should also list the user profiles by size.

gci -path C:\Users -r -Include *.* |sort -descending -property length | Select -First 20 name, @{Name="Megabytes";Expression={[Math]::round($_.length / 1MB, 2)}}