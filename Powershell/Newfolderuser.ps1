Function folderScan {
$subDirectories = Get-ChildItem $rootLocation | Where-Object{($_.PSIsContainer)} | foreach-object{$_.Name}
Write-Host "Calculating folder sizes for $rootLocation,"
Write-Host "this process will take a few minutes..."
"Estimated subfolder sizes for $rootLocation :" | out-file -width $outputWidth $findFilesFoldersOutput -append
Write-Host " "
" "  | out-file -width $outputWidth $findFilesFoldersOutput -append
$folderOutputFixed = @{}
foreach ($i in $subDirectories)
	{
	$targetDir = $rootLocation + $i
	$folderSize = (Get-ChildItem $targetDir -Recurse -Force | Measure-Object -Property Length -Sum).Sum 2> $null
    $folderSizeComplete = "{0:N0}" -f ($folderSize / 1MB) + "MB"
	$folderOutputFixed.Add("$targetDir" , "$folderSizeComplete")
	write-host " Calculating $targetDir..."
}
$folderOutputFixed.GetEnumerator() | sort-Object Name | format-table -autosize | out-file -width $outputWidth $findFilesFoldersOutput -append
Write-Host " "
Write-Host "Attempting to open scan results with notepad..."
c:\windows\system32\notepad.exe "$findFilesFoldersOutput"
Write-Host " "
Write-Host "Scan saved to: $findFilesFoldersOutput..."
Write-Host " "
}
folderScan



gci -r|sort -descending -property length | select -first 20 name, @{Name="Gigabytes";Expression={[Math]::round($_.length / 1GB, 2)}}



gci -Path C:\ -r| sort -descending -property length | select -first 20 name, length

gci -path C:\ -r|sort -descending -property length | select -first 10 name, @{Name="Gigabytes";Expression={[Math]::round($_.length / 1GB, 2)}}


ls c:\ | select Name, @{Name="Type";Expression={if($_.psIsContainer){"Directory"}else{"File"}}}, @{Name="Size(GB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1GB, 3)}}| sort -property "Size(GB)" -desc | t 20,1MB, 3)}}| sort -property "Size(MB)" -desc


ls c:\ | select Name, @{Name="Type";Expression={if($_.psIsContainer){"Directory"}else{"File"}}}, @{Name="Size(GB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1GB, 3)}}| sort -property "Size(GB)",@{Name="Size(MB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1MB, 3)}}| sort -property "Size(MB)",@{Name="Size(KB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1KB, 3)}}| sort -property "Size(KB)" -desc | Select -First 20


Get-WmiObject -Class C:\ | select Name, @{Name="Type";Expression={if($_.psIsContainer){"Directory"}else{"File"}}}, @{Name="Size(GB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1GB, 3)}}| sort -property "Size(GB)" -desc | Select -First 20