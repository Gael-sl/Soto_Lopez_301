Get-Command -Type Cmdlet |Sort-Object -Property Noun |Format-Table -GroupBy Noun

Get-Command -Name Get-Childitem -Args Cert: -Syntax

Get-Command -Name dir

Get-Command -Noun WSMaiInstance




Get-Service -Name "LSM" | Get-Member

Get-Service -Name "LSM" | Get-Member -MemberType Property


Get-Item .\test.txt | Get-Member -MemberType Method

Get-Item .Itest.txt | Select-Object Name, Length

Get-Service | Select-Object -Last 5

Get-Service | Select-Object -First 5


Get-Service | Where-Object {$_.Status -eq "Running"}

(Get-Item .\test.txt).IsReadOnly

(Get-Item .\test.txt).IsReadOnly = 1
(Get-Item .\test.txt).IsReadOnly


Get-ChildItem *.txt

(Get-Item .Itest.txt).CopyTo("D:\Desktop\prueba.txt")
(Get-Item .Itest.txt).Delete()

Get-ChildItem *.txt



$miObjeto = New-Object PSObject

$miObjeto | Add-Member -MemberType NoteProperty -Name Nombre -Value "Miguel"

$miobjeto | Add-Member -MemberType NoteProperty -Name Edad -Value 23

$miobjeto | Add-Member -MemberType ScriptMethod -Name Saludar-Value { Write-Host "¡Hola Mundo!" }


$miObjeto = New-Object -TypeName PSObject -Property @{

Nombre = "Miguel"

Edad = 23
}

$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "¡Hola Mundo!" }
$miObjeto | Get-Member

$miObjeto = [PSCustomObject] @{

Nombre = "Miguel"

Edad = 23
}

$miObjeto | Add-Member -MemberType ScriptMethod -Name Saludar -Value { Write-Host "¡Hola Mundo!"}
$miObjeto | Get-Member



Get-Process -Name Acrobat | Stop-Process

Get-Help -Full Get-Process
Get-Help -Full Stop-Process
Get-Process
Get-Help -Name  Acrobat | Stop-Process
Get-Process

Get-Help -Full Get-ChildItem
Get-Help -Full Get-Clipboard

Get-ChildItem *.txt | Get-Clipboard

Get-Help -Full Stop-Service


Get-Service
Get-Service Spooler | Stop-Service
Get-Service


Get-Service
"Spooler"  | Stop-Service
Get-Service
Get-Service

$miObjeto = [PSCustomObject] @{
    Name = "Spooler"
    }
$miObjeto | Stop-Service
Get-Service
Get-Service