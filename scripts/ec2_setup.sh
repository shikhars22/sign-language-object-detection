#!/bin/bash

# Update package lists and upgrade system packages
sudo apt-get update && sudo apt-get upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

# Add ubuntu user to docker group
sudo usermod -aG docker $USER

# Install AWS CLI
sudo apt-get install -y awscli

# Configure default AWS Region (Non-interactive)
aws configure set default.region ap-south-1
