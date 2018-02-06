#!/bin/bash -x

## Setup preconditions
NODEJS_VERSION=v9.5.0
NODEJS_HOME=/usr/lib/nodejs
rm -rf $NODEJS_HOME
mkdir $NODEJS_HOME
chmod +x $NODEJS_HOME

## Unzip the binary archive to any directory you wanna install Node, I use /usr/lib/nodejs
curl -SL "https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz" > $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz
tar -xJvf $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz -C /usr/lib/nodejs
mv $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64 $NODEJS_HOME/node-$NODEJS_VERSION
rm -rf $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz

## Set the environment variable ~/.profile, add below to the end
NODEJS_BIN_HOME=/usr/lib/nodejs/node-${NODEJS_VERSION}
echo "## Nodejs"
echo "export PATH=$NODEJS_BIN_HOME/bin:$PATH" >> /home/$SUDO_USER/.profile

export NPM_CONFIG_PREFIX=~/.npm-global
rm -rf $NPM_CONFIG_PREFIX
mkdir $NPM_CONFIG_PREFIX

#su $SUDO_USER
. /home/$SUDO_USER/.profile

## Refresh profile
#su $SUDO_USER
npm config set prefix '$NPM_CONFIG_PREFIX'
echo "export PATH=$NPM_CONFIG_PREFIX/bin:$PATH" >> /home/$SUDO_USER/.profile
sudo chown -R $SUDO_USER:$(id -gn $SUDO_USER) /home/$SUDO_USER/.config
