#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm use node

cd /root/uone

git pull;

SRC=/root/uone/nodejs/hello
DEST=$HOME/deploy

rm -rf $DEST
mkdir -p $DEST
cp -r $SRC $DEST

cd $DEST/hello
source ~/.bashrc

npm install

npm install -g pm2

pm2 restart all
