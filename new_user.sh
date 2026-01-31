#!/bin/bash


echo "Creation of user"

read -p "Enter the username: " username
read -sp "Enter the password: " password # -s hides the password as you type
echo

# Create the user
sudo useradd -m "$username"

# Set the password securely
echo "$username:$password" | sudo chpasswd

echo "User $username created successfully!"
