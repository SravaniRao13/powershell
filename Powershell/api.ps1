############### Question ###################
# API  Calling PowerShell
# Webpage URL : https://svc.metrotransit.org/nextrip
# Inputs : Busroute_Name , Bus_Stop_Name , Direction
# Busroute_Name is a unique name, among other bus routes.
# Bus_Stop_Name is a unique string, not found among other stops along the route.
# Direction : N,E,W,S

<#
Next Trips available for the day 

Description                                              ProviderID Route
-----------                                              ---------- -----
METRO Blue Line                                          8          901  
METRO Green Line                                         8          902  
METRO Red Line                                           9          903  
METRO A Line                                             8          921  
METRO C Line                                             8          923  
Northstar Commuter Rail                                  8          888  
2 - Franklin Av - Riverside Av - U of M - 8th St SE      8          2    
3 - U of M - Como Av - Energy Park Dr - Maryland Av      8          3    
4 - New Brighton - Johnson St - Bryant Av - Southtown    8          4    
5 - Brooklyn Ctr - Fremont - 26th Av - Chicago - MOA     8          5    
6 - U of M - Hennepin - Xerxes - France - Southdale      8          6    
7 - Plymouth - 27 Av - Minnehaha - 46 St Sta - 34 Av S   8          7    
9 - Glenwood - Wayzata Blvd - Cedar Lk Rd - 46 St Sta    8          9    
10 - Central Av - University Av - Northtown              8          10  

https://svc.metrotransit.org/NexTrip/Stops/10/4
Sample Stops in RouteID 10, North Direction ( ID =4 )

Text                                         Value
----                                         -----
Northtown Transit Center                     NOTW 
Monroe St  and Osborne Rd                    OSMN 
University Ave  and 73rd Ave                 73UV 
Central Ave  and 73rd Ave                    73CE 
University Ave  and 61st Ave                 61UN 
53rd Ave  and SuperTarget                    53TA 
Central Ave  and 51st Ave                    51CE 
Central Ave & 41st Ave (Col Hts Transit Ctr) 41CE 
Central Ave  and Lowry Ave                   LWCE 
Central Ave  and University Ave              CEUN 
Nicollet Mall and 3rd St                     3SNI 
Nicollet Mall and 7th St                     7SNI 
Convention Center                            CONV 
Leamington Ramp                              LMRP

https://svc.metrotransit.org/NexTrip/Stops/94/2

Text                              Value
----                              -----
Ramp B/5th St Transit Center      5GAR 
6th St and Hennepin Ave           6SHE 
6th St  and 11th Ave              6S11 
5th St and W 7th St               5S7S 
5th St and Minnesota St           5MIN 
Union Depot                       UNDP 
Fillmore Ave and River Park Plaza FRPP 

https://svc.metrotransit.org/NexTrip/5/4/7SOL

Text                                         Value
----                                         -----
Northtown Transit Center                     NOTW 
Monroe St  and Osborne Rd                    OSMN 
University Ave  and 73rd Ave                 73UV 
Central Ave  and 73rd Ave                    73CE 
University Ave  and 61st Ave                 61UN 
53rd Ave  and SuperTarget                    53TA 
Central Ave  and 51st Ave                    51CE 
Central Ave & 41st Ave (Col Hts Transit Ctr) 41CE 
Central Ave  and Lowry Ave                   LWCE 
Central Ave  and University Ave              CEUN 
Nicollet Mall and 3rd St                     3SNI 
Nicollet Mall and 7th St                     7SNI 
Convention Center                            CONV 
Leamington Ramp                              LMRP 


#>

$RouteID = Read-Host "Please Enter Route ID" # Refer Comment Section
$DirectionID = Read-Host "Please Enter Direction ID" # S=1,E=2,W=3,N=4
$Stopvalue = Read-Host "Please enter the Stop ID" # Refer Sample Values
Write-Output "Processing..."
$getTime_URL = "https://svc.metrotransit.org/NexTrip/$RouteID/$DirectionID/$Stopvalue"
[xml]$Departure_Time = (Invoke-WebRequest -Uri "$getTime_URL" ).content
$output = $Departure_Time.ArrayOfNexTripDeparture.NexTripDeparture | select Description,DepartureTime
if ($output[0].DepartureTime)
{
$time_scheduled = [datetime]::ParseExact($output[0].DepartureTime,'yyyy-MM-ddTHH:mm:ss',$null)

$time_now = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId( (Get-Date ), 'Central Standard Time')
 $final= (New-TimeSpan -Start $time_now -End $time_scheduled).TotalMinutes
 $final = [math]::Round($final,2)
 Write-Output "$final Minutes"
}
else
{
Write-Output "All Metro trains or Buses left for the day."
}

