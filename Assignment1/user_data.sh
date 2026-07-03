#!/bin/bash
dnf update -y
dnf install -y httpd php php-mysqlnd mariadb105-server wget tar

systemctl enable httpd
systemctl start httpd

cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/

chown -R apache:apache /var/www/html/
chmod -R 755 /var/www/html/

systemctl restart httpd