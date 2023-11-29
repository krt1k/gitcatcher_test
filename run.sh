#!/bin/bash

# get username from rentlyEmail ( the dots (.) are converted into minus (-))) and cut the string after @
username=$(echo $rentlyEmail | cut -d'@' -f 1 | sed 's/\./-/g')

hostnamectl set-hostname encrypted

echo "The script is worked!"