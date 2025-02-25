﻿cat . \try-catch.ps1
try
{
Write-Output "Todo bien"
}
catch
{
Write-Output "Algo lanzo una excepcion"
Write-Output $_
}
try
{
Start-Something -ErrorAction Stop
}
catch
{
Write-Output "Algo genero una excepcion o uso Write-Error"
Write-Output $_
}
. \try-catch.ps1





$comando = [System.Data.SqlClient.SqlCommand]::New(queryString, connection)
Try
{
$comando.Connection.Open()
$comando.ExecuteNonQuery()
}
Finally
{
Write-Error “Ha habido un problema con la ejecución de la query. Cerrando la conexión
$comando.Connection.Close()"
}



#Variable automática $psitem

Try
{
Start-Something -Path $path -ErrorAction Stop
}
Catch [System.IO.DirectoryNotFoundException], [System.IO.FileNotFoundException]
{
Write-Output “El directorio o fichero no ha sido encontrado: [$path]”
}
Catch [System.IO.IOException]
{
Write-Output “Error de 10 con el archivo: [$path]”
}
Throw “No se puede encontrar la ruta: [$path]”
Throw [System.IO.FileNotFoundException] “No se puede encontrar la ruta: [$path]”
Throw [System.IO.FileNotFoundException]::new()
Throw [System.IO.FileNotFoundException]:: new(“No se puede encontrar la ruta: [$path]”)
Throw (New-Object -TypeName System.IO.FileNotFoundException)
Throw (New-Object -TypeName System.IO.FileNotFoundException -ArgumentList “No se puede encontrar la ruta: [$path]”)


Cat . \trap.ps1
Trap
{
Write-Output $PSItem.ToString()
}
Throw [System.Exception]::new(‘primero’)
Throw [System.Exception]::new(‘segundo’)
Throw [System.Exception]::new(‘tercero’)
. \trap.ps1








#Backup
# Función para realizar un backup del registro del sistema
Function Backup-Registry {
    Param(
        [Parameter(Mandatory = $true)]
        [string]$rutaBackup
    )
    # Crear la ruta de destino del backup si no existe
    If (¡(Test-Path -Path $rutaBackup)) {
        New-Item -ItemType Directory -Path $rutaBackup | Out-Null
    }
    # Generar un nombre único para el archivo de backup
    $nombreArchivo = “Backup-Registry_” + (Get-Date -Format “yyyy-MM-dd_HH-mm-ss”) + “.reg”
    $rutaArchivo = Join-Path -Path $rutaBackup -ChildPath $nombreArchivo
    # Realizar el backup del registro del sistema y guardarlo en el archivo de destino
    Try {
        Write-Host “Realizando backup del registro del sistema en $rutaArchivo…”
        Reg export HKLM $rutaArchivo /y
        Write-Host “El backup del registro del sistema se ha realizado con éxito.”
    }
    Catch {
        Write-Host “Se ha producido un error al realizar el backup del registro del sistema: $_”
    }
}

# Escribir en el archivo de log
$logDirectory = “$env:APPDATA\RegistryBackup”
$logFile = Join-Path $logDirectory “backup-registry_log.txt”
$logEntry = “$(Get-Date) - $env:USERNAME – Backup - $backupPath”
If (¡(Test-Path $logDirectory)) {
    New-Item -ItemType Directory -Path $logDirectory | Out-Null
}
Add-Content -Path $logFile -Value $logEntry

# Verificar si hay más de $backupCount backups en el directorio y 
eliminar los más antiguos si es necesario
$backupCount = 10
$backups = Get-ChildItem $backupDirectory -Filter *.reg | Sort-Object LastWriteTime -Descending
If ($backups.Count -gt $backupCount) {
    $backupsToDelete = $backups[$backupCount..($backups.Count – 1)]
    $backupsToDelete | Remove-Item -Force
}








@{
    ModuleVersion = ‘1.0.0’
    PowerShellVersion = ‘5.1’
    RootModule = ‘Backup-Registry.ps1’
    Description = ‘Módulo para realizar backups del registro del sistema de Windows’
    Author = ‘Alice’
    FunctionsToExport = @(‘Backup-Registry’)
}

ls

Import-Module BackupRegistry

Get-Help Backup-Registry

Backup-Registry – rutaBackup ‘D:\tmp\Backups\Registro\’

ls .\tmp\Backups\Registro\

vim .\Backup-Registry.ps1

Import-Module BackupRegistry  - Force

Backup-Registry  - rutaBackup 'D:\tmp\Backups\Registro\'

ls ‘D:\tmp\Backups\Registro\’

# Configuración de la tarea
$Time = New-ScheduledTaskTrigger -At 02:00 -Daily
# Acción de la tarea
$PS = New-ScheduledTaskAction -Execute “Powershell.exe” -Argument “-Command `”Import-Module BackupRegistry -Force; Backup-Registry -rutaBackup ‘D:\tmp\Backups\Registro’`””
# Crear la tarea programada
Register-ScheduledTask -TaskName “Ejecutar Backup del Registro del Sistema”
-Trigger $Time -Action $PS"


 ls ‘D:\tmp\Backups\Registro\'
Get-Date
ls 'D:\tmp\Backups\Registro\'

Get-ScheduledTask

Unregister-ScheduledTask ‘Ejecutar Backup del Regitro’

Get-ScheduledTask 


