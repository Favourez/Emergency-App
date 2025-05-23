#!/bin/bash
sudo apt update && sudo apt install docker.io docker-compose nginx ufw git -y
sudo systemctl enable docker
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable
