#!/bin/bash -x

## Setup preconditions
NODEJS_VERSION=v9.5.0
NODEJS_HOME=$HOME/develop/nodejs
rm -rf $NODEJS_HOME
mkdir $NODEJS_HOME
chmod +x $NODEJS_HOME

## Unzip the binary archive to any directory you wanna install Node, I use /usr/lib/nodejs
curl -SL "https://nodejs.org/dist/$NODEJS_VERSION/node-$NODEJS_VERSION-linux-x64.tar.xz" > $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz
tar -xJvf $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz -C $NODEJS_HOME
mv $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64 $NODEJS_HOME/node-$NODEJS_VERSION
rm -rf $NODEJS_HOME/node-$NODEJS_VERSION-linux-x64.tar.xz

## Set the environment variable ~/.profile, add below to the end

NPM_CONFIG_PREFIX=$HOME/.npm-global
rm -rf $NPM_CONFIG_PREFIX
mkdir $NPM_CONFIG_PREFIX
mkdir $NPM_CONFIG_PREFIX/bin

NODEJS_BIN_HOME=$NODEJS_HOME/node-$NODEJS_VERSION
echo "## Nodejs"
echo "export NPM_CONFIG_PREFIX=$NPM_CONFIG_PREFIX" >> $HOME/.profile
echo "export PATH=$NPM_CONFIG_PREFIX/bin:$NODEJS_BIN_HOME/bin:$PATH" >> $HOME/.profile
source $HOME/.profile


#su $SUDO_USER
#. /home/$SUDO_USER/.profile

## Refresh profile
#su $SUDO_USER
#npm config set prefix '$NPM_CONFIG_PREFIX'
#echo "export PATH=$NPM_CONFIG_PREFIX/bin:$PATH" >> /home/$SUDO_USER/.profile
#sudo chown -R $SUDO_USER:$(id -gn $SUDO_USER) /home/$SUDO_USER/.config
