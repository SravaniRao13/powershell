#lastparam ($Path = ".")
#$disk = ([wmi]"\\SRVNAME\root\cimv2:Win32_logicalDisk.DeviceID='C:'")
#"C: GB Total = {0:#.0}
#C: GB Used {2:#.0}
#C: GB Free {1:#.0} " -f ($disk.Size/1GB),($disk.FreeSpace/1GB),($disk.Size/1GB-$disk.FreeSpace/1GB) | write-output

Get-WmiObject C:\ | select Name, @{Name="Type";Expression={if($_.psIsContainer){"Directory"}else{"File"}}}, @{Name="Size(GB)";Expression={[Math]::Round($(ls $_.FullName -recurse| measure Length -sum).Sum/1GB, 3)}}| sort -property "Size(GB)" -desc | Select -First 20
#  -ComputerName SRVNAME | `
  Format-Table `
    @{l="Server";e={$_.SystemName}}, `
    @{l="Drive Letter";e={$_.DeviceID}}, `
    @{l="Free Space on Disk (GB)";e={"{0:n2}" -f ($_.freespace/1gb)}}, `
    @{l="Total Disk Space (GB)";e={"{0:n2}" -f ($_.size/1gb)}}, `
    @{l="Percentage Used";e={ "{0:P2}" -f (1 - ([Int64]$_.FreeSpace / [Int64]$_.Size)) }}

$PrettySizeColumn = @{name="Size";expression={
    $size = $_.Size
    if ( $size -lt 1KB ) { $sizeOutput = "$("{0:N2}" -f $size)" }
    ElseIf ( $size -lt 1MB ) { $sizeOutput = "$("{0:N2}" -f ($size / 1KB)) KB" }
    ElseIf ( $size -lt 1GB ) { $sizeOutput = "$("{0:N2}" -f ($size / 1MB)) MB" }
    ElseIf ( $size -lt 1TB ) { $sizeOutput = "$("{0:N2}" -f ($size / 1GB)) GB" }
   # ElseIf ( $size -lt 1PB ) { $sizeOutput = "$("{0:N2}" -f ($size / 1TB)) TB" }
   # ElseIf ( $size -ge 1PB ) { $sizeOutput = "$("{0:N2}" -f ($size / 1PB)) PB" } 
    $sizeOutput
}}

Get-ChildItem -Path $Path | Where-Object {$_.PSIsContainer} | ForEach-Object { 
 #   $size = ( Get-ChildItem -Path $_.FullName -Recurse -Force | where {!$_.PSIsContainer} | Measure-Object -Sum Length).Sum 
    $obj = new-object -TypeName psobject -Property @{
        Path = $_.Name
        Time = $_.LastWriteTime
        Size = $size
    }
    $obj  
} | Sort-Object -Property Size -Descending | Select-Object Path, Time, $PrettySizeColumn
