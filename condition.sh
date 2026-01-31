#!/bin/bash

read -p "Enter the username that you want o check: " username

#count=count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}) this is not right way this is overkill
#count=grep -ic $username /etc/passwd  this will not work because i didn't use the subshell $() without this os will think i am trying to run a command count 
##count=$(grep -ic $username /etc/passwd)



# The best version: uses subshell $() and no spaces around =
count=$(grep -ic "^$username:" /etc/passwd)

# Notice the spaces inside the [ ] brackets
if [ $count -eq 0 ]; then
    echo "User not found"
else
    echo "User found"
fi
