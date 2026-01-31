#!/bin/bash
#user defined variable
hero="Rancho"      # No spaces!
villain="Virus"    # No spaces!

echo "3 idiots ka hero hai $hero"
echo "3 idiots ka villain hai $villain"

# shell/ enviroment variables bhi hote hai (pre-defined)
echo "current logged in user $USER"

# user input
read -p "rancho ka pura naam" fullname
echo "Rancho ka pura naam $fullname hai"

#arguments

# ./3_idiots.sh raju farhan rancho
echo " movie name $0"
echo " first isiot $1"
echo " second idiot $2"
echo "third idiot $3"
echo "Hence 3_idiots are $@"

echo "Total number of idiots $#"
echo "Hence the Three Idiots are $@"
