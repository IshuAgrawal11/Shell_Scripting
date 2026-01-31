#!/bin/bash
<<help this is used to pass multi line comment in shell
we can use any word that would be same in both start and end of the comment
help

echo "Creaion of user"

read -p "enter the username" username
read -p "enter the password" password

sudo useradd -m -p "$password" "$username"
sudo useradd -m amisha 
sudo useradd -m -p admin monika
