# !/bin/bash
sudo su -
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo “Hello CloudChamp from $(hostname -f).Created by USERDATA in Terraform. SUBSCRIBE NOW!!” > /var/www/html/index.html