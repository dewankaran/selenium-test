# Download and Install chromedriver
wget -N https://chromedriver.storage.googleapis.com/73.0.3683.68/chromedriver_linux64.zip -O /root/chromedriver_linux64.zip
unzip /root/chromedriver_linux64.zip
rm /root/chromedriver_linux64.zip
sudo mv -f chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver


# Install chrome broswer
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y update
apt-get -y install google-chrome-stable
