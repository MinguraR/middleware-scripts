#!/bin/bash
#Description: Check users and option to create user with y/n
#Author: Reyna

echo
echo -n "Please enter the username: "
read U

id  ${U} >/dev/null 2>&1

if
	    [ $? -eq 0 ]
    then
	    echo "Username $U exists on this system."
    else
	    echo -e "\nUsername $U doesn't exist.\n"

	    read -p "Would you like to create a new user select yes/no?:" confirm

	    if
		            [ "$confirm" = "yes" ]
		    then
			    echo -n "Please enter username you would like to create:"
			    read new_user
			    adduser $new_user
			    grep $new_user /etc/passwd > /dev/null 2>&1
			    echo "$new_user has been created successfully"
		    else
			    echo "Thank you for stopping by. Have a good day."
	    fi
	            fi
