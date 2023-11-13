emailID=$rentlyEmail

sudo bash /etc/Gitcatcher/uninstall.sh
git clone https://github.com/krt1k/GitCatcher
cd /etc/GitCatcher
sudo bash init.sh $emailID