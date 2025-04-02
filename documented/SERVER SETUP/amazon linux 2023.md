# Update app

## install bash

` sudo yum update -y`

`sudo yum install git -y`

`git -v`

## nvm

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`

## `reboot instance `

## node

` nvm install node`

## github repo setup

`ssh-keygen -t rsa -b 4096 -C "gerzon@everneat.co" `
`cat /root/.ssh/id_rsa.pub`
-copy results

- go to github > profile > settings > ssh and gpg kyes > new ssh
- to see signature "ssh-keygen -lf /path/to/key.pub"

# redis-server

## udpated redis setup here:https://medium.com/preprintblog/how-to-set-up-redis-6-on-aws-ec2-amazon-linux-2023-fa8cb358e6e2

## Ensure you have the latest package information by running the following command:

`sudo dnf update`

## Install Redis, Use the dnf package manager to install the Redis server package

`sudo dnf install redis6`

## To automatically start Redis whenever your EC2 instance boots, run

`sudo systemctl enable redis6`
`sudo systemctl start redis6`

## verify Redis is running,Check the Redis server status using:

`sudo systemctl status redis6`

update branch/clone

## TEST Connect to Redis using the CLI:

redis6-cli -h 127.0.0.1 -p 6379
127.0.0.1:6379> ping

##install pm2
`npm remove -g pm2`
`npm install -g uuid@latest`
`npm install -g pm2`

# increse memory heap go to documentation 'memory heap node.txt'

# github repo setup

go to production branch

`git pull`

`npm i`

`npm run start:app`

## save app list for auto startup on bootup

pm2 save

## start pm2 on bootup

`pm2 startup`

`cd ~`
`cat /var/log/user-data.log`

# show storage usage : `df -h`
