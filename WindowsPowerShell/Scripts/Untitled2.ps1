$Number = 16
if ($Number -gt 10)
{Write-Host "Number is greater that 10"}
elseif ($Number -eq 10)
{Write-Host "Number is equal to 10"}
else
{Write-Host "Number is less than 10"}

#create array
$Fruits = "Apple", "Bannana", "Grape", "Black Berry"

#iterate over my array
foreach ( $i in $Fruits) {
"This is $i"
}

foreach ($Service in Get-Service)
{
"This is $(($Service).displayname)"
}


$List = 15..18
$i = 0
while ($i -le $List.count) {$List[$i];$i++}

$i = 0
$answer = Read-Host -Prompt "Write furthe count? => Yes or No"
while($answer -like "Yes"){$i;$answer = Read-Host -Prompt "Enter";$i++}

#Do-While Loop (runs when TRUE)
#$List = 1..8
#$i = 0
#do{$List[$i];$i++} while ($i -le $List.Count)

#$e = 0
#do{$e;$e++;$answer = Read-Host -Prompt "Write further count? => Yes or No"} while($answer -like "Yes")

#Do-Until Loop (runs when FALSE)
$List = 1..8
$i = 0
do{$List[$i];$i++} until ($i -eq $List.Count)

#$e = 0
do{$e;$e++;$answer = Read-Host -Prompt "Write further count? => Yes or No"} until($answer -like "No")

#For Loop
for ($e = 0;$e -le 8;$e++){$e}

$Count = 0
for ($e = 0;$e -le 8;$e++){"$Count Apple";$Count++}

for (($e = 0),($m = 100);$e -le 100 -and $m -ge 100;$e++, $m++){"$e is $m"}

for (($e = 0),($answer = Read-Host -Prompt "Write further count? => Yes or No");$answer -like "Yes";$e++)
{$e;$answer = Read-Host -Prompt "Write further count? => Yes or No"}











