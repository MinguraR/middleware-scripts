#!/bin/bash
#Date:January 2022
# Description: Script to install some packages on Centos machine
# Author: Reyna
echo
echo "Packages getting ready for installation: finger, curl, zip, vim"
sleep 4

if [ ${UID} -ne 0 ]
then
	echo "you need root access to run this..."
	exit 1
fi

echo
yum install finger -y
yum install curl -y
yum install zip -y
yum install vim -y

