# auto-update GitCatcher

emailID=$rentlyEmail

sudo bash /etc/GitCatcher/uninstall.sh
cd /tmp
git clone https://github.com/krt1k/GitCatcher /tmp/GitCatcher
cd /tmp/GitCatcher
sudo bash init.sh $emailID