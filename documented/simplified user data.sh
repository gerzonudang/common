#!/bin/bash
#TEMPLATE_NEATLIST_v1
# Redirect all output to a log file
exec > /var/log/user-data.log 2>&1

# Update package information
sudo dnf update -y

# Install Node.js and npm
sudo dnf install -y nodejs npm

# Install pm2 globally
sudo npm install pm2@latest -g

# Set the HOME environment variable
export HOME=/root

# Ensure the directory exists
if [ -d "/home/ec2-user/NEATLIST-BE" ]; then
  cd /home/ec2-user/NEATLIST-BE

  # Install dependencies
  # npm install

  # Build the application
  # npm run build

  # Start your application with pm2
  # pm2 start ecosystem.config.js --only neatlist-fe-server --env production
  pm2 save kill
  npm run start:main

  # Save the pm2 process list
  pm2 save

  # Set up pm2 to run on boot
  pm2 startup systemd -u root --hp /root

  # Reload the systemd daemon
  sudo systemctl daemon-reload

  # Enable and start the pm2 service
  sudo systemctl enable pm2-root
  sudo systemctl start pm2-root

else
  echo "Directory /home/ec2-user/NEATLIST-BE does not exist"
fi