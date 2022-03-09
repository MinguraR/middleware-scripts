#bin/bash
#Author:Reyna Mingura
#Description: Check to see if /etc/shadow exists, and if you can write to the file.

file="/etc/shadow"

if
	         [ -e ${file} ]

	 then

		 echo "Shadow passwords are enabled."

fi

if
	        [ -w ${file} ]

	then
		echo "You have permissions to edit ${file}."

	else
		echo " You do not have permissions to edit ${file}."

fi
