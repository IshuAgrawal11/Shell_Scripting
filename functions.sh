#!/bin/bash 

function create_user {

read -p "Enter the username: " username

sudo useradd -m $username

echo "created sccesssfully"
}
for i in {1..5}
do
	create_user
done

<<info if we want to call funtion again and again either we manually call it
or we can use loop shown above
info
#create_user
#create_user
