$url = "http://rsmt.it.fmi.uni-sofia.bg/books/windows_powershell_cookbook_3rd_edition.pdf"
$outfile = "C:\Users\vantaku.sravani\Desktop\powershell.pdf"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $outfile
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"