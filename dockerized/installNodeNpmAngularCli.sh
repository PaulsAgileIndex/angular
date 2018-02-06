#!/bin/bash -x

NODEJS_VERSION=v9.5.0

apt-get update
apt-get install -y curl
apt-get clean

## Unzip the binary archive to any directory you wanna install Node, I use /usr/lib/nodejs
mkdir /usr/lib/nodejs
curl -L https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz -o /usr/lib/nodejs
chmod +x /usr/lib/nodejs	
tar -xJvf /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64.tar.xz -C /usr/lib/nodejs
mv /usr/lib/nodejs/node-${NODEJS_VERSION}-linux-x64 /usr/lib/nodejs/node-${NODEJS_VERSION}

## Set the environment variable ~/.profile, add below to the end
echo "export NODEJS_HOME=/usr/lib/nodejs/node-${NODEJS_VERSION}" >> ~/.profile
echo "export PATH=$NODEJS_HOME/bin:$PATH" >> ~/.profile

## Refresh profile
. ~/.profile

node -v
npm version

## Make a directory for global installations
mkdir ~/.npm-global

## Configure npm to use the new directory path
npm config set prefix '~/.npm-global'

## Open or create a ~/.profile file and add this line
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile

## Back on the command line, update your system variables
source ~/.profile

## Install Angular CLI
npm install -g @angular/cli



