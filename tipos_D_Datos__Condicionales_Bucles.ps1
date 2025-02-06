[int]$variable1=100
[int]$variable2="Hola"

$variable1.GetType()

cat .\condicionales.ps1
$condicion = $true
if ( $condicion )
{
    Write-Output "La condicion era verdadera"
}
else
{
   Write-Output "La condicion era falsa"
}   

.\condicionales.ps1


cat .\condicionales2.ps1
$numero = 2

if ($numero -ge 3)

{

    Write-Output "El numero [$numero] es mayor o igual que 3"
}
elseif ( $numero -lt 2 )
{

    Write-Output "El numero [$numero] es menor que 2"

}

else

{

    Write-Output "El numero [$numero] es igual a 2"

}

.\condicionales2.ps1

$PSVersionTable

$mensaje = (Test-Path $path)? "Path existe" : "Path no encontrado"

$mensaje


cat .\switch1.ps1
switch (3)
{

    1 {"[$] es uno."}

    2 {"[$_] es dos."}

    3 {"[$_] es tres."}
    
    4 {"[$_] es cuatro."}

    3 {"[$_] tres de nuevo."}

}
.\switch1.ps1


cat .\switch3.ps1
switch (3)
{

    1 {"[$] es uno."}

    2 {"[$_] es dos."}

    3 {"[$_] es tres.";Break}

    4 {"[$_] es cuatro."}

    3 {"[$_] tres de nuevo."}

}
.\switch3.ps1


cat .\switch4.ps1
switch (1, 5)
{

    1 {"[$] es uno."}

    2 {"[$_] es dos."}

    3 {"[$_] es tres."}

    4 {"[$_] es cuatro."}

    5 {"[$_] es cinco."}

}
.\switch4.ps1


cat.\switch5.ps1

switch ("seis")

{

    1 {"[$_] es uno."; Break}

    2 {"[$_] es dos."; Break}

    3 {"[$_] es tres."; Break}

    4 {"[$_] es cuatro."; Break}

    5 {"[$_] es cinco."; Break}

    "se*" {"[$_) coincide con se*."}

Default {

        "No hay coincidencias con [$_]"

        }

}
.\switch5.ps1


cat.\switch6.ps1

switch -Wildcard ("seis")

{

    1 {"[$_] es uno."; Break}

    2 {"[$_] es dos."; Break}

    3 {"[$_] es tres."; Break}

    4 {"[$_] es cuatro."; Break}

    5 {"[$_] es cinco."; Break}

    "se*" {"[$_] coincide con [se*]"}

Default {

    "No hay coincidencias con [$_]" 
    }
}
.\switch6.ps1

cat.\switch7.ps1
$email = 'antonio.yanez@udc.es'

$email2 = 'antonio.yanez@usc.gal'

$url = 'https://www.dc.fi.udc.es/~afyanez/Docencia/2023'

switch -Regex ($url, $email, $email2)

{

    '^\w+\.\w+@(udc|usc|edu)\.es|gal$' { "[$_] es una direccion de correo electronico aca

demica" }

    '^ftp\://.*$' { "[$_] es una direccion ftp" }

    '^(http[s]?)\://.*$' { "[$_] es una direccion web, que utiliza [$($matches[1])]" }

}
.\switch7.ps

