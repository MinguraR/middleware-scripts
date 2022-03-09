#!/bin/bash

#Description: Automate displaying the OS

#Author: Reyna

os=$(cat /etc/os-release | grep -i ^name | awk -F= '{print$2}')

echo "Listed is your Operating System: ${os}"

