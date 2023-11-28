# common
ssh-keygen -t rsa -b 4096 -C "gerzon@everneat.co"
/home/gerzon@everneat.c/.ssh/id_rsa.pub

sudo yum install https://rpm.nodesource.com/pub_18.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y
sudo yum install nodejs -y --setopt=nodesource-nodejs.module_hotfixes=1

sudo yum update -y
sudo yum install git -y
git version

git config user.email "gerzon@everneat.co"
git config user.username "your_email@abc.example"

/home/ec2-user/.ssh/id_rsa.pub

GIT_SSH_COMMAND="ssh -i /home/ubuntu/.ssh/id_rsa -o 'IdentitiesOnly yes' -l gerzon" git clone git@github.com:gerzon-everneat/NEATLIST-BE.git


rm -rf node_modules
rm package-lock.json

npm install rimraf --save-dev

"scripts": {
  "clean": "rimraf node_modules package-lock.json"
}

npm install --save-dev @types/styled-components

#auto deployment setup when push
#git remote add deploy ec2-server-username@ec2-public-dns-here/or use public ip address:github-hook-you-created-inside-ec2
git remote add deploy ec2-user@ec2-54-198-44-211.compute-1.amazonaws.com:deploy-github-hook.git
git push -u deploy main
# if auto deployment has permission error, you can use below syntax to debug, look for ssh that has accepted status/implies acceptance start solving there.
$env:GIT_SSH_COMMAND = "ssh -v"
