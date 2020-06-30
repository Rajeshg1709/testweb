#!/bin/bash
sudo yum install -y httpd
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --reload
sudo systemctl start httpd
sudo systemctl enable httpd
sudo cp ./page.html /var/www/html/

