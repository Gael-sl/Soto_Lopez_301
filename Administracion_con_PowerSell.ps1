Get-Service 

Get-Service -Name Spooler

Get-Service  -DisplayName Hora*

Get-Service | Where-Object {$_.Status -eq “Running”}


 Get-Service I
Where-Object {$_.StartType -eq “Automatic”} |
Select-Object Name, StartType

Get-Service -DependentServices Spooler


Get-Service -RequiredServices Fax

Stop-Service -Name Spooler -Confirm -PassThru


Start-Service -Name Spooler -Confirm -PassThru


Suspend-Service -Name stisvc -Confirm -PassThru

Get-Service | Where-Object CanPauseAndContinue -eq True

Suspend-Service -Name Spooler



#Restart-Service
Restart-Service -Name WSearch -Confirm -PassThru



#Set-Service
Set-Service -Name dcsvc -DisplayName “Servicio de virtualización de credenciales de seguridad distribuida”

Set-Service -Name BITS -StartupType Automatic -Confirm -PassThru | Select-Object Name, StartType


Set-Service -Name BITS -Description “Transfiere archivos en segundo plano mediante el uso de ancho de banda de red inactivo .”

Get-CimInstance Win32_ Service -Filter ‘Name = “BITS” ‘ | Format-List Name, Description 

Set-Service -Name Spooler -Status Running -Confirm -PassThru

Set-Service -Name stisvc -Status Paused -Confirm -PassThru

Set-Service -Name BITS -Status Stopped -Confirm -PassThru
