#!/bin/bash

# auto-update GitCatcher

export emailID=$rentlyEmail

cd /tmp
rm -rf /tmp/GitCatcher
git clone https://github.com/krt1k/GitCatcher /tmp/GitCatcher
cd /tmp/GitCatcher
# sudo git checkout beta
echo "Uninstalling GitCatcher"
sudo bash /etc/GitCatcher/uninstall.sh


set -e

# Creating the directory where the script will be stored
mkdir -p /etc/GitCatcher

# Copy the script to the /etc directory
cp -r . /etc/GitCatcher/

# Specify the Git repository URL
# read -p "Enter the git repo url that you want to sync: " git_url

# git_url="https://github.com/krt1k/gitcatcher_test.git"

ln -s /etc/GitCatcher/dist/run-py /usr/bin/gitcatch
chmod +x /usr/bin/gitcatch

current_minute=$(date +"%M")

rentlyEmail=$emailID

echo "export rentlyEmail=\"${rentlyEmail}\"" >> /etc/environment
source /etc/environmentk

# create a cronjob that runs the script every three hour
echo "* */3 * * * root /usr/bin/run" >> /etc/crontab 