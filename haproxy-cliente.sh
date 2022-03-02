sudo apt-get install -y apache2
#sudo echo "Hostname:$1 IP:$2" >> /var/www/index.html

#Instalacion del contenedor

echo "Instalamos LXD"
sudo apt-get install -y lxd
sudo aptitude install lxc lxc-templates
sudo apt update
#sudo apt install zfsutils-linux lxd -y

echo "Adicionar usuario al pool del cluster"
sudo gpasswd -a vagrant lxd

echo "Iniciar LXD"
#sudo lxd init [

#config:
 # core.https_address: 10.10.10.3:8443
 # core.trust_password: "123456789"
#networks:
#- config:
    #bridge.mode: fan
   # fan.underlay_subnet: auto
  #description: ""
  #name: lxdfan0
 # type: ""
#storage_pools:
#- config: {}
  #description: ""
  #name: local
 # driver: dir
#profiles:
#- config: {}
 # description: ""
  #devices:
    #eth0:
     # name: eth0
      #network: lxdfan0
     # type: nic
    #root:
    #  path: /
   #   pool: local
  #    type: disk
 # name: default
#cluster:
  #server_name: servidor1
  #enabled: true
  #member_config: []
  #cluster_address: ""
  #cluster_certificate: ""
  #server_address: ""
  #cluster_password: ""
 # cluster_certificate_path: ""
#  cluster_token: ""

]
sleep 50

#echo "Crear un contenedor"
#sudo lxc launch ubuntu:20.04 nodo$1 --target servidor$1

#sleep 30

#echo "Aplicar un limite de memoria a su contenedor"
#sudo lxc config set nodo$1 limits.memory 64MB

#echo "Instalar Apache"
#sudo lxc exec nodo$1 -- apt-get install apache2 -y


cat <<TEST> /var/www/html/index.html
<!DOCTYPE html>
<html>
<body>
<h1>Paágina de Prueba de Clúster con containers LXD</h1>
<p>Bienvenidos a mi contenedor LXD</p>
<p>Hostname:$1 IP:$2</p>
<p>Probando el funcionamiento del container con aprovisionamiento</p>
</body>
</html>
TEST

#echo "Reemplazar archivo"
#lxc file push /var/www/html/index.html nodo$1/var/www/html/index.html

#echo "Reinciar el servicio apache"
#lxc exec nodo$1 -- systemctl restart apache2

#echo "configuración de red"
# sed -i 's/fan.underlay_subnet/fan.underlay_subnet: 10.10.10.0/24/g' /etc/vsftpd.conf lxc network edit lxdfan0


cat <<TEST> /etc/haproxy/errors/503.http
<!DOCTYPE html>
<html>
<body>
<h1>Lo sentimos mucho, los servidores estan desconectados </h1>
<p>Vuelva pronto</p>
</body>
</html>
TEST



