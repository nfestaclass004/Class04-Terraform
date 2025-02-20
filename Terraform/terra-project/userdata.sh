#!bin/bash
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo mkdir /var/www/html/
sudo echo "Welcome to Nfesta Technologies....!!! : $(hostname -f)" > var/www/html/index.html