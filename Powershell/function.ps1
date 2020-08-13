function Get-Square([int]$x){
param {
[parameter(mandatory=$true)] [int]$x
 $res = $x * $x    
   return $res  
 }  
 }