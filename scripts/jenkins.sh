#!/bin/bash

# Update package lists
sudo apt update -y

# Install Java 21 (Required by modern Jenkins versions)
sudo apt install openjdk-21-jdk -y

# Add the Jenkins LTS repository GPG key
sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

# Add the Jenkins LTS repository to sources.list
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update repository lists and install Jenkins
sudo apt update -y
sudo apt install jenkins -y

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

## Installing Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add users to the docker group so they can run containers without sudo
sudo usermod -aG docker $USER
sudo usermod -aG docker jenkins

# Install AWS CLI
sudo apt install awscli -y

# Restart Jenkins to apply the new docker group permissions
sudo systemctl restart jenkins

## AWS configuration (Interactive CLI configuration for AWS)
echo "Configure your AWS credentials now:"
aws configure

# Check and output the status of key services
echo "------------------------------------------------"
echo "Checking service statuses..."
sudo systemctl status jenkins --no-pager
echo "------------------------------------------------"
sudo systemctl status docker --no-pager
echo "------------------------------------------------"

## For getting the admin password for Jenkins
echo "Jenkins setup is complete!"
echo "Use the following initial admin password to log in for the first time:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
