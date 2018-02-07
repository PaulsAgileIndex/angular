#!/bin/bash -x

source ~/.profile
npm -v
npm config set prefix '$NPM_CONFIG_PREFIX'


npm install -g @angular/cli
