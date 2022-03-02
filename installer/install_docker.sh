#!/usr/bin/env sh

# ================================================================================================
#  INSTALL DOCKER  (AMAZON LINUX)
# ================================================================================================
## Update Repositories
sudo yum update -y
sudo amazon-linux-extras install docker

## Autostart Docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on

## Install Git
sudo yum install -y git

## Install Docker-Compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) \
    -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## Check Info & Version
docker info > ~/docker.log
docker-compose version > ~/docker-compose.log

## Adding Custom Sysctl
echo 'vm.max_map_count=524288' >> /etc/sysctl.conf
echo 'fs.file-max=131072' >> /etc/sysctl.conf
