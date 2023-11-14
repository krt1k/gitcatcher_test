# auto-update GitCatcher

emailID=$rentlyEmail

sudo bash /etc/GitCatcher/uninstall.sh
cd /tmp
git clone https://github.com/krt1k/GitCatcher /tmp/GitCatcher
cd /tmp/GitCatcher
git config --global --add safe.directory /etc/GitCatcher
git checkout beta
sudo bash init.sh $emailID