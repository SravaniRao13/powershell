$a = 0
$b = @(1,2)
$c = @(-1,-2)

$b[$a] = $c[$a++]
$b
$c