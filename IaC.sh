#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_ADM
useradd joaosilva -c "João da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_ADM

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_SEC
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_SEC
useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(openssl passwd Senha123)  -G GRP_SEC

echo "Configurando dono  dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Configurando permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Procedimento finalizado..."
