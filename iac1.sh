#/!bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "carlos" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd maria -c "maria" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd joao -c "joao" -s /bin/bash -m -p $(openssl passwd -6 123)

useradd debora -c "debora" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd roberto -c "roberto" -s /bin/bash -m -p $(openssl passwd -6 123)

useradd josefina -c "josefina" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd amanda -c "amanda" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd rogerio -c "rogerio" -s /bin/bash -m -p $(openssl passwd -6 123)

echo "Definindo grupos dos usuários..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado..."