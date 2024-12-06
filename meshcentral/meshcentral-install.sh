#!/bin/sh
# Install MeshCentral

APP_NAME="MeshCentral"
NODE_VERSION="20"

# Check for Root Privileges
if ! [ $(id -u) = 0 ]; then
   echo "This script must be run with root privileges"
   exit 1
fi

# Install Packages
pkg install -y \
node"${NODE_VERSION}" \
npm-node"${NODE_VERSION}"

# Create Directories
mkdir -p /usr/local/meshcentral/meshcentral-data
mkdir -p /usr/local/meshcentral/meshcentral-files
mkdir -p /usr/local/meshcentral/meshcentral-backups
mkdir -p /usr/local/etc/rc.d
mkdir -p /var/run/meshcentral
mkdir -p /var/log/meshcentral

# MeshCentral Setup
pw user add meshcentral -c meshcentral -u 6374 -s /usr/sbin/nologin -d /home/meshcentral -m
cd /usr/local/meshcentral && npm install meshcentral
chown -R meshcentral:meshcentral /usr/local/meshcentral
chown -R meshcentral:meshcentral /var/log/meshcentral
chown -R meshcentral:meshcentral /var/run/meshcentral
fetch -o /usr/local/etc/rc.d/meshcentral https://raw.githubusercontent.com/tschettervictor/bsd-apps/main/meshcentral/includes/meshcentral
chmod +x /usr/local/etc/rc.d/meshcentral

# Enable and Start Services
sysrc meshcentral_enable="YES"
service meshcentral start

echo "---------------"
echo "Installation complete."
echo "${APP_NAME} is running on port 1025"
echo "---------------"
