#!/bin/bash

# Para script, usa apt-get
agt-get update 
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

# Baixar o arquivo que deve ser colocar na pasta do apache
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

# Copiar todos os arquivos para a pasta padrão do apache 
cp -R * /var/www/html/
