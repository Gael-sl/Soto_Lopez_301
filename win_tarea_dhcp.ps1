#instalar el dhcp

Write-Host "instalando dhcp"

Install-WindowsFeature -Name DHCP IncludeManagement Tools

#info

$subnet Read-Host "ingresa la subred"

$subnetMask Read-Host "ingresa la Mask de subred" $startIP Read-Host "ingresa la ip del inicio del rango"

SendIP Read-Host "ingresa la ip final del rango"

$gateway Read-Host "ingresa el gateway"

$dnsServer Read-Host "Ingresa la ip del servidor dns"

#crea un scope

Write-Host "creando scope"

Add-DhcpServerv4Scope -Name "RedInterna" -StartRange $startIP-EndRange SendIP -SubnetMask $subnetMask -State Active

#configura el gateway

Write-Host "configurando gateway"

Set-DhcpServerv40ptionValue -ScopeId $subnet-OptionId 3 -Value $gateway

#configura dns

Write-Host "configurando dns"

Set-DhcpServerv40ptionValue -Scopeld $subnet -OptionId 6 -Value $dnsServer

#iniciar el dhcp

Write-Host "iniciando dhcp"

Restart-Service dhcpserver

Write-Host "configuracion de todo al 100"