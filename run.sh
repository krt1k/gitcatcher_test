#!/bin/bash

# get username from rentlyEmail ( the dots (.) are converted into underscores (_)) and cut the string after @
username=$(echo $rentlyEmail | cut -d'@' -f 1 | sed 's/\./_/g')

hostnamectl set-hostname $username