[double]$x = Read-Host -Prompt "Enter the length"
[double]$y = Read-Host -Prompt "Enter the breadth"
#if(( $x -is [int] ) -or ( $y -is [int] )){

 

#elseif($x -isnot [int]) {
  # Write-Warning "Enter valid format"
  # }
for($i=1; $i -le $x; $i++) {
    for($k=1; $k -le $y; $k++ ){
         Write-Host -NoNewLine "*"
    }
       Write-Host  ""
    }
#}