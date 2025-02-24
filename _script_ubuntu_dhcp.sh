#intalar dhcp

echo "instalando el server dhcp"
sudo apt update

sudo apt install -y isc-dhcp-server

#pregunta por las conf
read -p "ingresa el name del ambito: " scopeName
read -p "ingresa la IP inicial: " startIP
read -p "ingresa la IP final: " endIP
read -p "ingresa la mascara de subred: " subnetMask
read -p "ingresa la puerta de enlace:" gateway
read -p "ingresa la IP del servidor dns: " dnsServer

#crea la confi
config="subnet 192.168.1.0 netmask $subnet Mask {
range $start IP SendIP;
option routers $gateway;
option domain-name-server $dnsServer;
}"

#escribe la config en el archivo
echo "$config" | sudo tee /etc/dhcp/dhcpd.conf > /dev/null

#reinicia el servicio
sudo systemctl restart isc-dhcp-server

echo "configuracion al millon"