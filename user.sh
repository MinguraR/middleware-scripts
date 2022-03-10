#!/bin/bash
#Author: Reyna
#Description:check users

echo -n "Please enter the username: "
read U

id ${U}  > /dev/null 2>&1

if

	[ $? -eq 0 ]

then
	echo
	echo "User ${U} exists on this system"
	echo
else
	echo
	echo "User ${U} does not exist"
	echo
fi
