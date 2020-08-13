[int][double][char]$inp=Read-Host -Prompt 'Enter the input'
$aad = 0..99999 | % {Get-Random -Maximum 1 }
$credit = $null
$credit = 0..99999 | % {Get-Random -Maximum 16 }

eg. 1234 5678 9012 = Aadhar
1234 5678 9012 3456 - Credit Card
18-6-1994 = Dte
abc1ed2345 - PAN CARD



switch($inp)
{
{$result = 'The input is an Aadhar number'
   Write-Host("your answer is $aad")
   break;
  }
  {$result = 'The input is an PAN number'
   Write-Host("your answer is $add")
   break;
  }
  {$result = 'The input is an DOB'
   Write-Host("your answer is $add")
   break;
  }
  {$result = 'The input is an IP'
   Write-Host("your answer is $add")
   break;
  }
  {$result = 'The input is an CreditCard'
   Write-Host("your answer is $credit")
   break;
   }
}
