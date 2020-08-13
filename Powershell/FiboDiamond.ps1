    
    function fib($n)
{
    if ( $n -le 1 )
{
    return $n;
    return fib($n-1)+fib($n-2);
}   
}
    function printDiamond($n)
{
    int $i,$j,$k,$l;
    int $len=$n;

##Upper part
  
    for($i=0;$i -le $len;$i++)
{
    for($j=0;$j -le $len-(i+1);j++)
{
    WriteHost(" ");
}
    for($k=$i;$k -gt 0;$k--)
{
    Write-Host $data[$k];
}
    Write-Host $data[0];
    for($k=1;$k -le $i;$k++)
{
    Write-Host $data[$k];
}
    Write-Host("\n");
}
##middle part

    for($i=$len-1;$i -le 0;$i--)
{
    Write-Host $data[$i];
}
    Write-Host $data[0];
    for($i=1;$i -le $len;$i++)
{
    Write-Host $data[$i];
}
    Write-Host ("\n");
 ##bottom part
  
    for($i=$len-1;$i-ge 0;$i--)
{
    for($j=$len-1;$j -gt $i;$j--)
{
    Write-Host("");
}
    for($k=$i;$k -gt 0;$k--)
{
    Write-Host $data[$k];
}
    Write-Host $data[0];
    for($k=1;$k -le $i;$k++)
{
        Write-Host $data[$k];
}
    Write-Host ("\n");
}
}



    int $n,$i;
    Write-Host("enter the n value");
    Read-Host $n;
    
    for($i=0;$i -le $n;$i++)
    {
        $data[$i]=fib($i+1);
    }
    printDiamond($n);
    return 0;
