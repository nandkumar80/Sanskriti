#!/bin/bash
# Purpose - Script to add a user to Linux system including passsword
# Author - Vivek Gite <www.cyberciti.biz> under GPL v2.0+
# ------------------------------------------------------------------
# Am i Root user?
if [ $(id -u) -eq 0 ]; then
	read -p "Enter username to delete : " username
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
	    userdel --remove "$username" >/dev/null
		echo "$username User has been deleted from system!"
		exit 1
	else
		 
		echo "Failed to remove a user!"
	fi
else
	echo "Only root may add a user to the system."
	exit 2
fi	  
