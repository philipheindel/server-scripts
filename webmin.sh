#!/bin/bash

apt update
apt upgrade -y

apt install software-properties-common apt-transport-https wget -y

wget -q http://www.webmin.com/jcameron-key.asc -O- | apt-key add -

add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"

apt install webmin -y

ufw allow 10000/tcp