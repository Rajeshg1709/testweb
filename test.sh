#!/bin/bash
sudo yum install -y httpd
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --add-service=http --permanent
sudo systemctl start httpd
sudo systemctl enable httpd

