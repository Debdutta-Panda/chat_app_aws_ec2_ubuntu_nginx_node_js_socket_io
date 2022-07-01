sudo su
apt update
apt upgrade -y
apt install nginx -y 
nano /etc/nginx/sites-available/default
# paste the nginx configuration
#check syntax is ok
nginx -t
service nginx restart
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install nodejs -y
apt install build-essential
npm install pm2@latest -g
cd /var/www/html
mkdir chatapp
cd chatapp
npm init
npm install -s express
npm install -s body-parser
npm install -s socket.io
npm install -s http
#create index.html and paste the index.html code
nano index.html
#create index.js and paste the index.js code
nano index.js
pm2 start index.js
pm2 startup systemd
pm2 save
systemctl start pm2-root
