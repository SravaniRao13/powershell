

$foldersLimit = 20
function Get-TreeSize ($folder = $null)
{
    #Function to get recursive folder size
    $result = @()
    $folderResult = "" | Select-Object FolderPath, FolderName, SizeKB, SizeMB, SizeGB

    $contents  = Get-ChildItem $folder.FullName -recurse -force -erroraction SilentlyContinue -Include * | Where-Object {$_.psiscontainer -eq $false} | Measure-Object -Property length -sum |Select-Object sum | Where-Object @{Name="folderlimit";Expression={$_.$folderLimit}} | Sort-Object -Descending
  #  $sizeKB = [math]::Round($contents.sum / 1000,3)   #.ToString("#.##")
   # $sizeMB = [math]::Round($contents.sum / 1000000,3)   #.ToString("#.##")
   # $sizeGB = [math]::Round($contents.sum / 1000000000,3)   #.ToString("#.###")

  $DirSize = "{0:N2}" -f (($DirArray | Measure-Object -property length -sum).sum)
$DirSizeKB = "{0:N2}" -f (($DirArray | Measure-Object -property length -sum).sum / 1KB)
$DirSizeMB = "{0:N2}" -f (($DirArray | Measure-Object -property length -sum).sum / 1MB)
$DirSizeGB = "{0:N2}" -f (($DirArray | Measure-Object -property length -sum).sum / 1GB)

    $folderResult.FolderPath = $folder.FullName
   $folderResult.FolderName = $folder.BaseName
    $folderResult.SizeKB = $DirSizeKB
    $folderResult.SizeMB = $DirSizeMB
    $folderResult.SizeGB = $DirSizeGB
    $result += $folderResult

    return $result
} 



#Use the function like this for a single directory
$topDir = get-item "C:\"
Get-TreeSize ($topDir)

#Use the function like this for all top level folders within a direcotry
#$topDir = gci -directory "\\server\share\folder"
$topDir = Get-ChildItem -directory "C:\"
foreach ($folderPath in $topDir) {Get-TreeSize $folderPath}  




gci -r |sort -descending -property length | select -first 20 name, @{Name="Gigabytes";Expression={[Math]::round($_.length / 1GB, 2)}}
