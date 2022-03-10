#/bin/bash
#Description: Script for systen inventory
#Author:Reyna, Feb 20222

echo
echo "We are about to do a full system inventory please be patient."
sleep 2
echo
echo "The following line displays kernel version:"
echo
sleep 2
uname -r
sleep 2
echo
echo "Your memory listed in megabytes:"
sleep 1
echo
free -m
echo
sleep 2
echo "Your hard drive(s) info below:"
sleep 2
echo
lsblk
sleep 2
echo
echo "Your OS version is:"
echo
sleep 2
cat /etc/*release
sleep 4
echo
echo "Checking your system bits..."
sleep 2
getconf LONG_BIT
sleep 3
echo
echo "Checking your system CPU characteristics."
echo
lscpu
echo
sleep 4
echo
echo "Let's check how long the system has been running."
echo
uptime
