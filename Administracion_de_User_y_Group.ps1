Get-LocalUser

Get-LocalUser -Name Gael | Select-Object *


Get-LocalUser -SID S-1-5-21-619924196-4045554399-1956444398-500 | Select-Object *

#Get-LocalGroup

Get-LocalGroup

Get-LocalGroup -Name Administradores | Select-Object *

Get-LocalGroup -SID S-1-5-32-545 | Select-Object *


#New LocalUser

New-LocalUser -Name "Usuario1" -Description "Usuario1 de Prueba 1" -NoPassword

New-LocalUser -Name "Usuario2" -Description "Usuario2 de Prueba 2" -Password (ConvertTo-SecureString -AsPlainText "12345" -Force)

#remove LocalUser

Get-LocalUser -Name "Usuario1"

Remove-LocalUser -Name "Usuario1"
Get-LocalUser -Name "Usuario1"

Get-LocalUser -Name "Usuario2"
Get-LocalUser -Name "Usuario2" | Remove-LocalUser
Get-LocalUser -Name "Usuario2"


#New LocalGroup

New-LocalGroup -Name 'GrupoUno' -Description 'GrupoUno de prueba 1'


#Add-LocalGroupMember

Add-LocalGroupMember -Group GrupoUno -Member Usuario2 -Verbose

Get-LocalGroupMember

#Remove-LocalGroupMember

Remove-LocalGroupMember -Group GrupoUno -Member Usuario1
Remove-LocalGroupMember -Group GrupoUno -Member Usuario2
Get-LocalGroupMember GrupoUno

#Remove-LocalGroup

Get-LocalGroup -Name "GrupoUno"

Remove-LocalGroup -Name "GrupoUno"
Get-LocalGroup -Name "GrupoUno"
