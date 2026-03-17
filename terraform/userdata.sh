#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y docker.io docker-compose awscli amazon-ecr-credential-helper

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

mkdir -p /home/ubuntu/.docker
echo '{"credsStore": "ecr-login"}' > /home/ubuntu/.docker/config.json
chown -R ubuntu:ubuntu /home/ubuntu/.docker