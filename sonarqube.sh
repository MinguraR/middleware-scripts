#!/bin/bash

#Author: Reyna Mingura
#Date: February 2/23/22

#Description------Installation package for a Sonarqube server via script
echo
echo
echo
echo "Installation package for a Sonarqube server"
echo
sleep 3
echo "In order for Sonarqube to work, please verify you are a regular user."
sleep 6
echo
echo "Java installation is in progress..."
echo
sleep 2
sudo yum update -y
echo
sleep 2
sudo yum install java-11-openjdk-devel -y
echo
sleep 2
sudo yum install java-11-openjdk -y
echo
sleep 2
echo "Downloading Sonarqube latest version..."
echo
sleep 2
cd /opt
echo
sleep 2
sudo yum install wget -y
echo
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
sleep 2
echo "Extracting packages..."
echo
sleep 2
sudo yum install unzip -y
echo
sleep 2
sudo unzip /opt/sonarqube-9.3.0.51899.zip
echo
echo "Preparing to start service..."
echo
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
echo
sleep 1
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo
sleep 1
echo "Installation complete"
echo
echo
