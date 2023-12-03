#!/bin/bash
sudo yum -y update && sudo yum -y install httpd
sudo systemctl start httpd && sudo systemctl enable httpd
sudo echo "<h1 Terraform Successfully Deployed, This Project is Complete!!!<h1> | sudo tee /var/www/html/index.html
# Next is to install Docker and run an Nginx container
sudo yum -y install Docker
sudo systemctl start Docker
sudo usermod -aG docker ec2-user
sudo docker container run -d -p 8080:80 nginx
