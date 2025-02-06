1 -eq "1.0"
"1.0" -eq 1


cat.\for1.ps1

for (($i = 0), ($j = 0); $i -lt 5; $i++)

{

    "`$i:$i"

    "`$j:$j"

}
.\for1.ps1

cat.\for2.ps1

for ($($i=0;$j = 0); $i -lt 5; $($i++; $j++))

{
    
"`$i:$i"
"`$j:$j"
}
.\for2.ps1


cat.\foreach1.ps1

$ssoo = "freebsd", "openbsd", "solaris", "fedora", "ubuntu", "netbsd" 
foreach ($so in $ssoo)
{
Write-Host $so

}
.\foreach1.ps1


cat.\foreach2.ps1 
foreach ($archivo in Get-ChildItem)
{

    if ($archivo.length -ge 10KB)

{
    Write-Host $archivo -> [($archivo.length)]
}

}
.\foreach2.ps1


cat.\while.ps1

$num = 0

while ($num -ne 3)

{
$num++
 Write-Host $num
 }
 .\while.ps1


 cat.\while2.ps1

$num = 0

while ($num -ne 5)

{

if ($num -eq 1) { $num = $num + 3; Continue }

$num++

Write-Host $num

}
.\while2.ps1


cat.\do-while.ps1

$valor = 5

$multiplicacion = 1

do
{
    $multiplicacion = $multiplicacion * $valor

    $valor--

}


while ($valor -gt 0)

Write-Host $multiplicacion
.\do-while.ps1


cat.\do-until.ps1

$valor = 5

$multiplicacion = 1

do

{

$multiplicacion = $multiplicacion * $valor

$valor--

}

until ($valor -eq 0)

Write-Host $multiplicacion
.\do-until.ps


cat.\break1.ps1

$num = 10

for($i = 2; $i -lt 10; $i++)
{
    $num = $num+$i

    if ($i -eq 5) { Break }

}

Write-Host $num

Write-Host $i
.\break1.ps1


cat.\break2.ps1

$cadena = "Hola, buenas tardes"

$cadena2 = "Hola, buenas noches"

switch -Wildcard ($cadena, $cadena2)

{

"Hola, buenas*" {"[$_] coincide con [Hola, buenas*]"}
"Hola, bue*" {"[$_] coincide con [Hola, bue*]"} 
"Hola,*" {"[$_] coincide con [Hola, *]"; Break}
"Hola, buenas tardes" {"[$_] coincide con [Hola, buenas tardes]"}
}
.\break2.ps1


cat.\continue1.ps1

$num = 10

for($i = 2; $i -lt 10; $i++)

{
    if ($i -eq 5) { Continue }

    $num = $num+$i
}

Write-Host $num

Write-Host $i
.\continue1.ps1


cat.\continue2.ps1

$cadena = "Hola, buenas tardes"

$cadena2= "Hola, buenas noches"

switch -Wildcard ($cadena, $cadena2)
{

"Hola, buenas*" {"[$_] coincide con [Hola, buenas*]"}

"Hola, bue*" {"[$_] coincide con [Hola, bue*]"; Continue}

"Hola," {"[$_] coincide con [Hola,*]" }

"Hola, buenas tardes" {"[$_] coincide con [Hola, buenas tardes]"}
}
.\continue2.ps1

