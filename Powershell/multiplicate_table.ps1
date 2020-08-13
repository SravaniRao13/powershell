$table_num = Read-Host -Prompt 'Enter the table number you want to get printed'
for ($i=1; $i-lt 11; $i++){
    $ans = ($table_num*$i)
    write "$table_num*$i=$ans"
}


Enter the table number you want to get printed: 5
5*1=5
5*2=55
5*3=555
5*4=5555
5*5=55555
5*6=555555
5*7=5555555
5*8=55555555
5*9=555555555
5*10=5555555555



$table_num_str = Read-Host -Prompt 'Enter the table number you want to get printed'
$table_num = [int]::Parse($table_num_str)
for ($i=1; $i-lt 11; $i++){
    $ans = ($table_num*$i)
    write "$table_num*$i=$ans"
} 



Enter the table number you want to get printed: 5
5*1=5
5*2=10
5*3=15
5*4=20
5*5=25
5*6=30
5*7=35
5*8=40
5*9=45
5*10=50