#!/bin/bash

read -p "Введите ссылку на репозиторий: " URL
cd ./rty
git clone $URL
FOUND="$(ls -tr | tail)"
 mkdir ./work1
 cp "${FOUND}"/* work1
 rm -rf "${FOUND}"
sudo chmod g+rw ./work1

#BASE=$(basename ${URL})
#FILE=$(printf '%b' ${BASE//%/\\x})


tar -cvf work2.tar.gz ./work1

sudo apt update && sudo apt upgrade
sudo apt install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
service ssh status
sudo systemctl status ssh
ssh-keygen
ip address
ping -c 3 

ssh username@ip
scp (way)   username@ip:filepath 
systemctl disable ssh
exit
echo "Лабороторная работа №2 выполнена"
