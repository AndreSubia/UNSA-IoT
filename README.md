#Build Your Own IoT Platform

## Instalación de Docker y Docker-Compose en Distribuciones basadas en Arch-Linux

Para instalar docker sigue los siguientes paso: 

1. sudo pacman -S docker

Otorgar permisos de lectura y escritura:

1. sudo chmod 666 /var/run/docker.sock

Instalación de Docker-compose:

1. sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose

2. sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose

3. sudo chmod +x /usr/bin/docker-compose

## Clonación del proyecto e inicio de Docker

Para clonar este proyecto:

1. git clone https://github.com/senior-gato/IoT-Actividad2.git

Iniciar Docker: 

1. systemctl start docker

Ejecución de docker-compose

1. cd /IoT-Actividad2

2. docker-compose up

## Screenshots

|     |     |
| :-: | :-: |
|  Node-RED | PHP MyAdmin |
|  <img src="Capturas/NodeRED.png" height="250"  />   |  <img src="Capturas/PhpMyAdmin.png" height="250" />    |


### Nota: 

Si llegara a tener problemas con el acceso a la base de datos siga los siguientes pasos (La contraseña por defecto es: admin1234):

1. docker exec -it <CONTAINER_ID>  mysql -uroot -p

2. CREATE USER 'admin'@'172.19.0.1' IDENTIFIED BY 'admin1234';

3. GRANT ALL PRIVILEGES ON *.* TO 'admin'@'172.19.0.1' WITH GRANT OPTION;

4. flush privileges;

5. exit
