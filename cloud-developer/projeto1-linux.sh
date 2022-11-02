#!/bin/bash

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC                                          
useradd carlos -m -p $(openssl passwd -crypt Senha123)
useradd maria -m 
useradd joao -m
useradd debora -m
useradd sebastiana -m
useradd roberto -m 
useradd josefina -m
useradd amanda -m
useradd rogerio -m

echo "Especificando grupos para usuarios"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Especificando donos dos diretorios"
chown root publico
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Alterando permissoes dos diretorios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
