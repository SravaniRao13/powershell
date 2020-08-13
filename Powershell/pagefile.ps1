# Main Part of function
Function Get-PageFileInfo {
#Get-PageFileInfo LP-DW4L2Z2 | Format-Table

Foreach ($computer in $ComputerName)
{

  $online= Test-Connection -ComputerName $computer -Count 2 -Quiet
    if ($online -eq $true)
     {
      $PageFileResults = Get-CimInstance -Class Win32_PageFileUsage -ComputerName $Computer | Select-Object *
      $CompSysResults = Get-CimInstance win32_computersystem -ComputerName $computer -Namespace 'root\cimv2'
    
      $PageFileStats = [PSCustomObject]@{
        Computer = $computer
        FilePath = $PageFileResults.Description
        AutoManagedPageFile = $CompSysResults.AutomaticManagedPagefile
        "TotalSize(in MB)" = $PageFileResults.AllocatedBaseSize
        "CurrentUsage(in MB)"  = $PageFileResults.CurrentUsage
        "PeakUsage(in MB)" = $PageFileResults.PeakUsage
        TempPageFileInUse = $PageFileResults.TempPageFile
      } #END PSCUSTOMOBJECT
     } #END IF
    else
     {
        # Computer is not reachable!
        Write-Host "Error: $computer not online" -Foreground white -BackgroundColor Red
     } # END ELSE


#  $PageFileStats
  $PageFileInfo
 
} #END FOREACH


} #END FUNCTION

#Get-CimClass -ClassName *PageFile*
Get-CimInstance Win32_PageFileUsage | fl  *
#(Get-ChildItem c:\ -Attributes H,S | ? Name -eq "pagefile.sys").Length /1MB

#gwmi Win32_ComputerSystem | fl AutomaticManagedPagefile            
#Get-CimInstance CIM_ComputerSystem | gm -Name AutomaticManagedPagefile