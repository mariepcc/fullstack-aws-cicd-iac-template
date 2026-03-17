#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y docker.io awscli amazon-ecr-credential-helper

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

mkdir -p /home/ubuntu/.docker
echo '{"credsStore": "ecr-login"}' > /home/ubuntu/.docker/config.json
chown -R ubuntu:ubuntu /home/ubuntu/.docker