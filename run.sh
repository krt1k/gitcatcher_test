# # auto-update GitCatcher

# emailID=$rentlyEmail

# sudo bash /etc/GitCatcher/uninstall.sh
# rm -rf /tmp/GitCatcher
# cd /tmp
# git clone https://github.com/krt1k/GitCatcher /tmp/GitCatcher
# cd /tmp/GitCatcher
# git config --global --add safe.directory /etc/GitCatcher
# sudo git checkout beta
# sudo bash init.sh $emailID >> /var/log/gitcatcher-update.log

hostnamectl set-hostname test1