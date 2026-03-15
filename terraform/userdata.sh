#!/bin/bash
apt-get update -y
apt-get upgrade -y

apt-get install -y docker.io awscli

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

docker system prune -f