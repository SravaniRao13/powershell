try
{
    $space = Get-WmiObject Win32_logicaldisk | Format-Table DeviceID,
    @{Name="Size(GB)";Expression={[decimal]("{0:N0}" -f($_.size/1gb))}},
    @{Name="Free Space(GB)";Expression={[decimal]("{0:N0}" -f($_.freespace/1gb))}},
    @{Name="Free (%)";Expression={"{0,6:P0}" -f(($_.freespace/1gb) / ($_.size/1gb))}},
    @{Name="Used Space(GB)";Expression={[decimal]("{0:N0}" -f($_.size/1gb - $_.freespace/1gb))}},
    @{Name="Used Space (%)";Expression={"{0,6:P0}" -f(($_.size/1gb - $_.freespace/1gb) / ($_.size/1gb))}}
    -AutoSize
}
catch 
{
    echo "Exception Occurred. Please try again on $servername"
}

echo "The total space on $servername are given below:"
echo $space