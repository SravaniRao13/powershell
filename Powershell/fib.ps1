#######################################################################################################################################################################

#PS Script Name 		: Print diamond Pattern using Fibonacci numbers
#Version			: 1.0
#Input 				: Number of rows to be printed.
#Author 			: Sivananda Ganapathy

#######################################################################################################################################################################
Function Get-Fib([int]$n)
 {
     $current = $previous = 1;
     [int]$i = 1
     $current;
     while ($i -lt $n) {
           $current;
           $current,$previous = ($current + $previous),$current
           $i = $i +1 }
     }

 
 function print-Diamond ([int]$n)
 {
     
     $array_n_fib = @()
     $array_n_fib_rev = @()
     $opstream_Array = @()
     $bottom_half = @()
     $top_half = @()
     $backup = @()
     $output = @()
    
    $array_n_fib = Get-Fib $n
    $array_n_fib_rev = $array_n_fib[($array_n_fib.Length – 1)..0] # Reverse the Fibonacci series
    $i=1
    
    # Determine the Middle Line of the Diamond Pattern 
    # Delete 0th element in either of the array, to avoid duplicate
    $opstream_Array =  $array_n_fib_rev +  $array_n_fib[1..$array_n_fib.Length] 
    $backup = $array_n_fib_rev +  $array_n_fib[1..$array_n_fib.Length] # Takes the duplicate of the value
    
    while ( $opstream_Array.Count -gt 1 ) # Loop to annex First and Last element in One half of the Pattern
    {
    $opstream_Array = $opstream_Array[1..($opstream_Array.Count-1)] # Remove First element
    $opstream_Array = $opstream_Array[0..($opstream_Array.Count-2)] # Remove last element
    $bottom_half += " "*2*$i + [string]$opstream_Array # Leaving space for right alignment and printing as string value
    $i = $i + 1
    }
    $top_half = $bottom_half[($bottom_half.Length – 1)..0] # Reversing the Bottom Half to get top.
    $output = $top_half + [string]$backup + $bottom_half
    $output #| Out-File "C:\Users\siva-t\Documents\WindowsPowerShell\KT\output-fib.txt"
}



Try
{
    cls
    Write-Host "===================Display Fibonacci Diamond Pattern ========================"
    Write-Output ""
    [int]$n = Read-Host "Enter number of rows to "
    print-Diamond $n
}
catch
{
Write-Error "Please double-check the data type of the input. Only valid Integer is accepted!"
}