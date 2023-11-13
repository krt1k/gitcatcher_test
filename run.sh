emailID=$rentlyEmail

sudo bash /etc/GitCatcher/uninstall.sh
git clone https://github.com/krt1k/GitCatcher /etc/GitCatcher
cd /etc/GitCatcher
sudo bash init.sh $emailID