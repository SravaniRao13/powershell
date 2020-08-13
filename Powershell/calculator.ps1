##------------Calculator Code---------------#
[string]$b=Read-Host -Prompt 'Enter the Operation you want(+,-,*,/)'

if(($b -eq '+')-or($b -eq '-')-or($b -eq '*')-or($b -eq '/')-or($b -eq '%'))
{
[double]$a=Read-Host -Prompt 'Enter the First Number'
[double]$c=Read-Host -Prompt 'Enter the Second number'
  }
 else
 {
 Write-Warning 'Enter valid input'
 }


switch($b)
{
+ {
   # [double]$a=Read-Host -Prompt 'enter the First number'
    #[double]$c=Read-Host -Prompt 'Enter the Second number'
     
    [double]$add=$a+$c
    Write-Host("your answer is $add")
    break;
  }
- { 
    #[double]$a=Read-Host -Prompt 'enter the First number'
    #[double]$c=Read-Host -Prompt 'Enter the Second number'
    [double]$sub=$a-$c
    Write-Host("your answer is $sub")
    break;
  }
*  {
    #[double]$a=Read-Host -Prompt 'enter the First number'
    #[double]$c=Read-Host -Prompt 'Enter the Second number'
    [double]$multiply=$a*$c
    Write-Host("your answer is $multiply")
    break;
  }
/ { 
    #[double]$a=Read-Host -Prompt 'enter the First number'
    #[double]$c=Read-Host -Prompt 'Enter the Second number'
    [double]$divide=$a/$c
    Write-Host("your answer is $divide")
    break;
  }
% {
    #[double]$a=Read-Host -Prompt 'enter the First number'
    #[double]$c=Read-Host -Prompt 'Enter the Second number'
    [double]$modulus=$a%$c
    Write-Host("your answer is $modulus")
    break;
  }
  }