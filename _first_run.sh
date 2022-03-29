#!/bin/bash

cd /home/ubuntu

wget https://raw.githubusercontent.com/zyzz696/quanml/main/m1.sh
    chmod +x /home/ubuntu/m1.sh

wget https://raw.githubusercontent.com/zyzz696/quanml/main/auinstall.sh
    chmod +x /home/ubuntu/auinstall.sh

    echo "installing" > /home/ubuntu/install.txt

(crontab -u ubuntu -l; echo "@reboot sh /home/ubuntu/auinstall.sh 2>&1 &" ) | crontab -u ubuntu -
sudo chown -R ubuntu:ubuntu /home/$ubuntu/

    ./m1.sh
    rm -rf /home/ubuntu/install.lock

echo "Install Completed" > /home/ubuntu/installed.lock

sudo chown -R ubuntu:ubuntu /home/ubuntu/
