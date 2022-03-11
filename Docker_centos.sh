#!/bin/bash
#Author: Reyna Mingura
#Date 3/11/22
#Description: Docker containerization software installation for CentOs 7 version. 



if
	U=`whoami`

	 [ $U != root ]

 then
	  
	 echo "You need root access to install this application. Unable to proceed with installation. See your team lead or administrator for help."
	 #To install docker you need root access.
	 exit 1
 else
	 echo "Docker installation on your Centos 7 machine in progress..."
fi
sleep 2
echo
#First we must clean the system and remove any older version of docker. 
sleep 2
echo
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
echo
echo "Now it's time to set up the docker repository."
sleep 3
echo
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

if
	        [ $? -ne 0 ]
	then
		echo "An error has occured. System unable to set up the docker repository."
		exit 2
fi

#Install the latest version of docker engine on your system.
yum install docker-ce docker-ce-cli containerd.io -y

if
	        [ $? -ne 0 ]
	then
		echo "Unable to install latest version of docker on the system. Check previous command used for installing latest version of docker engine."
		exit 3
fi

#Check the status of the docker daemon--start and enable it.
systemctl start docker
systemctl enable docker
systemctl status docker
echo
echo -e "\n Docker installed successfully. Your docker version is: \n "
echo
docker -v | awk -F, '{print$1}'
echo
