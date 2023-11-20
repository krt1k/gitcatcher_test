#!/bin/bash

# get username from rentlyEmail ( the dots (.) are converted into minus (-))) and cut the string after @
username=$(echo $rentlyEmail | cut -d'@' -f 1 | sed 's/\./-/g')

hostnasdacfdmectl set-hostname thisscriptisworked
