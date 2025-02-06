Get-Verb

Function Get-Fecha
{
Get-Date
}
Get-Fecha 

Get-ChildItem -Path Function:\Get-*

Get-ChildItem -Path Function:\Get-Fecha | Remove-Item
Get-ChildItem -Path Function:\Get-*



Function Get-Resta {
Param ([int]$num1, [int]$num2)
$resta=$num1-$num2
Write-Host “La resta de los parametros es $resta”
}

Get-resta 10 5

Get-resta -num 10 -num 5 

Get-resta -num 10 




Function Get-Resta {

Param ([Parameter (Mandatory)] [int] $num1, [int]$num2)
$resta=$num1-$num2
Write-Host “La resta de los parametros es $resta”
}

Get-Resta -num 10 


Function Get-Resta {
[CmdletBinding()]
Param ([int]$num1, [int]$num2)
$resta=$num1-$num2
Write-Host “La resta de los parametros es $resta”
}

(Get-Command -Name Get-Resta).Parameters.Keys

Function Get-Resta {
[CmdletBinding()]
Param ([int]$num1, [int]$num2)
$resta=$num1-$num2 #Operacion que realiza la resta
Write-Host “La resta de los parametros es $resta”
}


Function Get-Resta {
[CmdletBinding()]
Param ([int]$num1, [int]$num2)
$resta= $num1-$num2
Write-Verbose Message “Operación que va a relizar una resta de $num1 y $num2”
Write-Host “La resta de los parametros es $resta”
}
Get-Resta 10 5 -Verbose

