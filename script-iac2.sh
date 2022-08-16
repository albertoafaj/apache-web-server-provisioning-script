#!/bin/bash


#!/bin/bash

echo "Criando webserver..."

echo "Atualizando servidor..."
apt update
apt upgrade -y

echo "Instalando o Apache..."
apt install apache2 -y
systemctl start apache2

echo "Instalando pacotes..."
apt install unzip -y

echo "Instalando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

echo "Finalizado..."
