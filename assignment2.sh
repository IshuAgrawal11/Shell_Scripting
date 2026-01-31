#!/bin/bash

echo "Deleting user"

sudo userdel -r "$1"

if ! grep -iq "^$1:" /etc/passwd; then
    echo "User '$1' deleted successfully (confirmed in /etc/passwd)."
	        
 # Check if home directory is gone
    if [ ! -d "/home/$1" ]; then
        echo "Home directory for '$1' also removed."
    fi
else
    echo "Error: User '$1' still exist"
fi
