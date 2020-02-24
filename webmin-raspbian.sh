#!/bin/bash

apt update
apt upgrade -y

apt install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.920_all.deb

dpkg --install webmin_1.920_all.deb -y

rm webmin_1.920_all.deb

ufw allow 10000/tcp
