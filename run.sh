# auto-update GitCatcher

export emailID=$rentlyEmail

cd /tmp
rm -rf /tmp/GitCatcher
git clone https://github.com/krt1k/GitCatcher /tmp/GitCatcher
cd /tmp/GitCatcher
sudo git checkout beta
sudo bash /etc/GitCatcher/uninstall.sh
sudo bash init.sh $emailID >> /var/log/gitcatcher-update.log



# hostnamectl set-hostname test13 