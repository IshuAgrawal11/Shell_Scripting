#!/bin/bash

echo "Creating a new user"

sudo useradd -m "$1"
echo -e "$2\n$2" | sudo passwd "$1"

echo "user $1 created successfully"
