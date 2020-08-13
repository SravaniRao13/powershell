Get-Item FileSizes.ps1

WmiObject -Class Win32_logicaldisk

Get-ChildItem -path $home -ErrorAction silentlycontinue -Recurse |

Sort-Object -Property length -Descending |

Format-Table -autosize -wrap 

@{Label=”Last access”;Expression={($_.lastwritetime).ToshortDateString()}},

@{label=”size in megabytes”;Expression={“{0:N2}” -f ($_.Length / 1MB)}}





Get-WmiObject -Class Win32_logicaldisk




gwmi win32_logicaldisk | Format-Table DeviceId, MediaType, @{n="Size";e={[math]::Round($_.Size/1GB,2)}},@{n="FreeSpace";e={[math]::Round($_.FreeSpace/1GB,2)}},@{n="UsedSpace";e={[math]::Round($_.UsedSpace=Size-FreeSpace)}}